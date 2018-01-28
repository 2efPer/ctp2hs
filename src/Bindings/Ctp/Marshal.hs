module Bindings.Ctp.Marshal
  ( withText
  , peekText
  , wrapSpiF1
  , wrapSpiF1'
  , wrapSpiF2
  , wrapSpiF3
  , wrapSpiF4
  ) where

import           Control.Arrow
import           Control.Monad
import           Data.Text        (Text)
import qualified Data.Text        as T
import           Foreign.C.String
import           Foreign.C.Types
import           Foreign.Ptr
import           Foreign.Storable

withText :: Text -> (CString -> IO a) -> IO a
withText t = withCString $ T.unpack t

peekText :: CString -> IO Text
peekText = fmap T.pack . peekCString

wrapSpiF1 :: Storable a => (a -> IO ()) -> Ptr a -> IO ()
wrapSpiF1 = (peek >=>)

wrapSpiF1' :: (Int -> IO ()) -> CInt -> IO ()
wrapSpiF1' = (fromIntegral >>>)

wrapSpiF2 ::
     (Storable a, Storable b) => (a -> b -> IO ()) -> Ptr a -> Ptr b -> IO ()
wrapSpiF2 f a b = do
  a' <- peek a
  b' <- peek b
  f a' b'

wrapSpiF3 ::
     (Storable a)
  => (a -> Int -> Int -> IO ())
  -> Ptr a
  -> CInt
  -> CInt
  -> IO ()
wrapSpiF3 f a b c = do
  a' <- peek a
  f a' (fromIntegral b) (fromIntegral c)

wrapSpiF4 ::
     (Storable a, Storable b)
  => (a -> b -> Int -> Int -> IO ())
  -> Ptr a
  -> Ptr b
  -> CInt
  -> CInt
  -> IO ()
wrapSpiF4 f a b c d = do
  a' <- peek a
  b' <- peek b
  f a' b' (fromIntegral c) (fromIntegral d)
