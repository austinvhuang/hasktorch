{-# LANGUAGE ForeignFunctionInterface #-}
module Torch.FFI.THC.Int.TensorMath where

import Foreign
import Foreign.C.Types
import Data.Word
import Data.Int
import Torch.Types.TH
import Torch.Types.THC

-- | c_fill :  state self value -> void
foreign import ccall "THCTensorMath.h THCudaIntTensor_fill"
  c_fill :: Ptr C'THCState -> Ptr C'THCudaIntTensor -> CInt -> IO ()

-- | c_zero :  state self -> void
foreign import ccall "THCTensorMath.h THCudaIntTensor_zero"
  c_zero :: Ptr C'THCState -> Ptr C'THCudaIntTensor -> IO ()

-- | c_zeros :  state r_ size -> void
foreign import ccall "THCTensorMath.h THCudaIntTensor_zeros"
  c_zeros :: Ptr C'THCState -> Ptr C'THCudaIntTensor -> Ptr C'THLongStorage -> IO ()

-- | c_zerosLike :  state r_ input -> void
foreign import ccall "THCTensorMath.h THCudaIntTensor_zerosLike"
  c_zerosLike :: Ptr C'THCState -> Ptr C'THCudaIntTensor -> Ptr C'THCudaIntTensor -> IO ()

-- | c_ones :  state r_ size -> void
foreign import ccall "THCTensorMath.h THCudaIntTensor_ones"
  c_ones :: Ptr C'THCState -> Ptr C'THCudaIntTensor -> Ptr C'THLongStorage -> IO ()

-- | c_onesLike :  state r_ input -> void
foreign import ccall "THCTensorMath.h THCudaIntTensor_onesLike"
  c_onesLike :: Ptr C'THCState -> Ptr C'THCudaIntTensor -> Ptr C'THCudaIntTensor -> IO ()

-- | c_reshape :  state r_ t size -> void
foreign import ccall "THCTensorMath.h THCudaIntTensor_reshape"
  c_reshape :: Ptr C'THCState -> Ptr C'THCudaIntTensor -> Ptr C'THCudaIntTensor -> Ptr C'THLongStorage -> IO ()

-- | c_numel :  state t -> ptrdiff_t
foreign import ccall "THCTensorMath.h THCudaIntTensor_numel"
  c_numel :: Ptr C'THCState -> Ptr C'THCudaIntTensor -> IO CPtrdiff

-- | c_cat :  state result ta tb dimension -> void
foreign import ccall "THCTensorMath.h THCudaIntTensor_cat"
  c_cat :: Ptr C'THCState -> Ptr C'THCudaIntTensor -> Ptr C'THCudaIntTensor -> Ptr C'THCudaIntTensor -> CInt -> IO ()

-- | c_catArray :  state result inputs numInputs dimension -> void
foreign import ccall "THCTensorMath.h THCudaIntTensor_catArray"
  c_catArray :: Ptr C'THCState -> Ptr C'THCudaIntTensor -> Ptr (Ptr C'THCudaIntTensor) -> CInt -> CInt -> IO ()

-- | c_nonzero :  state tensor self -> void
foreign import ccall "THCTensorMath.h THCudaIntTensor_nonzero"
  c_nonzero :: Ptr C'THCState -> Ptr C'THCudaLongTensor -> Ptr C'THCudaIntTensor -> IO ()

-- | c_tril :  state self src k -> void
foreign import ccall "THCTensorMath.h THCudaIntTensor_tril"
  c_tril :: Ptr C'THCState -> Ptr C'THCudaIntTensor -> Ptr C'THCudaIntTensor -> CLLong -> IO ()

-- | c_triu :  state self src k -> void
foreign import ccall "THCTensorMath.h THCudaIntTensor_triu"
  c_triu :: Ptr C'THCState -> Ptr C'THCudaIntTensor -> Ptr C'THCudaIntTensor -> CLLong -> IO ()

-- | c_diag :  state self src k -> void
foreign import ccall "THCTensorMath.h THCudaIntTensor_diag"
  c_diag :: Ptr C'THCState -> Ptr C'THCudaIntTensor -> Ptr C'THCudaIntTensor -> CLLong -> IO ()

-- | c_eye :  state self n k -> void
foreign import ccall "THCTensorMath.h THCudaIntTensor_eye"
  c_eye :: Ptr C'THCState -> Ptr C'THCudaIntTensor -> CLLong -> CLLong -> IO ()

-- | c_trace :  state self -> accreal
foreign import ccall "THCTensorMath.h THCudaIntTensor_trace"
  c_trace :: Ptr C'THCState -> Ptr C'THCudaIntTensor -> IO CLong

-- | c_range :  state r_ xmin xmax step -> void
foreign import ccall "THCTensorMath.h THCudaIntTensor_range"
  c_range :: Ptr C'THCState -> Ptr C'THCudaIntTensor -> CLong -> CLong -> CLong -> IO ()

-- | c_arange :  state r_ xmin xmax step -> void
foreign import ccall "THCTensorMath.h THCudaIntTensor_arange"
  c_arange :: Ptr C'THCState -> Ptr C'THCudaIntTensor -> CLong -> CLong -> CLong -> IO ()

-- | p_fill : Pointer to function : state self value -> void
foreign import ccall "THCTensorMath.h &THCudaIntTensor_fill"
  p_fill :: FunPtr (Ptr C'THCState -> Ptr C'THCudaIntTensor -> CInt -> IO ())

-- | p_zero : Pointer to function : state self -> void
foreign import ccall "THCTensorMath.h &THCudaIntTensor_zero"
  p_zero :: FunPtr (Ptr C'THCState -> Ptr C'THCudaIntTensor -> IO ())

-- | p_zeros : Pointer to function : state r_ size -> void
foreign import ccall "THCTensorMath.h &THCudaIntTensor_zeros"
  p_zeros :: FunPtr (Ptr C'THCState -> Ptr C'THCudaIntTensor -> Ptr C'THLongStorage -> IO ())

-- | p_zerosLike : Pointer to function : state r_ input -> void
foreign import ccall "THCTensorMath.h &THCudaIntTensor_zerosLike"
  p_zerosLike :: FunPtr (Ptr C'THCState -> Ptr C'THCudaIntTensor -> Ptr C'THCudaIntTensor -> IO ())

-- | p_ones : Pointer to function : state r_ size -> void
foreign import ccall "THCTensorMath.h &THCudaIntTensor_ones"
  p_ones :: FunPtr (Ptr C'THCState -> Ptr C'THCudaIntTensor -> Ptr C'THLongStorage -> IO ())

-- | p_onesLike : Pointer to function : state r_ input -> void
foreign import ccall "THCTensorMath.h &THCudaIntTensor_onesLike"
  p_onesLike :: FunPtr (Ptr C'THCState -> Ptr C'THCudaIntTensor -> Ptr C'THCudaIntTensor -> IO ())

-- | p_reshape : Pointer to function : state r_ t size -> void
foreign import ccall "THCTensorMath.h &THCudaIntTensor_reshape"
  p_reshape :: FunPtr (Ptr C'THCState -> Ptr C'THCudaIntTensor -> Ptr C'THCudaIntTensor -> Ptr C'THLongStorage -> IO ())

-- | p_numel : Pointer to function : state t -> ptrdiff_t
foreign import ccall "THCTensorMath.h &THCudaIntTensor_numel"
  p_numel :: FunPtr (Ptr C'THCState -> Ptr C'THCudaIntTensor -> IO CPtrdiff)

-- | p_cat : Pointer to function : state result ta tb dimension -> void
foreign import ccall "THCTensorMath.h &THCudaIntTensor_cat"
  p_cat :: FunPtr (Ptr C'THCState -> Ptr C'THCudaIntTensor -> Ptr C'THCudaIntTensor -> Ptr C'THCudaIntTensor -> CInt -> IO ())

-- | p_catArray : Pointer to function : state result inputs numInputs dimension -> void
foreign import ccall "THCTensorMath.h &THCudaIntTensor_catArray"
  p_catArray :: FunPtr (Ptr C'THCState -> Ptr C'THCudaIntTensor -> Ptr (Ptr C'THCudaIntTensor) -> CInt -> CInt -> IO ())

-- | p_nonzero : Pointer to function : state tensor self -> void
foreign import ccall "THCTensorMath.h &THCudaIntTensor_nonzero"
  p_nonzero :: FunPtr (Ptr C'THCState -> Ptr C'THCudaLongTensor -> Ptr C'THCudaIntTensor -> IO ())

-- | p_tril : Pointer to function : state self src k -> void
foreign import ccall "THCTensorMath.h &THCudaIntTensor_tril"
  p_tril :: FunPtr (Ptr C'THCState -> Ptr C'THCudaIntTensor -> Ptr C'THCudaIntTensor -> CLLong -> IO ())

-- | p_triu : Pointer to function : state self src k -> void
foreign import ccall "THCTensorMath.h &THCudaIntTensor_triu"
  p_triu :: FunPtr (Ptr C'THCState -> Ptr C'THCudaIntTensor -> Ptr C'THCudaIntTensor -> CLLong -> IO ())

-- | p_diag : Pointer to function : state self src k -> void
foreign import ccall "THCTensorMath.h &THCudaIntTensor_diag"
  p_diag :: FunPtr (Ptr C'THCState -> Ptr C'THCudaIntTensor -> Ptr C'THCudaIntTensor -> CLLong -> IO ())

-- | p_eye : Pointer to function : state self n k -> void
foreign import ccall "THCTensorMath.h &THCudaIntTensor_eye"
  p_eye :: FunPtr (Ptr C'THCState -> Ptr C'THCudaIntTensor -> CLLong -> CLLong -> IO ())

-- | p_trace : Pointer to function : state self -> accreal
foreign import ccall "THCTensorMath.h &THCudaIntTensor_trace"
  p_trace :: FunPtr (Ptr C'THCState -> Ptr C'THCudaIntTensor -> IO CLong)

-- | p_range : Pointer to function : state r_ xmin xmax step -> void
foreign import ccall "THCTensorMath.h &THCudaIntTensor_range"
  p_range :: FunPtr (Ptr C'THCState -> Ptr C'THCudaIntTensor -> CLong -> CLong -> CLong -> IO ())

-- | p_arange : Pointer to function : state r_ xmin xmax step -> void
foreign import ccall "THCTensorMath.h &THCudaIntTensor_arange"
  p_arange :: FunPtr (Ptr C'THCState -> Ptr C'THCudaIntTensor -> CLong -> CLong -> CLong -> IO ())