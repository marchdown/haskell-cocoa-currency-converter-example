{-# LANGUAGE ForeignFunctionInterface #-}
 
module Convert where

import Foreign.C.Types

convert_currency_in_haskell :: CInt -> CInt -> CInt
convert_currency_in_haskell = (*)

foreign export ccall convert_currency_in_haskell :: CInt -> CInt -> CInt