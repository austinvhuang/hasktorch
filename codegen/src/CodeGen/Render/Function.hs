module CodeGen.Render.Function
  ( renderSig
  , haskellSig
  , mkHsname
  , SigType(..)
  ) where

import CodeGen.Prelude
import CodeGen.Types
import CodeGen.Parse.Cases (type2hsreal)
import Control.Arrow ((&&&))
import qualified CodeGen.Render.C as C (render)
import qualified CodeGen.Render.Haskell as Hs (render)
import qualified Data.Char as Ch (toUpper)
import qualified Data.Text as T

data SigType
  = IsFun
  | IsFunPtr
  deriving (Eq, Ord, Show)

ffiPrefix :: SigType -> Text
ffiPrefix = \case
  IsFun    -> "c_"
  IsFunPtr -> "p_"

isPtr :: SigType -> Bool
isPtr f = f == IsFunPtr

comment :: LibType -> SigType -> Text -> [Arg] -> Parsable -> Text
comment lt t hsname args retType = T.intercalate " "
  $  [ "-- |" , hsname , ":", if isPtr t then "Pointer to function :" else "" ]
  <> map argName args
  <> (if null args then [] else ["->"])
  <> [C.render retType]

foreignCall :: Text -> FilePath -> Text
foreignCall cname headerFile = T.intercalate "\""
  [ "foreign import ccall "
  , T.pack headerFile <> cname
  , ""
  ]

haskellSig :: LibType -> Text -> SigType -> TemplateType -> [Arg] -> Parsable -> Text
haskellSig lt hsname st tt args retType = T.intercalate ""
  [ hsname
  , " :: "
  , if isPtr st then "FunPtr (" else ""
  , T.intercalate " -> " typeSignature, retArrow
  , if isPtr st then ")" else ""
  ]
 where
  typeSignature :: [Text]
  typeSignature = case args of
    [Arg (CType CVoid) _] -> []
    args' -> mapMaybe (Hs.render FunctionParam tt . argType) args'

  retArrow :: Text
  retArrow = case Hs.render ReturnValue tt retType of
    Nothing  -> ""
    Just ret -> if null typeSignature then ret else (" -> " <> ret)


mkCname
  :: SigType -> LibType -> ModuleSuffix -> TemplateType -> CodeGenType -> Maybe (LibType, Text) -> Text -> Text
mkCname st lt ms tt cgt mpref funname
  = (if isPtr st then " &" else " ")
  <> identifier
  <> funname
 where
  identifier :: Text
  identifier = case cgt of
    ConcreteFiles -> ""
    GenericFiles ->
      case lt of
        TH     -> "TH"        <> type2hsreal tt <> textSuffix ms <> "_"
        THNN   -> "THNN_"     <> type2hsreal tt
        THCUNN -> "THNN_Cuda" <> type2hsreal tt
        THC -> case mpref of
          -- THC is the only library that has this
          Nothing       -> prefix lt  (isTHCTensor lt ) <> type2hsreal tt <> textSuffix ms <> "_"
          Just (lt', t) -> prefix lt' (isTHCTensor lt') <> type2hsreal tt <> t <> "_"
         where
          isTHCTensor :: LibType -> Bool
          isTHCTensor lt =
            (  textSuffix ms == "Tensor"
            || textSuffix ms == "Storage"
            || textSuffix ms == "TensorMath")

-- | render a haskell function name.
mkHsname :: LibType -> SigType -> Maybe (LibType, Text) -> Text -> Text
mkHsname lt st mpref funname =
  case lt of
    THCUNN -> ffiPrefix st <> funname
    _ -> case mpref of
      Nothing       -> ffiPrefix st <> funname
      Just (lt', _) -> ffiPrefix st <> (if lt' == lt then funname else newName lt')
 where
   newName :: LibType -> Text
   newName lt' = (T.toLower (tshow lt') <>) $ uncurry T.cons $ ((Ch.toUpper . T.head) &&& T.tail) funname


-- | Render a single function signature.
renderSig
  :: SigType
  -> LibType
  -> CodeGenType
  -> FilePath
  -> TemplateType
  -> ModuleSuffix
  -> FileSuffix
  -> (Maybe (LibType, Text), Text, Parsable, [Arg])
  -> Text
renderSig st lt cgt headerFile tt ms fs (mpref, name, retType, args) =
  T.intercalate "\n"
    [ comment lt st hsname args retType
    , foreignCall cname headerFile
    , implementation
    ]
 where
  cname, hsname :: Text
  cname = mkCname st lt ms tt cgt mpref name
  hsname = mkHsname lt st mpref name

  implementation :: Text
  implementation =
    case (lt, cgt, fs, st) of
      -- NOTE: TH and THC functions differ in the THC State. TH does have a concept of THState, which
      -- is unused. Here we render some function aliases which will allow us to maintain unified
      -- backpack signatures.
      --
      -- NOTE2: In the event that we render generic functions from the TH
      -- library which _does not include THTensorRandom_, we want to post-fix these names with a @_@
      -- and use the alias to match the backpack signatures.
      (TH, GenericFiles, _, IsFun) ->
        T.intercalate "\n"
          [ "  " <> (haskellSig lt (mkAliasRefName hsname) st tt args retType)
          , ""
          , "-- | alias of " <> mkAliasRefName hsname <> " with unused argument (for CTHState) to unify backpack signatures."
          , haskellSig lt hsname st tt thArgs retType
          , hsname <> " = const " <> mkAliasRefName hsname
          ]
        where
          -- | TH only (and even then only generic TH files).
          --
          -- 'reference' implying "original haskell function" and alias implying
          -- "backpack-compatible function" as well as "c-native function"
          mkAliasRefName :: Text -> Text
          mkAliasRefName = (<> "_")

          thArgs :: [Arg]
          thArgs =
            if length args == 1 && argType (head args) == (CType CVoid)
            then [statePtr]
            else statePtr:args

          statePtr :: Arg
          statePtr = Arg (Ptr (TenType (Pair (State, TH)))) "state"

      _ -> "  " <> (haskellSig lt hsname st tt args retType)


