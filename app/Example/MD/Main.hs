{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE OverloadedStrings     #-}
{-# LANGUAGE RecordWildCards       #-}

module Main
  ( main
  ) where

import           Bindings.Ctp.MD
import           Bindings.Ctp.Struct
import           Control.Concurrent.STM
import           Control.Monad
import           Data.Default
import           Data.Monoid            ((<>))
import           Data.Text              (Text)
import qualified Data.Text              as T
import qualified Data.Text.IO           as T
import           Options.Applicative

data MDConfig = MDConfig
  { userID     :: Text
  , password   :: Text
  , brokerID   :: Text
  , front      :: Text
  , instrument :: Text
  } deriving (Show)

data MDState = MDState
  { cfg   :: MDConfig
  , reqID :: TVar Int
  , api   :: Object
  }

incReqID :: MDState -> IO Int
incReqID MDState {..} = atomically $ modifyTVar reqID (+ 1) >> readTVar reqID

unlessErrorRspInfo :: CThostFtdcRspInfoField -> IO () -> IO ()
unlessErrorRspInfo CThostFtdcRspInfoField {..} a =
  if errorID /= 0
    then T.putStrLn $ "Error: (" <> (T.pack . show) errorID <> ") " <> errorMsg
    else a

onFrontConnected' :: MDState -> OnFrontConnected
onFrontConnected' s@MDState {..} = do
  putStrLn "onFrontConnected ..."
  void $ incReqID s >>= reqUserLogin api (req cfg)
  where
    req :: MDConfig -> CThostFtdcReqUserLoginField
    req MDConfig {..} =
      def {brokerID = brokerID, userID = userID, password = password}

onRspUserLogin' :: MDState -> OnRspUserLogin
onRspUserLogin' MDState {..} _ rspInfo _ _ = do
  putStrLn "onRspUserLogin ..."
  unlessErrorRspInfo rspInfo $ do
    getTradingDay api >>= T.putStrLn . ("交易日: " <>)
    void $ subscribeMarketData api $ instrument cfg

onRtnDepthMarketData' :: OnRtnDepthMarketData
onRtnDepthMarketData' = putStrLn . (++ "\n") . show

main :: IO ()
main = do
  cfg' <- execParser opts
  zeroReqID <- newTVarIO 0
  md <- create "/tmp/ctphsmd" False False
  let s = MDState {cfg = cfg', reqID = zeroReqID, api = md}
  getApiVersion >>= T.putStrLn
  registerSpi
    md
    def
    { onFrontConnected = Just $ onFrontConnected' s
    , onRspUserLogin = Just $ onRspUserLogin' s
    , onRtnDepthMarketData = Just onRtnDepthMarketData'
    }
  registerFront md $ front cfg'
  initialize md
  _ <- getLine
  release md
  where
    opts :: ParserInfo MDConfig
    opts = info (mdConfig <**> helper) fullDesc
    mdConfig :: Parser MDConfig
    mdConfig =
      MDConfig <$>
      strOption (long "user" <> short 'u' <> metavar "USER" <> help "用户编号") <*>
      strOption (long "password" <> short 'p' <> metavar "PWD" <> help "用户密码") <*>
      strOption
        (long "broker" <> short 'b' <> metavar "BROKER" <> value "9999" <>
         help "经纪商编号") <*>
      strOption
        (long "front" <> short 'f' <> metavar "ADDR" <>
         value "tcp://180.168.146.187:10010" <>
         help "行情前置地址") <*>
      strOption
        (long "instrument" <> short 'i' <> metavar "INST" <> value "rb1805" <>
         help "订阅合约编号")
