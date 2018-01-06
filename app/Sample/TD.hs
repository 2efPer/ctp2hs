{-# LANGUAGE DuplicateRecordFields #-}

module Main
  ( main
  ) where

import Bindings.Ctp.Define
import Bindings.Ctp.Struct
import Bindings.Ctp.TD
import Control.Concurrent.STM
import Control.Monad
import Data.Monoid            ((<>))
import Options.Applicative

data TDConfig = TDConfig
  { userID   :: String
  , password :: String
  , brokerID :: String
  , front    :: String
  } deriving (Show)

data TDState = TDState
  { cfg   :: TDConfig
  , reqID :: TVar Int
  , api   :: TDObject
  }

incReqID :: TDState -> IO Int
incReqID s =
  let r = reqID (s :: TDState)
  in atomically $ modifyTVar r (+ 1) >> readTVar r

errorRspInfo :: CThostFtdcRspInfoField -> Maybe (Int, String)
errorRspInfo rspInfo = do
  guard $ errorID (rspInfo :: CThostFtdcRspInfoField) /= 0
  return
    ( errorID (rspInfo :: CThostFtdcRspInfoField)
    , errorMsg (rspInfo :: CThostFtdcRspInfoField))

onFrontConnected' :: TDState -> OnFrontConnected
onFrontConnected' s = do
  putStrLn "onFrontConnected ..."
  void $ incReqID s >>= tdReqUserLogin (api s) req
  where
    req :: CThostFtdcReqUserLoginField
    req =
      let c = cfg s
      in CThostFtdcReqUserLoginField
           ""
           ""
           ""
           ""
           ""
           ""
           ""
           (password (c :: TDConfig))
           (userID (c :: TDConfig))
           (brokerID (c :: TDConfig))
           ""

onRspUserLogin' :: TDState -> OnRspUserLogin
onRspUserLogin' s _ rspInfo _ _ = do
  putStrLn "onRspUserLogin ..."
  let td = api s
  case errorRspInfo rspInfo of
    Just (eid, emsg) -> putStrLn $ "Error: (" ++ show eid ++ ") " ++ emsg
    Nothing -> do
      day <- tdGetTradingDay td
      putStrLn $ "交易日: " ++ day
      void $ incReqID s >>= tdReqSettlementInfoConfirm td req
  where
    req :: CThostFtdcSettlementInfoConfirmField
    req =
      let c = cfg s
      in CThostFtdcSettlementInfoConfirmField
           ""
           ""
           (userID (c :: TDConfig))
           (brokerID (c :: TDConfig))

onRspSettlementInfoConfirm' :: TDState -> OnRspSettlementInfoConfirm
onRspSettlementInfoConfirm' s _ rspInfo _ _ = do
  putStrLn "onRspSettlementInfoConfirm ..."
  let td = api s
  case errorRspInfo rspInfo of
    Just (eid, emsg) -> putStrLn $ "Error: (" ++ show eid ++ ") " ++ emsg
    Nothing          -> void $ incReqID s >>= tdReqQryInstrument td req
  where
    req :: CThostFtdcQryInstrumentField
    req = CThostFtdcQryInstrumentField "" "" "" ""

onRspQryInstrument' :: OnRspQryInstrument
onRspQryInstrument' dat _ _ _ =
  putStrLn $ "> " ++ instrumentName (dat :: CThostFtdcInstrumentField)

main :: IO ()
main = do
  cfg' <- execParser opts
  zeroReqID <- atomically $ newTVar 0
  td <- tdCreate "/tmp/ctphstd"
  let s = TDState {cfg = cfg', reqID = zeroReqID, api = td}
  tdGetApiVersion >>= putStrLn
  tdRegisterSpi td $
    defaultCtpTDSpi
    { onFrontConnected = Just $ onFrontConnected' s
    , onRspUserLogin = Just $ onRspUserLogin' s
    , onRspSettlementInfoConfirm = Just $ onRspSettlementInfoConfirm' s
    , onRspQryInstrument = Just onRspQryInstrument'
    }
  tdSubscribePublicTopic td ThostTertRestart
  tdSubscribePrivateTopic td ThostTertRestart
  tdRegisterFront td . front $ cfg s
  tdInit td
  _ <- getLine
  tdRelease td
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
