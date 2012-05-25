{-# LANGUAGE TemplateHaskell,
             GeneralizedNewtypeDeriving,
             DeriveDataTypeable #-}
module Data.Utility
   where

import Data.UUID
import Data.UUID.V5
import Data.Data (Data, Typeable)
import Data.SafeCopy (base, deriveSafeCopy)
import Data.ByteString.Internal (c2w)
import qualified Data.ByteString.Char8 as B

import Data.Constants


generateHashedUuid g1 g2 g3 g4 = generateNamed namespaceX500
                               $ map c2w
                               $ B.unpack s
   where s = B.concat [ g1, g2, g3, g4 ]


data Status = Active
            | Inactive
            deriving (Eq, Ord, Read, Show, Data, Typeable)


$(deriveSafeCopy 0 'base ''Status)


data InternationalPhone = InternationalPhone
   { country   :: B.ByteString
   , phone     :: Int
   } deriving (Eq, Ord, Read, Show, Data, Typeable)


$(deriveSafeCopy 0 'base ''InternationalPhone)


buildPhone :: B.ByteString -> Int -> Either B.ByteString InternationalPhone
buildPhone c p
   | p < 1                        = Left  $ B.pack $ "Phone less than 1: " ++ (show p)
   | not (elem c isoCountryCodes) = Left  $ B.concat [ B.pack "Country unsupported: ", c ]
   | otherwise                    = Right $ InternationalPhone c p
