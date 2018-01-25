{-# LANGUAGE DeriveGeneric            #-}
{-# LANGUAGE ForeignFunctionInterface #-}

module Bindings.Ctp.MD
  ( CtpMDSpi (..)
  , OnFrontConnected
  , OnFrontDisconnected
  , OnHeartBeatWarning
  , OnRspUserLogin
  , OnRspUserLogout
  , OnRspError
  , OnRspSubMarketData
  , OnRspUnSubMarketData
  , OnRspSubForQuoteRsp
  , OnRspUnSubForQuoteRsp
  , OnRtnDepthMarketData
  , OnRtnForQuoteRsp
  , MDObject
  , create
  , release
  , getApiVersion
  , initialize
  , getTradingDay
  , registerFront
  , registerNameServer
  , registerFensUserInfo
  , registerSpi
  , subscribeMarketData
  , unSubscribeMarketData
  , subscribeForQuoteRsp
  , unSubscribeForQuoteRsp
  , reqUserLogin
  , reqUserLogout
  ) where

{#import Bindings.Ctp.Struct#}
import Bindings.Ctp.Utils
import Data.Default
import Foreign.C.Types
import Foreign.Marshal.Utils
import Foreign.Ptr
import Foreign.Storable
import GHC.Generics

#include "ffi.h"

type OnFrontConnected      = IO ()
type OnFrontDisconnected   = Int -> IO ()
type OnHeartBeatWarning    = Int -> IO ()
type OnRspUserLogin        = CThostFtdcRspUserLoginField -> CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRspUserLogout       = CThostFtdcUserLogoutField -> CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRspError            = CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRspSubMarketData    = CThostFtdcSpecificInstrumentField -> CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRspUnSubMarketData  = CThostFtdcSpecificInstrumentField -> CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRspSubForQuoteRsp   = CThostFtdcSpecificInstrumentField -> CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRspUnSubForQuoteRsp = CThostFtdcSpecificInstrumentField -> CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRtnDepthMarketData  = CThostFtdcDepthMarketDataField -> IO ()
type OnRtnForQuoteRsp      = CThostFtdcForQuoteRspField -> IO ()

type OnFrontConnected'      = IO ()
type OnFrontDisconnected'   = CInt -> IO ()
type OnHeartBeatWarning'    = CInt -> IO ()
type OnRspUserLogin'        = CThostFtdcRspUserLoginFieldPtr -> CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRspUserLogout'       = CThostFtdcUserLogoutFieldPtr -> CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRspError'            = CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRspSubMarketData'    = CThostFtdcSpecificInstrumentFieldPtr -> CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRspUnSubMarketData'  = CThostFtdcSpecificInstrumentFieldPtr -> CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRspSubForQuoteRsp'   = CThostFtdcSpecificInstrumentFieldPtr -> CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRspUnSubForQuoteRsp' = CThostFtdcSpecificInstrumentFieldPtr -> CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRtnDepthMarketData'  = CThostFtdcDepthMarketDataFieldPtr -> IO ()
type OnRtnForQuoteRsp'      = CThostFtdcForQuoteRspFieldPtr -> IO ()

foreign import ccall "wrapper" wrapOnFrontConnected      :: OnFrontConnected' -> IO (FunPtr OnFrontConnected')
foreign import ccall "wrapper" wrapOnFrontDisconnected   :: OnFrontDisconnected' -> IO (FunPtr OnFrontDisconnected')
foreign import ccall "wrapper" wrapOnHeartBeatWarning    :: OnHeartBeatWarning' -> IO (FunPtr OnHeartBeatWarning')
foreign import ccall "wrapper" wrapOnRspUserLogin        :: OnRspUserLogin' -> IO (FunPtr OnRspUserLogin')
foreign import ccall "wrapper" wrapOnRspUserLogout       :: OnRspUserLogout' -> IO (FunPtr OnRspUserLogout')
foreign import ccall "wrapper" wrapOnRspError            :: OnRspError' -> IO (FunPtr OnRspError')
foreign import ccall "wrapper" wrapOnRspSubMarketData    :: OnRspSubMarketData' -> IO (FunPtr OnRspSubMarketData')
foreign import ccall "wrapper" wrapOnRspUnSubMarketData  :: OnRspUnSubMarketData' -> IO (FunPtr OnRspUnSubMarketData')
foreign import ccall "wrapper" wrapOnRspSubForQuoteRsp   :: OnRspSubForQuoteRsp' -> IO (FunPtr OnRspSubForQuoteRsp')
foreign import ccall "wrapper" wrapOnRspUnSubForQuoteRsp :: OnRspUnSubForQuoteRsp' -> IO (FunPtr OnRspUnSubForQuoteRsp')
foreign import ccall "wrapper" wrapOnRtnDepthMarketData  :: OnRtnDepthMarketData' -> IO (FunPtr OnRtnDepthMarketData')
foreign import ccall "wrapper" wrapOnRtnForQuoteRsp      :: OnRtnForQuoteRsp' -> IO (FunPtr OnRtnForQuoteRsp')

data CtpMDSpi = CtpMDSpi
  { onFrontConnected      :: Maybe OnFrontConnected
  , onFrontDisconnected   :: Maybe OnFrontDisconnected
  , onHeartBeatWarning    :: Maybe OnHeartBeatWarning
  , onRspUserLogin        :: Maybe OnRspUserLogin
  , onRspUserLogout       :: Maybe OnRspUserLogout
  , onRspError            :: Maybe OnRspError
  , onRspSubMarketData    :: Maybe OnRspSubMarketData
  , onRspUnSubMarketData  :: Maybe OnRspUnSubMarketData
  , onRspSubForQuoteRsp   :: Maybe OnRspSubForQuoteRsp
  , onRspUnSubForQuoteRsp :: Maybe OnRspUnSubForQuoteRsp
  , onRtnDepthMarketData  :: Maybe OnRtnDepthMarketData
  , onRtnForQuoteRsp      :: Maybe OnRtnForQuoteRsp
  } deriving (Generic)

instance Default CtpMDSpi

data CtpMDSpiFFI = CtpMDSpiFFI
  { ffiOnFrontConnected      :: FunPtr OnFrontConnected'
  , ffiOnFrontDisconnected   :: FunPtr OnFrontDisconnected'
  , ffiOnHeartBeatWarning    :: FunPtr OnHeartBeatWarning'
  , ffiOnRspUserLogin        :: FunPtr OnRspUserLogin'
  , ffiOnRspUserLogout       :: FunPtr OnRspUserLogout'
  , ffiOnRspError            :: FunPtr OnRspError'
  , ffiOnRspSubMarketData    :: FunPtr OnRspSubMarketData'
  , ffiOnRspUnSubMarketData  :: FunPtr OnRspUnSubMarketData'
  , ffiOnRspSubForQuoteRsp   :: FunPtr OnRspSubForQuoteRsp'
  , ffiOnRspUnSubForQuoteRsp :: FunPtr OnRspUnSubForQuoteRsp'
  , ffiOnRtnDepthMarketData  :: FunPtr OnRtnDepthMarketData'
  , ffiOnRtnForQuoteRsp      :: FunPtr OnRtnForQuoteRsp'
  }

{#pointer *CtpMDSpiFFI as CtpMDSpiFFIPtr -> CtpMDSpiFFI#}

instance Storable CtpMDSpiFFI where
  sizeOf _ = {#sizeof CtpMDSpiFFI#}
  alignment _ = {#alignof CtpMDSpiFFI#}
  peek _ = error "unimplemented"
  poke p s = do
    {#set CtpMDSpiFFI->ffiOnFrontConnected#} p $ ffiOnFrontConnected s
    {#set CtpMDSpiFFI->ffiOnFrontDisconnected#} p $ ffiOnFrontDisconnected s
    {#set CtpMDSpiFFI->ffiOnHeartBeatWarning#} p $ ffiOnHeartBeatWarning s
    {#set CtpMDSpiFFI->ffiOnRspUserLogin#} p $ ffiOnRspUserLogin s
    {#set CtpMDSpiFFI->ffiOnRspUserLogout#} p $ ffiOnRspUserLogout s
    {#set CtpMDSpiFFI->ffiOnRspError#} p $ ffiOnRspError s
    {#set CtpMDSpiFFI->ffiOnRspSubMarketData#} p $ ffiOnRspSubMarketData s
    {#set CtpMDSpiFFI->ffiOnRspUnSubMarketData#} p $ ffiOnRspUnSubMarketData s
    {#set CtpMDSpiFFI->ffiOnRspSubForQuoteRsp#} p $ ffiOnRspSubForQuoteRsp s
    {#set CtpMDSpiFFI->ffiOnRspUnSubForQuoteRsp#} p $ ffiOnRspUnSubForQuoteRsp s
    {#set CtpMDSpiFFI->ffiOnRtnDepthMarketData#} p $ ffiOnRtnDepthMarketData s
    {#set CtpMDSpiFFI->ffiOnRtnForQuoteRsp#} p $ ffiOnRtnForQuoteRsp s

{#pointer MDObject#}

{#fun mdCreate as create {`String', `Bool', `Bool'} -> `MDObject'#}
{#fun mdRelease as release {`MDObject'} -> `()'#}
{#fun mdGetApiVersion as getApiVersion {} -> `String'#}
{#fun mdInitialize as initialize {`MDObject'} -> `()'#}
{#fun mdGetTradingDay as getTradingDay {`MDObject'} -> `String'#}
{#fun mdRegisterFront as registerFront {`MDObject', `String'} -> `()'#}
{#fun mdRegisterNameServer as registerNameServer {`MDObject', `String'} -> `()'#}
{#fun mdRegisterFensUserInfo as registerFensUserInfo {`MDObject', with* `CThostFtdcFensUserInfoField'} -> `()'#}
{#fun mdRegisterSpi as registerSpi {`MDObject', withCtpMDSpiFFI* `CtpMDSpi'} -> `()'#}
{#fun mdSubscribeMarketData as subscribeMarketData {`MDObject', `String'} -> `Int'#}
{#fun mdUnSubscribeMarketData as unSubscribeMarketData {`MDObject', `String'} -> `Int'#}
{#fun mdSubscribeForQuoteRsp as subscribeForQuoteRsp {`MDObject', `String'} -> `Int'#}
{#fun mdUnSubscribeForQuoteRsp as unSubscribeForQuoteRsp {`MDObject', `String'} -> `Int'#}
{#fun mdReqUserLogin as reqUserLogin {`MDObject', with* `CThostFtdcReqUserLoginField', `Int'} -> `Int'#}
{#fun mdReqUserLogout as reqUserLogout {`MDObject', with* `CThostFtdcUserLogoutField', `Int'} -> `Int'#}

withCtpMDSpiFFI:: CtpMDSpi -> (CtpMDSpiFFIPtr -> IO ()) -> IO ()
withCtpMDSpiFFI spi f =
  let n = return nullFunPtr in
    CtpMDSpiFFI <$>
    maybe n wrapOnFrontConnected (onFrontConnected spi) <*>
    maybe n (wrapOnFrontDisconnected . wrapSpiF1') (onFrontDisconnected spi) <*>
    maybe n (wrapOnHeartBeatWarning . wrapSpiF1') (onHeartBeatWarning spi) <*>
    maybe n (wrapOnRspUserLogin . wrapSpiF4) (onRspUserLogin spi) <*>
    maybe n (wrapOnRspUserLogout . wrapSpiF4) (onRspUserLogout spi) <*>
    maybe n (wrapOnRspError . wrapSpiF3) (onRspError spi) <*>
    maybe n (wrapOnRspSubMarketData . wrapSpiF4) (onRspSubMarketData spi) <*>
    maybe n (wrapOnRspUnSubMarketData . wrapSpiF4) (onRspUnSubMarketData spi) <*>
    maybe n (wrapOnRspSubForQuoteRsp . wrapSpiF4) (onRspSubForQuoteRsp spi) <*>
    maybe n (wrapOnRspUnSubForQuoteRsp . wrapSpiF4) (onRspUnSubForQuoteRsp spi) <*>
    maybe n (wrapOnRtnDepthMarketData . wrapSpiF1) (onRtnDepthMarketData spi) <*>
    maybe n (wrapOnRtnForQuoteRsp . wrapSpiF1) (onRtnForQuoteRsp spi) >>=
    flip with f
