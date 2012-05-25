
module Main
   where

import Test.QuickCheck
import qualified Data.ByteString.Char8 as B

import qualified Data.Contact as C


main = do
   putStrLn "Done"


propBuildContact_phoneLessThanOne t n c p a =
   p < 1 ==> do
      case C.build (B.pack n) (B.pack c) p t a of
         Left  _ -> True
         Right _ -> False


propBuildContact_nameEmpty t n c p a =
   (n == []) && (p > 0) ==> do
      case C.build (B.pack n) (B.pack c) p t a of
         Left  _ -> True
         Right _ -> False
