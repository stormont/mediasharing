{-# LANGUAGE TemplateHaskell,
             GeneralizedNewtypeDeriving,
             DeriveDataTypeable,
             TypeFamilies,
             RecordWildCards #-}
module Data.Database
   where

import Control.Monad.Reader (ask)
import Control.Monad.State (get, put)
import Data.SafeCopy (base, deriveSafeCopy)
import Data.Acid (Query, Update, makeAcidic)
import Data.Data (Data, Typeable)
import Data.IxSet (Indexable(..), IxSet(..), (@=), getOne)
import qualified Data.ByteString.Char8 as B
import qualified Data.IxSet as IxSet

import Data.Contact
import Data.Media
import Data.Share


data Database = Database
   { contacts :: IxSet Contact
   , media    :: IxSet Media
   , shares   :: IxSet Share
   } deriving (Data, Typeable)


$(deriveSafeCopy 0 'base ''Database)


initDatabase = Database empty empty empty


insertContact :: Contact -> Update Database Contact
insertContact c = do
   db@Database{..} <- get
   put $ db { contacts = IxSet.insert c contacts }
   return c


contactByUuid :: ContactUuid -> Query Database (Maybe Contact)
contactByUuid u = do
   Database{..} <- ask
   return $ getOne $ contacts @= u


contactByPhone :: ContactPhone -> Query Database (Maybe Contact)
contactByPhone p = do
   Database{..} <- ask
   return $ getOne $ contacts @= p


$(makeAcidic ''Database
             [ 'insertContact
             , 'contactByUuid
             , 'contactByPhone
             ])
