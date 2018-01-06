#include "ffi.h"
#include "ctp/ThostFtdcMdApi.h"
#include "ctp/ThostFtdcTraderApi.h"
#include "spi.h"

//------------------------------------------------------------------------------
// MD
//------------------------------------------------------------------------------

#define M(thiz) static_cast<CThostFtdcMdApi *>(thiz)
#define MR(fn, t1) \
  int md##fn(MDObject thiz, t1 a1, int a2) { M(thiz)->fn(a1, a2); }

MDObject mdCreate(const char *flowPath, bool usingUdp, bool multicast) {
  return CThostFtdcMdApi::CreateFtdcMdApi(flowPath, usingUdp, multicast);
}

void mdRelease(MDObject thiz) {
  CThostFtdcMdApi *api = M(thiz);
  if (api) {
    api->RegisterSpi(0);
    api->Release();
  }
}

const char *mdGetApiVersion() { return CThostFtdcMdApi::GetApiVersion(); }

void mdInit(MDObject thiz) { M(thiz)->Init(); }

const char *mdGetTradingDay(MDObject thiz) { return M(thiz)->GetTradingDay(); }

void mdRegisterFront(MDObject thiz, char *addr) {
  M(thiz)->RegisterFront(addr);
}

void mdRegisterNameServer(MDObject thiz, char *addr) {
  M(thiz)->RegisterNameServer(addr);
}

void mdRegisterFensUserInfo(MDObject thiz, CThostFtdcFensUserInfoField *info) {
  M(thiz)->RegisterFensUserInfo(info);
}

void mdRegisterSpi(MDObject thiz, const CtpMDSpiFFI *spi) {
  M(thiz)->RegisterSpi(new CtpMDSpi(spi));
}

int mdSubscribeMarketData(MDObject thiz, char *inst) {
  char *ids[1] = {inst};
  return M(thiz)->SubscribeMarketData(ids, 1);
}

int mdUnSubscribeMarketData(MDObject thiz, char *inst) {
  char *ids[1] = {inst};
  return M(thiz)->UnSubscribeMarketData(ids, 1);
}

int mdSubscribeForQuoteRsp(MDObject thiz, char *inst) {
  char *ids[1] = {inst};
  return M(thiz)->SubscribeForQuoteRsp(ids, 1);
}

int mdUnSubscribeForQuoteRsp(MDObject thiz, char *inst) {
  char *ids[1] = {inst};
  return M(thiz)->UnSubscribeForQuoteRsp(ids, 1);
}

MR(ReqUserLogin, CThostFtdcReqUserLoginField *)
MR(ReqUserLogout, CThostFtdcUserLogoutField *)

//------------------------------------------------------------------------------
// TD
//------------------------------------------------------------------------------

#define T(thiz) static_cast<CThostFtdcTraderApi *>(thiz)
#define TR(fn, t1) \
  int td##fn(MDObject thiz, t1 a1, int a2) { T(thiz)->fn(a1, a2); }

TDObject tdCreate(const char *flowPath) {
  return CThostFtdcTraderApi::CreateFtdcTraderApi(flowPath);
}

void tdRelease(TDObject thiz) {
  CThostFtdcTraderApi *api = T(thiz);
  if (api) {
    api->RegisterSpi(0);
    api->Release();
  }
}

const char *tdGetApiVersion() { return CThostFtdcTraderApi::GetApiVersion(); }

void tdInit(TDObject thiz) { T(thiz)->Init(); }

const char *tdGetTradingDay(TDObject thiz) { return T(thiz)->GetTradingDay(); }

void tdRegisterFront(TDObject thiz, char *addr) {
  T(thiz)->RegisterFront(addr);
}

void tdRegisterNameServer(TDObject thiz, char *addr) {
  T(thiz)->RegisterNameServer(addr);
}

void tdRegisterFensUserInfo(TDObject thiz, CThostFtdcFensUserInfoField *req) {
  T(thiz)->RegisterFensUserInfo(req);
}

void tdRegisterSpi(TDObject thiz, const CtpTDSpiFFI *spi) {
  T(thiz)->RegisterSpi(new CtpTDSpi(spi));
}

void tdSubscribePrivateTopic(TDObject thiz, THOST_TE_RESUME_TYPE rt) {
  T(thiz)->SubscribePrivateTopic(rt);
}

void tdSubscribePublicTopic(TDObject thiz, THOST_TE_RESUME_TYPE rt) {
  T(thiz)->SubscribePublicTopic(rt);
}

TR(ReqAuthenticate, CThostFtdcReqAuthenticateField *)
TR(ReqUserLogin, CThostFtdcReqUserLoginField *)
TR(ReqUserLogout, CThostFtdcUserLogoutField *)
TR(ReqUserPasswordUpdate, CThostFtdcUserPasswordUpdateField *)
TR(ReqTradingAccountPasswordUpdate,
   CThostFtdcTradingAccountPasswordUpdateField *)
TR(ReqOrderInsert, CThostFtdcInputOrderField *)
TR(ReqParkedOrderInsert, CThostFtdcParkedOrderField *)
TR(ReqParkedOrderAction, CThostFtdcParkedOrderActionField *)
TR(ReqOrderAction, CThostFtdcInputOrderActionField *)
TR(ReqQueryMaxOrderVolume, CThostFtdcQueryMaxOrderVolumeField *)
TR(ReqSettlementInfoConfirm, CThostFtdcSettlementInfoConfirmField *)
TR(ReqRemoveParkedOrder, CThostFtdcRemoveParkedOrderField *)
TR(ReqRemoveParkedOrderAction, CThostFtdcRemoveParkedOrderActionField *)
TR(ReqExecOrderInsert, CThostFtdcInputExecOrderField *)
TR(ReqExecOrderAction, CThostFtdcInputExecOrderActionField *)
TR(ReqForQuoteInsert, CThostFtdcInputForQuoteField *)
TR(ReqQuoteInsert, CThostFtdcInputQuoteField *)
TR(ReqQuoteAction, CThostFtdcInputQuoteActionField *)
TR(ReqLockInsert, CThostFtdcInputLockField *)
TR(ReqBatchOrderAction, CThostFtdcInputBatchOrderActionField *)
TR(ReqCombActionInsert, CThostFtdcInputCombActionField *)
TR(ReqQryOrder, CThostFtdcQryOrderField *)
TR(ReqQryTrade, CThostFtdcQryTradeField *)
TR(ReqQryInvestorPosition, CThostFtdcQryInvestorPositionField *)
TR(ReqQryTradingAccount, CThostFtdcQryTradingAccountField *)
TR(ReqQryInvestor, CThostFtdcQryInvestorField *)
TR(ReqQryTradingCode, CThostFtdcQryTradingCodeField *)
TR(ReqQryInstrumentMarginRate, CThostFtdcQryInstrumentMarginRateField *)
TR(ReqQryInstrumentCommissionRate, CThostFtdcQryInstrumentCommissionRateField *)
TR(ReqQryExchange, CThostFtdcQryExchangeField *)
TR(ReqQryProduct, CThostFtdcQryProductField *)
TR(ReqQryInstrument, CThostFtdcQryInstrumentField *)
TR(ReqQryDepthMarketData, CThostFtdcQryDepthMarketDataField *)
TR(ReqQrySettlementInfo, CThostFtdcQrySettlementInfoField *)
TR(ReqQryTransferBank, CThostFtdcQryTransferBankField *)
TR(ReqQryInvestorPositionDetail, CThostFtdcQryInvestorPositionDetailField *)
TR(ReqQryNotice, CThostFtdcQryNoticeField *)
TR(ReqQrySettlementInfoConfirm, CThostFtdcQrySettlementInfoConfirmField *)
TR(ReqQryInvestorPositionCombineDetail,
   CThostFtdcQryInvestorPositionCombineDetailField *)
TR(ReqQryCFMMCTradingAccountKey, CThostFtdcQryCFMMCTradingAccountKeyField *)
TR(ReqQryEWarrantOffset, CThostFtdcQryEWarrantOffsetField *)
TR(ReqQryInvestorProductGroupMargin,
   CThostFtdcQryInvestorProductGroupMarginField *)
TR(ReqQryExchangeMarginRate, CThostFtdcQryExchangeMarginRateField *)
TR(ReqQryExchangeMarginRateAdjust, CThostFtdcQryExchangeMarginRateAdjustField *)
TR(ReqQryExchangeRate, CThostFtdcQryExchangeRateField *)
TR(ReqQrySecAgentACIDMap, CThostFtdcQrySecAgentACIDMapField *)
TR(ReqQryProductExchRate, CThostFtdcQryProductExchRateField *)
TR(ReqQryProductGroup, CThostFtdcQryProductGroupField *)
TR(ReqQryMMInstrumentCommissionRate,
   CThostFtdcQryMMInstrumentCommissionRateField *)
TR(ReqQryMMOptionInstrCommRate, CThostFtdcQryMMOptionInstrCommRateField *)
TR(ReqQryInstrumentOrderCommRate, CThostFtdcQryInstrumentOrderCommRateField *)
TR(ReqQryOptionInstrTradeCost, CThostFtdcQryOptionInstrTradeCostField *)
TR(ReqQryOptionInstrCommRate, CThostFtdcQryOptionInstrCommRateField *)
TR(ReqQryExecOrder, CThostFtdcQryExecOrderField *)
TR(ReqQryForQuote, CThostFtdcQryForQuoteField *)
TR(ReqQryQuote, CThostFtdcQryQuoteField *)
TR(ReqQryLock, CThostFtdcQryLockField *)
TR(ReqQryLockPosition, CThostFtdcQryLockPositionField *)
TR(ReqQryETFOptionInstrCommRate, CThostFtdcQryETFOptionInstrCommRateField *)
TR(ReqQryInvestorLevel, CThostFtdcQryInvestorLevelField *)
TR(ReqQryExecFreeze, CThostFtdcQryExecFreezeField *)
TR(ReqQryCombInstrumentGuard, CThostFtdcQryCombInstrumentGuardField *)
TR(ReqQryCombAction, CThostFtdcQryCombActionField *)
TR(ReqQryTransferSerial, CThostFtdcQryTransferSerialField *)
TR(ReqQryAccountregister, CThostFtdcQryAccountregisterField *)
TR(ReqQryContractBank, CThostFtdcQryContractBankField *)
TR(ReqQryParkedOrder, CThostFtdcQryParkedOrderField *)
TR(ReqQryParkedOrderAction, CThostFtdcQryParkedOrderActionField *)
TR(ReqQryTradingNotice, CThostFtdcQryTradingNoticeField *)
TR(ReqQryBrokerTradingParams, CThostFtdcQryBrokerTradingParamsField *)
TR(ReqQryBrokerTradingAlgos, CThostFtdcQryBrokerTradingAlgosField *)
TR(ReqQueryCFMMCTradingAccountToken,
   CThostFtdcQueryCFMMCTradingAccountTokenField *)
TR(ReqFromBankToFutureByFuture, CThostFtdcReqTransferField *)
TR(ReqFromFutureToBankByFuture, CThostFtdcReqTransferField *)
TR(ReqQueryBankAccountMoneyByFuture, CThostFtdcReqQueryAccountField *)
