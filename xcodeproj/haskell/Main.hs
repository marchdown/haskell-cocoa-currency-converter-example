{-# LANGUAGE ForeignFunctionInterface #-}
import Foreign
import Foreign.C.Types

foreign import ccall "Cocoa.h NSApplicationMain" 
    c_NSApplicationMain :: CInt -> Ptr (Ptr CChar) -> IO CInt
foreign export ccall convert :: CDouble -> CDouble -> CDouble

convert :: CDouble -> CDouble -> CDouble
convert amount rate = amount * rate

main = c_NSApplicationMain 0 nullPtr