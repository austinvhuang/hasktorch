{-# LANGUAGE ForeignFunctionInterface #-}
module Torch.FFI.THC.Float.StorageCopy where

import Foreign
import Foreign.C.Types
import Data.Word
import Data.Int
import Torch.Types.TH
import Torch.Types.THC

-- | c_rawCopy :  state storage src -> void
foreign import ccall "THCStorageCopy.h THCudaFloatStorage_rawCopy"
  c_rawCopy :: Ptr C'THCState -> Ptr C'THCFloatStorage -> Ptr CFloat -> IO ()

-- | c_copy :  state storage src -> void
foreign import ccall "THCStorageCopy.h THCudaFloatStorage_copy"
  c_copy :: Ptr C'THCState -> Ptr C'THCFloatStorage -> Ptr C'THCFloatStorage -> IO ()

-- | c_copyByte :  state storage src -> void
foreign import ccall "THCStorageCopy.h THCudaFloatStorage_copyByte"
  c_copyByte :: Ptr C'THCState -> Ptr C'THCFloatStorage -> Ptr C'THByteStorage -> IO ()

-- | c_copyChar :  state storage src -> void
foreign import ccall "THCStorageCopy.h THCudaFloatStorage_copyChar"
  c_copyChar :: Ptr C'THCState -> Ptr C'THCFloatStorage -> Ptr C'THCharStorage -> IO ()

-- | c_copyShort :  state storage src -> void
foreign import ccall "THCStorageCopy.h THCudaFloatStorage_copyShort"
  c_copyShort :: Ptr C'THCState -> Ptr C'THCFloatStorage -> Ptr C'THShortStorage -> IO ()

-- | c_copyInt :  state storage src -> void
foreign import ccall "THCStorageCopy.h THCudaFloatStorage_copyInt"
  c_copyInt :: Ptr C'THCState -> Ptr C'THCFloatStorage -> Ptr C'THIntStorage -> IO ()

-- | c_copyLong :  state storage src -> void
foreign import ccall "THCStorageCopy.h THCudaFloatStorage_copyLong"
  c_copyLong :: Ptr C'THCState -> Ptr C'THCFloatStorage -> Ptr C'THLongStorage -> IO ()

-- | c_copyFloat :  state storage src -> void
foreign import ccall "THCStorageCopy.h THCudaFloatStorage_copyFloat"
  c_copyFloat :: Ptr C'THCState -> Ptr C'THCFloatStorage -> Ptr C'THFloatStorage -> IO ()

-- | c_copyDouble :  state storage src -> void
foreign import ccall "THCStorageCopy.h THCudaFloatStorage_copyDouble"
  c_copyDouble :: Ptr C'THCState -> Ptr C'THCFloatStorage -> Ptr C'THDoubleStorage -> IO ()

-- | c_copyHalf :  state storage src -> void
foreign import ccall "THCStorageCopy.h THCudaFloatStorage_copyHalf"
  c_copyHalf :: Ptr C'THCState -> Ptr C'THCFloatStorage -> Ptr C'THHalfStorage -> IO ()

-- | c_thCopyCuda :  state self src -> void
foreign import ccall "THCStorageCopy.h THFloatStorage_copyCuda"
  c_thCopyCuda :: Ptr C'THCState -> Ptr C'THFloatStorage -> Ptr C'THCFloatStorage -> IO ()

-- | c_copyCuda :  state self src -> void
foreign import ccall "THCStorageCopy.h THCudaFloatStorage_copyCuda"
  c_copyCuda :: Ptr C'THCState -> Ptr C'THCFloatStorage -> Ptr C'THCFloatStorage -> IO ()

-- | c_copyCPU :  state self src -> void
foreign import ccall "THCStorageCopy.h THCudaFloatStorage_copyCPU"
  c_copyCPU :: Ptr C'THCState -> Ptr C'THCFloatStorage -> Ptr C'THFloatStorage -> IO ()

-- | p_rawCopy : Pointer to function : state storage src -> void
foreign import ccall "THCStorageCopy.h &THCudaFloatStorage_rawCopy"
  p_rawCopy :: FunPtr (Ptr C'THCState -> Ptr C'THCFloatStorage -> Ptr CFloat -> IO ())

-- | p_copy : Pointer to function : state storage src -> void
foreign import ccall "THCStorageCopy.h &THCudaFloatStorage_copy"
  p_copy :: FunPtr (Ptr C'THCState -> Ptr C'THCFloatStorage -> Ptr C'THCFloatStorage -> IO ())

-- | p_copyByte : Pointer to function : state storage src -> void
foreign import ccall "THCStorageCopy.h &THCudaFloatStorage_copyByte"
  p_copyByte :: FunPtr (Ptr C'THCState -> Ptr C'THCFloatStorage -> Ptr C'THByteStorage -> IO ())

-- | p_copyChar : Pointer to function : state storage src -> void
foreign import ccall "THCStorageCopy.h &THCudaFloatStorage_copyChar"
  p_copyChar :: FunPtr (Ptr C'THCState -> Ptr C'THCFloatStorage -> Ptr C'THCharStorage -> IO ())

-- | p_copyShort : Pointer to function : state storage src -> void
foreign import ccall "THCStorageCopy.h &THCudaFloatStorage_copyShort"
  p_copyShort :: FunPtr (Ptr C'THCState -> Ptr C'THCFloatStorage -> Ptr C'THShortStorage -> IO ())

-- | p_copyInt : Pointer to function : state storage src -> void
foreign import ccall "THCStorageCopy.h &THCudaFloatStorage_copyInt"
  p_copyInt :: FunPtr (Ptr C'THCState -> Ptr C'THCFloatStorage -> Ptr C'THIntStorage -> IO ())

-- | p_copyLong : Pointer to function : state storage src -> void
foreign import ccall "THCStorageCopy.h &THCudaFloatStorage_copyLong"
  p_copyLong :: FunPtr (Ptr C'THCState -> Ptr C'THCFloatStorage -> Ptr C'THLongStorage -> IO ())

-- | p_copyFloat : Pointer to function : state storage src -> void
foreign import ccall "THCStorageCopy.h &THCudaFloatStorage_copyFloat"
  p_copyFloat :: FunPtr (Ptr C'THCState -> Ptr C'THCFloatStorage -> Ptr C'THFloatStorage -> IO ())

-- | p_copyDouble : Pointer to function : state storage src -> void
foreign import ccall "THCStorageCopy.h &THCudaFloatStorage_copyDouble"
  p_copyDouble :: FunPtr (Ptr C'THCState -> Ptr C'THCFloatStorage -> Ptr C'THDoubleStorage -> IO ())

-- | p_copyHalf : Pointer to function : state storage src -> void
foreign import ccall "THCStorageCopy.h &THCudaFloatStorage_copyHalf"
  p_copyHalf :: FunPtr (Ptr C'THCState -> Ptr C'THCFloatStorage -> Ptr C'THHalfStorage -> IO ())

-- | p_thCopyCuda : Pointer to function : state self src -> void
foreign import ccall "THCStorageCopy.h &THFloatStorage_copyCuda"
  p_thCopyCuda :: FunPtr (Ptr C'THCState -> Ptr C'THFloatStorage -> Ptr C'THCFloatStorage -> IO ())

-- | p_copyCuda : Pointer to function : state self src -> void
foreign import ccall "THCStorageCopy.h &THCudaFloatStorage_copyCuda"
  p_copyCuda :: FunPtr (Ptr C'THCState -> Ptr C'THCFloatStorage -> Ptr C'THCFloatStorage -> IO ())

-- | p_copyCPU : Pointer to function : state self src -> void
foreign import ccall "THCStorageCopy.h &THCudaFloatStorage_copyCPU"
  p_copyCPU :: FunPtr (Ptr C'THCState -> Ptr C'THCFloatStorage -> Ptr C'THFloatStorage -> IO ())