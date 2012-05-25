{-# LANGUAGE TemplateHaskell,
             GeneralizedNewtypeDeriving,
             DeriveDataTypeable #-}
module Data.Share
   where

import Data.Time
import Data.UUID
import Data.Data (Data, Typeable)
import Data.SafeCopy (SafeCopy(..), base, deriveSafeCopy)
import Data.IxSet (Indexable(..), ixFun, ixSet)
import qualified Data.ByteString.Char8 as B

import Data.Utility
import Data.Constants
import qualified Data.Contact as C
import qualified Data.Media as M


data Share = Share
   { fromUuid  :: B.ByteString
   , toUuid    :: B.ByteString
   , mediaUuid :: B.ByteString
   , timestamp :: UTCTime
   , active    :: Status
   , uuid      :: B.ByteString
   } deriving (Eq, Ord, Read, Show, Data, Typeable)


$(deriveSafeCopy 0 'base ''Share)


build f t m time a = Share (C.uuid f) (C.uuid t) (M.uuid m) time a uuid
   where uuid = genUuid f t m time


genUuid from to media timestamp =
   B.pack $ toString $ generateHashedUuid g1 g2 g3 g4
   where g1 = C.uuid from
         g2 = C.uuid to
         g3 = M.uuid media
         g4 = B.pack $ show timestamp


newtype FromUuid  = FromUuid  B.ByteString deriving (Eq, Ord, Data, Typeable, SafeCopy)
newtype ToUuid    = ToUuid    B.ByteString deriving (Eq, Ord, Data, Typeable, SafeCopy)
newtype ShareUuid = ShareUuid B.ByteString deriving (Eq, Ord, Data, Typeable, SafeCopy)


instance Indexable Share where
    empty = ixSet [ ixFun $ \x -> [ FromUuid $ fromUuid x ]
                  , ixFun $ \x -> [ ToUuid $ toUuid x ]
                  , ixFun $ \x -> [ ShareUuid $ uuid x ]
                  ]
