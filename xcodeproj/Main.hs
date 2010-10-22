{-# LANGUAGE ForeignFunctionInterface #-}

import Foreign
import Foreign.C.Types

foreign import ccall "Cocoa.h NSApplicationMain" 
    c_NSApplicationMain :: CInt -> Ptr (Ptr CChar) -> IO CInt
    
foreign export ccall convert :: CFloat -> CFloat -> IO CFloat

convert :: CFloat -> CFloat -> IO CFloat
convert amount rate = return (amount * rate)

main = c_NSApplicationMain 0 nullPtr