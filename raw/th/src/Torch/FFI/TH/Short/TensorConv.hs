{-# LANGUAGE ForeignFunctionInterface #-}
module Torch.FFI.TH.Short.TensorConv where

import Foreign
import Foreign.C.Types
import Data.Word
import Data.Int
import Torch.Types.TH

-- | c_validXCorr2Dptr :  r_ alpha t_ ir ic k_ kr kc sr sc -> void
foreign import ccall "THTensorConv.h THShortTensor_validXCorr2Dptr"
  c_validXCorr2Dptr_ :: Ptr CShort -> CShort -> Ptr CShort -> CLLong -> CLLong -> Ptr CShort -> CLLong -> CLLong -> CLLong -> CLLong -> IO ()

-- | alias of c_validXCorr2Dptr_ with unused argument (for CTHState) to unify backpack signatures.
c_validXCorr2Dptr :: Ptr C'THState -> Ptr CShort -> CShort -> Ptr CShort -> CLLong -> CLLong -> Ptr CShort -> CLLong -> CLLong -> CLLong -> CLLong -> IO ()
c_validXCorr2Dptr = const c_validXCorr2Dptr_

-- | c_validConv2Dptr :  r_ alpha t_ ir ic k_ kr kc sr sc -> void
foreign import ccall "THTensorConv.h THShortTensor_validConv2Dptr"
  c_validConv2Dptr_ :: Ptr CShort -> CShort -> Ptr CShort -> CLLong -> CLLong -> Ptr CShort -> CLLong -> CLLong -> CLLong -> CLLong -> IO ()

-- | alias of c_validConv2Dptr_ with unused argument (for CTHState) to unify backpack signatures.
c_validConv2Dptr :: Ptr C'THState -> Ptr CShort -> CShort -> Ptr CShort -> CLLong -> CLLong -> Ptr CShort -> CLLong -> CLLong -> CLLong -> CLLong -> IO ()
c_validConv2Dptr = const c_validConv2Dptr_

-- | c_fullXCorr2Dptr :  r_ alpha t_ ir ic k_ kr kc sr sc -> void
foreign import ccall "THTensorConv.h THShortTensor_fullXCorr2Dptr"
  c_fullXCorr2Dptr_ :: Ptr CShort -> CShort -> Ptr CShort -> CLLong -> CLLong -> Ptr CShort -> CLLong -> CLLong -> CLLong -> CLLong -> IO ()

-- | alias of c_fullXCorr2Dptr_ with unused argument (for CTHState) to unify backpack signatures.
c_fullXCorr2Dptr :: Ptr C'THState -> Ptr CShort -> CShort -> Ptr CShort -> CLLong -> CLLong -> Ptr CShort -> CLLong -> CLLong -> CLLong -> CLLong -> IO ()
c_fullXCorr2Dptr = const c_fullXCorr2Dptr_

-- | c_fullConv2Dptr :  r_ alpha t_ ir ic k_ kr kc sr sc -> void
foreign import ccall "THTensorConv.h THShortTensor_fullConv2Dptr"
  c_fullConv2Dptr_ :: Ptr CShort -> CShort -> Ptr CShort -> CLLong -> CLLong -> Ptr CShort -> CLLong -> CLLong -> CLLong -> CLLong -> IO ()

-- | alias of c_fullConv2Dptr_ with unused argument (for CTHState) to unify backpack signatures.
c_fullConv2Dptr :: Ptr C'THState -> Ptr CShort -> CShort -> Ptr CShort -> CLLong -> CLLong -> Ptr CShort -> CLLong -> CLLong -> CLLong -> CLLong -> IO ()
c_fullConv2Dptr = const c_fullConv2Dptr_

-- | c_validXCorr2DRevptr :  r_ alpha t_ ir ic k_ kr kc sr sc -> void
foreign import ccall "THTensorConv.h THShortTensor_validXCorr2DRevptr"
  c_validXCorr2DRevptr_ :: Ptr CShort -> CShort -> Ptr CShort -> CLLong -> CLLong -> Ptr CShort -> CLLong -> CLLong -> CLLong -> CLLong -> IO ()

-- | alias of c_validXCorr2DRevptr_ with unused argument (for CTHState) to unify backpack signatures.
c_validXCorr2DRevptr :: Ptr C'THState -> Ptr CShort -> CShort -> Ptr CShort -> CLLong -> CLLong -> Ptr CShort -> CLLong -> CLLong -> CLLong -> CLLong -> IO ()
c_validXCorr2DRevptr = const c_validXCorr2DRevptr_

-- | c_conv2DRevger :  r_ beta alpha t_ k_ srow scol -> void
foreign import ccall "THTensorConv.h THShortTensor_conv2DRevger"
  c_conv2DRevger_ :: Ptr C'THShortTensor -> CShort -> CShort -> Ptr C'THShortTensor -> Ptr C'THShortTensor -> CLLong -> CLLong -> IO ()

-- | alias of c_conv2DRevger_ with unused argument (for CTHState) to unify backpack signatures.
c_conv2DRevger :: Ptr C'THState -> Ptr C'THShortTensor -> CShort -> CShort -> Ptr C'THShortTensor -> Ptr C'THShortTensor -> CLLong -> CLLong -> IO ()
c_conv2DRevger = const c_conv2DRevger_

-- | c_conv2DRevgerm :  r_ beta alpha t_ k_ srow scol -> void
foreign import ccall "THTensorConv.h THShortTensor_conv2DRevgerm"
  c_conv2DRevgerm_ :: Ptr C'THShortTensor -> CShort -> CShort -> Ptr C'THShortTensor -> Ptr C'THShortTensor -> CLLong -> CLLong -> IO ()

-- | alias of c_conv2DRevgerm_ with unused argument (for CTHState) to unify backpack signatures.
c_conv2DRevgerm :: Ptr C'THState -> Ptr C'THShortTensor -> CShort -> CShort -> Ptr C'THShortTensor -> Ptr C'THShortTensor -> CLLong -> CLLong -> IO ()
c_conv2DRevgerm = const c_conv2DRevgerm_

-- | c_conv2Dger :  r_ beta alpha t_ k_ srow scol vf xc -> void
foreign import ccall "THTensorConv.h THShortTensor_conv2Dger"
  c_conv2Dger_ :: Ptr C'THShortTensor -> CShort -> CShort -> Ptr C'THShortTensor -> Ptr C'THShortTensor -> CLLong -> CLLong -> Ptr CChar -> Ptr CChar -> IO ()

-- | alias of c_conv2Dger_ with unused argument (for CTHState) to unify backpack signatures.
c_conv2Dger :: Ptr C'THState -> Ptr C'THShortTensor -> CShort -> CShort -> Ptr C'THShortTensor -> Ptr C'THShortTensor -> CLLong -> CLLong -> Ptr CChar -> Ptr CChar -> IO ()
c_conv2Dger = const c_conv2Dger_

-- | c_conv2Dmv :  r_ beta alpha t_ k_ srow scol vf xc -> void
foreign import ccall "THTensorConv.h THShortTensor_conv2Dmv"
  c_conv2Dmv_ :: Ptr C'THShortTensor -> CShort -> CShort -> Ptr C'THShortTensor -> Ptr C'THShortTensor -> CLLong -> CLLong -> Ptr CChar -> Ptr CChar -> IO ()

-- | alias of c_conv2Dmv_ with unused argument (for CTHState) to unify backpack signatures.
c_conv2Dmv :: Ptr C'THState -> Ptr C'THShortTensor -> CShort -> CShort -> Ptr C'THShortTensor -> Ptr C'THShortTensor -> CLLong -> CLLong -> Ptr CChar -> Ptr CChar -> IO ()
c_conv2Dmv = const c_conv2Dmv_

-- | c_conv2Dmm :  r_ beta alpha t_ k_ srow scol vf xc -> void
foreign import ccall "THTensorConv.h THShortTensor_conv2Dmm"
  c_conv2Dmm_ :: Ptr C'THShortTensor -> CShort -> CShort -> Ptr C'THShortTensor -> Ptr C'THShortTensor -> CLLong -> CLLong -> Ptr CChar -> Ptr CChar -> IO ()

-- | alias of c_conv2Dmm_ with unused argument (for CTHState) to unify backpack signatures.
c_conv2Dmm :: Ptr C'THState -> Ptr C'THShortTensor -> CShort -> CShort -> Ptr C'THShortTensor -> Ptr C'THShortTensor -> CLLong -> CLLong -> Ptr CChar -> Ptr CChar -> IO ()
c_conv2Dmm = const c_conv2Dmm_

-- | c_conv2Dmul :  r_ beta alpha t_ k_ srow scol vf xc -> void
foreign import ccall "THTensorConv.h THShortTensor_conv2Dmul"
  c_conv2Dmul_ :: Ptr C'THShortTensor -> CShort -> CShort -> Ptr C'THShortTensor -> Ptr C'THShortTensor -> CLLong -> CLLong -> Ptr CChar -> Ptr CChar -> IO ()

-- | alias of c_conv2Dmul_ with unused argument (for CTHState) to unify backpack signatures.
c_conv2Dmul :: Ptr C'THState -> Ptr C'THShortTensor -> CShort -> CShort -> Ptr C'THShortTensor -> Ptr C'THShortTensor -> CLLong -> CLLong -> Ptr CChar -> Ptr CChar -> IO ()
c_conv2Dmul = const c_conv2Dmul_

-- | c_conv2Dcmul :  r_ beta alpha t_ k_ srow scol vf xc -> void
foreign import ccall "THTensorConv.h THShortTensor_conv2Dcmul"
  c_conv2Dcmul_ :: Ptr C'THShortTensor -> CShort -> CShort -> Ptr C'THShortTensor -> Ptr C'THShortTensor -> CLLong -> CLLong -> Ptr CChar -> Ptr CChar -> IO ()

-- | alias of c_conv2Dcmul_ with unused argument (for CTHState) to unify backpack signatures.
c_conv2Dcmul :: Ptr C'THState -> Ptr C'THShortTensor -> CShort -> CShort -> Ptr C'THShortTensor -> Ptr C'THShortTensor -> CLLong -> CLLong -> Ptr CChar -> Ptr CChar -> IO ()
c_conv2Dcmul = const c_conv2Dcmul_

-- | c_validXCorr3Dptr :  r_ alpha t_ it ir ic k_ kt kr kc st sr sc -> void
foreign import ccall "THTensorConv.h THShortTensor_validXCorr3Dptr"
  c_validXCorr3Dptr_ :: Ptr CShort -> CShort -> Ptr CShort -> CLLong -> CLLong -> CLLong -> Ptr CShort -> CLLong -> CLLong -> CLLong -> CLLong -> CLLong -> CLLong -> IO ()

-- | alias of c_validXCorr3Dptr_ with unused argument (for CTHState) to unify backpack signatures.
c_validXCorr3Dptr :: Ptr C'THState -> Ptr CShort -> CShort -> Ptr CShort -> CLLong -> CLLong -> CLLong -> Ptr CShort -> CLLong -> CLLong -> CLLong -> CLLong -> CLLong -> CLLong -> IO ()
c_validXCorr3Dptr = const c_validXCorr3Dptr_

-- | c_validConv3Dptr :  r_ alpha t_ it ir ic k_ kt kr kc st sr sc -> void
foreign import ccall "THTensorConv.h THShortTensor_validConv3Dptr"
  c_validConv3Dptr_ :: Ptr CShort -> CShort -> Ptr CShort -> CLLong -> CLLong -> CLLong -> Ptr CShort -> CLLong -> CLLong -> CLLong -> CLLong -> CLLong -> CLLong -> IO ()

-- | alias of c_validConv3Dptr_ with unused argument (for CTHState) to unify backpack signatures.
c_validConv3Dptr :: Ptr C'THState -> Ptr CShort -> CShort -> Ptr CShort -> CLLong -> CLLong -> CLLong -> Ptr CShort -> CLLong -> CLLong -> CLLong -> CLLong -> CLLong -> CLLong -> IO ()
c_validConv3Dptr = const c_validConv3Dptr_

-- | c_fullXCorr3Dptr :  r_ alpha t_ it ir ic k_ kt kr kc st sr sc -> void
foreign import ccall "THTensorConv.h THShortTensor_fullXCorr3Dptr"
  c_fullXCorr3Dptr_ :: Ptr CShort -> CShort -> Ptr CShort -> CLLong -> CLLong -> CLLong -> Ptr CShort -> CLLong -> CLLong -> CLLong -> CLLong -> CLLong -> CLLong -> IO ()

-- | alias of c_fullXCorr3Dptr_ with unused argument (for CTHState) to unify backpack signatures.
c_fullXCorr3Dptr :: Ptr C'THState -> Ptr CShort -> CShort -> Ptr CShort -> CLLong -> CLLong -> CLLong -> Ptr CShort -> CLLong -> CLLong -> CLLong -> CLLong -> CLLong -> CLLong -> IO ()
c_fullXCorr3Dptr = const c_fullXCorr3Dptr_

-- | c_fullConv3Dptr :  r_ alpha t_ it ir ic k_ kt kr kc st sr sc -> void
foreign import ccall "THTensorConv.h THShortTensor_fullConv3Dptr"
  c_fullConv3Dptr_ :: Ptr CShort -> CShort -> Ptr CShort -> CLLong -> CLLong -> CLLong -> Ptr CShort -> CLLong -> CLLong -> CLLong -> CLLong -> CLLong -> CLLong -> IO ()

-- | alias of c_fullConv3Dptr_ with unused argument (for CTHState) to unify backpack signatures.
c_fullConv3Dptr :: Ptr C'THState -> Ptr CShort -> CShort -> Ptr CShort -> CLLong -> CLLong -> CLLong -> Ptr CShort -> CLLong -> CLLong -> CLLong -> CLLong -> CLLong -> CLLong -> IO ()
c_fullConv3Dptr = const c_fullConv3Dptr_

-- | c_validXCorr3DRevptr :  r_ alpha t_ it ir ic k_ kt kr kc st sr sc -> void
foreign import ccall "THTensorConv.h THShortTensor_validXCorr3DRevptr"
  c_validXCorr3DRevptr_ :: Ptr CShort -> CShort -> Ptr CShort -> CLLong -> CLLong -> CLLong -> Ptr CShort -> CLLong -> CLLong -> CLLong -> CLLong -> CLLong -> CLLong -> IO ()

-- | alias of c_validXCorr3DRevptr_ with unused argument (for CTHState) to unify backpack signatures.
c_validXCorr3DRevptr :: Ptr C'THState -> Ptr CShort -> CShort -> Ptr CShort -> CLLong -> CLLong -> CLLong -> Ptr CShort -> CLLong -> CLLong -> CLLong -> CLLong -> CLLong -> CLLong -> IO ()
c_validXCorr3DRevptr = const c_validXCorr3DRevptr_

-- | c_conv3DRevger :  r_ beta alpha t_ k_ sdepth srow scol -> void
foreign import ccall "THTensorConv.h THShortTensor_conv3DRevger"
  c_conv3DRevger_ :: Ptr C'THShortTensor -> CShort -> CShort -> Ptr C'THShortTensor -> Ptr C'THShortTensor -> CLLong -> CLLong -> CLLong -> IO ()

-- | alias of c_conv3DRevger_ with unused argument (for CTHState) to unify backpack signatures.
c_conv3DRevger :: Ptr C'THState -> Ptr C'THShortTensor -> CShort -> CShort -> Ptr C'THShortTensor -> Ptr C'THShortTensor -> CLLong -> CLLong -> CLLong -> IO ()
c_conv3DRevger = const c_conv3DRevger_

-- | c_conv3Dger :  r_ beta alpha t_ k_ sdepth srow scol vf xc -> void
foreign import ccall "THTensorConv.h THShortTensor_conv3Dger"
  c_conv3Dger_ :: Ptr C'THShortTensor -> CShort -> CShort -> Ptr C'THShortTensor -> Ptr C'THShortTensor -> CLLong -> CLLong -> CLLong -> Ptr CChar -> Ptr CChar -> IO ()

-- | alias of c_conv3Dger_ with unused argument (for CTHState) to unify backpack signatures.
c_conv3Dger :: Ptr C'THState -> Ptr C'THShortTensor -> CShort -> CShort -> Ptr C'THShortTensor -> Ptr C'THShortTensor -> CLLong -> CLLong -> CLLong -> Ptr CChar -> Ptr CChar -> IO ()
c_conv3Dger = const c_conv3Dger_

-- | c_conv3Dmv :  r_ beta alpha t_ k_ sdepth srow scol vf xc -> void
foreign import ccall "THTensorConv.h THShortTensor_conv3Dmv"
  c_conv3Dmv_ :: Ptr C'THShortTensor -> CShort -> CShort -> Ptr C'THShortTensor -> Ptr C'THShortTensor -> CLLong -> CLLong -> CLLong -> Ptr CChar -> Ptr CChar -> IO ()

-- | alias of c_conv3Dmv_ with unused argument (for CTHState) to unify backpack signatures.
c_conv3Dmv :: Ptr C'THState -> Ptr C'THShortTensor -> CShort -> CShort -> Ptr C'THShortTensor -> Ptr C'THShortTensor -> CLLong -> CLLong -> CLLong -> Ptr CChar -> Ptr CChar -> IO ()
c_conv3Dmv = const c_conv3Dmv_

-- | c_conv3Dmul :  r_ beta alpha t_ k_ sdepth srow scol vf xc -> void
foreign import ccall "THTensorConv.h THShortTensor_conv3Dmul"
  c_conv3Dmul_ :: Ptr C'THShortTensor -> CShort -> CShort -> Ptr C'THShortTensor -> Ptr C'THShortTensor -> CLLong -> CLLong -> CLLong -> Ptr CChar -> Ptr CChar -> IO ()

-- | alias of c_conv3Dmul_ with unused argument (for CTHState) to unify backpack signatures.
c_conv3Dmul :: Ptr C'THState -> Ptr C'THShortTensor -> CShort -> CShort -> Ptr C'THShortTensor -> Ptr C'THShortTensor -> CLLong -> CLLong -> CLLong -> Ptr CChar -> Ptr CChar -> IO ()
c_conv3Dmul = const c_conv3Dmul_

-- | c_conv3Dcmul :  r_ beta alpha t_ k_ sdepth srow scol vf xc -> void
foreign import ccall "THTensorConv.h THShortTensor_conv3Dcmul"
  c_conv3Dcmul_ :: Ptr C'THShortTensor -> CShort -> CShort -> Ptr C'THShortTensor -> Ptr C'THShortTensor -> CLLong -> CLLong -> CLLong -> Ptr CChar -> Ptr CChar -> IO ()

-- | alias of c_conv3Dcmul_ with unused argument (for CTHState) to unify backpack signatures.
c_conv3Dcmul :: Ptr C'THState -> Ptr C'THShortTensor -> CShort -> CShort -> Ptr C'THShortTensor -> Ptr C'THShortTensor -> CLLong -> CLLong -> CLLong -> Ptr CChar -> Ptr CChar -> IO ()
c_conv3Dcmul = const c_conv3Dcmul_

-- | p_validXCorr2Dptr : Pointer to function : r_ alpha t_ ir ic k_ kr kc sr sc -> void
foreign import ccall "THTensorConv.h &THShortTensor_validXCorr2Dptr"
  p_validXCorr2Dptr :: FunPtr (Ptr CShort -> CShort -> Ptr CShort -> CLLong -> CLLong -> Ptr CShort -> CLLong -> CLLong -> CLLong -> CLLong -> IO ())

-- | p_validConv2Dptr : Pointer to function : r_ alpha t_ ir ic k_ kr kc sr sc -> void
foreign import ccall "THTensorConv.h &THShortTensor_validConv2Dptr"
  p_validConv2Dptr :: FunPtr (Ptr CShort -> CShort -> Ptr CShort -> CLLong -> CLLong -> Ptr CShort -> CLLong -> CLLong -> CLLong -> CLLong -> IO ())

-- | p_fullXCorr2Dptr : Pointer to function : r_ alpha t_ ir ic k_ kr kc sr sc -> void
foreign import ccall "THTensorConv.h &THShortTensor_fullXCorr2Dptr"
  p_fullXCorr2Dptr :: FunPtr (Ptr CShort -> CShort -> Ptr CShort -> CLLong -> CLLong -> Ptr CShort -> CLLong -> CLLong -> CLLong -> CLLong -> IO ())

-- | p_fullConv2Dptr : Pointer to function : r_ alpha t_ ir ic k_ kr kc sr sc -> void
foreign import ccall "THTensorConv.h &THShortTensor_fullConv2Dptr"
  p_fullConv2Dptr :: FunPtr (Ptr CShort -> CShort -> Ptr CShort -> CLLong -> CLLong -> Ptr CShort -> CLLong -> CLLong -> CLLong -> CLLong -> IO ())

-- | p_validXCorr2DRevptr : Pointer to function : r_ alpha t_ ir ic k_ kr kc sr sc -> void
foreign import ccall "THTensorConv.h &THShortTensor_validXCorr2DRevptr"
  p_validXCorr2DRevptr :: FunPtr (Ptr CShort -> CShort -> Ptr CShort -> CLLong -> CLLong -> Ptr CShort -> CLLong -> CLLong -> CLLong -> CLLong -> IO ())

-- | p_conv2DRevger : Pointer to function : r_ beta alpha t_ k_ srow scol -> void
foreign import ccall "THTensorConv.h &THShortTensor_conv2DRevger"
  p_conv2DRevger :: FunPtr (Ptr C'THShortTensor -> CShort -> CShort -> Ptr C'THShortTensor -> Ptr C'THShortTensor -> CLLong -> CLLong -> IO ())

-- | p_conv2DRevgerm : Pointer to function : r_ beta alpha t_ k_ srow scol -> void
foreign import ccall "THTensorConv.h &THShortTensor_conv2DRevgerm"
  p_conv2DRevgerm :: FunPtr (Ptr C'THShortTensor -> CShort -> CShort -> Ptr C'THShortTensor -> Ptr C'THShortTensor -> CLLong -> CLLong -> IO ())

-- | p_conv2Dger : Pointer to function : r_ beta alpha t_ k_ srow scol vf xc -> void
foreign import ccall "THTensorConv.h &THShortTensor_conv2Dger"
  p_conv2Dger :: FunPtr (Ptr C'THShortTensor -> CShort -> CShort -> Ptr C'THShortTensor -> Ptr C'THShortTensor -> CLLong -> CLLong -> Ptr CChar -> Ptr CChar -> IO ())

-- | p_conv2Dmv : Pointer to function : r_ beta alpha t_ k_ srow scol vf xc -> void
foreign import ccall "THTensorConv.h &THShortTensor_conv2Dmv"
  p_conv2Dmv :: FunPtr (Ptr C'THShortTensor -> CShort -> CShort -> Ptr C'THShortTensor -> Ptr C'THShortTensor -> CLLong -> CLLong -> Ptr CChar -> Ptr CChar -> IO ())

-- | p_conv2Dmm : Pointer to function : r_ beta alpha t_ k_ srow scol vf xc -> void
foreign import ccall "THTensorConv.h &THShortTensor_conv2Dmm"
  p_conv2Dmm :: FunPtr (Ptr C'THShortTensor -> CShort -> CShort -> Ptr C'THShortTensor -> Ptr C'THShortTensor -> CLLong -> CLLong -> Ptr CChar -> Ptr CChar -> IO ())

-- | p_conv2Dmul : Pointer to function : r_ beta alpha t_ k_ srow scol vf xc -> void
foreign import ccall "THTensorConv.h &THShortTensor_conv2Dmul"
  p_conv2Dmul :: FunPtr (Ptr C'THShortTensor -> CShort -> CShort -> Ptr C'THShortTensor -> Ptr C'THShortTensor -> CLLong -> CLLong -> Ptr CChar -> Ptr CChar -> IO ())

-- | p_conv2Dcmul : Pointer to function : r_ beta alpha t_ k_ srow scol vf xc -> void
foreign import ccall "THTensorConv.h &THShortTensor_conv2Dcmul"
  p_conv2Dcmul :: FunPtr (Ptr C'THShortTensor -> CShort -> CShort -> Ptr C'THShortTensor -> Ptr C'THShortTensor -> CLLong -> CLLong -> Ptr CChar -> Ptr CChar -> IO ())

-- | p_validXCorr3Dptr : Pointer to function : r_ alpha t_ it ir ic k_ kt kr kc st sr sc -> void
foreign import ccall "THTensorConv.h &THShortTensor_validXCorr3Dptr"
  p_validXCorr3Dptr :: FunPtr (Ptr CShort -> CShort -> Ptr CShort -> CLLong -> CLLong -> CLLong -> Ptr CShort -> CLLong -> CLLong -> CLLong -> CLLong -> CLLong -> CLLong -> IO ())

-- | p_validConv3Dptr : Pointer to function : r_ alpha t_ it ir ic k_ kt kr kc st sr sc -> void
foreign import ccall "THTensorConv.h &THShortTensor_validConv3Dptr"
  p_validConv3Dptr :: FunPtr (Ptr CShort -> CShort -> Ptr CShort -> CLLong -> CLLong -> CLLong -> Ptr CShort -> CLLong -> CLLong -> CLLong -> CLLong -> CLLong -> CLLong -> IO ())

-- | p_fullXCorr3Dptr : Pointer to function : r_ alpha t_ it ir ic k_ kt kr kc st sr sc -> void
foreign import ccall "THTensorConv.h &THShortTensor_fullXCorr3Dptr"
  p_fullXCorr3Dptr :: FunPtr (Ptr CShort -> CShort -> Ptr CShort -> CLLong -> CLLong -> CLLong -> Ptr CShort -> CLLong -> CLLong -> CLLong -> CLLong -> CLLong -> CLLong -> IO ())

-- | p_fullConv3Dptr : Pointer to function : r_ alpha t_ it ir ic k_ kt kr kc st sr sc -> void
foreign import ccall "THTensorConv.h &THShortTensor_fullConv3Dptr"
  p_fullConv3Dptr :: FunPtr (Ptr CShort -> CShort -> Ptr CShort -> CLLong -> CLLong -> CLLong -> Ptr CShort -> CLLong -> CLLong -> CLLong -> CLLong -> CLLong -> CLLong -> IO ())

-- | p_validXCorr3DRevptr : Pointer to function : r_ alpha t_ it ir ic k_ kt kr kc st sr sc -> void
foreign import ccall "THTensorConv.h &THShortTensor_validXCorr3DRevptr"
  p_validXCorr3DRevptr :: FunPtr (Ptr CShort -> CShort -> Ptr CShort -> CLLong -> CLLong -> CLLong -> Ptr CShort -> CLLong -> CLLong -> CLLong -> CLLong -> CLLong -> CLLong -> IO ())

-- | p_conv3DRevger : Pointer to function : r_ beta alpha t_ k_ sdepth srow scol -> void
foreign import ccall "THTensorConv.h &THShortTensor_conv3DRevger"
  p_conv3DRevger :: FunPtr (Ptr C'THShortTensor -> CShort -> CShort -> Ptr C'THShortTensor -> Ptr C'THShortTensor -> CLLong -> CLLong -> CLLong -> IO ())

-- | p_conv3Dger : Pointer to function : r_ beta alpha t_ k_ sdepth srow scol vf xc -> void
foreign import ccall "THTensorConv.h &THShortTensor_conv3Dger"
  p_conv3Dger :: FunPtr (Ptr C'THShortTensor -> CShort -> CShort -> Ptr C'THShortTensor -> Ptr C'THShortTensor -> CLLong -> CLLong -> CLLong -> Ptr CChar -> Ptr CChar -> IO ())

-- | p_conv3Dmv : Pointer to function : r_ beta alpha t_ k_ sdepth srow scol vf xc -> void
foreign import ccall "THTensorConv.h &THShortTensor_conv3Dmv"
  p_conv3Dmv :: FunPtr (Ptr C'THShortTensor -> CShort -> CShort -> Ptr C'THShortTensor -> Ptr C'THShortTensor -> CLLong -> CLLong -> CLLong -> Ptr CChar -> Ptr CChar -> IO ())

-- | p_conv3Dmul : Pointer to function : r_ beta alpha t_ k_ sdepth srow scol vf xc -> void
foreign import ccall "THTensorConv.h &THShortTensor_conv3Dmul"
  p_conv3Dmul :: FunPtr (Ptr C'THShortTensor -> CShort -> CShort -> Ptr C'THShortTensor -> Ptr C'THShortTensor -> CLLong -> CLLong -> CLLong -> Ptr CChar -> Ptr CChar -> IO ())

-- | p_conv3Dcmul : Pointer to function : r_ beta alpha t_ k_ sdepth srow scol vf xc -> void
foreign import ccall "THTensorConv.h &THShortTensor_conv3Dcmul"
  p_conv3Dcmul :: FunPtr (Ptr C'THShortTensor -> CShort -> CShort -> Ptr C'THShortTensor -> Ptr C'THShortTensor -> CLLong -> CLLong -> CLLong -> Ptr CChar -> Ptr CChar -> IO ())