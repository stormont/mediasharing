{-# LANGUAGE NoMonomorphismRestriction #-}
module Main
   where

import Control.Monad
import Control.Exception (bracket)
import Data.Time
import Data.Acid (AcidState, openLocalState)
import Data.Acid.Advanced (query', update')
import Data.Acid.Local (createCheckpointAndClose)
import Happstack.Server (nullConf, simpleHTTP, ok, badRequest, Method(GET, POST), dir, methodM, look, ServerPart, Response, nullDir, toResponse)
import qualified Data.ByteString.Char8 as B

import Lib
import Data.Database
import Data.Utility
import qualified Data.Contact as C




main :: IO ()
main = do
   t <- getCurrentTime
   bracket (openLocalState initDatabase)
           (createCheckpointAndClose)
           (\acid -> simpleHTTP nullConf (handlers t acid))


handlers :: UTCTime -> AcidState Database -> ServerPart Response
handlers t acid = msum
   [ dir "signup"  $ signupHandler t acid
   , dir "send"    $ sendHandler
   , dir "receive" $ receiveHandler
   , dir "peek"    $ peekHandler acid
   ]


peekHandler acid = msum
   [ do
      methodM GET
      countryCode <- look "cc"
      phone <- (look "p" >>= validateInt)
      let p = InternationalPhone (B.pack countryCode) (read phone)
      c <- query' acid (ContactByPhone $ C.ContactPhone p)
      case c of
         Nothing -> ok $ toResponse $ "Peeked, but no contact found"
         Just x  -> ok $ toResponse $ "Peeked at the contact and saw: " ++ (B.unpack $ C.name x)
   ]


signupHandler t acid = msum
   [ do
      methodM GET
      user <- look "u"
      countryCode <- look "cc"
      phone <- (look "p" >>= validateInt)
      let p = InternationalPhone (B.pack countryCode) (read phone)
          c = C.build (B.pack user) p t Active
      case c of
         Left  m -> badRequest $ toResponse $ B.unpack m
         Right x -> do
            r <- update' acid (InsertContact x)
            ok $ toResponse $ "New contact is: " ++ (B.unpack $ C.name r)
   ]


sendHandler = msum
   [ do
      methodM GET
      fromUser        <- look "fu"
      fromPhone       <- look "fp"
      fromCountryCode <- look "fcc"
      toCountryCode   <- look "tcc"
      mTitle          <- look "mt"
      mMimeType       <- look "mmt"
      mUrl            <- look "mu"
      toPhone         <- (look "tp" >>= validateInt)
      mSize           <- (look "ms" >>= validateInt)
      ok $ toResponse "Sending!"
   ]


receiveHandler = msum
   [ do
      methodM GET
      user        <- look "u"
      countryCode <- look "cc"
      phone       <- (look "p" >>= validateInt)
      ok $ toResponse "Checking receive!"
   , do
      methodM POST
      user        <- look "u"
      countryCode <- look "cc"
      phone       <- (look "p" >>= validateInt)
      ok $ toResponse "Receive complete!"
   ]
