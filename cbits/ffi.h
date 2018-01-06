#ifndef _FFI_H_
#define _FFI_H_

#include "spi_ffi.h"

//------------------------------------------------------------------------------
// MD
//------------------------------------------------------------------------------

#ifdef __cplusplus
extern "C" {
#endif

typedef void *MDObject;

MDObject mdCreate(const char *flowPath, bool usingUdp, bool multicast);
void mdRelease(MDObject);
const char *mdGetApiVersion();
void mdInit(MDObject);
const char *mdGetTradingDay(MDObject);
void mdRegisterFront(MDObject, char *addr);
void mdRegisterNameServer(MDObject, char *addr);
void mdRegisterFensUserInfo(MDObject, struct CThostFtdcFensUserInfoField *req);
void mdRegisterSpi(MDObject, const struct CtpMDSpiFFI *spi);
int mdSubscribeMarketData(MDObject, char *inst);
int mdUnSubscribeMarketData(MDObject, char *inst);
int mdSubscribeForQuoteRsp(MDObject, char *inst);
int mdUnSubscribeForQuoteRsp(MDObject, char *inst);
int mdReqUserLogin(MDObject, struct CThostFtdcReqUserLoginField *req,
                   int reqID);
int mdReqUserLogout(MDObject, struct CThostFtdcUserLogoutField *req, int reqID);

#ifdef __cplusplus
}
#endif

//------------------------------------------------------------------------------
// TD
//------------------------------------------------------------------------------

#ifdef __cplusplus
extern "C" {
#endif

typedef void *TDObject;

TDObject tdCreate(const char *flowPath);
void tdRelease(TDObject);
const char *tdGetApiVersion();
void tdInit(TDObject);
const char *tdGetTradingDay(TDObject);
void tdRegisterFront(TDObject, char *addr);
void tdRegisterNameServer(TDObject, char *addr);
void tdRegisterFensUserInfo(TDObject, struct CThostFtdcFensUserInfoField *req);
void tdRegisterSpi(TDObject, const struct CtpTDSpiFFI *spi);
void tdSubscribePrivateTopic(TDObject, enum THOST_TE_RESUME_TYPE rt);
void tdSubscribePublicTopic(TDObject, enum THOST_TE_RESUME_TYPE rt);
int tdReqAuthenticate(TDObject, struct CThostFtdcReqAuthenticateField *req,
                      int reqID);
int tdReqUserLogin(TDObject, struct CThostFtdcReqUserLoginField *req,
                   int reqID);
int tdReqUserLogout(TDObject, struct CThostFtdcUserLogoutField *req, int reqID);
int tdReqUserPasswordUpdate(TDObject,
                            struct CThostFtdcUserPasswordUpdateField *req,
                            int reqID);
int tdReqTradingAccountPasswordUpdate(
    TDObject, struct CThostFtdcTradingAccountPasswordUpdateField *req,
    int reqID);
int tdReqOrderInsert(TDObject, struct CThostFtdcInputOrderField *req,
                     int reqID);
int tdReqParkedOrderInsert(TDObject, struct CThostFtdcParkedOrderField *req,
                           int reqID);
int tdReqParkedOrderAction(TDObject,
                           struct CThostFtdcParkedOrderActionField *req,
                           int reqID);
int tdReqOrderAction(TDObject, struct CThostFtdcInputOrderActionField *req,
                     int reqID);
int tdReqQueryMaxOrderVolume(TDObject,
                             struct CThostFtdcQueryMaxOrderVolumeField *req,
                             int reqID);
int tdReqSettlementInfoConfirm(TDObject,
                               struct CThostFtdcSettlementInfoConfirmField *req,
                               int reqID);
int tdReqRemoveParkedOrder(TDObject,
                           struct CThostFtdcRemoveParkedOrderField *req,
                           int reqID);
int tdReqRemoveParkedOrderAction(
    TDObject, struct CThostFtdcRemoveParkedOrderActionField *req, int reqID);
int tdReqExecOrderInsert(TDObject, struct CThostFtdcInputExecOrderField *req,
                         int reqID);
int tdReqExecOrderAction(TDObject,
                         struct CThostFtdcInputExecOrderActionField *req,
                         int reqID);
int tdReqForQuoteInsert(TDObject, struct CThostFtdcInputForQuoteField *req,
                        int reqID);
int tdReqQuoteInsert(TDObject, struct CThostFtdcInputQuoteField *req,
                     int reqID);
int tdReqQuoteAction(TDObject, struct CThostFtdcInputQuoteActionField *req,
                     int reqID);
int tdReqLockInsert(TDObject, struct CThostFtdcInputLockField *req, int reqID);
int tdReqBatchOrderAction(TDObject,
                          struct CThostFtdcInputBatchOrderActionField *req,
                          int reqID);
int tdReqCombActionInsert(TDObject, struct CThostFtdcInputCombActionField *req,
                          int reqID);
int tdReqQryOrder(TDObject, struct CThostFtdcQryOrderField *req, int reqID);
int tdReqQryTrade(TDObject, struct CThostFtdcQryTradeField *req, int reqID);
int tdReqQryInvestorPosition(TDObject,
                             struct CThostFtdcQryInvestorPositionField *req,
                             int reqID);
int tdReqQryTradingAccount(TDObject,
                           struct CThostFtdcQryTradingAccountField *req,
                           int reqID);
int tdReqQryInvestor(TDObject, struct CThostFtdcQryInvestorField *req,
                     int reqID);
int tdReqQryTradingCode(TDObject, struct CThostFtdcQryTradingCodeField *req,
                        int reqID);
int tdReqQryInstrumentMarginRate(
    TDObject, struct CThostFtdcQryInstrumentMarginRateField *req, int reqID);
int tdReqQryInstrumentCommissionRate(
    TDObject, struct CThostFtdcQryInstrumentCommissionRateField *req,
    int reqID);
int tdReqQryExchange(TDObject, struct CThostFtdcQryExchangeField *req,
                     int reqID);
int tdReqQryProduct(TDObject, struct CThostFtdcQryProductField *req, int reqID);
int tdReqQryInstrument(TDObject, struct CThostFtdcQryInstrumentField *req,
                       int reqID);
int tdReqQryDepthMarketData(TDObject,
                            struct CThostFtdcQryDepthMarketDataField *req,
                            int reqID);
int tdReqQrySettlementInfo(TDObject,
                           struct CThostFtdcQrySettlementInfoField *req,
                           int reqID);
int tdReqQryTransferBank(TDObject, struct CThostFtdcQryTransferBankField *req,
                         int reqID);
int tdReqQryInvestorPositionDetail(
    TDObject, struct CThostFtdcQryInvestorPositionDetailField *req, int reqID);
int tdReqQryNotice(TDObject, struct CThostFtdcQryNoticeField *req, int reqID);
int tdReqQrySettlementInfoConfirm(
    TDObject, struct CThostFtdcQrySettlementInfoConfirmField *req, int reqID);
int tdReqQryInvestorPositionCombineDetail(
    TDObject, struct CThostFtdcQryInvestorPositionCombineDetailField *req,
    int reqID);
int tdReqQryCFMMCTradingAccountKey(
    TDObject, struct CThostFtdcQryCFMMCTradingAccountKeyField *req, int reqID);
int tdReqQryEWarrantOffset(TDObject,
                           struct CThostFtdcQryEWarrantOffsetField *req,
                           int reqID);
int tdReqQryInvestorProductGroupMargin(
    TDObject, struct CThostFtdcQryInvestorProductGroupMarginField *req,
    int reqID);
int tdReqQryExchangeMarginRate(TDObject,
                               struct CThostFtdcQryExchangeMarginRateField *req,
                               int reqID);
int tdReqQryExchangeMarginRateAdjust(
    TDObject, struct CThostFtdcQryExchangeMarginRateAdjustField *req,
    int reqID);
int tdReqQryExchangeRate(TDObject, struct CThostFtdcQryExchangeRateField *req,
                         int reqID);
int tdReqQrySecAgentACIDMap(TDObject,
                            struct CThostFtdcQrySecAgentACIDMapField *req,
                            int reqID);
int tdReqQryProductExchRate(TDObject,
                            struct CThostFtdcQryProductExchRateField *req,
                            int reqID);
int tdReqQryProductGroup(TDObject, struct CThostFtdcQryProductGroupField *req,
                         int reqID);
int tdReqQryMMInstrumentCommissionRate(
    TDObject, struct CThostFtdcQryMMInstrumentCommissionRateField *req,
    int reqID);
int tdReqQryMMOptionInstrCommRate(
    TDObject, struct CThostFtdcQryMMOptionInstrCommRateField *req, int reqID);
int tdReqQryInstrumentOrderCommRate(
    TDObject, struct CThostFtdcQryInstrumentOrderCommRateField *req, int reqID);
int tdReqQryOptionInstrTradeCost(
    TDObject, struct CThostFtdcQryOptionInstrTradeCostField *req, int reqID);
int tdReqQryOptionInstrCommRate(
    TDObject, struct CThostFtdcQryOptionInstrCommRateField *req, int reqID);
int tdReqQryExecOrder(TDObject, struct CThostFtdcQryExecOrderField *req,
                      int reqID);
int tdReqQryForQuote(TDObject, struct CThostFtdcQryForQuoteField *req,
                     int reqID);
int tdReqQryQuote(TDObject, struct CThostFtdcQryQuoteField *req, int reqID);
int tdReqQryLock(TDObject, struct CThostFtdcQryLockField *req, int reqID);
int tdReqQryLockPosition(TDObject, struct CThostFtdcQryLockPositionField *req,
                         int reqID);
int tdReqQryETFOptionInstrCommRate(
    TDObject, struct CThostFtdcQryETFOptionInstrCommRateField *req, int reqID);
int tdReqQryInvestorLevel(TDObject, struct CThostFtdcQryInvestorLevelField *req,
                          int reqID);
int tdReqQryExecFreeze(TDObject, struct CThostFtdcQryExecFreezeField *req,
                       int reqID);
int tdReqQryCombInstrumentGuard(
    TDObject, struct CThostFtdcQryCombInstrumentGuardField *req, int reqID);
int tdReqQryCombAction(TDObject, struct CThostFtdcQryCombActionField *req,
                       int reqID);
int tdReqQryTransferSerial(TDObject,
                           struct CThostFtdcQryTransferSerialField *req,
                           int reqID);
int tdReqQryAccountregister(TDObject,
                            struct CThostFtdcQryAccountregisterField *req,
                            int reqID);
int tdReqQryContractBank(TDObject, struct CThostFtdcQryContractBankField *req,
                         int reqID);
int tdReqQryParkedOrder(TDObject, struct CThostFtdcQryParkedOrderField *req,
                        int reqID);
int tdReqQryParkedOrderAction(TDObject,
                              struct CThostFtdcQryParkedOrderActionField *req,
                              int reqID);
int tdReqQryTradingNotice(TDObject, struct CThostFtdcQryTradingNoticeField *req,
                          int reqID);
int tdReqQryBrokerTradingParams(
    TDObject, struct CThostFtdcQryBrokerTradingParamsField *req, int reqID);
int tdReqQryBrokerTradingAlgos(TDObject,
                               struct CThostFtdcQryBrokerTradingAlgosField *req,
                               int reqID);
int tdReqQueryCFMMCTradingAccountToken(
    TDObject, struct CThostFtdcQueryCFMMCTradingAccountTokenField *req,
    int reqID);
int tdReqFromBankToFutureByFuture(TDObject,
                                  struct CThostFtdcReqTransferField *req,
                                  int reqID);
int tdReqFromFutureToBankByFuture(TDObject,
                                  struct CThostFtdcReqTransferField *req,
                                  int reqID);
int tdReqQueryBankAccountMoneyByFuture(
    TDObject, struct CThostFtdcReqQueryAccountField *req, int reqID);

#ifdef __cplusplus
}
#endif

#endif /* _FFI_H_ */
