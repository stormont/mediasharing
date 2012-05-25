{-# LANGUAGE TemplateHaskell,
             GeneralizedNewtypeDeriving,
             DeriveDataTypeable #-}
module Data.Contact
   where

import Data.Time
import Data.Either
import Data.UUID
import Data.Data (Data, Typeable)
import Data.SafeCopy (SafeCopy(..), base, deriveSafeCopy)
import Data.IxSet (Indexable(..), ixFun, ixSet)
import qualified Data.ByteString.Char8 as B

import Data.Utility
import Data.Constants
import qualified Data.Utility as U


data Contact = Contact
   { name      :: B.ByteString
   , phone     :: InternationalPhone
   , timestamp :: UTCTime
   , active    :: Status
   , uuid      :: B.ByteString
   } deriving (Eq, Ord, Read, Show, Data, Typeable)


$(deriveSafeCopy 0 'base ''Contact)


build :: B.ByteString -> InternationalPhone -> UTCTime -> Status -> Either B.ByteString Contact
build n p t a
   | n == B.empty = Left  $ B.concat [ B.pack "Contact name invalid: "       , n ]
   | otherwise    = Right $ Contact n p t a uuid
      where uuid = genUuid n (U.country p) (U.phone p) t


genUuid name country phone timestamp =
   B.pack $ toString $ generateHashedUuid g1 g2 g3 g4
   where g1 = name
         g2 = country
         g3 = B.pack $ show $ phone
         g4 = B.pack $ show $ timestamp


newtype ContactPhone = ContactPhone InternationalPhone deriving (Eq, Ord, Data, Typeable, SafeCopy)
newtype ContactUuid  = ContactUuid  B.ByteString       deriving (Eq, Ord, Data, Typeable, SafeCopy)


instance Indexable Contact where
    empty = ixSet [ ixFun $ \x -> [ ContactPhone $ Data.Contact.phone x ]
                  , ixFun $ \x -> [ ContactUuid $ uuid x ]
                  ]
