{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE OverloadedStrings     #-}
{-# LANGUAGE RecordWildCards       #-}

module Main
  ( main
  ) where

import           Bindings.Ctp.Define
import           Bindings.Ctp.Struct
import           Bindings.Ctp.TD
import           Control.Concurrent.STM
import           Control.Monad
import           Data.Default
import           Data.Monoid            ((<>))
import           Data.Text              (Text)
import qualified Data.Text              as T
import qualified Data.Text.IO           as T
import           Options.Applicative

data TDConfig = TDConfig
  { userID   :: Text
  , password :: Text
  , brokerID :: Text
  , front    :: Text
  } deriving (Show)

data TDState = TDState
  { cfg   :: TDConfig
  , reqID :: TVar Int
  , api   :: Object
  }

incReqID :: TDState -> IO Int
incReqID TDState {..} = atomically $ modifyTVar reqID (+ 1) >> readTVar reqID

unlessErrorRspInfo :: CThostFtdcRspInfoField -> IO () -> IO ()
unlessErrorRspInfo CThostFtdcRspInfoField {..} a =
  if errorID /= 0
    then T.putStrLn $ "Error: (" <> (T.pack . show) errorID <> ") " <> errorMsg
    else a

onFrontConnected' :: TDState -> OnFrontConnected
onFrontConnected' s@TDState {..} = do
  putStrLn "onFrontConnected ..."
  void $ incReqID s >>= reqUserLogin api (req cfg)
  where
    req :: TDConfig -> CThostFtdcReqUserLoginField
    req TDConfig {..} =
      def {brokerID = brokerID, userID = userID, password = password}

onRspUserLogin' :: TDState -> OnRspUserLogin
onRspUserLogin' s@TDState {..} _ rspInfo _ _ = do
  putStrLn "onRspUserLogin ..."
  unlessErrorRspInfo rspInfo $ do
    getTradingDay api >>= T.putStrLn . ("交易日: " <>)
    void $ incReqID s >>= reqSettlementInfoConfirm api (req cfg)
  where
    req :: TDConfig -> CThostFtdcSettlementInfoConfirmField
    req TDConfig {..} = def {investorID = userID, brokerID = brokerID}

onRspSettlementInfoConfirm' :: TDState -> OnRspSettlementInfoConfirm
onRspSettlementInfoConfirm' s@TDState {..} _ rspInfo _ _ = do
  putStrLn "onRspSettlementInfoConfirm ..."
  unlessErrorRspInfo rspInfo . void $ incReqID s >>= reqQryInstrument api req
  where
    req :: CThostFtdcQryInstrumentField
    req = def

onRspQryInstrument' :: OnRspQryInstrument
onRspQryInstrument' CThostFtdcInstrumentField {..} _ _ _ =
  T.putStrLn $ "> " <> instrumentName

main :: IO ()
main = do
  cfg' <- execParser opts
  zeroReqID <- atomically $ newTVar 0
  td <- create "/tmp/ctphstd"
  let s = TDState {cfg = cfg', reqID = zeroReqID, api = td}
  getApiVersion >>= T.putStrLn
  registerSpi
    td
    def
    { onFrontConnected = Just $ onFrontConnected' s
    , onRspUserLogin = Just $ onRspUserLogin' s
    , onRspSettlementInfoConfirm = Just $ onRspSettlementInfoConfirm' s
    , onRspQryInstrument = Just onRspQryInstrument'
    }
  subscribePublicTopic td ThostTertRestart
  subscribePrivateTopic td ThostTertRestart
  registerFront td . front $ cfg s
  initialize td
  _ <- getLine
  release td
  where
    opts :: ParserInfo TDConfig
    opts = info (tdConfig <**> helper) fullDesc
    tdConfig :: Parser TDConfig
    tdConfig =
      TDConfig <$>
      strOption (long "user" <> short 'u' <> metavar "USER" <> help "用户编号") <*>
      strOption (long "password" <> short 'p' <> metavar "PWD" <> help "用户密码") <*>
      strOption
        (long "broker" <> short 'b' <> metavar "BROKER" <> value "9999" <>
         help "经纪商编号") <*>
      strOption
        (long "front" <> short 'f' <> metavar "ADDR" <>
         value "tcp://180.168.146.187:10000" <>
         help "交易前置地址")
