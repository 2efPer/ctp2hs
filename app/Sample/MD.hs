{-# LANGUAGE DuplicateRecordFields #-}

module Main
  ( main
  ) where

import Bindings.Ctp.MD
import Bindings.Ctp.Struct
import Control.Concurrent.STM
import Control.Monad
import Data.Monoid            ((<>))
import Options.Applicative

data MDConfig = MDConfig
  { userID     :: String
  , password   :: String
  , brokerID   :: String
  , front      :: String
  , instrument :: String
  } deriving (Show)

data MDState = MDState
  { cfg   :: MDConfig
  , reqID :: TVar Int
  , api   :: MDObject
  }

incReqID :: MDState -> IO Int
incReqID s =
  let r = reqID (s :: MDState)
  in atomically $ modifyTVar r (+ 1) >> readTVar r

errorRspInfo :: CThostFtdcRspInfoField -> Maybe (Int, String)
errorRspInfo rspInfo = do
  guard $ errorID (rspInfo :: CThostFtdcRspInfoField) /= 0
  return
    ( errorID (rspInfo :: CThostFtdcRspInfoField)
    , errorMsg (rspInfo :: CThostFtdcRspInfoField))

onFrontConnected' :: MDState -> OnFrontConnected
onFrontConnected' s = do
  putStrLn "onFrontConnected ..."
  void $ incReqID s >>= mdReqUserLogin (api s) req
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
           (password (c :: MDConfig))
           (userID (c :: MDConfig))
           (brokerID (c :: MDConfig))
           ""

onRspUserLogin' :: MDState -> OnRspUserLogin
onRspUserLogin' s _ rspInfo _ _ = do
  putStrLn "onRspUserLogin ..."
  let md = api s
  case errorRspInfo rspInfo of
    Just (eid, emsg) -> putStrLn $ "Error: (" ++ show eid ++ ") " ++ emsg
    Nothing -> do
      day <- mdGetTradingDay md
      putStrLn $ "交易日: " ++ day
      void $ mdSubscribeMarketData md (instrument . cfg $ s)

onRtnDepthMarketData' :: OnRtnDepthMarketData
onRtnDepthMarketData' = putStrLn . (++ "\n") . show

main :: IO ()
main = do
  cfg' <- execParser opts
  zeroReqID <- atomically $ newTVar 0
  md <- mdCreate "/tmp/ctphsmd" False False
  let s = MDState {cfg = cfg', reqID = zeroReqID, api = md}
  mdGetApiVersion >>= putStrLn
  mdRegisterSpi md $
    defaultCtpMDSpi
    { onFrontConnected = Just $ onFrontConnected' s
    , onRspUserLogin = Just $ onRspUserLogin' s
    , onRtnDepthMarketData = Just onRtnDepthMarketData'
    }
  mdRegisterFront md . front $ cfg s
  mdInit md
  _ <- getLine
  mdRelease md
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
