#include "spi.h"

#define SPI0(cls, fn)         \
  void cls::fn() {            \
    if (this->spi_.ffi##fn) { \
      this->spi_.ffi##fn();   \
    }                         \
  }

#define SPII(cls, fn)         \
  void cls::fn(int a1) {      \
    if (this->spi_.ffi##fn) { \
      this->spi_.ffi##fn(a1); \
    }                         \
  }

#define SPI1(cls, fn, t1)                \
  void cls::fn(t1 *a1) {                 \
    static t1 z1 = {0};                  \
    if (this->spi_.ffi##fn) {            \
      this->spi_.ffi##fn(a1 ? a1 : &z1); \
    }                                    \
  }

#define SPI2(cls, fn, t1)                               \
  void cls::fn(t1 *a1, CThostFtdcRspInfoField *a2) {    \
    static t1 z1 = {0};                                 \
    static CThostFtdcRspInfoField z2 = {0};             \
    if (this->spi_.ffi##fn) {                           \
      this->spi_.ffi##fn(a1 ? a1 : &z1, a2 ? a2 : &z2); \
    }                                                   \
  }

#define SPI3(cls, fn)                                         \
  void cls::fn(CThostFtdcRspInfoField *a1, int a2, bool a3) { \
    static CThostFtdcRspInfoField z1 = {0};                   \
    if (this->spi_.ffi##fn) {                                 \
      this->spi_.ffi##fn(a1 ? a1 : &z1, a2, a3);              \
    }                                                         \
  }

#define SPI4(cls, fn, t1)                                             \
  void cls::fn(t1 *a1, CThostFtdcRspInfoField *a2, int a3, bool a4) { \
    static t1 z1 = {0};                                               \
    static CThostFtdcRspInfoField z2 = {0};                           \
    if (this->spi_.ffi##fn) {                                         \
      this->spi_.ffi##fn(a1 ? a1 : &z1, a2 ? a2 : &z2, a3, a4);       \
    }                                                                 \
  }

//------------------------------------------------------------------------------
// MD
//------------------------------------------------------------------------------

#define M0(fn) SPI0(CtpMDSpi, fn)
#define MI(fn) SPII(CtpMDSpi, fn)
#define M1(fn, t1) SPI1(CtpMDSpi, fn, t1)
#define M3(fn) SPI3(CtpMDSpi, fn)
#define M4(fn, t1) SPI4(CtpMDSpi, fn, t1)

CtpMDSpi::CtpMDSpi(const CtpMDSpiFFI *spi) : spi_(*spi) {}
CtpMDSpi::~CtpMDSpi() {}

M0(OnFrontConnected)
MI(OnFrontDisconnected)
MI(OnHeartBeatWarning)
M4(OnRspUserLogin, CThostFtdcRspUserLoginField)
M4(OnRspUserLogout, CThostFtdcUserLogoutField)
M3(OnRspError)
M4(OnRspSubMarketData, CThostFtdcSpecificInstrumentField)
M4(OnRspUnSubMarketData, CThostFtdcSpecificInstrumentField)
M4(OnRspSubForQuoteRsp, CThostFtdcSpecificInstrumentField)
M4(OnRspUnSubForQuoteRsp, CThostFtdcSpecificInstrumentField)
M1(OnRtnDepthMarketData, CThostFtdcDepthMarketDataField)
M1(OnRtnForQuoteRsp, CThostFtdcForQuoteRspField)

//------------------------------------------------------------------------------
// TD
//------------------------------------------------------------------------------

#define T0(fn) SPI0(CtpTDSpi, fn)
#define TI(fn) SPII(CtpTDSpi, fn)
#define T1(fn, t1) SPI1(CtpTDSpi, fn, t1)
#define T2(fn, t1) SPI2(CtpTDSpi, fn, t1)
#define T3(fn) SPI3(CtpTDSpi, fn)
#define T4(fn, t1) SPI4(CtpTDSpi, fn, t1)

CtpTDSpi::CtpTDSpi(const CtpTDSpiFFI *spi) : spi_(*spi) {}
CtpTDSpi::~CtpTDSpi() {}

T0(OnFrontConnected);
TI(OnFrontDisconnected)
TI(OnHeartBeatWarning)
T4(OnRspAuthenticate, CThostFtdcRspAuthenticateField)
T4(OnRspUserLogin, CThostFtdcRspUserLoginField)
T4(OnRspUserLogout, CThostFtdcUserLogoutField)
T4(OnRspUserPasswordUpdate, CThostFtdcUserPasswordUpdateField)
T4(OnRspTradingAccountPasswordUpdate,
   CThostFtdcTradingAccountPasswordUpdateField)
T4(OnRspOrderInsert, CThostFtdcInputOrderField)
T4(OnRspParkedOrderInsert, CThostFtdcParkedOrderField)
T4(OnRspParkedOrderAction, CThostFtdcParkedOrderActionField)
T4(OnRspOrderAction, CThostFtdcInputOrderActionField)
T4(OnRspQueryMaxOrderVolume, CThostFtdcQueryMaxOrderVolumeField)
T4(OnRspSettlementInfoConfirm, CThostFtdcSettlementInfoConfirmField)
T4(OnRspRemoveParkedOrder, CThostFtdcRemoveParkedOrderField)
T4(OnRspRemoveParkedOrderAction, CThostFtdcRemoveParkedOrderActionField)
T4(OnRspExecOrderInsert, CThostFtdcInputExecOrderField)
T4(OnRspExecOrderAction, CThostFtdcInputExecOrderActionField)
T4(OnRspForQuoteInsert, CThostFtdcInputForQuoteField)
T4(OnRspQuoteInsert, CThostFtdcInputQuoteField)
T4(OnRspQuoteAction, CThostFtdcInputQuoteActionField)
T4(OnRspLockInsert, CThostFtdcInputLockField)
T4(OnRspBatchOrderAction, CThostFtdcInputBatchOrderActionField)
T4(OnRspCombActionInsert, CThostFtdcInputCombActionField)
T4(OnRspQryOrder, CThostFtdcOrderField)
T4(OnRspQryTrade, CThostFtdcTradeField)
T4(OnRspQryInvestorPosition, CThostFtdcInvestorPositionField)
T4(OnRspQryTradingAccount, CThostFtdcTradingAccountField)
T4(OnRspQryInvestor, CThostFtdcInvestorField)
T4(OnRspQryTradingCode, CThostFtdcTradingCodeField)
T4(OnRspQryInstrumentMarginRate, CThostFtdcInstrumentMarginRateField)
T4(OnRspQryInstrumentCommissionRate, CThostFtdcInstrumentCommissionRateField)
T4(OnRspQryExchange, CThostFtdcExchangeField)
T4(OnRspQryProduct, CThostFtdcProductField)
T4(OnRspQryInstrument, CThostFtdcInstrumentField)
T4(OnRspQryDepthMarketData, CThostFtdcDepthMarketDataField)
T4(OnRspQrySettlementInfo, CThostFtdcSettlementInfoField)
T4(OnRspQryTransferBank, CThostFtdcTransferBankField)
T4(OnRspQryInvestorPositionDetail, CThostFtdcInvestorPositionDetailField)
T4(OnRspQryNotice, CThostFtdcNoticeField)
T4(OnRspQrySettlementInfoConfirm, CThostFtdcSettlementInfoConfirmField)
T4(OnRspQryInvestorPositionCombineDetail,
   CThostFtdcInvestorPositionCombineDetailField)
T4(OnRspQryCFMMCTradingAccountKey, CThostFtdcCFMMCTradingAccountKeyField)
T4(OnRspQryEWarrantOffset, CThostFtdcEWarrantOffsetField)
T4(OnRspQryInvestorProductGroupMargin,
   CThostFtdcInvestorProductGroupMarginField)
T4(OnRspQryExchangeMarginRate, CThostFtdcExchangeMarginRateField)
T4(OnRspQryExchangeMarginRateAdjust, CThostFtdcExchangeMarginRateAdjustField)
T4(OnRspQryExchangeRate, CThostFtdcExchangeRateField)
T4(OnRspQrySecAgentACIDMap, CThostFtdcSecAgentACIDMapField)
T4(OnRspQryProductExchRate, CThostFtdcProductExchRateField)
T4(OnRspQryProductGroup, CThostFtdcProductGroupField)
T4(OnRspQryMMInstrumentCommissionRate,
   CThostFtdcMMInstrumentCommissionRateField)
T4(OnRspQryMMOptionInstrCommRate, CThostFtdcMMOptionInstrCommRateField)
T4(OnRspQryInstrumentOrderCommRate, CThostFtdcInstrumentOrderCommRateField)
T4(OnRspQryOptionInstrTradeCost, CThostFtdcOptionInstrTradeCostField)
T4(OnRspQryOptionInstrCommRate, CThostFtdcOptionInstrCommRateField)
T4(OnRspQryExecOrder, CThostFtdcExecOrderField)
T4(OnRspQryForQuote, CThostFtdcForQuoteField)
T4(OnRspQryQuote, CThostFtdcQuoteField)
T4(OnRspQryLock, CThostFtdcLockField)
T4(OnRspQryLockPosition, CThostFtdcLockPositionField)
T4(OnRspQryETFOptionInstrCommRate, CThostFtdcETFOptionInstrCommRateField)
T4(OnRspQryInvestorLevel, CThostFtdcInvestorLevelField)
T4(OnRspQryExecFreeze, CThostFtdcExecFreezeField)
T4(OnRspQryCombInstrumentGuard, CThostFtdcCombInstrumentGuardField)
T4(OnRspQryCombAction, CThostFtdcCombActionField)
T4(OnRspQryTransferSerial, CThostFtdcTransferSerialField)
T4(OnRspQryAccountregister, CThostFtdcAccountregisterField)
T3(OnRspError)
T1(OnRtnOrder, CThostFtdcOrderField)
T1(OnRtnTrade, CThostFtdcTradeField)
T2(OnErrRtnOrderInsert, CThostFtdcInputOrderField)
T2(OnErrRtnOrderAction, CThostFtdcOrderActionField)
T1(OnRtnInstrumentStatus, CThostFtdcInstrumentStatusField)
T1(OnRtnBulletin, CThostFtdcBulletinField)
T1(OnRtnTradingNotice, CThostFtdcTradingNoticeInfoField)
T1(OnRtnErrorConditionalOrder, CThostFtdcErrorConditionalOrderField)
T1(OnRtnExecOrder, CThostFtdcExecOrderField)
T2(OnErrRtnExecOrderInsert, CThostFtdcInputExecOrderField)
T2(OnErrRtnExecOrderAction, CThostFtdcExecOrderActionField)
T2(OnErrRtnForQuoteInsert, CThostFtdcInputForQuoteField)
T1(OnRtnQuote, CThostFtdcQuoteField)
T2(OnErrRtnQuoteInsert, CThostFtdcInputQuoteField)
T2(OnErrRtnQuoteAction, CThostFtdcQuoteActionField)
T1(OnRtnForQuoteRsp, CThostFtdcForQuoteRspField)
T1(OnRtnCFMMCTradingAccountToken, CThostFtdcCFMMCTradingAccountTokenField)
T1(OnRtnLock, CThostFtdcLockField)
T2(OnErrRtnLockInsert, CThostFtdcInputLockField)
T2(OnErrRtnBatchOrderAction, CThostFtdcBatchOrderActionField)
T1(OnRtnCombAction, CThostFtdcCombActionField)
T2(OnErrRtnCombActionInsert, CThostFtdcInputCombActionField)
T4(OnRspQryContractBank, CThostFtdcContractBankField)
T4(OnRspQryParkedOrder, CThostFtdcParkedOrderField)
T4(OnRspQryParkedOrderAction, CThostFtdcParkedOrderActionField)
T4(OnRspQryTradingNotice, CThostFtdcTradingNoticeField)
T4(OnRspQryBrokerTradingParams, CThostFtdcBrokerTradingParamsField)
T4(OnRspQryBrokerTradingAlgos, CThostFtdcBrokerTradingAlgosField)
T4(OnRspQueryCFMMCTradingAccountToken,
   CThostFtdcQueryCFMMCTradingAccountTokenField)
T1(OnRtnFromBankToFutureByBank, CThostFtdcRspTransferField)
T1(OnRtnFromFutureToBankByBank, CThostFtdcRspTransferField)
T1(OnRtnRepealFromBankToFutureByBank, CThostFtdcRspRepealField)
T1(OnRtnRepealFromFutureToBankByBank, CThostFtdcRspRepealField)
T1(OnRtnFromBankToFutureByFuture, CThostFtdcRspTransferField)
T1(OnRtnFromFutureToBankByFuture, CThostFtdcRspTransferField)
T1(OnRtnRepealFromBankToFutureByFutureManual, CThostFtdcRspRepealField)
T1(OnRtnRepealFromFutureToBankByFutureManual, CThostFtdcRspRepealField)
T1(OnRtnQueryBankBalanceByFuture, CThostFtdcNotifyQueryAccountField)
T2(OnErrRtnBankToFutureByFuture, CThostFtdcReqTransferField)
T2(OnErrRtnFutureToBankByFuture, CThostFtdcReqTransferField)
T2(OnErrRtnRepealBankToFutureByFutureManual, CThostFtdcReqRepealField)
T2(OnErrRtnRepealFutureToBankByFutureManual, CThostFtdcReqRepealField)
T2(OnErrRtnQueryBankBalanceByFuture, CThostFtdcReqQueryAccountField)
T1(OnRtnRepealFromBankToFutureByFuture, CThostFtdcRspRepealField)
T1(OnRtnRepealFromFutureToBankByFuture, CThostFtdcRspRepealField)
T4(OnRspFromBankToFutureByFuture, CThostFtdcReqTransferField)
T4(OnRspFromFutureToBankByFuture, CThostFtdcReqTransferField)
T4(OnRspQueryBankAccountMoneyByFuture, CThostFtdcReqQueryAccountField)
T1(OnRtnOpenAccountByBank, CThostFtdcOpenAccountField)
T1(OnRtnCancelAccountByBank, CThostFtdcCancelAccountField)
T1(OnRtnChangeAccountByBank, CThostFtdcChangeAccountField)
