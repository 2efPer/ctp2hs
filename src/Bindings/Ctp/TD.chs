{-# LANGUAGE DeriveGeneric            #-}
{-# LANGUAGE ForeignFunctionInterface #-}

module Bindings.Ctp.TD
  ( CtpTDSpi (..)
  , OnFrontConnected
  , OnFrontDisconnected
  , OnHeartBeatWarning
  , OnRspAuthenticate
  , OnRspUserLogin
  , OnRspUserLogout
  , OnRspUserPasswordUpdate
  , OnRspTradingAccountPasswordUpdate
  , OnRspOrderInsert
  , OnRspParkedOrderInsert
  , OnRspParkedOrderAction
  , OnRspOrderAction
  , OnRspQueryMaxOrderVolume
  , OnRspSettlementInfoConfirm
  , OnRspRemoveParkedOrder
  , OnRspRemoveParkedOrderAction
  , OnRspExecOrderInsert
  , OnRspExecOrderAction
  , OnRspForQuoteInsert
  , OnRspQuoteInsert
  , OnRspQuoteAction
  , OnRspLockInsert
  , OnRspBatchOrderAction
  , OnRspCombActionInsert
  , OnRspQryOrder
  , OnRspQryTrade
  , OnRspQryInvestorPosition
  , OnRspQryTradingAccount
  , OnRspQryInvestor
  , OnRspQryTradingCode
  , OnRspQryInstrumentMarginRate
  , OnRspQryInstrumentCommissionRate
  , OnRspQryExchange
  , OnRspQryProduct
  , OnRspQryInstrument
  , OnRspQryDepthMarketData
  , OnRspQrySettlementInfo
  , OnRspQryTransferBank
  , OnRspQryInvestorPositionDetail
  , OnRspQryNotice
  , OnRspQrySettlementInfoConfirm
  , OnRspQryInvestorPositionCombineDetail
  , OnRspQryCFMMCTradingAccountKey
  , OnRspQryEWarrantOffset
  , OnRspQryInvestorProductGroupMargin
  , OnRspQryExchangeMarginRate
  , OnRspQryExchangeMarginRateAdjust
  , OnRspQryExchangeRate
  , OnRspQrySecAgentACIDMap
  , OnRspQryProductExchRate
  , OnRspQryProductGroup
  , OnRspQryMMInstrumentCommissionRate
  , OnRspQryMMOptionInstrCommRate
  , OnRspQryInstrumentOrderCommRate
  , OnRspQryOptionInstrTradeCost
  , OnRspQryOptionInstrCommRate
  , OnRspQryExecOrder
  , OnRspQryForQuote
  , OnRspQryQuote
  , OnRspQryLock
  , OnRspQryLockPosition
  , OnRspQryETFOptionInstrCommRate
  , OnRspQryInvestorLevel
  , OnRspQryExecFreeze
  , OnRspQryCombInstrumentGuard
  , OnRspQryCombAction
  , OnRspQryTransferSerial
  , OnRspQryAccountregister
  , OnRspError
  , OnRtnOrder
  , OnRtnTrade
  , OnErrRtnOrderInsert
  , OnErrRtnOrderAction
  , OnRtnInstrumentStatus
  , OnRtnBulletin
  , OnRtnTradingNotice
  , OnRtnErrorConditionalOrder
  , OnRtnExecOrder
  , OnErrRtnExecOrderInsert
  , OnErrRtnExecOrderAction
  , OnErrRtnForQuoteInsert
  , OnRtnQuote
  , OnErrRtnQuoteInsert
  , OnErrRtnQuoteAction
  , OnRtnForQuoteRsp
  , OnRtnCFMMCTradingAccountToken
  , OnRtnLock
  , OnErrRtnLockInsert
  , OnErrRtnBatchOrderAction
  , OnRtnCombAction
  , OnErrRtnCombActionInsert
  , OnRspQryContractBank
  , OnRspQryParkedOrder
  , OnRspQryParkedOrderAction
  , OnRspQryTradingNotice
  , OnRspQryBrokerTradingParams
  , OnRspQryBrokerTradingAlgos
  , OnRspQueryCFMMCTradingAccountToken
  , OnRtnFromBankToFutureByBank
  , OnRtnFromFutureToBankByBank
  , OnRtnRepealFromBankToFutureByBank
  , OnRtnRepealFromFutureToBankByBank
  , OnRtnFromBankToFutureByFuture
  , OnRtnFromFutureToBankByFuture
  , OnRtnRepealFromBankToFutureByFutureManual
  , OnRtnRepealFromFutureToBankByFutureManual
  , OnRtnQueryBankBalanceByFuture
  , OnErrRtnBankToFutureByFuture
  , OnErrRtnFutureToBankByFuture
  , OnErrRtnRepealBankToFutureByFutureManual
  , OnErrRtnRepealFutureToBankByFutureManual
  , OnErrRtnQueryBankBalanceByFuture
  , OnRtnRepealFromBankToFutureByFuture
  , OnRtnRepealFromFutureToBankByFuture
  , OnRspFromBankToFutureByFuture
  , OnRspFromFutureToBankByFuture
  , OnRspQueryBankAccountMoneyByFuture
  , OnRtnOpenAccountByBank
  , OnRtnCancelAccountByBank
  , OnRtnChangeAccountByBank
  , TDObject
  , create
  , release
  , getApiVersion
  , initialize
  , getTradingDay
  , registerFront
  , registerNameServer
  , registerFensUserInfo
  , registerSpi
  , subscribePrivateTopic
  , subscribePublicTopic
  , reqAuthenticate
  , reqUserLogin
  , reqUserLogout
  , reqUserPasswordUpdate
  , reqTradingAccountPasswordUpdate
  , reqOrderInsert
  , reqParkedOrderInsert
  , reqParkedOrderAction
  , reqOrderAction
  , reqQueryMaxOrderVolume
  , reqSettlementInfoConfirm
  , reqRemoveParkedOrder
  , reqRemoveParkedOrderAction
  , reqExecOrderInsert
  , reqExecOrderAction
  , reqForQuoteInsert
  , reqQuoteInsert
  , reqQuoteAction
  , reqLockInsert
  , reqBatchOrderAction
  , reqCombActionInsert
  , reqQryOrder
  , reqQryTrade
  , reqQryInvestorPosition
  , reqQryTradingAccount
  , reqQryInvestor
  , reqQryTradingCode
  , reqQryInstrumentMarginRate
  , reqQryInstrumentCommissionRate
  , reqQryExchange
  , reqQryProduct
  , reqQryInstrument
  , reqQryDepthMarketData
  , reqQrySettlementInfo
  , reqQryTransferBank
  , reqQryInvestorPositionDetail
  , reqQryNotice
  , reqQrySettlementInfoConfirm
  , reqQryInvestorPositionCombineDetail
  , reqQryCFMMCTradingAccountKey
  , reqQryEWarrantOffset
  , reqQryInvestorProductGroupMargin
  , reqQryExchangeMarginRate
  , reqQryExchangeMarginRateAdjust
  , reqQryExchangeRate
  , reqQrySecAgentACIDMap
  , reqQryProductExchRate
  , reqQryProductGroup
  , reqQryMMInstrumentCommissionRate
  , reqQryMMOptionInstrCommRate
  , reqQryInstrumentOrderCommRate
  , reqQryOptionInstrTradeCost
  , reqQryOptionInstrCommRate
  , reqQryExecOrder
  , reqQryForQuote
  , reqQryQuote
  , reqQryLock
  , reqQryLockPosition
  , reqQryETFOptionInstrCommRate
  , reqQryInvestorLevel
  , reqQryExecFreeze
  , reqQryCombInstrumentGuard
  , reqQryCombAction
  , reqQryTransferSerial
  , reqQryAccountregister
  , reqQryContractBank
  , reqQryParkedOrder
  , reqQryParkedOrderAction
  , reqQryTradingNotice
  , reqQryBrokerTradingParams
  , reqQryBrokerTradingAlgos
  , reqQueryCFMMCTradingAccountToken
  , reqFromBankToFutureByFuture
  , reqFromFutureToBankByFuture
  , reqQueryBankAccountMoneyByFuture
  ) where

{#import Bindings.Ctp.Define#}
{#import Bindings.Ctp.Struct#}
import Bindings.Ctp.Utils
import Data.Default
import Foreign.C.Types
import Foreign.Marshal.Utils
import Foreign.Ptr
import Foreign.Storable
import GHC.Generics

#include "ffi.h"

type OnFrontConnected                          = IO ()
type OnFrontDisconnected                       = Int -> IO ()
type OnHeartBeatWarning                        = Int -> IO ()
type OnRspAuthenticate                         = CThostFtdcRspAuthenticateField -> CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRspUserLogin                            = CThostFtdcRspUserLoginField -> CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRspUserLogout                           = CThostFtdcUserLogoutField -> CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRspUserPasswordUpdate                   = CThostFtdcUserPasswordUpdateField -> CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRspTradingAccountPasswordUpdate         = CThostFtdcTradingAccountPasswordUpdateField -> CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRspOrderInsert                          = CThostFtdcInputOrderField -> CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRspParkedOrderInsert                    = CThostFtdcParkedOrderField -> CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRspParkedOrderAction                    = CThostFtdcParkedOrderActionField -> CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRspOrderAction                          = CThostFtdcInputOrderActionField -> CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRspQueryMaxOrderVolume                  = CThostFtdcQueryMaxOrderVolumeField -> CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRspSettlementInfoConfirm                = CThostFtdcSettlementInfoConfirmField -> CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRspRemoveParkedOrder                    = CThostFtdcRemoveParkedOrderField -> CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRspRemoveParkedOrderAction              = CThostFtdcRemoveParkedOrderActionField -> CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRspExecOrderInsert                      = CThostFtdcInputExecOrderField -> CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRspExecOrderAction                      = CThostFtdcInputExecOrderActionField -> CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRspForQuoteInsert                       = CThostFtdcInputForQuoteField -> CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRspQuoteInsert                          = CThostFtdcInputQuoteField -> CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRspQuoteAction                          = CThostFtdcInputQuoteActionField -> CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRspLockInsert                           = CThostFtdcInputLockField -> CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRspBatchOrderAction                     = CThostFtdcInputBatchOrderActionField -> CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRspCombActionInsert                     = CThostFtdcInputCombActionField -> CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRspQryOrder                             = CThostFtdcOrderField -> CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRspQryTrade                             = CThostFtdcTradeField -> CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRspQryInvestorPosition                  = CThostFtdcInvestorPositionField -> CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRspQryTradingAccount                    = CThostFtdcTradingAccountField -> CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRspQryInvestor                          = CThostFtdcInvestorField -> CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRspQryTradingCode                       = CThostFtdcTradingCodeField -> CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRspQryInstrumentMarginRate              = CThostFtdcInstrumentMarginRateField -> CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRspQryInstrumentCommissionRate          = CThostFtdcInstrumentCommissionRateField -> CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRspQryExchange                          = CThostFtdcExchangeField -> CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRspQryProduct                           = CThostFtdcProductField -> CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRspQryInstrument                        = CThostFtdcInstrumentField -> CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRspQryDepthMarketData                   = CThostFtdcDepthMarketDataField -> CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRspQrySettlementInfo                    = CThostFtdcSettlementInfoField -> CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRspQryTransferBank                      = CThostFtdcTransferBankField -> CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRspQryInvestorPositionDetail            = CThostFtdcInvestorPositionDetailField -> CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRspQryNotice                            = CThostFtdcNoticeField -> CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRspQrySettlementInfoConfirm             = CThostFtdcSettlementInfoConfirmField -> CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRspQryInvestorPositionCombineDetail     = CThostFtdcInvestorPositionCombineDetailField -> CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRspQryCFMMCTradingAccountKey            = CThostFtdcCFMMCTradingAccountKeyField -> CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRspQryEWarrantOffset                    = CThostFtdcEWarrantOffsetField -> CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRspQryInvestorProductGroupMargin        = CThostFtdcInvestorProductGroupMarginField -> CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRspQryExchangeMarginRate                = CThostFtdcExchangeMarginRateField -> CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRspQryExchangeMarginRateAdjust          = CThostFtdcExchangeMarginRateAdjustField -> CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRspQryExchangeRate                      = CThostFtdcExchangeRateField -> CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRspQrySecAgentACIDMap                   = CThostFtdcSecAgentACIDMapField -> CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRspQryProductExchRate                   = CThostFtdcProductExchRateField -> CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRspQryProductGroup                      = CThostFtdcProductGroupField -> CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRspQryMMInstrumentCommissionRate        = CThostFtdcMMInstrumentCommissionRateField -> CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRspQryMMOptionInstrCommRate             = CThostFtdcMMOptionInstrCommRateField -> CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRspQryInstrumentOrderCommRate           = CThostFtdcInstrumentOrderCommRateField -> CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRspQryOptionInstrTradeCost              = CThostFtdcOptionInstrTradeCostField -> CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRspQryOptionInstrCommRate               = CThostFtdcOptionInstrCommRateField -> CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRspQryExecOrder                         = CThostFtdcExecOrderField -> CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRspQryForQuote                          = CThostFtdcForQuoteField -> CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRspQryQuote                             = CThostFtdcQuoteField -> CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRspQryLock                              = CThostFtdcLockField -> CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRspQryLockPosition                      = CThostFtdcLockPositionField -> CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRspQryETFOptionInstrCommRate            = CThostFtdcETFOptionInstrCommRateField -> CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRspQryInvestorLevel                     = CThostFtdcInvestorLevelField -> CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRspQryExecFreeze                        = CThostFtdcExecFreezeField -> CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRspQryCombInstrumentGuard               = CThostFtdcCombInstrumentGuardField -> CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRspQryCombAction                        = CThostFtdcCombActionField -> CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRspQryTransferSerial                    = CThostFtdcTransferSerialField -> CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRspQryAccountregister                   = CThostFtdcAccountregisterField -> CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRspError                                = CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRtnOrder                                = CThostFtdcOrderField -> IO ()
type OnRtnTrade                                = CThostFtdcTradeField -> IO ()
type OnErrRtnOrderInsert                       = CThostFtdcInputOrderField -> CThostFtdcRspInfoField -> IO ()
type OnErrRtnOrderAction                       = CThostFtdcOrderActionField -> CThostFtdcRspInfoField -> IO ()
type OnRtnInstrumentStatus                     = CThostFtdcInstrumentStatusField -> IO ()
type OnRtnBulletin                             = CThostFtdcBulletinField -> IO ()
type OnRtnTradingNotice                        = CThostFtdcTradingNoticeInfoField -> IO ()
type OnRtnErrorConditionalOrder                = CThostFtdcErrorConditionalOrderField -> IO ()
type OnRtnExecOrder                            = CThostFtdcExecOrderField -> IO ()
type OnErrRtnExecOrderInsert                   = CThostFtdcInputExecOrderField -> CThostFtdcRspInfoField -> IO ()
type OnErrRtnExecOrderAction                   = CThostFtdcExecOrderActionField -> CThostFtdcRspInfoField -> IO ()
type OnErrRtnForQuoteInsert                    = CThostFtdcInputForQuoteField -> CThostFtdcRspInfoField -> IO ()
type OnRtnQuote                                = CThostFtdcQuoteField -> IO ()
type OnErrRtnQuoteInsert                       = CThostFtdcInputQuoteField -> CThostFtdcRspInfoField -> IO ()
type OnErrRtnQuoteAction                       = CThostFtdcQuoteActionField -> CThostFtdcRspInfoField -> IO ()
type OnRtnForQuoteRsp                          = CThostFtdcForQuoteRspField -> IO ()
type OnRtnCFMMCTradingAccountToken             = CThostFtdcCFMMCTradingAccountTokenField -> IO ()
type OnRtnLock                                 = CThostFtdcLockField -> IO ()
type OnErrRtnLockInsert                        = CThostFtdcInputLockField -> CThostFtdcRspInfoField -> IO ()
type OnErrRtnBatchOrderAction                  = CThostFtdcBatchOrderActionField -> CThostFtdcRspInfoField -> IO ()
type OnRtnCombAction                           = CThostFtdcCombActionField -> IO ()
type OnErrRtnCombActionInsert                  = CThostFtdcInputCombActionField -> CThostFtdcRspInfoField -> IO ()
type OnRspQryContractBank                      = CThostFtdcContractBankField -> CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRspQryParkedOrder                       = CThostFtdcParkedOrderField -> CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRspQryParkedOrderAction                 = CThostFtdcParkedOrderActionField -> CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRspQryTradingNotice                     = CThostFtdcTradingNoticeField -> CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRspQryBrokerTradingParams               = CThostFtdcBrokerTradingParamsField -> CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRspQryBrokerTradingAlgos                = CThostFtdcBrokerTradingAlgosField -> CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRspQueryCFMMCTradingAccountToken        = CThostFtdcQueryCFMMCTradingAccountTokenField -> CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRtnFromBankToFutureByBank               = CThostFtdcRspTransferField -> IO ()
type OnRtnFromFutureToBankByBank               = CThostFtdcRspTransferField -> IO ()
type OnRtnRepealFromBankToFutureByBank         = CThostFtdcRspRepealField -> IO ()
type OnRtnRepealFromFutureToBankByBank         = CThostFtdcRspRepealField -> IO ()
type OnRtnFromBankToFutureByFuture             = CThostFtdcRspTransferField -> IO ()
type OnRtnFromFutureToBankByFuture             = CThostFtdcRspTransferField -> IO ()
type OnRtnRepealFromBankToFutureByFutureManual = CThostFtdcRspRepealField -> IO ()
type OnRtnRepealFromFutureToBankByFutureManual = CThostFtdcRspRepealField -> IO ()
type OnRtnQueryBankBalanceByFuture             = CThostFtdcNotifyQueryAccountField -> IO ()
type OnErrRtnBankToFutureByFuture              = CThostFtdcReqTransferField -> CThostFtdcRspInfoField -> IO ()
type OnErrRtnFutureToBankByFuture              = CThostFtdcReqTransferField -> CThostFtdcRspInfoField -> IO ()
type OnErrRtnRepealBankToFutureByFutureManual  = CThostFtdcReqRepealField -> CThostFtdcRspInfoField -> IO ()
type OnErrRtnRepealFutureToBankByFutureManual  = CThostFtdcReqRepealField -> CThostFtdcRspInfoField -> IO ()
type OnErrRtnQueryBankBalanceByFuture          = CThostFtdcReqQueryAccountField -> CThostFtdcRspInfoField -> IO ()
type OnRtnRepealFromBankToFutureByFuture       = CThostFtdcRspRepealField -> IO ()
type OnRtnRepealFromFutureToBankByFuture       = CThostFtdcRspRepealField -> IO ()
type OnRspFromBankToFutureByFuture             = CThostFtdcReqTransferField -> CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRspFromFutureToBankByFuture             = CThostFtdcReqTransferField -> CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRspQueryBankAccountMoneyByFuture        = CThostFtdcReqQueryAccountField -> CThostFtdcRspInfoField -> Int -> Int -> IO ()
type OnRtnOpenAccountByBank                    = CThostFtdcOpenAccountField -> IO ()
type OnRtnCancelAccountByBank                  = CThostFtdcCancelAccountField -> IO ()
type OnRtnChangeAccountByBank                  = CThostFtdcChangeAccountField -> IO ()

type OnFrontConnected'                          = IO ()
type OnFrontDisconnected'                       = CInt -> IO ()
type OnHeartBeatWarning'                        = CInt -> IO ()
type OnRspAuthenticate'                         = CThostFtdcRspAuthenticateFieldPtr -> CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRspUserLogin'                            = CThostFtdcRspUserLoginFieldPtr -> CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRspUserLogout'                           = CThostFtdcUserLogoutFieldPtr -> CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRspUserPasswordUpdate'                   = CThostFtdcUserPasswordUpdateFieldPtr -> CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRspTradingAccountPasswordUpdate'         = CThostFtdcTradingAccountPasswordUpdateFieldPtr -> CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRspOrderInsert'                          = CThostFtdcInputOrderFieldPtr -> CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRspParkedOrderInsert'                    = CThostFtdcParkedOrderFieldPtr -> CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRspParkedOrderAction'                    = CThostFtdcParkedOrderActionFieldPtr -> CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRspOrderAction'                          = CThostFtdcInputOrderActionFieldPtr -> CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRspQueryMaxOrderVolume'                  = CThostFtdcQueryMaxOrderVolumeFieldPtr -> CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRspSettlementInfoConfirm'                = CThostFtdcSettlementInfoConfirmFieldPtr -> CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRspRemoveParkedOrder'                    = CThostFtdcRemoveParkedOrderFieldPtr -> CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRspRemoveParkedOrderAction'              = CThostFtdcRemoveParkedOrderActionFieldPtr -> CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRspExecOrderInsert'                      = CThostFtdcInputExecOrderFieldPtr -> CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRspExecOrderAction'                      = CThostFtdcInputExecOrderActionFieldPtr -> CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRspForQuoteInsert'                       = CThostFtdcInputForQuoteFieldPtr -> CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRspQuoteInsert'                          = CThostFtdcInputQuoteFieldPtr -> CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRspQuoteAction'                          = CThostFtdcInputQuoteActionFieldPtr -> CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRspLockInsert'                           = CThostFtdcInputLockFieldPtr -> CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRspBatchOrderAction'                     = CThostFtdcInputBatchOrderActionFieldPtr -> CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRspCombActionInsert'                     = CThostFtdcInputCombActionFieldPtr -> CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRspQryOrder'                             = CThostFtdcOrderFieldPtr -> CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRspQryTrade'                             = CThostFtdcTradeFieldPtr -> CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRspQryInvestorPosition'                  = CThostFtdcInvestorPositionFieldPtr -> CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRspQryTradingAccount'                    = CThostFtdcTradingAccountFieldPtr -> CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRspQryInvestor'                          = CThostFtdcInvestorFieldPtr -> CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRspQryTradingCode'                       = CThostFtdcTradingCodeFieldPtr -> CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRspQryInstrumentMarginRate'              = CThostFtdcInstrumentMarginRateFieldPtr -> CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRspQryInstrumentCommissionRate'          = CThostFtdcInstrumentCommissionRateFieldPtr -> CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRspQryExchange'                          = CThostFtdcExchangeFieldPtr -> CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRspQryProduct'                           = CThostFtdcProductFieldPtr -> CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRspQryInstrument'                        = CThostFtdcInstrumentFieldPtr -> CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRspQryDepthMarketData'                   = CThostFtdcDepthMarketDataFieldPtr -> CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRspQrySettlementInfo'                    = CThostFtdcSettlementInfoFieldPtr -> CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRspQryTransferBank'                      = CThostFtdcTransferBankFieldPtr -> CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRspQryInvestorPositionDetail'            = CThostFtdcInvestorPositionDetailFieldPtr -> CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRspQryNotice'                            = CThostFtdcNoticeFieldPtr -> CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRspQrySettlementInfoConfirm'             = CThostFtdcSettlementInfoConfirmFieldPtr -> CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRspQryInvestorPositionCombineDetail'     = CThostFtdcInvestorPositionCombineDetailFieldPtr -> CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRspQryCFMMCTradingAccountKey'            = CThostFtdcCFMMCTradingAccountKeyFieldPtr -> CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRspQryEWarrantOffset'                    = CThostFtdcEWarrantOffsetFieldPtr -> CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRspQryInvestorProductGroupMargin'        = CThostFtdcInvestorProductGroupMarginFieldPtr -> CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRspQryExchangeMarginRate'                = CThostFtdcExchangeMarginRateFieldPtr -> CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRspQryExchangeMarginRateAdjust'          = CThostFtdcExchangeMarginRateAdjustFieldPtr -> CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRspQryExchangeRate'                      = CThostFtdcExchangeRateFieldPtr -> CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRspQrySecAgentACIDMap'                   = CThostFtdcSecAgentACIDMapFieldPtr -> CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRspQryProductExchRate'                   = CThostFtdcProductExchRateFieldPtr -> CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRspQryProductGroup'                      = CThostFtdcProductGroupFieldPtr -> CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRspQryMMInstrumentCommissionRate'        = CThostFtdcMMInstrumentCommissionRateFieldPtr -> CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRspQryMMOptionInstrCommRate'             = CThostFtdcMMOptionInstrCommRateFieldPtr -> CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRspQryInstrumentOrderCommRate'           = CThostFtdcInstrumentOrderCommRateFieldPtr -> CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRspQryOptionInstrTradeCost'              = CThostFtdcOptionInstrTradeCostFieldPtr -> CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRspQryOptionInstrCommRate'               = CThostFtdcOptionInstrCommRateFieldPtr -> CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRspQryExecOrder'                         = CThostFtdcExecOrderFieldPtr -> CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRspQryForQuote'                          = CThostFtdcForQuoteFieldPtr -> CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRspQryQuote'                             = CThostFtdcQuoteFieldPtr -> CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRspQryLock'                              = CThostFtdcLockFieldPtr -> CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRspQryLockPosition'                      = CThostFtdcLockPositionFieldPtr -> CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRspQryETFOptionInstrCommRate'            = CThostFtdcETFOptionInstrCommRateFieldPtr -> CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRspQryInvestorLevel'                     = CThostFtdcInvestorLevelFieldPtr -> CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRspQryExecFreeze'                        = CThostFtdcExecFreezeFieldPtr -> CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRspQryCombInstrumentGuard'               = CThostFtdcCombInstrumentGuardFieldPtr -> CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRspQryCombAction'                        = CThostFtdcCombActionFieldPtr -> CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRspQryTransferSerial'                    = CThostFtdcTransferSerialFieldPtr -> CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRspQryAccountregister'                   = CThostFtdcAccountregisterFieldPtr -> CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRspError'                                = CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRtnOrder'                                = CThostFtdcOrderFieldPtr -> IO ()
type OnRtnTrade'                                = CThostFtdcTradeFieldPtr -> IO ()
type OnErrRtnOrderInsert'                       = CThostFtdcInputOrderFieldPtr -> CThostFtdcRspInfoFieldPtr -> IO ()
type OnErrRtnOrderAction'                       = CThostFtdcOrderActionFieldPtr -> CThostFtdcRspInfoFieldPtr -> IO ()
type OnRtnInstrumentStatus'                     = CThostFtdcInstrumentStatusFieldPtr -> IO ()
type OnRtnBulletin'                             = CThostFtdcBulletinFieldPtr -> IO ()
type OnRtnTradingNotice'                        = CThostFtdcTradingNoticeInfoFieldPtr -> IO ()
type OnRtnErrorConditionalOrder'                = CThostFtdcErrorConditionalOrderFieldPtr -> IO ()
type OnRtnExecOrder'                            = CThostFtdcExecOrderFieldPtr -> IO ()
type OnErrRtnExecOrderInsert'                   = CThostFtdcInputExecOrderFieldPtr -> CThostFtdcRspInfoFieldPtr -> IO ()
type OnErrRtnExecOrderAction'                   = CThostFtdcExecOrderActionFieldPtr -> CThostFtdcRspInfoFieldPtr -> IO ()
type OnErrRtnForQuoteInsert'                    = CThostFtdcInputForQuoteFieldPtr -> CThostFtdcRspInfoFieldPtr -> IO ()
type OnRtnQuote'                                = CThostFtdcQuoteFieldPtr -> IO ()
type OnErrRtnQuoteInsert'                       = CThostFtdcInputQuoteFieldPtr -> CThostFtdcRspInfoFieldPtr -> IO ()
type OnErrRtnQuoteAction'                       = CThostFtdcQuoteActionFieldPtr -> CThostFtdcRspInfoFieldPtr -> IO ()
type OnRtnForQuoteRsp'                          = CThostFtdcForQuoteRspFieldPtr -> IO ()
type OnRtnCFMMCTradingAccountToken'             = CThostFtdcCFMMCTradingAccountTokenFieldPtr -> IO ()
type OnRtnLock'                                 = CThostFtdcLockFieldPtr -> IO ()
type OnErrRtnLockInsert'                        = CThostFtdcInputLockFieldPtr -> CThostFtdcRspInfoFieldPtr -> IO ()
type OnErrRtnBatchOrderAction'                  = CThostFtdcBatchOrderActionFieldPtr -> CThostFtdcRspInfoFieldPtr -> IO ()
type OnRtnCombAction'                           = CThostFtdcCombActionFieldPtr -> IO ()
type OnErrRtnCombActionInsert'                  = CThostFtdcInputCombActionFieldPtr -> CThostFtdcRspInfoFieldPtr -> IO ()
type OnRspQryContractBank'                      = CThostFtdcContractBankFieldPtr -> CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRspQryParkedOrder'                       = CThostFtdcParkedOrderFieldPtr -> CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRspQryParkedOrderAction'                 = CThostFtdcParkedOrderActionFieldPtr -> CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRspQryTradingNotice'                     = CThostFtdcTradingNoticeFieldPtr -> CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRspQryBrokerTradingParams'               = CThostFtdcBrokerTradingParamsFieldPtr -> CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRspQryBrokerTradingAlgos'                = CThostFtdcBrokerTradingAlgosFieldPtr -> CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRspQueryCFMMCTradingAccountToken'        = CThostFtdcQueryCFMMCTradingAccountTokenFieldPtr -> CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRtnFromBankToFutureByBank'               = CThostFtdcRspTransferFieldPtr -> IO ()
type OnRtnFromFutureToBankByBank'               = CThostFtdcRspTransferFieldPtr -> IO ()
type OnRtnRepealFromBankToFutureByBank'         = CThostFtdcRspRepealFieldPtr -> IO ()
type OnRtnRepealFromFutureToBankByBank'         = CThostFtdcRspRepealFieldPtr -> IO ()
type OnRtnFromBankToFutureByFuture'             = CThostFtdcRspTransferFieldPtr -> IO ()
type OnRtnFromFutureToBankByFuture'             = CThostFtdcRspTransferFieldPtr -> IO ()
type OnRtnRepealFromBankToFutureByFutureManual' = CThostFtdcRspRepealFieldPtr -> IO ()
type OnRtnRepealFromFutureToBankByFutureManual' = CThostFtdcRspRepealFieldPtr -> IO ()
type OnRtnQueryBankBalanceByFuture'             = CThostFtdcNotifyQueryAccountFieldPtr -> IO ()
type OnErrRtnBankToFutureByFuture'              = CThostFtdcReqTransferFieldPtr -> CThostFtdcRspInfoFieldPtr -> IO ()
type OnErrRtnFutureToBankByFuture'              = CThostFtdcReqTransferFieldPtr -> CThostFtdcRspInfoFieldPtr -> IO ()
type OnErrRtnRepealBankToFutureByFutureManual'  = CThostFtdcReqRepealFieldPtr -> CThostFtdcRspInfoFieldPtr -> IO ()
type OnErrRtnRepealFutureToBankByFutureManual'  = CThostFtdcReqRepealFieldPtr -> CThostFtdcRspInfoFieldPtr -> IO ()
type OnErrRtnQueryBankBalanceByFuture'          = CThostFtdcReqQueryAccountFieldPtr -> CThostFtdcRspInfoFieldPtr -> IO ()
type OnRtnRepealFromBankToFutureByFuture'       = CThostFtdcRspRepealFieldPtr -> IO ()
type OnRtnRepealFromFutureToBankByFuture'       = CThostFtdcRspRepealFieldPtr -> IO ()
type OnRspFromBankToFutureByFuture'             = CThostFtdcReqTransferFieldPtr -> CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRspFromFutureToBankByFuture'             = CThostFtdcReqTransferFieldPtr -> CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRspQueryBankAccountMoneyByFuture'        = CThostFtdcReqQueryAccountFieldPtr -> CThostFtdcRspInfoFieldPtr -> CInt -> CInt -> IO ()
type OnRtnOpenAccountByBank'                    = CThostFtdcOpenAccountFieldPtr -> IO ()
type OnRtnCancelAccountByBank'                  = CThostFtdcCancelAccountFieldPtr -> IO ()
type OnRtnChangeAccountByBank'                  = CThostFtdcChangeAccountFieldPtr -> IO ()

foreign import ccall "wrapper" wrapOnFrontConnected                          :: OnFrontConnected' -> IO (FunPtr OnFrontConnected')
foreign import ccall "wrapper" wrapOnFrontDisconnected                       :: OnFrontDisconnected' -> IO (FunPtr OnFrontDisconnected')
foreign import ccall "wrapper" wrapOnHeartBeatWarning                        :: OnHeartBeatWarning' -> IO (FunPtr OnHeartBeatWarning')
foreign import ccall "wrapper" wrapOnRspAuthenticate                         :: OnRspAuthenticate' -> IO (FunPtr OnRspAuthenticate')
foreign import ccall "wrapper" wrapOnRspUserLogin                            :: OnRspUserLogin' -> IO (FunPtr OnRspUserLogin')
foreign import ccall "wrapper" wrapOnRspUserLogout                           :: OnRspUserLogout' -> IO (FunPtr OnRspUserLogout')
foreign import ccall "wrapper" wrapOnRspUserPasswordUpdate                   :: OnRspUserPasswordUpdate' -> IO (FunPtr OnRspUserPasswordUpdate')
foreign import ccall "wrapper" wrapOnRspTradingAccountPasswordUpdate         :: OnRspTradingAccountPasswordUpdate' -> IO (FunPtr OnRspTradingAccountPasswordUpdate')
foreign import ccall "wrapper" wrapOnRspOrderInsert                          :: OnRspOrderInsert' -> IO (FunPtr OnRspOrderInsert')
foreign import ccall "wrapper" wrapOnRspParkedOrderInsert                    :: OnRspParkedOrderInsert' -> IO (FunPtr OnRspParkedOrderInsert')
foreign import ccall "wrapper" wrapOnRspParkedOrderAction                    :: OnRspParkedOrderAction' -> IO (FunPtr OnRspParkedOrderAction')
foreign import ccall "wrapper" wrapOnRspOrderAction                          :: OnRspOrderAction' -> IO (FunPtr OnRspOrderAction')
foreign import ccall "wrapper" wrapOnRspQueryMaxOrderVolume                  :: OnRspQueryMaxOrderVolume' -> IO (FunPtr OnRspQueryMaxOrderVolume')
foreign import ccall "wrapper" wrapOnRspSettlementInfoConfirm                :: OnRspSettlementInfoConfirm' -> IO (FunPtr OnRspSettlementInfoConfirm')
foreign import ccall "wrapper" wrapOnRspRemoveParkedOrder                    :: OnRspRemoveParkedOrder' -> IO (FunPtr OnRspRemoveParkedOrder')
foreign import ccall "wrapper" wrapOnRspRemoveParkedOrderAction              :: OnRspRemoveParkedOrderAction' -> IO (FunPtr OnRspRemoveParkedOrderAction')
foreign import ccall "wrapper" wrapOnRspExecOrderInsert                      :: OnRspExecOrderInsert' -> IO (FunPtr OnRspExecOrderInsert')
foreign import ccall "wrapper" wrapOnRspExecOrderAction                      :: OnRspExecOrderAction' -> IO (FunPtr OnRspExecOrderAction')
foreign import ccall "wrapper" wrapOnRspForQuoteInsert                       :: OnRspForQuoteInsert' -> IO (FunPtr OnRspForQuoteInsert')
foreign import ccall "wrapper" wrapOnRspQuoteInsert                          :: OnRspQuoteInsert' -> IO (FunPtr OnRspQuoteInsert')
foreign import ccall "wrapper" wrapOnRspQuoteAction                          :: OnRspQuoteAction' -> IO (FunPtr OnRspQuoteAction')
foreign import ccall "wrapper" wrapOnRspLockInsert                           :: OnRspLockInsert' -> IO (FunPtr OnRspLockInsert')
foreign import ccall "wrapper" wrapOnRspBatchOrderAction                     :: OnRspBatchOrderAction' -> IO (FunPtr OnRspBatchOrderAction')
foreign import ccall "wrapper" wrapOnRspCombActionInsert                     :: OnRspCombActionInsert' -> IO (FunPtr OnRspCombActionInsert')
foreign import ccall "wrapper" wrapOnRspQryOrder                             :: OnRspQryOrder' -> IO (FunPtr OnRspQryOrder')
foreign import ccall "wrapper" wrapOnRspQryTrade                             :: OnRspQryTrade' -> IO (FunPtr OnRspQryTrade')
foreign import ccall "wrapper" wrapOnRspQryInvestorPosition                  :: OnRspQryInvestorPosition' -> IO (FunPtr OnRspQryInvestorPosition')
foreign import ccall "wrapper" wrapOnRspQryTradingAccount                    :: OnRspQryTradingAccount' -> IO (FunPtr OnRspQryTradingAccount')
foreign import ccall "wrapper" wrapOnRspQryInvestor                          :: OnRspQryInvestor' -> IO (FunPtr OnRspQryInvestor')
foreign import ccall "wrapper" wrapOnRspQryTradingCode                       :: OnRspQryTradingCode' -> IO (FunPtr OnRspQryTradingCode')
foreign import ccall "wrapper" wrapOnRspQryInstrumentMarginRate              :: OnRspQryInstrumentMarginRate' -> IO (FunPtr OnRspQryInstrumentMarginRate')
foreign import ccall "wrapper" wrapOnRspQryInstrumentCommissionRate          :: OnRspQryInstrumentCommissionRate' -> IO (FunPtr OnRspQryInstrumentCommissionRate')
foreign import ccall "wrapper" wrapOnRspQryExchange                          :: OnRspQryExchange' -> IO (FunPtr OnRspQryExchange')
foreign import ccall "wrapper" wrapOnRspQryProduct                           :: OnRspQryProduct' -> IO (FunPtr OnRspQryProduct')
foreign import ccall "wrapper" wrapOnRspQryInstrument                        :: OnRspQryInstrument' -> IO (FunPtr OnRspQryInstrument')
foreign import ccall "wrapper" wrapOnRspQryDepthMarketData                   :: OnRspQryDepthMarketData' -> IO (FunPtr OnRspQryDepthMarketData')
foreign import ccall "wrapper" wrapOnRspQrySettlementInfo                    :: OnRspQrySettlementInfo' -> IO (FunPtr OnRspQrySettlementInfo')
foreign import ccall "wrapper" wrapOnRspQryTransferBank                      :: OnRspQryTransferBank' -> IO (FunPtr OnRspQryTransferBank')
foreign import ccall "wrapper" wrapOnRspQryInvestorPositionDetail            :: OnRspQryInvestorPositionDetail' -> IO (FunPtr OnRspQryInvestorPositionDetail')
foreign import ccall "wrapper" wrapOnRspQryNotice                            :: OnRspQryNotice' -> IO (FunPtr OnRspQryNotice')
foreign import ccall "wrapper" wrapOnRspQrySettlementInfoConfirm             :: OnRspQrySettlementInfoConfirm' -> IO (FunPtr OnRspQrySettlementInfoConfirm')
foreign import ccall "wrapper" wrapOnRspQryInvestorPositionCombineDetail     :: OnRspQryInvestorPositionCombineDetail' -> IO (FunPtr OnRspQryInvestorPositionCombineDetail')
foreign import ccall "wrapper" wrapOnRspQryCFMMCTradingAccountKey            :: OnRspQryCFMMCTradingAccountKey' -> IO (FunPtr OnRspQryCFMMCTradingAccountKey')
foreign import ccall "wrapper" wrapOnRspQryEWarrantOffset                    :: OnRspQryEWarrantOffset' -> IO (FunPtr OnRspQryEWarrantOffset')
foreign import ccall "wrapper" wrapOnRspQryInvestorProductGroupMargin        :: OnRspQryInvestorProductGroupMargin' -> IO (FunPtr OnRspQryInvestorProductGroupMargin')
foreign import ccall "wrapper" wrapOnRspQryExchangeMarginRate                :: OnRspQryExchangeMarginRate' -> IO (FunPtr OnRspQryExchangeMarginRate')
foreign import ccall "wrapper" wrapOnRspQryExchangeMarginRateAdjust          :: OnRspQryExchangeMarginRateAdjust' -> IO (FunPtr OnRspQryExchangeMarginRateAdjust')
foreign import ccall "wrapper" wrapOnRspQryExchangeRate                      :: OnRspQryExchangeRate' -> IO (FunPtr OnRspQryExchangeRate')
foreign import ccall "wrapper" wrapOnRspQrySecAgentACIDMap                   :: OnRspQrySecAgentACIDMap' -> IO (FunPtr OnRspQrySecAgentACIDMap')
foreign import ccall "wrapper" wrapOnRspQryProductExchRate                   :: OnRspQryProductExchRate' -> IO (FunPtr OnRspQryProductExchRate')
foreign import ccall "wrapper" wrapOnRspQryProductGroup                      :: OnRspQryProductGroup' -> IO (FunPtr OnRspQryProductGroup')
foreign import ccall "wrapper" wrapOnRspQryMMInstrumentCommissionRate        :: OnRspQryMMInstrumentCommissionRate' -> IO (FunPtr OnRspQryMMInstrumentCommissionRate')
foreign import ccall "wrapper" wrapOnRspQryMMOptionInstrCommRate             :: OnRspQryMMOptionInstrCommRate' -> IO (FunPtr OnRspQryMMOptionInstrCommRate')
foreign import ccall "wrapper" wrapOnRspQryInstrumentOrderCommRate           :: OnRspQryInstrumentOrderCommRate' -> IO (FunPtr OnRspQryInstrumentOrderCommRate')
foreign import ccall "wrapper" wrapOnRspQryOptionInstrTradeCost              :: OnRspQryOptionInstrTradeCost' -> IO (FunPtr OnRspQryOptionInstrTradeCost')
foreign import ccall "wrapper" wrapOnRspQryOptionInstrCommRate               :: OnRspQryOptionInstrCommRate' -> IO (FunPtr OnRspQryOptionInstrCommRate')
foreign import ccall "wrapper" wrapOnRspQryExecOrder                         :: OnRspQryExecOrder' -> IO (FunPtr OnRspQryExecOrder')
foreign import ccall "wrapper" wrapOnRspQryForQuote                          :: OnRspQryForQuote' -> IO (FunPtr OnRspQryForQuote')
foreign import ccall "wrapper" wrapOnRspQryQuote                             :: OnRspQryQuote' -> IO (FunPtr OnRspQryQuote')
foreign import ccall "wrapper" wrapOnRspQryLock                              :: OnRspQryLock' -> IO (FunPtr OnRspQryLock')
foreign import ccall "wrapper" wrapOnRspQryLockPosition                      :: OnRspQryLockPosition' -> IO (FunPtr OnRspQryLockPosition')
foreign import ccall "wrapper" wrapOnRspQryETFOptionInstrCommRate            :: OnRspQryETFOptionInstrCommRate' -> IO (FunPtr OnRspQryETFOptionInstrCommRate')
foreign import ccall "wrapper" wrapOnRspQryInvestorLevel                     :: OnRspQryInvestorLevel' -> IO (FunPtr OnRspQryInvestorLevel')
foreign import ccall "wrapper" wrapOnRspQryExecFreeze                        :: OnRspQryExecFreeze' -> IO (FunPtr OnRspQryExecFreeze')
foreign import ccall "wrapper" wrapOnRspQryCombInstrumentGuard               :: OnRspQryCombInstrumentGuard' -> IO (FunPtr OnRspQryCombInstrumentGuard')
foreign import ccall "wrapper" wrapOnRspQryCombAction                        :: OnRspQryCombAction' -> IO (FunPtr OnRspQryCombAction')
foreign import ccall "wrapper" wrapOnRspQryTransferSerial                    :: OnRspQryTransferSerial' -> IO (FunPtr OnRspQryTransferSerial')
foreign import ccall "wrapper" wrapOnRspQryAccountregister                   :: OnRspQryAccountregister' -> IO (FunPtr OnRspQryAccountregister')
foreign import ccall "wrapper" wrapOnRspError                                :: OnRspError' -> IO (FunPtr OnRspError')
foreign import ccall "wrapper" wrapOnRtnOrder                                :: OnRtnOrder' -> IO (FunPtr OnRtnOrder')
foreign import ccall "wrapper" wrapOnRtnTrade                                :: OnRtnTrade' -> IO (FunPtr OnRtnTrade')
foreign import ccall "wrapper" wrapOnErrRtnOrderInsert                       :: OnErrRtnOrderInsert' -> IO (FunPtr OnErrRtnOrderInsert')
foreign import ccall "wrapper" wrapOnErrRtnOrderAction                       :: OnErrRtnOrderAction' -> IO (FunPtr OnErrRtnOrderAction')
foreign import ccall "wrapper" wrapOnRtnInstrumentStatus                     :: OnRtnInstrumentStatus' -> IO (FunPtr OnRtnInstrumentStatus')
foreign import ccall "wrapper" wrapOnRtnBulletin                             :: OnRtnBulletin' -> IO (FunPtr OnRtnBulletin')
foreign import ccall "wrapper" wrapOnRtnTradingNotice                        :: OnRtnTradingNotice' -> IO (FunPtr OnRtnTradingNotice')
foreign import ccall "wrapper" wrapOnRtnErrorConditionalOrder                :: OnRtnErrorConditionalOrder' -> IO (FunPtr OnRtnErrorConditionalOrder')
foreign import ccall "wrapper" wrapOnRtnExecOrder                            :: OnRtnExecOrder' -> IO (FunPtr OnRtnExecOrder')
foreign import ccall "wrapper" wrapOnErrRtnExecOrderInsert                   :: OnErrRtnExecOrderInsert' -> IO (FunPtr OnErrRtnExecOrderInsert')
foreign import ccall "wrapper" wrapOnErrRtnExecOrderAction                   :: OnErrRtnExecOrderAction' -> IO (FunPtr OnErrRtnExecOrderAction')
foreign import ccall "wrapper" wrapOnErrRtnForQuoteInsert                    :: OnErrRtnForQuoteInsert' -> IO (FunPtr OnErrRtnForQuoteInsert')
foreign import ccall "wrapper" wrapOnRtnQuote                                :: OnRtnQuote' -> IO (FunPtr OnRtnQuote')
foreign import ccall "wrapper" wrapOnErrRtnQuoteInsert                       :: OnErrRtnQuoteInsert' -> IO (FunPtr OnErrRtnQuoteInsert')
foreign import ccall "wrapper" wrapOnErrRtnQuoteAction                       :: OnErrRtnQuoteAction' -> IO (FunPtr OnErrRtnQuoteAction')
foreign import ccall "wrapper" wrapOnRtnForQuoteRsp                          :: OnRtnForQuoteRsp' -> IO (FunPtr OnRtnForQuoteRsp')
foreign import ccall "wrapper" wrapOnRtnCFMMCTradingAccountToken             :: OnRtnCFMMCTradingAccountToken' -> IO (FunPtr OnRtnCFMMCTradingAccountToken')
foreign import ccall "wrapper" wrapOnRtnLock                                 :: OnRtnLock' -> IO (FunPtr OnRtnLock')
foreign import ccall "wrapper" wrapOnErrRtnLockInsert                        :: OnErrRtnLockInsert' -> IO (FunPtr OnErrRtnLockInsert')
foreign import ccall "wrapper" wrapOnErrRtnBatchOrderAction                  :: OnErrRtnBatchOrderAction' -> IO (FunPtr OnErrRtnBatchOrderAction')
foreign import ccall "wrapper" wrapOnRtnCombAction                           :: OnRtnCombAction' -> IO (FunPtr OnRtnCombAction')
foreign import ccall "wrapper" wrapOnErrRtnCombActionInsert                  :: OnErrRtnCombActionInsert' -> IO (FunPtr OnErrRtnCombActionInsert')
foreign import ccall "wrapper" wrapOnRspQryContractBank                      :: OnRspQryContractBank' -> IO (FunPtr OnRspQryContractBank')
foreign import ccall "wrapper" wrapOnRspQryParkedOrder                       :: OnRspQryParkedOrder' -> IO (FunPtr OnRspQryParkedOrder')
foreign import ccall "wrapper" wrapOnRspQryParkedOrderAction                 :: OnRspQryParkedOrderAction' -> IO (FunPtr OnRspQryParkedOrderAction')
foreign import ccall "wrapper" wrapOnRspQryTradingNotice                     :: OnRspQryTradingNotice' -> IO (FunPtr OnRspQryTradingNotice')
foreign import ccall "wrapper" wrapOnRspQryBrokerTradingParams               :: OnRspQryBrokerTradingParams' -> IO (FunPtr OnRspQryBrokerTradingParams')
foreign import ccall "wrapper" wrapOnRspQryBrokerTradingAlgos                :: OnRspQryBrokerTradingAlgos' -> IO (FunPtr OnRspQryBrokerTradingAlgos')
foreign import ccall "wrapper" wrapOnRspQueryCFMMCTradingAccountToken        :: OnRspQueryCFMMCTradingAccountToken' -> IO (FunPtr OnRspQueryCFMMCTradingAccountToken')
foreign import ccall "wrapper" wrapOnRtnFromBankToFutureByBank               :: OnRtnFromBankToFutureByBank' -> IO (FunPtr OnRtnFromBankToFutureByBank')
foreign import ccall "wrapper" wrapOnRtnFromFutureToBankByBank               :: OnRtnFromFutureToBankByBank' -> IO (FunPtr OnRtnFromFutureToBankByBank')
foreign import ccall "wrapper" wrapOnRtnRepealFromBankToFutureByBank         :: OnRtnRepealFromBankToFutureByBank' -> IO (FunPtr OnRtnRepealFromBankToFutureByBank')
foreign import ccall "wrapper" wrapOnRtnRepealFromFutureToBankByBank         :: OnRtnRepealFromFutureToBankByBank' -> IO (FunPtr OnRtnRepealFromFutureToBankByBank')
foreign import ccall "wrapper" wrapOnRtnFromBankToFutureByFuture             :: OnRtnFromBankToFutureByFuture' -> IO (FunPtr OnRtnFromBankToFutureByFuture')
foreign import ccall "wrapper" wrapOnRtnFromFutureToBankByFuture             :: OnRtnFromFutureToBankByFuture' -> IO (FunPtr OnRtnFromFutureToBankByFuture')
foreign import ccall "wrapper" wrapOnRtnRepealFromBankToFutureByFutureManual :: OnRtnRepealFromBankToFutureByFutureManual' -> IO (FunPtr OnRtnRepealFromBankToFutureByFutureManual')
foreign import ccall "wrapper" wrapOnRtnRepealFromFutureToBankByFutureManual :: OnRtnRepealFromFutureToBankByFutureManual' -> IO (FunPtr OnRtnRepealFromFutureToBankByFutureManual')
foreign import ccall "wrapper" wrapOnRtnQueryBankBalanceByFuture             :: OnRtnQueryBankBalanceByFuture' -> IO (FunPtr OnRtnQueryBankBalanceByFuture')
foreign import ccall "wrapper" wrapOnErrRtnBankToFutureByFuture              :: OnErrRtnBankToFutureByFuture' -> IO (FunPtr OnErrRtnBankToFutureByFuture')
foreign import ccall "wrapper" wrapOnErrRtnFutureToBankByFuture              :: OnErrRtnFutureToBankByFuture' -> IO (FunPtr OnErrRtnFutureToBankByFuture')
foreign import ccall "wrapper" wrapOnErrRtnRepealBankToFutureByFutureManual  :: OnErrRtnRepealBankToFutureByFutureManual' -> IO (FunPtr OnErrRtnRepealBankToFutureByFutureManual')
foreign import ccall "wrapper" wrapOnErrRtnRepealFutureToBankByFutureManual  :: OnErrRtnRepealFutureToBankByFutureManual' -> IO (FunPtr OnErrRtnRepealFutureToBankByFutureManual')
foreign import ccall "wrapper" wrapOnErrRtnQueryBankBalanceByFuture          :: OnErrRtnQueryBankBalanceByFuture' -> IO (FunPtr OnErrRtnQueryBankBalanceByFuture')
foreign import ccall "wrapper" wrapOnRtnRepealFromBankToFutureByFuture       :: OnRtnRepealFromBankToFutureByFuture' -> IO (FunPtr OnRtnRepealFromBankToFutureByFuture')
foreign import ccall "wrapper" wrapOnRtnRepealFromFutureToBankByFuture       :: OnRtnRepealFromFutureToBankByFuture' -> IO (FunPtr OnRtnRepealFromFutureToBankByFuture')
foreign import ccall "wrapper" wrapOnRspFromBankToFutureByFuture             :: OnRspFromBankToFutureByFuture' -> IO (FunPtr OnRspFromBankToFutureByFuture')
foreign import ccall "wrapper" wrapOnRspFromFutureToBankByFuture             :: OnRspFromFutureToBankByFuture' -> IO (FunPtr OnRspFromFutureToBankByFuture')
foreign import ccall "wrapper" wrapOnRspQueryBankAccountMoneyByFuture        :: OnRspQueryBankAccountMoneyByFuture' -> IO (FunPtr OnRspQueryBankAccountMoneyByFuture')
foreign import ccall "wrapper" wrapOnRtnOpenAccountByBank                    :: OnRtnOpenAccountByBank' -> IO (FunPtr OnRtnOpenAccountByBank')
foreign import ccall "wrapper" wrapOnRtnCancelAccountByBank                  :: OnRtnCancelAccountByBank' -> IO (FunPtr OnRtnCancelAccountByBank')
foreign import ccall "wrapper" wrapOnRtnChangeAccountByBank                  :: OnRtnChangeAccountByBank' -> IO (FunPtr OnRtnChangeAccountByBank')

data CtpTDSpi = CtpTDSpi
  { onFrontConnected                          :: Maybe OnFrontConnected
  , onFrontDisconnected                       :: Maybe OnFrontDisconnected
  , onHeartBeatWarning                        :: Maybe OnHeartBeatWarning
  , onRspAuthenticate                         :: Maybe OnRspAuthenticate
  , onRspUserLogin                            :: Maybe OnRspUserLogin
  , onRspUserLogout                           :: Maybe OnRspUserLogout
  , onRspUserPasswordUpdate                   :: Maybe OnRspUserPasswordUpdate
  , onRspTradingAccountPasswordUpdate         :: Maybe OnRspTradingAccountPasswordUpdate
  , onRspOrderInsert                          :: Maybe OnRspOrderInsert
  , onRspParkedOrderInsert                    :: Maybe OnRspParkedOrderInsert
  , onRspParkedOrderAction                    :: Maybe OnRspParkedOrderAction
  , onRspOrderAction                          :: Maybe OnRspOrderAction
  , onRspQueryMaxOrderVolume                  :: Maybe OnRspQueryMaxOrderVolume
  , onRspSettlementInfoConfirm                :: Maybe OnRspSettlementInfoConfirm
  , onRspRemoveParkedOrder                    :: Maybe OnRspRemoveParkedOrder
  , onRspRemoveParkedOrderAction              :: Maybe OnRspRemoveParkedOrderAction
  , onRspExecOrderInsert                      :: Maybe OnRspExecOrderInsert
  , onRspExecOrderAction                      :: Maybe OnRspExecOrderAction
  , onRspForQuoteInsert                       :: Maybe OnRspForQuoteInsert
  , onRspQuoteInsert                          :: Maybe OnRspQuoteInsert
  , onRspQuoteAction                          :: Maybe OnRspQuoteAction
  , onRspLockInsert                           :: Maybe OnRspLockInsert
  , onRspBatchOrderAction                     :: Maybe OnRspBatchOrderAction
  , onRspCombActionInsert                     :: Maybe OnRspCombActionInsert
  , onRspQryOrder                             :: Maybe OnRspQryOrder
  , onRspQryTrade                             :: Maybe OnRspQryTrade
  , onRspQryInvestorPosition                  :: Maybe OnRspQryInvestorPosition
  , onRspQryTradingAccount                    :: Maybe OnRspQryTradingAccount
  , onRspQryInvestor                          :: Maybe OnRspQryInvestor
  , onRspQryTradingCode                       :: Maybe OnRspQryTradingCode
  , onRspQryInstrumentMarginRate              :: Maybe OnRspQryInstrumentMarginRate
  , onRspQryInstrumentCommissionRate          :: Maybe OnRspQryInstrumentCommissionRate
  , onRspQryExchange                          :: Maybe OnRspQryExchange
  , onRspQryProduct                           :: Maybe OnRspQryProduct
  , onRspQryInstrument                        :: Maybe OnRspQryInstrument
  , onRspQryDepthMarketData                   :: Maybe OnRspQryDepthMarketData
  , onRspQrySettlementInfo                    :: Maybe OnRspQrySettlementInfo
  , onRspQryTransferBank                      :: Maybe OnRspQryTransferBank
  , onRspQryInvestorPositionDetail            :: Maybe OnRspQryInvestorPositionDetail
  , onRspQryNotice                            :: Maybe OnRspQryNotice
  , onRspQrySettlementInfoConfirm             :: Maybe OnRspQrySettlementInfoConfirm
  , onRspQryInvestorPositionCombineDetail     :: Maybe OnRspQryInvestorPositionCombineDetail
  , onRspQryCFMMCTradingAccountKey            :: Maybe OnRspQryCFMMCTradingAccountKey
  , onRspQryEWarrantOffset                    :: Maybe OnRspQryEWarrantOffset
  , onRspQryInvestorProductGroupMargin        :: Maybe OnRspQryInvestorProductGroupMargin
  , onRspQryExchangeMarginRate                :: Maybe OnRspQryExchangeMarginRate
  , onRspQryExchangeMarginRateAdjust          :: Maybe OnRspQryExchangeMarginRateAdjust
  , onRspQryExchangeRate                      :: Maybe OnRspQryExchangeRate
  , onRspQrySecAgentACIDMap                   :: Maybe OnRspQrySecAgentACIDMap
  , onRspQryProductExchRate                   :: Maybe OnRspQryProductExchRate
  , onRspQryProductGroup                      :: Maybe OnRspQryProductGroup
  , onRspQryMMInstrumentCommissionRate        :: Maybe OnRspQryMMInstrumentCommissionRate
  , onRspQryMMOptionInstrCommRate             :: Maybe OnRspQryMMOptionInstrCommRate
  , onRspQryInstrumentOrderCommRate           :: Maybe OnRspQryInstrumentOrderCommRate
  , onRspQryOptionInstrTradeCost              :: Maybe OnRspQryOptionInstrTradeCost
  , onRspQryOptionInstrCommRate               :: Maybe OnRspQryOptionInstrCommRate
  , onRspQryExecOrder                         :: Maybe OnRspQryExecOrder
  , onRspQryForQuote                          :: Maybe OnRspQryForQuote
  , onRspQryQuote                             :: Maybe OnRspQryQuote
  , onRspQryLock                              :: Maybe OnRspQryLock
  , onRspQryLockPosition                      :: Maybe OnRspQryLockPosition
  , onRspQryETFOptionInstrCommRate            :: Maybe OnRspQryETFOptionInstrCommRate
  , onRspQryInvestorLevel                     :: Maybe OnRspQryInvestorLevel
  , onRspQryExecFreeze                        :: Maybe OnRspQryExecFreeze
  , onRspQryCombInstrumentGuard               :: Maybe OnRspQryCombInstrumentGuard
  , onRspQryCombAction                        :: Maybe OnRspQryCombAction
  , onRspQryTransferSerial                    :: Maybe OnRspQryTransferSerial
  , onRspQryAccountregister                   :: Maybe OnRspQryAccountregister
  , onRspError                                :: Maybe OnRspError
  , onRtnOrder                                :: Maybe OnRtnOrder
  , onRtnTrade                                :: Maybe OnRtnTrade
  , onErrRtnOrderInsert                       :: Maybe OnErrRtnOrderInsert
  , onErrRtnOrderAction                       :: Maybe OnErrRtnOrderAction
  , onRtnInstrumentStatus                     :: Maybe OnRtnInstrumentStatus
  , onRtnBulletin                             :: Maybe OnRtnBulletin
  , onRtnTradingNotice                        :: Maybe OnRtnTradingNotice
  , onRtnErrorConditionalOrder                :: Maybe OnRtnErrorConditionalOrder
  , onRtnExecOrder                            :: Maybe OnRtnExecOrder
  , onErrRtnExecOrderInsert                   :: Maybe OnErrRtnExecOrderInsert
  , onErrRtnExecOrderAction                   :: Maybe OnErrRtnExecOrderAction
  , onErrRtnForQuoteInsert                    :: Maybe OnErrRtnForQuoteInsert
  , onRtnQuote                                :: Maybe OnRtnQuote
  , onErrRtnQuoteInsert                       :: Maybe OnErrRtnQuoteInsert
  , onErrRtnQuoteAction                       :: Maybe OnErrRtnQuoteAction
  , onRtnForQuoteRsp                          :: Maybe OnRtnForQuoteRsp
  , onRtnCFMMCTradingAccountToken             :: Maybe OnRtnCFMMCTradingAccountToken
  , onRtnLock                                 :: Maybe OnRtnLock
  , onErrRtnLockInsert                        :: Maybe OnErrRtnLockInsert
  , onErrRtnBatchOrderAction                  :: Maybe OnErrRtnBatchOrderAction
  , onRtnCombAction                           :: Maybe OnRtnCombAction
  , onErrRtnCombActionInsert                  :: Maybe OnErrRtnCombActionInsert
  , onRspQryContractBank                      :: Maybe OnRspQryContractBank
  , onRspQryParkedOrder                       :: Maybe OnRspQryParkedOrder
  , onRspQryParkedOrderAction                 :: Maybe OnRspQryParkedOrderAction
  , onRspQryTradingNotice                     :: Maybe OnRspQryTradingNotice
  , onRspQryBrokerTradingParams               :: Maybe OnRspQryBrokerTradingParams
  , onRspQryBrokerTradingAlgos                :: Maybe OnRspQryBrokerTradingAlgos
  , onRspQueryCFMMCTradingAccountToken        :: Maybe OnRspQueryCFMMCTradingAccountToken
  , onRtnFromBankToFutureByBank               :: Maybe OnRtnFromBankToFutureByBank
  , onRtnFromFutureToBankByBank               :: Maybe OnRtnFromFutureToBankByBank
  , onRtnRepealFromBankToFutureByBank         :: Maybe OnRtnRepealFromBankToFutureByBank
  , onRtnRepealFromFutureToBankByBank         :: Maybe OnRtnRepealFromFutureToBankByBank
  , onRtnFromBankToFutureByFuture             :: Maybe OnRtnFromBankToFutureByFuture
  , onRtnFromFutureToBankByFuture             :: Maybe OnRtnFromFutureToBankByFuture
  , onRtnRepealFromBankToFutureByFutureManual :: Maybe OnRtnRepealFromBankToFutureByFutureManual
  , onRtnRepealFromFutureToBankByFutureManual :: Maybe OnRtnRepealFromFutureToBankByFutureManual
  , onRtnQueryBankBalanceByFuture             :: Maybe OnRtnQueryBankBalanceByFuture
  , onErrRtnBankToFutureByFuture              :: Maybe OnErrRtnBankToFutureByFuture
  , onErrRtnFutureToBankByFuture              :: Maybe OnErrRtnFutureToBankByFuture
  , onErrRtnRepealBankToFutureByFutureManual  :: Maybe OnErrRtnRepealBankToFutureByFutureManual
  , onErrRtnRepealFutureToBankByFutureManual  :: Maybe OnErrRtnRepealFutureToBankByFutureManual
  , onErrRtnQueryBankBalanceByFuture          :: Maybe OnErrRtnQueryBankBalanceByFuture
  , onRtnRepealFromBankToFutureByFuture       :: Maybe OnRtnRepealFromBankToFutureByFuture
  , onRtnRepealFromFutureToBankByFuture       :: Maybe OnRtnRepealFromFutureToBankByFuture
  , onRspFromBankToFutureByFuture             :: Maybe OnRspFromBankToFutureByFuture
  , onRspFromFutureToBankByFuture             :: Maybe OnRspFromFutureToBankByFuture
  , onRspQueryBankAccountMoneyByFuture        :: Maybe OnRspQueryBankAccountMoneyByFuture
  , onRtnOpenAccountByBank                    :: Maybe OnRtnOpenAccountByBank
  , onRtnCancelAccountByBank                  :: Maybe OnRtnCancelAccountByBank
  , onRtnChangeAccountByBank                  :: Maybe OnRtnChangeAccountByBank
  } deriving (Generic)

instance Default CtpTDSpi

data CtpTDSpiFFI = CtpTDSpiFFI
  { ffiOnFrontConnected                          :: FunPtr OnFrontConnected'
  , ffiOnFrontDisconnected                       :: FunPtr OnFrontDisconnected'
  , ffiOnHeartBeatWarning                        :: FunPtr OnHeartBeatWarning'
  , ffiOnRspAuthenticate                         :: FunPtr OnRspAuthenticate'
  , ffiOnRspUserLogin                            :: FunPtr OnRspUserLogin'
  , ffiOnRspUserLogout                           :: FunPtr OnRspUserLogout'
  , ffiOnRspUserPasswordUpdate                   :: FunPtr OnRspUserPasswordUpdate'
  , ffiOnRspTradingAccountPasswordUpdate         :: FunPtr OnRspTradingAccountPasswordUpdate'
  , ffiOnRspOrderInsert                          :: FunPtr OnRspOrderInsert'
  , ffiOnRspParkedOrderInsert                    :: FunPtr OnRspParkedOrderInsert'
  , ffiOnRspParkedOrderAction                    :: FunPtr OnRspParkedOrderAction'
  , ffiOnRspOrderAction                          :: FunPtr OnRspOrderAction'
  , ffiOnRspQueryMaxOrderVolume                  :: FunPtr OnRspQueryMaxOrderVolume'
  , ffiOnRspSettlementInfoConfirm                :: FunPtr OnRspSettlementInfoConfirm'
  , ffiOnRspRemoveParkedOrder                    :: FunPtr OnRspRemoveParkedOrder'
  , ffiOnRspRemoveParkedOrderAction              :: FunPtr OnRspRemoveParkedOrderAction'
  , ffiOnRspExecOrderInsert                      :: FunPtr OnRspExecOrderInsert'
  , ffiOnRspExecOrderAction                      :: FunPtr OnRspExecOrderAction'
  , ffiOnRspForQuoteInsert                       :: FunPtr OnRspForQuoteInsert'
  , ffiOnRspQuoteInsert                          :: FunPtr OnRspQuoteInsert'
  , ffiOnRspQuoteAction                          :: FunPtr OnRspQuoteAction'
  , ffiOnRspLockInsert                           :: FunPtr OnRspLockInsert'
  , ffiOnRspBatchOrderAction                     :: FunPtr OnRspBatchOrderAction'
  , ffiOnRspCombActionInsert                     :: FunPtr OnRspCombActionInsert'
  , ffiOnRspQryOrder                             :: FunPtr OnRspQryOrder'
  , ffiOnRspQryTrade                             :: FunPtr OnRspQryTrade'
  , ffiOnRspQryInvestorPosition                  :: FunPtr OnRspQryInvestorPosition'
  , ffiOnRspQryTradingAccount                    :: FunPtr OnRspQryTradingAccount'
  , ffiOnRspQryInvestor                          :: FunPtr OnRspQryInvestor'
  , ffiOnRspQryTradingCode                       :: FunPtr OnRspQryTradingCode'
  , ffiOnRspQryInstrumentMarginRate              :: FunPtr OnRspQryInstrumentMarginRate'
  , ffiOnRspQryInstrumentCommissionRate          :: FunPtr OnRspQryInstrumentCommissionRate'
  , ffiOnRspQryExchange                          :: FunPtr OnRspQryExchange'
  , ffiOnRspQryProduct                           :: FunPtr OnRspQryProduct'
  , ffiOnRspQryInstrument                        :: FunPtr OnRspQryInstrument'
  , ffiOnRspQryDepthMarketData                   :: FunPtr OnRspQryDepthMarketData'
  , ffiOnRspQrySettlementInfo                    :: FunPtr OnRspQrySettlementInfo'
  , ffiOnRspQryTransferBank                      :: FunPtr OnRspQryTransferBank'
  , ffiOnRspQryInvestorPositionDetail            :: FunPtr OnRspQryInvestorPositionDetail'
  , ffiOnRspQryNotice                            :: FunPtr OnRspQryNotice'
  , ffiOnRspQrySettlementInfoConfirm             :: FunPtr OnRspQrySettlementInfoConfirm'
  , ffiOnRspQryInvestorPositionCombineDetail     :: FunPtr OnRspQryInvestorPositionCombineDetail'
  , ffiOnRspQryCFMMCTradingAccountKey            :: FunPtr OnRspQryCFMMCTradingAccountKey'
  , ffiOnRspQryEWarrantOffset                    :: FunPtr OnRspQryEWarrantOffset'
  , ffiOnRspQryInvestorProductGroupMargin        :: FunPtr OnRspQryInvestorProductGroupMargin'
  , ffiOnRspQryExchangeMarginRate                :: FunPtr OnRspQryExchangeMarginRate'
  , ffiOnRspQryExchangeMarginRateAdjust          :: FunPtr OnRspQryExchangeMarginRateAdjust'
  , ffiOnRspQryExchangeRate                      :: FunPtr OnRspQryExchangeRate'
  , ffiOnRspQrySecAgentACIDMap                   :: FunPtr OnRspQrySecAgentACIDMap'
  , ffiOnRspQryProductExchRate                   :: FunPtr OnRspQryProductExchRate'
  , ffiOnRspQryProductGroup                      :: FunPtr OnRspQryProductGroup'
  , ffiOnRspQryMMInstrumentCommissionRate        :: FunPtr OnRspQryMMInstrumentCommissionRate'
  , ffiOnRspQryMMOptionInstrCommRate             :: FunPtr OnRspQryMMOptionInstrCommRate'
  , ffiOnRspQryInstrumentOrderCommRate           :: FunPtr OnRspQryInstrumentOrderCommRate'
  , ffiOnRspQryOptionInstrTradeCost              :: FunPtr OnRspQryOptionInstrTradeCost'
  , ffiOnRspQryOptionInstrCommRate               :: FunPtr OnRspQryOptionInstrCommRate'
  , ffiOnRspQryExecOrder                         :: FunPtr OnRspQryExecOrder'
  , ffiOnRspQryForQuote                          :: FunPtr OnRspQryForQuote'
  , ffiOnRspQryQuote                             :: FunPtr OnRspQryQuote'
  , ffiOnRspQryLock                              :: FunPtr OnRspQryLock'
  , ffiOnRspQryLockPosition                      :: FunPtr OnRspQryLockPosition'
  , ffiOnRspQryETFOptionInstrCommRate            :: FunPtr OnRspQryETFOptionInstrCommRate'
  , ffiOnRspQryInvestorLevel                     :: FunPtr OnRspQryInvestorLevel'
  , ffiOnRspQryExecFreeze                        :: FunPtr OnRspQryExecFreeze'
  , ffiOnRspQryCombInstrumentGuard               :: FunPtr OnRspQryCombInstrumentGuard'
  , ffiOnRspQryCombAction                        :: FunPtr OnRspQryCombAction'
  , ffiOnRspQryTransferSerial                    :: FunPtr OnRspQryTransferSerial'
  , ffiOnRspQryAccountregister                   :: FunPtr OnRspQryAccountregister'
  , ffiOnRspError                                :: FunPtr OnRspError'
  , ffiOnRtnOrder                                :: FunPtr OnRtnOrder'
  , ffiOnRtnTrade                                :: FunPtr OnRtnTrade'
  , ffiOnErrRtnOrderInsert                       :: FunPtr OnErrRtnOrderInsert'
  , ffiOnErrRtnOrderAction                       :: FunPtr OnErrRtnOrderAction'
  , ffiOnRtnInstrumentStatus                     :: FunPtr OnRtnInstrumentStatus'
  , ffiOnRtnBulletin                             :: FunPtr OnRtnBulletin'
  , ffiOnRtnTradingNotice                        :: FunPtr OnRtnTradingNotice'
  , ffiOnRtnErrorConditionalOrder                :: FunPtr OnRtnErrorConditionalOrder'
  , ffiOnRtnExecOrder                            :: FunPtr OnRtnExecOrder'
  , ffiOnErrRtnExecOrderInsert                   :: FunPtr OnErrRtnExecOrderInsert'
  , ffiOnErrRtnExecOrderAction                   :: FunPtr OnErrRtnExecOrderAction'
  , ffiOnErrRtnForQuoteInsert                    :: FunPtr OnErrRtnForQuoteInsert'
  , ffiOnRtnQuote                                :: FunPtr OnRtnQuote'
  , ffiOnErrRtnQuoteInsert                       :: FunPtr OnErrRtnQuoteInsert'
  , ffiOnErrRtnQuoteAction                       :: FunPtr OnErrRtnQuoteAction'
  , ffiOnRtnForQuoteRsp                          :: FunPtr OnRtnForQuoteRsp'
  , ffiOnRtnCFMMCTradingAccountToken             :: FunPtr OnRtnCFMMCTradingAccountToken'
  , ffiOnRtnLock                                 :: FunPtr OnRtnLock'
  , ffiOnErrRtnLockInsert                        :: FunPtr OnErrRtnLockInsert'
  , ffiOnErrRtnBatchOrderAction                  :: FunPtr OnErrRtnBatchOrderAction'
  , ffiOnRtnCombAction                           :: FunPtr OnRtnCombAction'
  , ffiOnErrRtnCombActionInsert                  :: FunPtr OnErrRtnCombActionInsert'
  , ffiOnRspQryContractBank                      :: FunPtr OnRspQryContractBank'
  , ffiOnRspQryParkedOrder                       :: FunPtr OnRspQryParkedOrder'
  , ffiOnRspQryParkedOrderAction                 :: FunPtr OnRspQryParkedOrderAction'
  , ffiOnRspQryTradingNotice                     :: FunPtr OnRspQryTradingNotice'
  , ffiOnRspQryBrokerTradingParams               :: FunPtr OnRspQryBrokerTradingParams'
  , ffiOnRspQryBrokerTradingAlgos                :: FunPtr OnRspQryBrokerTradingAlgos'
  , ffiOnRspQueryCFMMCTradingAccountToken        :: FunPtr OnRspQueryCFMMCTradingAccountToken'
  , ffiOnRtnFromBankToFutureByBank               :: FunPtr OnRtnFromBankToFutureByBank'
  , ffiOnRtnFromFutureToBankByBank               :: FunPtr OnRtnFromFutureToBankByBank'
  , ffiOnRtnRepealFromBankToFutureByBank         :: FunPtr OnRtnRepealFromBankToFutureByBank'
  , ffiOnRtnRepealFromFutureToBankByBank         :: FunPtr OnRtnRepealFromFutureToBankByBank'
  , ffiOnRtnFromBankToFutureByFuture             :: FunPtr OnRtnFromBankToFutureByFuture'
  , ffiOnRtnFromFutureToBankByFuture             :: FunPtr OnRtnFromFutureToBankByFuture'
  , ffiOnRtnRepealFromBankToFutureByFutureManual :: FunPtr OnRtnRepealFromBankToFutureByFutureManual'
  , ffiOnRtnRepealFromFutureToBankByFutureManual :: FunPtr OnRtnRepealFromFutureToBankByFutureManual'
  , ffiOnRtnQueryBankBalanceByFuture             :: FunPtr OnRtnQueryBankBalanceByFuture'
  , ffiOnErrRtnBankToFutureByFuture              :: FunPtr OnErrRtnBankToFutureByFuture'
  , ffiOnErrRtnFutureToBankByFuture              :: FunPtr OnErrRtnFutureToBankByFuture'
  , ffiOnErrRtnRepealBankToFutureByFutureManual  :: FunPtr OnErrRtnRepealBankToFutureByFutureManual'
  , ffiOnErrRtnRepealFutureToBankByFutureManual  :: FunPtr OnErrRtnRepealFutureToBankByFutureManual'
  , ffiOnErrRtnQueryBankBalanceByFuture          :: FunPtr OnErrRtnQueryBankBalanceByFuture'
  , ffiOnRtnRepealFromBankToFutureByFuture       :: FunPtr OnRtnRepealFromBankToFutureByFuture'
  , ffiOnRtnRepealFromFutureToBankByFuture       :: FunPtr OnRtnRepealFromFutureToBankByFuture'
  , ffiOnRspFromBankToFutureByFuture             :: FunPtr OnRspFromBankToFutureByFuture'
  , ffiOnRspFromFutureToBankByFuture             :: FunPtr OnRspFromFutureToBankByFuture'
  , ffiOnRspQueryBankAccountMoneyByFuture        :: FunPtr OnRspQueryBankAccountMoneyByFuture'
  , ffiOnRtnOpenAccountByBank                    :: FunPtr OnRtnOpenAccountByBank'
  , ffiOnRtnCancelAccountByBank                  :: FunPtr OnRtnCancelAccountByBank'
  , ffiOnRtnChangeAccountByBank                  :: FunPtr OnRtnChangeAccountByBank'
  }

{#pointer *CtpTDSpiFFI as CtpTDSpiFFIPtr -> CtpTDSpiFFI#}

instance Storable CtpTDSpiFFI where
  sizeOf _ = {#sizeof CtpTDSpiFFI#}
  alignment _ = {#alignof CtpTDSpiFFI#}
  peek _ = error "unimplemented"
  poke p s = do
    {#set CtpTDSpiFFI->ffiOnFrontConnected#} p $ ffiOnFrontConnected s
    {#set CtpTDSpiFFI->ffiOnFrontDisconnected#} p $ ffiOnFrontDisconnected s
    {#set CtpTDSpiFFI->ffiOnHeartBeatWarning#} p $ ffiOnHeartBeatWarning s
    {#set CtpTDSpiFFI->ffiOnRspAuthenticate#} p $ ffiOnRspAuthenticate s
    {#set CtpTDSpiFFI->ffiOnRspUserLogin#} p $ ffiOnRspUserLogin s
    {#set CtpTDSpiFFI->ffiOnRspUserLogout#} p $ ffiOnRspUserLogout s
    {#set CtpTDSpiFFI->ffiOnRspUserPasswordUpdate#} p $ ffiOnRspUserPasswordUpdate s
    {#set CtpTDSpiFFI->ffiOnRspTradingAccountPasswordUpdate#} p $ ffiOnRspTradingAccountPasswordUpdate s
    {#set CtpTDSpiFFI->ffiOnRspOrderInsert#} p $ ffiOnRspOrderInsert s
    {#set CtpTDSpiFFI->ffiOnRspParkedOrderInsert#} p $ ffiOnRspParkedOrderInsert s
    {#set CtpTDSpiFFI->ffiOnRspParkedOrderAction#} p $ ffiOnRspParkedOrderAction s
    {#set CtpTDSpiFFI->ffiOnRspOrderAction#} p $ ffiOnRspOrderAction s
    {#set CtpTDSpiFFI->ffiOnRspQueryMaxOrderVolume#} p $ ffiOnRspQueryMaxOrderVolume s
    {#set CtpTDSpiFFI->ffiOnRspSettlementInfoConfirm#} p $ ffiOnRspSettlementInfoConfirm s
    {#set CtpTDSpiFFI->ffiOnRspRemoveParkedOrder#} p $ ffiOnRspRemoveParkedOrder s
    {#set CtpTDSpiFFI->ffiOnRspRemoveParkedOrderAction#} p $ ffiOnRspRemoveParkedOrderAction s
    {#set CtpTDSpiFFI->ffiOnRspExecOrderInsert#} p $ ffiOnRspExecOrderInsert s
    {#set CtpTDSpiFFI->ffiOnRspExecOrderAction#} p $ ffiOnRspExecOrderAction s
    {#set CtpTDSpiFFI->ffiOnRspForQuoteInsert#} p $ ffiOnRspForQuoteInsert s
    {#set CtpTDSpiFFI->ffiOnRspQuoteInsert#} p $ ffiOnRspQuoteInsert s
    {#set CtpTDSpiFFI->ffiOnRspQuoteAction#} p $ ffiOnRspQuoteAction s
    {#set CtpTDSpiFFI->ffiOnRspLockInsert#} p $ ffiOnRspLockInsert s
    {#set CtpTDSpiFFI->ffiOnRspBatchOrderAction#} p $ ffiOnRspBatchOrderAction s
    {#set CtpTDSpiFFI->ffiOnRspCombActionInsert#} p $ ffiOnRspCombActionInsert s
    {#set CtpTDSpiFFI->ffiOnRspQryOrder#} p $ ffiOnRspQryOrder s
    {#set CtpTDSpiFFI->ffiOnRspQryTrade#} p $ ffiOnRspQryTrade s
    {#set CtpTDSpiFFI->ffiOnRspQryInvestorPosition#} p $ ffiOnRspQryInvestorPosition s
    {#set CtpTDSpiFFI->ffiOnRspQryTradingAccount#} p $ ffiOnRspQryTradingAccount s
    {#set CtpTDSpiFFI->ffiOnRspQryInvestor#} p $ ffiOnRspQryInvestor s
    {#set CtpTDSpiFFI->ffiOnRspQryTradingCode#} p $ ffiOnRspQryTradingCode s
    {#set CtpTDSpiFFI->ffiOnRspQryInstrumentMarginRate#} p $ ffiOnRspQryInstrumentMarginRate s
    {#set CtpTDSpiFFI->ffiOnRspQryInstrumentCommissionRate#} p $ ffiOnRspQryInstrumentCommissionRate s
    {#set CtpTDSpiFFI->ffiOnRspQryExchange#} p $ ffiOnRspQryExchange s
    {#set CtpTDSpiFFI->ffiOnRspQryProduct#} p $ ffiOnRspQryProduct s
    {#set CtpTDSpiFFI->ffiOnRspQryInstrument#} p $ ffiOnRspQryInstrument s
    {#set CtpTDSpiFFI->ffiOnRspQryDepthMarketData#} p $ ffiOnRspQryDepthMarketData s
    {#set CtpTDSpiFFI->ffiOnRspQrySettlementInfo#} p $ ffiOnRspQrySettlementInfo s
    {#set CtpTDSpiFFI->ffiOnRspQryTransferBank#} p $ ffiOnRspQryTransferBank s
    {#set CtpTDSpiFFI->ffiOnRspQryInvestorPositionDetail#} p $ ffiOnRspQryInvestorPositionDetail s
    {#set CtpTDSpiFFI->ffiOnRspQryNotice#} p $ ffiOnRspQryNotice s
    {#set CtpTDSpiFFI->ffiOnRspQrySettlementInfoConfirm#} p $ ffiOnRspQrySettlementInfoConfirm s
    {#set CtpTDSpiFFI->ffiOnRspQryInvestorPositionCombineDetail#} p $ ffiOnRspQryInvestorPositionCombineDetail s
    {#set CtpTDSpiFFI->ffiOnRspQryCFMMCTradingAccountKey#} p $ ffiOnRspQryCFMMCTradingAccountKey s
    {#set CtpTDSpiFFI->ffiOnRspQryEWarrantOffset#} p $ ffiOnRspQryEWarrantOffset s
    {#set CtpTDSpiFFI->ffiOnRspQryInvestorProductGroupMargin#} p $ ffiOnRspQryInvestorProductGroupMargin s
    {#set CtpTDSpiFFI->ffiOnRspQryExchangeMarginRate#} p $ ffiOnRspQryExchangeMarginRate s
    {#set CtpTDSpiFFI->ffiOnRspQryExchangeMarginRateAdjust#} p $ ffiOnRspQryExchangeMarginRateAdjust s
    {#set CtpTDSpiFFI->ffiOnRspQryExchangeRate#} p $ ffiOnRspQryExchangeRate s
    {#set CtpTDSpiFFI->ffiOnRspQrySecAgentACIDMap#} p $ ffiOnRspQrySecAgentACIDMap s
    {#set CtpTDSpiFFI->ffiOnRspQryProductExchRate#} p $ ffiOnRspQryProductExchRate s
    {#set CtpTDSpiFFI->ffiOnRspQryProductGroup#} p $ ffiOnRspQryProductGroup s
    {#set CtpTDSpiFFI->ffiOnRspQryMMInstrumentCommissionRate#} p $ ffiOnRspQryMMInstrumentCommissionRate s
    {#set CtpTDSpiFFI->ffiOnRspQryMMOptionInstrCommRate#} p $ ffiOnRspQryMMOptionInstrCommRate s
    {#set CtpTDSpiFFI->ffiOnRspQryInstrumentOrderCommRate#} p $ ffiOnRspQryInstrumentOrderCommRate s
    {#set CtpTDSpiFFI->ffiOnRspQryOptionInstrTradeCost#} p $ ffiOnRspQryOptionInstrTradeCost s
    {#set CtpTDSpiFFI->ffiOnRspQryOptionInstrCommRate#} p $ ffiOnRspQryOptionInstrCommRate s
    {#set CtpTDSpiFFI->ffiOnRspQryExecOrder#} p $ ffiOnRspQryExecOrder s
    {#set CtpTDSpiFFI->ffiOnRspQryForQuote#} p $ ffiOnRspQryForQuote s
    {#set CtpTDSpiFFI->ffiOnRspQryQuote#} p $ ffiOnRspQryQuote s
    {#set CtpTDSpiFFI->ffiOnRspQryLock#} p $ ffiOnRspQryLock s
    {#set CtpTDSpiFFI->ffiOnRspQryLockPosition#} p $ ffiOnRspQryLockPosition s
    {#set CtpTDSpiFFI->ffiOnRspQryETFOptionInstrCommRate#} p $ ffiOnRspQryETFOptionInstrCommRate s
    {#set CtpTDSpiFFI->ffiOnRspQryInvestorLevel#} p $ ffiOnRspQryInvestorLevel s
    {#set CtpTDSpiFFI->ffiOnRspQryExecFreeze#} p $ ffiOnRspQryExecFreeze s
    {#set CtpTDSpiFFI->ffiOnRspQryCombInstrumentGuard#} p $ ffiOnRspQryCombInstrumentGuard s
    {#set CtpTDSpiFFI->ffiOnRspQryCombAction#} p $ ffiOnRspQryCombAction s
    {#set CtpTDSpiFFI->ffiOnRspQryTransferSerial#} p $ ffiOnRspQryTransferSerial s
    {#set CtpTDSpiFFI->ffiOnRspQryAccountregister#} p $ ffiOnRspQryAccountregister s
    {#set CtpTDSpiFFI->ffiOnRspError#} p $ ffiOnRspError s
    {#set CtpTDSpiFFI->ffiOnRtnOrder#} p $ ffiOnRtnOrder s
    {#set CtpTDSpiFFI->ffiOnRtnTrade#} p $ ffiOnRtnTrade s
    {#set CtpTDSpiFFI->ffiOnErrRtnOrderInsert#} p $ ffiOnErrRtnOrderInsert s
    {#set CtpTDSpiFFI->ffiOnErrRtnOrderAction#} p $ ffiOnErrRtnOrderAction s
    {#set CtpTDSpiFFI->ffiOnRtnInstrumentStatus#} p $ ffiOnRtnInstrumentStatus s
    {#set CtpTDSpiFFI->ffiOnRtnBulletin#} p $ ffiOnRtnBulletin s
    {#set CtpTDSpiFFI->ffiOnRtnTradingNotice#} p $ ffiOnRtnTradingNotice s
    {#set CtpTDSpiFFI->ffiOnRtnErrorConditionalOrder#} p $ ffiOnRtnErrorConditionalOrder s
    {#set CtpTDSpiFFI->ffiOnRtnExecOrder#} p $ ffiOnRtnExecOrder s
    {#set CtpTDSpiFFI->ffiOnErrRtnExecOrderInsert#} p $ ffiOnErrRtnExecOrderInsert s
    {#set CtpTDSpiFFI->ffiOnErrRtnExecOrderAction#} p $ ffiOnErrRtnExecOrderAction s
    {#set CtpTDSpiFFI->ffiOnErrRtnForQuoteInsert#} p $ ffiOnErrRtnForQuoteInsert s
    {#set CtpTDSpiFFI->ffiOnRtnQuote#} p $ ffiOnRtnQuote s
    {#set CtpTDSpiFFI->ffiOnErrRtnQuoteInsert#} p $ ffiOnErrRtnQuoteInsert s
    {#set CtpTDSpiFFI->ffiOnErrRtnQuoteAction#} p $ ffiOnErrRtnQuoteAction s
    {#set CtpTDSpiFFI->ffiOnRtnForQuoteRsp#} p $ ffiOnRtnForQuoteRsp s
    {#set CtpTDSpiFFI->ffiOnRtnCFMMCTradingAccountToken#} p $ ffiOnRtnCFMMCTradingAccountToken s
    {#set CtpTDSpiFFI->ffiOnRtnLock#} p $ ffiOnRtnLock s
    {#set CtpTDSpiFFI->ffiOnErrRtnLockInsert#} p $ ffiOnErrRtnLockInsert s
    {#set CtpTDSpiFFI->ffiOnErrRtnBatchOrderAction#} p $ ffiOnErrRtnBatchOrderAction s
    {#set CtpTDSpiFFI->ffiOnRtnCombAction#} p $ ffiOnRtnCombAction s
    {#set CtpTDSpiFFI->ffiOnErrRtnCombActionInsert#} p $ ffiOnErrRtnCombActionInsert s
    {#set CtpTDSpiFFI->ffiOnRspQryContractBank#} p $ ffiOnRspQryContractBank s
    {#set CtpTDSpiFFI->ffiOnRspQryParkedOrder#} p $ ffiOnRspQryParkedOrder s
    {#set CtpTDSpiFFI->ffiOnRspQryParkedOrderAction#} p $ ffiOnRspQryParkedOrderAction s
    {#set CtpTDSpiFFI->ffiOnRspQryTradingNotice#} p $ ffiOnRspQryTradingNotice s
    {#set CtpTDSpiFFI->ffiOnRspQryBrokerTradingParams#} p $ ffiOnRspQryBrokerTradingParams s
    {#set CtpTDSpiFFI->ffiOnRspQryBrokerTradingAlgos#} p $ ffiOnRspQryBrokerTradingAlgos s
    {#set CtpTDSpiFFI->ffiOnRspQueryCFMMCTradingAccountToken#} p $ ffiOnRspQueryCFMMCTradingAccountToken s
    {#set CtpTDSpiFFI->ffiOnRtnFromBankToFutureByBank#} p $ ffiOnRtnFromBankToFutureByBank s
    {#set CtpTDSpiFFI->ffiOnRtnFromFutureToBankByBank#} p $ ffiOnRtnFromFutureToBankByBank s
    {#set CtpTDSpiFFI->ffiOnRtnRepealFromBankToFutureByBank#} p $ ffiOnRtnRepealFromBankToFutureByBank s
    {#set CtpTDSpiFFI->ffiOnRtnRepealFromFutureToBankByBank#} p $ ffiOnRtnRepealFromFutureToBankByBank s
    {#set CtpTDSpiFFI->ffiOnRtnFromBankToFutureByFuture#} p $ ffiOnRtnFromBankToFutureByFuture s
    {#set CtpTDSpiFFI->ffiOnRtnFromFutureToBankByFuture#} p $ ffiOnRtnFromFutureToBankByFuture s
    {#set CtpTDSpiFFI->ffiOnRtnRepealFromBankToFutureByFutureManual#} p $ ffiOnRtnRepealFromBankToFutureByFutureManual s
    {#set CtpTDSpiFFI->ffiOnRtnRepealFromFutureToBankByFutureManual#} p $ ffiOnRtnRepealFromFutureToBankByFutureManual s
    {#set CtpTDSpiFFI->ffiOnRtnQueryBankBalanceByFuture#} p $ ffiOnRtnQueryBankBalanceByFuture s
    {#set CtpTDSpiFFI->ffiOnErrRtnBankToFutureByFuture#} p $ ffiOnErrRtnBankToFutureByFuture s
    {#set CtpTDSpiFFI->ffiOnErrRtnFutureToBankByFuture#} p $ ffiOnErrRtnFutureToBankByFuture s
    {#set CtpTDSpiFFI->ffiOnErrRtnRepealBankToFutureByFutureManual#} p $ ffiOnErrRtnRepealBankToFutureByFutureManual s
    {#set CtpTDSpiFFI->ffiOnErrRtnRepealFutureToBankByFutureManual#} p $ ffiOnErrRtnRepealFutureToBankByFutureManual s
    {#set CtpTDSpiFFI->ffiOnErrRtnQueryBankBalanceByFuture#} p $ ffiOnErrRtnQueryBankBalanceByFuture s
    {#set CtpTDSpiFFI->ffiOnRtnRepealFromBankToFutureByFuture#} p $ ffiOnRtnRepealFromBankToFutureByFuture s
    {#set CtpTDSpiFFI->ffiOnRtnRepealFromFutureToBankByFuture#} p $ ffiOnRtnRepealFromFutureToBankByFuture s
    {#set CtpTDSpiFFI->ffiOnRspFromBankToFutureByFuture#} p $ ffiOnRspFromBankToFutureByFuture s
    {#set CtpTDSpiFFI->ffiOnRspFromFutureToBankByFuture#} p $ ffiOnRspFromFutureToBankByFuture s
    {#set CtpTDSpiFFI->ffiOnRspQueryBankAccountMoneyByFuture#} p $ ffiOnRspQueryBankAccountMoneyByFuture s
    {#set CtpTDSpiFFI->ffiOnRtnOpenAccountByBank#} p $ ffiOnRtnOpenAccountByBank s
    {#set CtpTDSpiFFI->ffiOnRtnCancelAccountByBank#} p $ ffiOnRtnCancelAccountByBank s
    {#set CtpTDSpiFFI->ffiOnRtnChangeAccountByBank#} p $ ffiOnRtnChangeAccountByBank s

{#pointer TDObject#}

{#fun tdCreate as create {`String'} -> `TDObject'#}
{#fun tdRelease as release {`TDObject'} -> `()'#}
{#fun tdGetApiVersion as getApiVersion {} -> `String'#}
{#fun tdInitialize as initialize {`TDObject'} -> `()'#}
{#fun tdGetTradingDay as getTradingDay {`TDObject'} -> `String'#}
{#fun tdRegisterFront as registerFront {`TDObject', `String'} -> `()'#}
{#fun tdRegisterNameServer as registerNameServer {`TDObject', `String'} -> `()'#}
{#fun tdRegisterFensUserInfo as registerFensUserInfo {`TDObject', with* `CThostFtdcFensUserInfoField'} -> `()'#}
{#fun tdRegisterSpi as registerSpi {`TDObject', withCtpTDSpiFFI* `CtpTDSpi'} -> `()'#}
{#fun tdSubscribePrivateTopic as subscribePrivateTopic {`TDObject', `ThostTeResumeType'} -> `()'#}
{#fun tdSubscribePublicTopic as subscribePublicTopic {`TDObject', `ThostTeResumeType'} -> `()'#}
{#fun tdReqAuthenticate as reqAuthenticate {`TDObject', with* `CThostFtdcReqAuthenticateField', `Int'} -> `Int'#}
{#fun tdReqUserLogin as reqUserLogin {`TDObject', with* `CThostFtdcReqUserLoginField', `Int'} -> `Int'#}
{#fun tdReqUserLogout as reqUserLogout {`TDObject', with* `CThostFtdcUserLogoutField', `Int'} -> `Int'#}
{#fun tdReqUserPasswordUpdate as reqUserPasswordUpdate {`TDObject', with* `CThostFtdcUserPasswordUpdateField', `Int'} -> `Int'#}
{#fun tdReqTradingAccountPasswordUpdate as reqTradingAccountPasswordUpdate {`TDObject', with* `CThostFtdcTradingAccountPasswordUpdateField', `Int'} -> `Int'#}
{#fun tdReqOrderInsert as reqOrderInsert {`TDObject', with* `CThostFtdcInputOrderField', `Int'} -> `Int'#}
{#fun tdReqParkedOrderInsert as reqParkedOrderInsert {`TDObject', with* `CThostFtdcParkedOrderField', `Int'} -> `Int'#}
{#fun tdReqParkedOrderAction as reqParkedOrderAction {`TDObject', with* `CThostFtdcParkedOrderActionField', `Int'} -> `Int'#}
{#fun tdReqOrderAction as reqOrderAction {`TDObject', with* `CThostFtdcInputOrderActionField', `Int'} -> `Int'#}
{#fun tdReqQueryMaxOrderVolume as reqQueryMaxOrderVolume {`TDObject', with* `CThostFtdcQueryMaxOrderVolumeField', `Int'} -> `Int'#}
{#fun tdReqSettlementInfoConfirm as reqSettlementInfoConfirm {`TDObject', with* `CThostFtdcSettlementInfoConfirmField', `Int'} -> `Int'#}
{#fun tdReqRemoveParkedOrder as reqRemoveParkedOrder {`TDObject', with* `CThostFtdcRemoveParkedOrderField', `Int'} -> `Int'#}
{#fun tdReqRemoveParkedOrderAction as reqRemoveParkedOrderAction {`TDObject', with* `CThostFtdcRemoveParkedOrderActionField', `Int'} -> `Int'#}
{#fun tdReqExecOrderInsert as reqExecOrderInsert {`TDObject', with* `CThostFtdcInputExecOrderField', `Int'} -> `Int'#}
{#fun tdReqExecOrderAction as reqExecOrderAction {`TDObject', with* `CThostFtdcInputExecOrderActionField', `Int'} -> `Int'#}
{#fun tdReqForQuoteInsert as reqForQuoteInsert {`TDObject', with* `CThostFtdcInputForQuoteField', `Int'} -> `Int'#}
{#fun tdReqQuoteInsert as reqQuoteInsert {`TDObject', with* `CThostFtdcInputQuoteField', `Int'} -> `Int'#}
{#fun tdReqQuoteAction as reqQuoteAction {`TDObject', with* `CThostFtdcInputQuoteActionField', `Int'} -> `Int'#}
{#fun tdReqLockInsert as reqLockInsert {`TDObject', with* `CThostFtdcInputLockField', `Int'} -> `Int'#}
{#fun tdReqBatchOrderAction as reqBatchOrderAction {`TDObject', with* `CThostFtdcInputBatchOrderActionField', `Int'} -> `Int'#}
{#fun tdReqCombActionInsert as reqCombActionInsert {`TDObject', with* `CThostFtdcInputCombActionField', `Int'} -> `Int'#}
{#fun tdReqQryOrder as reqQryOrder {`TDObject', with* `CThostFtdcQryOrderField', `Int'} -> `Int'#}
{#fun tdReqQryTrade as reqQryTrade {`TDObject', with* `CThostFtdcQryTradeField', `Int'} -> `Int'#}
{#fun tdReqQryInvestorPosition as reqQryInvestorPosition {`TDObject', with* `CThostFtdcQryInvestorPositionField', `Int'} -> `Int'#}
{#fun tdReqQryTradingAccount as reqQryTradingAccount {`TDObject', with* `CThostFtdcQryTradingAccountField', `Int'} -> `Int'#}
{#fun tdReqQryInvestor as reqQryInvestor {`TDObject', with* `CThostFtdcQryInvestorField', `Int'} -> `Int'#}
{#fun tdReqQryTradingCode as reqQryTradingCode {`TDObject', with* `CThostFtdcQryTradingCodeField', `Int'} -> `Int'#}
{#fun tdReqQryInstrumentMarginRate as reqQryInstrumentMarginRate {`TDObject', with* `CThostFtdcQryInstrumentMarginRateField', `Int'} -> `Int'#}
{#fun tdReqQryInstrumentCommissionRate as reqQryInstrumentCommissionRate {`TDObject', with* `CThostFtdcQryInstrumentCommissionRateField', `Int'} -> `Int'#}
{#fun tdReqQryExchange as reqQryExchange {`TDObject', with* `CThostFtdcQryExchangeField', `Int'} -> `Int'#}
{#fun tdReqQryProduct as reqQryProduct {`TDObject', with* `CThostFtdcQryProductField', `Int'} -> `Int'#}
{#fun tdReqQryInstrument as reqQryInstrument {`TDObject', with* `CThostFtdcQryInstrumentField', `Int'} -> `Int'#}
{#fun tdReqQryDepthMarketData as reqQryDepthMarketData {`TDObject', with* `CThostFtdcQryDepthMarketDataField', `Int'} -> `Int'#}
{#fun tdReqQrySettlementInfo as reqQrySettlementInfo {`TDObject', with* `CThostFtdcQrySettlementInfoField', `Int'} -> `Int'#}
{#fun tdReqQryTransferBank as reqQryTransferBank {`TDObject', with* `CThostFtdcQryTransferBankField', `Int'} -> `Int'#}
{#fun tdReqQryInvestorPositionDetail as reqQryInvestorPositionDetail {`TDObject', with* `CThostFtdcQryInvestorPositionDetailField', `Int'} -> `Int'#}
{#fun tdReqQryNotice as reqQryNotice {`TDObject', with* `CThostFtdcQryNoticeField', `Int'} -> `Int'#}
{#fun tdReqQrySettlementInfoConfirm as reqQrySettlementInfoConfirm {`TDObject', with* `CThostFtdcQrySettlementInfoConfirmField', `Int'} -> `Int'#}
{#fun tdReqQryInvestorPositionCombineDetail as reqQryInvestorPositionCombineDetail {`TDObject', with* `CThostFtdcQryInvestorPositionCombineDetailField', `Int'} -> `Int'#}
{#fun tdReqQryCFMMCTradingAccountKey as reqQryCFMMCTradingAccountKey {`TDObject', with* `CThostFtdcQryCFMMCTradingAccountKeyField', `Int'} -> `Int'#}
{#fun tdReqQryEWarrantOffset as reqQryEWarrantOffset {`TDObject', with* `CThostFtdcQryEWarrantOffsetField', `Int'} -> `Int'#}
{#fun tdReqQryInvestorProductGroupMargin as reqQryInvestorProductGroupMargin {`TDObject', with* `CThostFtdcQryInvestorProductGroupMarginField', `Int'} -> `Int'#}
{#fun tdReqQryExchangeMarginRate as reqQryExchangeMarginRate {`TDObject', with* `CThostFtdcQryExchangeMarginRateField', `Int'} -> `Int'#}
{#fun tdReqQryExchangeMarginRateAdjust as reqQryExchangeMarginRateAdjust {`TDObject', with* `CThostFtdcQryExchangeMarginRateAdjustField', `Int'} -> `Int'#}
{#fun tdReqQryExchangeRate as reqQryExchangeRate {`TDObject', with* `CThostFtdcQryExchangeRateField', `Int'} -> `Int'#}
{#fun tdReqQrySecAgentACIDMap as reqQrySecAgentACIDMap {`TDObject', with* `CThostFtdcQrySecAgentACIDMapField', `Int'} -> `Int'#}
{#fun tdReqQryProductExchRate as reqQryProductExchRate {`TDObject', with* `CThostFtdcQryProductExchRateField', `Int'} -> `Int'#}
{#fun tdReqQryProductGroup as reqQryProductGroup {`TDObject', with* `CThostFtdcQryProductGroupField', `Int'} -> `Int'#}
{#fun tdReqQryMMInstrumentCommissionRate as reqQryMMInstrumentCommissionRate {`TDObject', with* `CThostFtdcQryMMInstrumentCommissionRateField', `Int'} -> `Int'#}
{#fun tdReqQryMMOptionInstrCommRate as reqQryMMOptionInstrCommRate {`TDObject', with* `CThostFtdcQryMMOptionInstrCommRateField', `Int'} -> `Int'#}
{#fun tdReqQryInstrumentOrderCommRate as reqQryInstrumentOrderCommRate {`TDObject', with* `CThostFtdcQryInstrumentOrderCommRateField', `Int'} -> `Int'#}
{#fun tdReqQryOptionInstrTradeCost as reqQryOptionInstrTradeCost {`TDObject', with* `CThostFtdcQryOptionInstrTradeCostField', `Int'} -> `Int'#}
{#fun tdReqQryOptionInstrCommRate as reqQryOptionInstrCommRate {`TDObject', with* `CThostFtdcQryOptionInstrCommRateField', `Int'} -> `Int'#}
{#fun tdReqQryExecOrder as reqQryExecOrder {`TDObject', with* `CThostFtdcQryExecOrderField', `Int'} -> `Int'#}
{#fun tdReqQryForQuote as reqQryForQuote {`TDObject', with* `CThostFtdcQryForQuoteField', `Int'} -> `Int'#}
{#fun tdReqQryQuote as reqQryQuote {`TDObject', with* `CThostFtdcQryQuoteField', `Int'} -> `Int'#}
{#fun tdReqQryLock as reqQryLock {`TDObject', with* `CThostFtdcQryLockField', `Int'} -> `Int'#}
{#fun tdReqQryLockPosition as reqQryLockPosition {`TDObject', with* `CThostFtdcQryLockPositionField', `Int'} -> `Int'#}
{#fun tdReqQryETFOptionInstrCommRate as reqQryETFOptionInstrCommRate {`TDObject', with* `CThostFtdcQryETFOptionInstrCommRateField', `Int'} -> `Int'#}
{#fun tdReqQryInvestorLevel as reqQryInvestorLevel {`TDObject', with* `CThostFtdcQryInvestorLevelField', `Int'} -> `Int'#}
{#fun tdReqQryExecFreeze as reqQryExecFreeze {`TDObject', with* `CThostFtdcQryExecFreezeField', `Int'} -> `Int'#}
{#fun tdReqQryCombInstrumentGuard as reqQryCombInstrumentGuard {`TDObject', with* `CThostFtdcQryCombInstrumentGuardField', `Int'} -> `Int'#}
{#fun tdReqQryCombAction as reqQryCombAction {`TDObject', with* `CThostFtdcQryCombActionField', `Int'} -> `Int'#}
{#fun tdReqQryTransferSerial as reqQryTransferSerial {`TDObject', with* `CThostFtdcQryTransferSerialField', `Int'} -> `Int'#}
{#fun tdReqQryAccountregister as reqQryAccountregister {`TDObject', with* `CThostFtdcQryAccountregisterField', `Int'} -> `Int'#}
{#fun tdReqQryContractBank as reqQryContractBank {`TDObject', with* `CThostFtdcQryContractBankField', `Int'} -> `Int'#}
{#fun tdReqQryParkedOrder as reqQryParkedOrder {`TDObject', with* `CThostFtdcQryParkedOrderField', `Int'} -> `Int'#}
{#fun tdReqQryParkedOrderAction as reqQryParkedOrderAction {`TDObject', with* `CThostFtdcQryParkedOrderActionField', `Int'} -> `Int'#}
{#fun tdReqQryTradingNotice as reqQryTradingNotice {`TDObject', with* `CThostFtdcQryTradingNoticeField', `Int'} -> `Int'#}
{#fun tdReqQryBrokerTradingParams as reqQryBrokerTradingParams {`TDObject', with* `CThostFtdcQryBrokerTradingParamsField', `Int'} -> `Int'#}
{#fun tdReqQryBrokerTradingAlgos as reqQryBrokerTradingAlgos {`TDObject', with* `CThostFtdcQryBrokerTradingAlgosField', `Int'} -> `Int'#}
{#fun tdReqQueryCFMMCTradingAccountToken as reqQueryCFMMCTradingAccountToken {`TDObject', with* `CThostFtdcQueryCFMMCTradingAccountTokenField', `Int'} -> `Int'#}
{#fun tdReqFromBankToFutureByFuture as reqFromBankToFutureByFuture {`TDObject', with* `CThostFtdcReqTransferField', `Int'} -> `Int'#}
{#fun tdReqFromFutureToBankByFuture as reqFromFutureToBankByFuture {`TDObject', with* `CThostFtdcReqTransferField', `Int'} -> `Int'#}
{#fun tdReqQueryBankAccountMoneyByFuture as reqQueryBankAccountMoneyByFuture {`TDObject', with* `CThostFtdcReqQueryAccountField', `Int'} -> `Int'#}

withCtpTDSpiFFI :: CtpTDSpi -> (CtpTDSpiFFIPtr -> IO ()) -> IO ()
withCtpTDSpiFFI spi f =
  let n = return nullFunPtr in
    CtpTDSpiFFI <$>
    maybe n wrapOnFrontConnected (onFrontConnected spi) <*>
    maybe n (wrapOnFrontDisconnected . wrapSpiF1') (onFrontDisconnected spi) <*>
    maybe n (wrapOnHeartBeatWarning . wrapSpiF1') (onHeartBeatWarning spi) <*>
    maybe n (wrapOnRspAuthenticate . wrapSpiF4) (onRspAuthenticate spi) <*>
    maybe n (wrapOnRspUserLogin . wrapSpiF4) (onRspUserLogin spi) <*>
    maybe n (wrapOnRspUserLogout . wrapSpiF4) (onRspUserLogout spi) <*>
    maybe n (wrapOnRspUserPasswordUpdate . wrapSpiF4) (onRspUserPasswordUpdate spi) <*>
    maybe n (wrapOnRspTradingAccountPasswordUpdate . wrapSpiF4) (onRspTradingAccountPasswordUpdate spi) <*>
    maybe n (wrapOnRspOrderInsert . wrapSpiF4) (onRspOrderInsert spi) <*>
    maybe n (wrapOnRspParkedOrderInsert . wrapSpiF4) (onRspParkedOrderInsert spi) <*>
    maybe n (wrapOnRspParkedOrderAction . wrapSpiF4) (onRspParkedOrderAction spi) <*>
    maybe n (wrapOnRspOrderAction . wrapSpiF4) (onRspOrderAction spi) <*>
    maybe n (wrapOnRspQueryMaxOrderVolume . wrapSpiF4) (onRspQueryMaxOrderVolume spi) <*>
    maybe n (wrapOnRspSettlementInfoConfirm . wrapSpiF4) (onRspSettlementInfoConfirm spi) <*>
    maybe n (wrapOnRspRemoveParkedOrder . wrapSpiF4) (onRspRemoveParkedOrder spi) <*>
    maybe n (wrapOnRspRemoveParkedOrderAction . wrapSpiF4) (onRspRemoveParkedOrderAction spi) <*>
    maybe n (wrapOnRspExecOrderInsert . wrapSpiF4) (onRspExecOrderInsert spi) <*>
    maybe n (wrapOnRspExecOrderAction . wrapSpiF4) (onRspExecOrderAction spi) <*>
    maybe n (wrapOnRspForQuoteInsert . wrapSpiF4) (onRspForQuoteInsert spi) <*>
    maybe n (wrapOnRspQuoteInsert . wrapSpiF4) (onRspQuoteInsert spi) <*>
    maybe n (wrapOnRspQuoteAction . wrapSpiF4) (onRspQuoteAction spi) <*>
    maybe n (wrapOnRspLockInsert . wrapSpiF4) (onRspLockInsert spi) <*>
    maybe n (wrapOnRspBatchOrderAction . wrapSpiF4) (onRspBatchOrderAction spi) <*>
    maybe n (wrapOnRspCombActionInsert . wrapSpiF4) (onRspCombActionInsert spi) <*>
    maybe n (wrapOnRspQryOrder . wrapSpiF4) (onRspQryOrder spi) <*>
    maybe n (wrapOnRspQryTrade . wrapSpiF4) (onRspQryTrade spi) <*>
    maybe n (wrapOnRspQryInvestorPosition . wrapSpiF4) (onRspQryInvestorPosition spi) <*>
    maybe n (wrapOnRspQryTradingAccount . wrapSpiF4) (onRspQryTradingAccount spi) <*>
    maybe n (wrapOnRspQryInvestor . wrapSpiF4) (onRspQryInvestor spi) <*>
    maybe n (wrapOnRspQryTradingCode . wrapSpiF4) (onRspQryTradingCode spi) <*>
    maybe n (wrapOnRspQryInstrumentMarginRate . wrapSpiF4) (onRspQryInstrumentMarginRate spi) <*>
    maybe n (wrapOnRspQryInstrumentCommissionRate . wrapSpiF4) (onRspQryInstrumentCommissionRate spi) <*>
    maybe n (wrapOnRspQryExchange . wrapSpiF4) (onRspQryExchange spi) <*>
    maybe n (wrapOnRspQryProduct . wrapSpiF4) (onRspQryProduct spi) <*>
    maybe n (wrapOnRspQryInstrument . wrapSpiF4) (onRspQryInstrument spi) <*>
    maybe n (wrapOnRspQryDepthMarketData . wrapSpiF4) (onRspQryDepthMarketData spi) <*>
    maybe n (wrapOnRspQrySettlementInfo . wrapSpiF4) (onRspQrySettlementInfo spi) <*>
    maybe n (wrapOnRspQryTransferBank . wrapSpiF4) (onRspQryTransferBank spi) <*>
    maybe n (wrapOnRspQryInvestorPositionDetail . wrapSpiF4) (onRspQryInvestorPositionDetail spi) <*>
    maybe n (wrapOnRspQryNotice . wrapSpiF4) (onRspQryNotice spi) <*>
    maybe n (wrapOnRspQrySettlementInfoConfirm . wrapSpiF4) (onRspQrySettlementInfoConfirm spi) <*>
    maybe n (wrapOnRspQryInvestorPositionCombineDetail . wrapSpiF4) (onRspQryInvestorPositionCombineDetail spi) <*>
    maybe n (wrapOnRspQryCFMMCTradingAccountKey . wrapSpiF4) (onRspQryCFMMCTradingAccountKey spi) <*>
    maybe n (wrapOnRspQryEWarrantOffset . wrapSpiF4) (onRspQryEWarrantOffset spi) <*>
    maybe n (wrapOnRspQryInvestorProductGroupMargin . wrapSpiF4) (onRspQryInvestorProductGroupMargin spi) <*>
    maybe n (wrapOnRspQryExchangeMarginRate . wrapSpiF4) (onRspQryExchangeMarginRate spi) <*>
    maybe n (wrapOnRspQryExchangeMarginRateAdjust . wrapSpiF4) (onRspQryExchangeMarginRateAdjust spi) <*>
    maybe n (wrapOnRspQryExchangeRate . wrapSpiF4) (onRspQryExchangeRate spi) <*>
    maybe n (wrapOnRspQrySecAgentACIDMap . wrapSpiF4) (onRspQrySecAgentACIDMap spi) <*>
    maybe n (wrapOnRspQryProductExchRate . wrapSpiF4) (onRspQryProductExchRate spi) <*>
    maybe n (wrapOnRspQryProductGroup . wrapSpiF4) (onRspQryProductGroup spi) <*>
    maybe n (wrapOnRspQryMMInstrumentCommissionRate . wrapSpiF4) (onRspQryMMInstrumentCommissionRate spi) <*>
    maybe n (wrapOnRspQryMMOptionInstrCommRate . wrapSpiF4) (onRspQryMMOptionInstrCommRate spi) <*>
    maybe n (wrapOnRspQryInstrumentOrderCommRate . wrapSpiF4) (onRspQryInstrumentOrderCommRate spi) <*>
    maybe n (wrapOnRspQryOptionInstrTradeCost . wrapSpiF4) (onRspQryOptionInstrTradeCost spi) <*>
    maybe n (wrapOnRspQryOptionInstrCommRate . wrapSpiF4) (onRspQryOptionInstrCommRate spi) <*>
    maybe n (wrapOnRspQryExecOrder . wrapSpiF4) (onRspQryExecOrder spi) <*>
    maybe n (wrapOnRspQryForQuote . wrapSpiF4) (onRspQryForQuote spi) <*>
    maybe n (wrapOnRspQryQuote . wrapSpiF4) (onRspQryQuote spi) <*>
    maybe n (wrapOnRspQryLock . wrapSpiF4) (onRspQryLock spi) <*>
    maybe n (wrapOnRspQryLockPosition . wrapSpiF4) (onRspQryLockPosition spi) <*>
    maybe n (wrapOnRspQryETFOptionInstrCommRate . wrapSpiF4) (onRspQryETFOptionInstrCommRate spi) <*>
    maybe n (wrapOnRspQryInvestorLevel . wrapSpiF4) (onRspQryInvestorLevel spi) <*>
    maybe n (wrapOnRspQryExecFreeze . wrapSpiF4) (onRspQryExecFreeze spi) <*>
    maybe n (wrapOnRspQryCombInstrumentGuard . wrapSpiF4) (onRspQryCombInstrumentGuard spi) <*>
    maybe n (wrapOnRspQryCombAction . wrapSpiF4) (onRspQryCombAction spi) <*>
    maybe n (wrapOnRspQryTransferSerial . wrapSpiF4) (onRspQryTransferSerial spi) <*>
    maybe n (wrapOnRspQryAccountregister . wrapSpiF4) (onRspQryAccountregister spi) <*>
    maybe n (wrapOnRspError . wrapSpiF3) (onRspError spi) <*>
    maybe n (wrapOnRtnOrder . wrapSpiF1) (onRtnOrder spi) <*>
    maybe n (wrapOnRtnTrade . wrapSpiF1) (onRtnTrade spi) <*>
    maybe n (wrapOnErrRtnOrderInsert . wrapSpiF2) (onErrRtnOrderInsert spi) <*>
    maybe n (wrapOnErrRtnOrderAction . wrapSpiF2) (onErrRtnOrderAction spi) <*>
    maybe n (wrapOnRtnInstrumentStatus . wrapSpiF1) (onRtnInstrumentStatus spi) <*>
    maybe n (wrapOnRtnBulletin . wrapSpiF1) (onRtnBulletin spi) <*>
    maybe n (wrapOnRtnTradingNotice . wrapSpiF1) (onRtnTradingNotice spi) <*>
    maybe n (wrapOnRtnErrorConditionalOrder . wrapSpiF1) (onRtnErrorConditionalOrder spi) <*>
    maybe n (wrapOnRtnExecOrder . wrapSpiF1) (onRtnExecOrder spi) <*>
    maybe n (wrapOnErrRtnExecOrderInsert . wrapSpiF2) (onErrRtnExecOrderInsert spi) <*>
    maybe n (wrapOnErrRtnExecOrderAction . wrapSpiF2) (onErrRtnExecOrderAction spi) <*>
    maybe n (wrapOnErrRtnForQuoteInsert. wrapSpiF2) (onErrRtnForQuoteInsert spi) <*>
    maybe n (wrapOnRtnQuote . wrapSpiF1) (onRtnQuote spi) <*>
    maybe n (wrapOnErrRtnQuoteInsert . wrapSpiF2) (onErrRtnQuoteInsert spi) <*>
    maybe n (wrapOnErrRtnQuoteAction . wrapSpiF2) (onErrRtnQuoteAction spi) <*>
    maybe n (wrapOnRtnForQuoteRsp . wrapSpiF1) (onRtnForQuoteRsp spi) <*>
    maybe n (wrapOnRtnCFMMCTradingAccountToken . wrapSpiF1) (onRtnCFMMCTradingAccountToken spi) <*>
    maybe n (wrapOnRtnLock . wrapSpiF1) (onRtnLock spi) <*>
    maybe n (wrapOnErrRtnLockInsert . wrapSpiF2) (onErrRtnLockInsert spi) <*>
    maybe n (wrapOnErrRtnBatchOrderAction . wrapSpiF2) (onErrRtnBatchOrderAction spi) <*>
    maybe n (wrapOnRtnCombAction . wrapSpiF1) (onRtnCombAction spi) <*>
    maybe n (wrapOnErrRtnCombActionInsert . wrapSpiF2) (onErrRtnCombActionInsert spi) <*>
    maybe n (wrapOnRspQryContractBank . wrapSpiF4) (onRspQryContractBank spi) <*>
    maybe n (wrapOnRspQryParkedOrder . wrapSpiF4) (onRspQryParkedOrder spi) <*>
    maybe n (wrapOnRspQryParkedOrderAction . wrapSpiF4) (onRspQryParkedOrderAction spi) <*>
    maybe n (wrapOnRspQryTradingNotice . wrapSpiF4) (onRspQryTradingNotice spi) <*>
    maybe n (wrapOnRspQryBrokerTradingParams . wrapSpiF4) (onRspQryBrokerTradingParams spi) <*>
    maybe n (wrapOnRspQryBrokerTradingAlgos . wrapSpiF4) (onRspQryBrokerTradingAlgos spi) <*>
    maybe n (wrapOnRspQueryCFMMCTradingAccountToken . wrapSpiF4) (onRspQueryCFMMCTradingAccountToken spi) <*>
    maybe n (wrapOnRtnFromBankToFutureByBank . wrapSpiF1) (onRtnFromBankToFutureByBank spi) <*>
    maybe n (wrapOnRtnFromFutureToBankByBank . wrapSpiF1) (onRtnFromFutureToBankByBank spi) <*>
    maybe n (wrapOnRtnRepealFromBankToFutureByBank . wrapSpiF1) (onRtnRepealFromBankToFutureByBank spi) <*>
    maybe n (wrapOnRtnRepealFromFutureToBankByBank . wrapSpiF1) (onRtnRepealFromFutureToBankByBank spi) <*>
    maybe n (wrapOnRtnFromBankToFutureByFuture . wrapSpiF1) (onRtnFromBankToFutureByFuture spi) <*>
    maybe n (wrapOnRtnFromFutureToBankByFuture . wrapSpiF1) (onRtnFromFutureToBankByFuture spi) <*>
    maybe n (wrapOnRtnRepealFromBankToFutureByFutureManual . wrapSpiF1) (onRtnRepealFromBankToFutureByFutureManual spi) <*>
    maybe n (wrapOnRtnRepealFromFutureToBankByFutureManual . wrapSpiF1) (onRtnRepealFromFutureToBankByFutureManual spi) <*>
    maybe n (wrapOnRtnQueryBankBalanceByFuture . wrapSpiF1) (onRtnQueryBankBalanceByFuture spi) <*>
    maybe n (wrapOnErrRtnBankToFutureByFuture . wrapSpiF2) (onErrRtnBankToFutureByFuture spi) <*>
    maybe n (wrapOnErrRtnFutureToBankByFuture . wrapSpiF2) (onErrRtnFutureToBankByFuture spi) <*>
    maybe n (wrapOnErrRtnRepealBankToFutureByFutureManual . wrapSpiF2) (onErrRtnRepealBankToFutureByFutureManual spi) <*>
    maybe n (wrapOnErrRtnRepealFutureToBankByFutureManual . wrapSpiF2) (onErrRtnRepealFutureToBankByFutureManual spi) <*>
    maybe n (wrapOnErrRtnQueryBankBalanceByFuture . wrapSpiF2) (onErrRtnQueryBankBalanceByFuture spi) <*>
    maybe n (wrapOnRtnRepealFromBankToFutureByFuture . wrapSpiF1) (onRtnRepealFromBankToFutureByFuture spi) <*>
    maybe n (wrapOnRtnRepealFromFutureToBankByFuture . wrapSpiF1) (onRtnRepealFromFutureToBankByFuture spi) <*>
    maybe n (wrapOnRspFromBankToFutureByFuture . wrapSpiF4) (onRspFromBankToFutureByFuture spi) <*>
    maybe n (wrapOnRspFromFutureToBankByFuture . wrapSpiF4) (onRspFromFutureToBankByFuture spi) <*>
    maybe n (wrapOnRspQueryBankAccountMoneyByFuture . wrapSpiF4) (onRspQueryBankAccountMoneyByFuture spi) <*>
    maybe n (wrapOnRtnOpenAccountByBank . wrapSpiF1) (onRtnOpenAccountByBank spi) <*>
    maybe n (wrapOnRtnCancelAccountByBank . wrapSpiF1) (onRtnCancelAccountByBank spi) <*>
    maybe n (wrapOnRtnChangeAccountByBank . wrapSpiF1) (onRtnChangeAccountByBank spi) >>=
    flip with f
