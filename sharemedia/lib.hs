
module Lib
   where

import Control.Monad
import Data.Char (isNumber)


validateInt x =
   if all isNumber x
     then return x
     else mzero
