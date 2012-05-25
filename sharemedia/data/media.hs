{-# LANGUAGE TemplateHaskell,
             GeneralizedNewtypeDeriving,
             DeriveDataTypeable #-}
module Data.Media
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


data Media = Media
   { title     :: B.ByteString
   , mimeType  :: B.ByteString
   , url       :: B.ByteString
   , size      :: Int
   , timestamp :: UTCTime
   , active    :: Status
   , uuid      :: B.ByteString
   } deriving (Eq, Ord, Read, Show, Data, Typeable)


$(deriveSafeCopy 0 'base ''Media)


build :: B.ByteString -> B.ByteString -> B.ByteString -> Int -> UTCTime -> Status -> Either B.ByteString Media
build t mt u s time a
   | s < 1                            = Left  $ B.pack $ "Media size less than 1: " ++ (show s)
   | (B.length t) < 5                 = Left  $ B.concat [ B.pack "Media title invalid: "        , t  ]
   | not (elem (B.take 7 u) httpUrls) = Left  $ B.concat [ B.pack "Media URL unsupported: "      , u  ]
   | not (elem mt imageMimeTypes)     = Left  $ B.concat [ B.pack "Media MIME type unsupported: ", mt ]
   | otherwise                        = Right $ Media t mt u s time a uuid
      where uuid = genUuid t mt u s time


genUuid title mimeType url size timestamp =
   B.pack $ toString $ generateHashedUuid g1 g2 g3 g4
   where g1 = B.concat [ title, mimeType ]
         g2 = url
         g3 = B.pack $ show $ size
         g4 = B.pack $ show $ timestamp


newtype MediaUrl  = MediaUrl  B.ByteString deriving (Eq, Ord, Data, Typeable, SafeCopy)
newtype MediaUuid = MediaUuid B.ByteString deriving (Eq, Ord, Data, Typeable, SafeCopy)


instance Indexable Media where
    empty = ixSet [ ixFun $ \x -> [ MediaUrl $ url x ]
                  , ixFun $ \x -> [ MediaUuid $ uuid x ]
                  ]
