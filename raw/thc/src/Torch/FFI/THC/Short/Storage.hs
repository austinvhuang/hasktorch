{-# LANGUAGE ForeignFunctionInterface #-}
module Torch.FFI.THC.Short.Storage where

import Foreign
import Foreign.C.Types
import Data.Word
import Data.Int
import Torch.Types.TH
import Torch.Types.THC

-- | c_data :  state  -> real *
foreign import ccall "THCStorage.h THCudaShortStorage_data"
  c_data :: Ptr C'THCState -> Ptr C'THCShortStorage -> IO (Ptr CShort)

-- | c_size :  state  -> ptrdiff_t
foreign import ccall "THCStorage.h THCudaShortStorage_size"
  c_size :: Ptr C'THCState -> Ptr C'THCShortStorage -> IO CPtrdiff

-- | c_set :  state    -> void
foreign import ccall "THCStorage.h THCudaShortStorage_set"
  c_set :: Ptr C'THCState -> Ptr C'THCShortStorage -> CPtrdiff -> CShort -> IO ()

-- | c_get :  state   -> real
foreign import ccall "THCStorage.h THCudaShortStorage_get"
  c_get :: Ptr C'THCState -> Ptr C'THCShortStorage -> CPtrdiff -> IO CShort

-- | c_new :  state -> THCStorage *
foreign import ccall "THCStorage.h THCudaShortStorage_new"
  c_new :: Ptr C'THCState -> IO (Ptr C'THCShortStorage)

-- | c_newWithSize :  state size -> THCStorage *
foreign import ccall "THCStorage.h THCudaShortStorage_newWithSize"
  c_newWithSize :: Ptr C'THCState -> CPtrdiff -> IO (Ptr C'THCShortStorage)

-- | c_newWithSize1 :  state  -> THCStorage *
foreign import ccall "THCStorage.h THCudaShortStorage_newWithSize1"
  c_newWithSize1 :: Ptr C'THCState -> CShort -> IO (Ptr C'THCShortStorage)

-- | c_newWithSize2 :  state   -> THCStorage *
foreign import ccall "THCStorage.h THCudaShortStorage_newWithSize2"
  c_newWithSize2 :: Ptr C'THCState -> CShort -> CShort -> IO (Ptr C'THCShortStorage)

-- | c_newWithSize3 :  state    -> THCStorage *
foreign import ccall "THCStorage.h THCudaShortStorage_newWithSize3"
  c_newWithSize3 :: Ptr C'THCState -> CShort -> CShort -> CShort -> IO (Ptr C'THCShortStorage)

-- | c_newWithSize4 :  state     -> THCStorage *
foreign import ccall "THCStorage.h THCudaShortStorage_newWithSize4"
  c_newWithSize4 :: Ptr C'THCState -> CShort -> CShort -> CShort -> CShort -> IO (Ptr C'THCShortStorage)

-- | c_newWithMapping :  state filename size shared -> THCStorage *
foreign import ccall "THCStorage.h THCudaShortStorage_newWithMapping"
  c_newWithMapping :: Ptr C'THCState -> Ptr CChar -> CPtrdiff -> CInt -> IO (Ptr C'THCShortStorage)

-- | c_newWithData :  state data size -> THCStorage *
foreign import ccall "THCStorage.h THCudaShortStorage_newWithData"
  c_newWithData :: Ptr C'THCState -> Ptr CShort -> CPtrdiff -> IO (Ptr C'THCShortStorage)

-- | c_setFlag :  state storage flag -> void
foreign import ccall "THCStorage.h THCudaShortStorage_setFlag"
  c_setFlag :: Ptr C'THCState -> Ptr C'THCShortStorage -> CChar -> IO ()

-- | c_clearFlag :  state storage flag -> void
foreign import ccall "THCStorage.h THCudaShortStorage_clearFlag"
  c_clearFlag :: Ptr C'THCState -> Ptr C'THCShortStorage -> CChar -> IO ()

-- | c_retain :  state storage -> void
foreign import ccall "THCStorage.h THCudaShortStorage_retain"
  c_retain :: Ptr C'THCState -> Ptr C'THCShortStorage -> IO ()

-- | c_free :  state storage -> void
foreign import ccall "THCStorage.h THCudaShortStorage_free"
  c_free :: Ptr C'THCState -> Ptr C'THCShortStorage -> IO ()

-- | c_resize :  state storage size -> void
foreign import ccall "THCStorage.h THCudaShortStorage_resize"
  c_resize :: Ptr C'THCState -> Ptr C'THCShortStorage -> CPtrdiff -> IO ()

-- | c_fill :  state storage value -> void
foreign import ccall "THCStorage.h THCudaShortStorage_fill"
  c_fill :: Ptr C'THCState -> Ptr C'THCShortStorage -> CShort -> IO ()

-- | c_getDevice :  state storage -> int
foreign import ccall "THCStorage.h THCudaShortStorage_getDevice"
  c_getDevice :: Ptr C'THCState -> Ptr C'THCShortStorage -> IO CInt

-- | p_data : Pointer to function : state  -> real *
foreign import ccall "THCStorage.h &THCudaShortStorage_data"
  p_data :: FunPtr (Ptr C'THCState -> Ptr C'THCShortStorage -> IO (Ptr CShort))

-- | p_size : Pointer to function : state  -> ptrdiff_t
foreign import ccall "THCStorage.h &THCudaShortStorage_size"
  p_size :: FunPtr (Ptr C'THCState -> Ptr C'THCShortStorage -> IO CPtrdiff)

-- | p_set : Pointer to function : state    -> void
foreign import ccall "THCStorage.h &THCudaShortStorage_set"
  p_set :: FunPtr (Ptr C'THCState -> Ptr C'THCShortStorage -> CPtrdiff -> CShort -> IO ())

-- | p_get : Pointer to function : state   -> real
foreign import ccall "THCStorage.h &THCudaShortStorage_get"
  p_get :: FunPtr (Ptr C'THCState -> Ptr C'THCShortStorage -> CPtrdiff -> IO CShort)

-- | p_new : Pointer to function : state -> THCStorage *
foreign import ccall "THCStorage.h &THCudaShortStorage_new"
  p_new :: FunPtr (Ptr C'THCState -> IO (Ptr C'THCShortStorage))

-- | p_newWithSize : Pointer to function : state size -> THCStorage *
foreign import ccall "THCStorage.h &THCudaShortStorage_newWithSize"
  p_newWithSize :: FunPtr (Ptr C'THCState -> CPtrdiff -> IO (Ptr C'THCShortStorage))

-- | p_newWithSize1 : Pointer to function : state  -> THCStorage *
foreign import ccall "THCStorage.h &THCudaShortStorage_newWithSize1"
  p_newWithSize1 :: FunPtr (Ptr C'THCState -> CShort -> IO (Ptr C'THCShortStorage))

-- | p_newWithSize2 : Pointer to function : state   -> THCStorage *
foreign import ccall "THCStorage.h &THCudaShortStorage_newWithSize2"
  p_newWithSize2 :: FunPtr (Ptr C'THCState -> CShort -> CShort -> IO (Ptr C'THCShortStorage))

-- | p_newWithSize3 : Pointer to function : state    -> THCStorage *
foreign import ccall "THCStorage.h &THCudaShortStorage_newWithSize3"
  p_newWithSize3 :: FunPtr (Ptr C'THCState -> CShort -> CShort -> CShort -> IO (Ptr C'THCShortStorage))

-- | p_newWithSize4 : Pointer to function : state     -> THCStorage *
foreign import ccall "THCStorage.h &THCudaShortStorage_newWithSize4"
  p_newWithSize4 :: FunPtr (Ptr C'THCState -> CShort -> CShort -> CShort -> CShort -> IO (Ptr C'THCShortStorage))

-- | p_newWithMapping : Pointer to function : state filename size shared -> THCStorage *
foreign import ccall "THCStorage.h &THCudaShortStorage_newWithMapping"
  p_newWithMapping :: FunPtr (Ptr C'THCState -> Ptr CChar -> CPtrdiff -> CInt -> IO (Ptr C'THCShortStorage))

-- | p_newWithData : Pointer to function : state data size -> THCStorage *
foreign import ccall "THCStorage.h &THCudaShortStorage_newWithData"
  p_newWithData :: FunPtr (Ptr C'THCState -> Ptr CShort -> CPtrdiff -> IO (Ptr C'THCShortStorage))

-- | p_setFlag : Pointer to function : state storage flag -> void
foreign import ccall "THCStorage.h &THCudaShortStorage_setFlag"
  p_setFlag :: FunPtr (Ptr C'THCState -> Ptr C'THCShortStorage -> CChar -> IO ())

-- | p_clearFlag : Pointer to function : state storage flag -> void
foreign import ccall "THCStorage.h &THCudaShortStorage_clearFlag"
  p_clearFlag :: FunPtr (Ptr C'THCState -> Ptr C'THCShortStorage -> CChar -> IO ())

-- | p_retain : Pointer to function : state storage -> void
foreign import ccall "THCStorage.h &THCudaShortStorage_retain"
  p_retain :: FunPtr (Ptr C'THCState -> Ptr C'THCShortStorage -> IO ())

-- | p_free : Pointer to function : state storage -> void
foreign import ccall "THCStorage.h &THCudaShortStorage_free"
  p_free :: FunPtr (Ptr C'THCState -> Ptr C'THCShortStorage -> IO ())

-- | p_resize : Pointer to function : state storage size -> void
foreign import ccall "THCStorage.h &THCudaShortStorage_resize"
  p_resize :: FunPtr (Ptr C'THCState -> Ptr C'THCShortStorage -> CPtrdiff -> IO ())

-- | p_fill : Pointer to function : state storage value -> void
foreign import ccall "THCStorage.h &THCudaShortStorage_fill"
  p_fill :: FunPtr (Ptr C'THCState -> Ptr C'THCShortStorage -> CShort -> IO ())

-- | p_getDevice : Pointer to function : state storage -> int
foreign import ccall "THCStorage.h &THCudaShortStorage_getDevice"
  p_getDevice :: FunPtr (Ptr C'THCState -> Ptr C'THCShortStorage -> IO CInt)