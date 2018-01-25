#ifndef FFI_STRUCT_H_
#define FFI_STRUCT_H_

#include <stdbool.h>
#include "ctp/ThostFtdcUserApiStruct.h"

//------------------------------------------------------------------------------
// MD
//------------------------------------------------------------------------------

struct CtpMDSpiFFI {
  void (*ffiOnFrontConnected)();
  void (*ffiOnFrontDisconnected)(int reason);
  void (*ffiOnHeartBeatWarning)(int timeLapse);
  void (*ffiOnRspUserLogin)(struct CThostFtdcRspUserLoginField *dat,
                            struct CThostFtdcRspInfoField *rspInfo, int reqID,
                            bool isLast);
  void (*ffiOnRspUserLogout)(struct CThostFtdcUserLogoutField *dat,
                             struct CThostFtdcRspInfoField *rspInfo, int reqID,
                             bool isLast);
  void (*ffiOnRspError)(struct CThostFtdcRspInfoField *rspInfo, int reqID,
                        bool isLast);
  void (*ffiOnRspSubMarketData)(struct CThostFtdcSpecificInstrumentField *dat,
                                struct CThostFtdcRspInfoField *rspInfo,
                                int reqID, bool isLast);
  void (*ffiOnRspUnSubMarketData)(struct CThostFtdcSpecificInstrumentField *dat,
                                  struct CThostFtdcRspInfoField *rspInfo,
                                  int reqID, bool isLast);
  void (*ffiOnRspSubForQuoteRsp)(struct CThostFtdcSpecificInstrumentField *dat,
                                 struct CThostFtdcRspInfoField *rspInfo,
                                 int reqID, bool isLast);
  void (*ffiOnRspUnSubForQuoteRsp)(
      struct CThostFtdcSpecificInstrumentField *dat,
      struct CThostFtdcRspInfoField *rspInfo, int reqID, bool isLast);
  void (*ffiOnRtnDepthMarketData)(struct CThostFtdcDepthMarketDataField *dat);
  void (*ffiOnRtnForQuoteRsp)(struct CThostFtdcForQuoteRspField *dat);
};

//------------------------------------------------------------------------------
// TD
//------------------------------------------------------------------------------

struct CtpTDSpiFFI {
  void (*ffiOnFrontConnected)();
  void (*ffiOnFrontDisconnected)(int reason);
  void (*ffiOnHeartBeatWarning)(int timeLapse);
  void (*ffiOnRspAuthenticate)(struct CThostFtdcRspAuthenticateField *dat,
                               struct CThostFtdcRspInfoField *rspInfo,
                               int reqID, bool isLast);
  void (*ffiOnRspUserLogin)(struct CThostFtdcRspUserLoginField *dat,
                            struct CThostFtdcRspInfoField *rspInfo, int reqID,
                            bool isLast);
  void (*ffiOnRspUserLogout)(struct CThostFtdcUserLogoutField *dat,
                             struct CThostFtdcRspInfoField *rspInfo, int reqID,
                             bool isLast);
  void (*ffiOnRspUserPasswordUpdate)(
      struct CThostFtdcUserPasswordUpdateField *dat,
      struct CThostFtdcRspInfoField *rspInfo, int reqID, bool isLast);
  void (*ffiOnRspTradingAccountPasswordUpdate)(
      struct CThostFtdcTradingAccountPasswordUpdateField *dat,
      struct CThostFtdcRspInfoField *rspInfo, int reqID, bool isLast);
  void (*ffiOnRspOrderInsert)(struct CThostFtdcInputOrderField *dat,
                              struct CThostFtdcRspInfoField *rspInfo, int reqID,
                              bool isLast);
  void (*ffiOnRspParkedOrderInsert)(struct CThostFtdcParkedOrderField *dat,
                                    struct CThostFtdcRspInfoField *rspInfo,
                                    int reqID, bool isLast);
  void (*ffiOnRspParkedOrderAction)(
      struct CThostFtdcParkedOrderActionField *dat,
      struct CThostFtdcRspInfoField *rspInfo, int reqID, bool isLast);
  void (*ffiOnRspOrderAction)(struct CThostFtdcInputOrderActionField *dat,
                              struct CThostFtdcRspInfoField *rspInfo, int reqID,
                              bool isLast);
  void (*ffiOnRspQueryMaxOrderVolume)(
      struct CThostFtdcQueryMaxOrderVolumeField *dat,
      struct CThostFtdcRspInfoField *rspInfo, int reqID, bool isLast);
  void (*ffiOnRspSettlementInfoConfirm)(
      struct CThostFtdcSettlementInfoConfirmField *dat,
      struct CThostFtdcRspInfoField *rspInfo, int reqID, bool isLast);
  void (*ffiOnRspRemoveParkedOrder)(
      struct CThostFtdcRemoveParkedOrderField *dat,
      struct CThostFtdcRspInfoField *rspInfo, int reqID, bool isLast);
  void (*ffiOnRspRemoveParkedOrderAction)(
      struct CThostFtdcRemoveParkedOrderActionField *dat,
      struct CThostFtdcRspInfoField *rspInfo, int reqID, bool isLast);
  void (*ffiOnRspExecOrderInsert)(struct CThostFtdcInputExecOrderField *dat,
                                  struct CThostFtdcRspInfoField *rspInfo,
                                  int reqID, bool isLast);
  void (*ffiOnRspExecOrderAction)(
      struct CThostFtdcInputExecOrderActionField *dat,
      struct CThostFtdcRspInfoField *rspInfo, int reqID, bool isLast);
  void (*ffiOnRspForQuoteInsert)(struct CThostFtdcInputForQuoteField *dat,
                                 struct CThostFtdcRspInfoField *rspInfo,
                                 int reqID, bool isLast);
  void (*ffiOnRspQuoteInsert)(struct CThostFtdcInputQuoteField *dat,
                              struct CThostFtdcRspInfoField *rspInfo, int reqID,
                              bool isLast);
  void (*ffiOnRspQuoteAction)(struct CThostFtdcInputQuoteActionField *dat,
                              struct CThostFtdcRspInfoField *rspInfo, int reqID,
                              bool isLast);
  void (*ffiOnRspLockInsert)(struct CThostFtdcInputLockField *dat,
                             struct CThostFtdcRspInfoField *rspInfo, int reqID,
                             bool isLast);
  void (*ffiOnRspBatchOrderAction)(
      struct CThostFtdcInputBatchOrderActionField *dat,
      struct CThostFtdcRspInfoField *rspInfo, int reqID, bool isLast);
  void (*ffiOnRspCombActionInsert)(struct CThostFtdcInputCombActionField *dat,
                                   struct CThostFtdcRspInfoField *rspInfo,
                                   int reqID, bool isLast);
  void (*ffiOnRspQryOrder)(struct CThostFtdcOrderField *dat,
                           struct CThostFtdcRspInfoField *rspInfo, int reqID,
                           bool isLast);
  void (*ffiOnRspQryTrade)(struct CThostFtdcTradeField *dat,
                           struct CThostFtdcRspInfoField *rspInfo, int reqID,
                           bool isLast);
  void (*ffiOnRspQryInvestorPosition)(
      struct CThostFtdcInvestorPositionField *dat,
      struct CThostFtdcRspInfoField *rspInfo, int reqID, bool isLast);
  void (*ffiOnRspQryTradingAccount)(struct CThostFtdcTradingAccountField *dat,
                                    struct CThostFtdcRspInfoField *rspInfo,
                                    int reqID, bool isLast);
  void (*ffiOnRspQryInvestor)(struct CThostFtdcInvestorField *dat,
                              struct CThostFtdcRspInfoField *rspInfo, int reqID,
                              bool isLast);
  void (*ffiOnRspQryTradingCode)(struct CThostFtdcTradingCodeField *dat,
                                 struct CThostFtdcRspInfoField *rspInfo,
                                 int reqID, bool isLast);
  void (*ffiOnRspQryInstrumentMarginRate)(
      struct CThostFtdcInstrumentMarginRateField *dat,
      struct CThostFtdcRspInfoField *rspInfo, int reqID, bool isLast);
  void (*ffiOnRspQryInstrumentCommissionRate)(
      struct CThostFtdcInstrumentCommissionRateField *dat,
      struct CThostFtdcRspInfoField *rspInfo, int reqID, bool isLast);
  void (*ffiOnRspQryExchange)(struct CThostFtdcExchangeField *dat,
                              struct CThostFtdcRspInfoField *rspInfo, int reqID,
                              bool isLast);
  void (*ffiOnRspQryProduct)(struct CThostFtdcProductField *dat,
                             struct CThostFtdcRspInfoField *rspInfo, int reqID,
                             bool isLast);
  void (*ffiOnRspQryInstrument)(struct CThostFtdcInstrumentField *dat,
                                struct CThostFtdcRspInfoField *rspInfo,
                                int reqID, bool isLast);
  void (*ffiOnRspQryDepthMarketData)(struct CThostFtdcDepthMarketDataField *dat,
                                     struct CThostFtdcRspInfoField *rspInfo,
                                     int reqID, bool isLast);
  void (*ffiOnRspQrySettlementInfo)(struct CThostFtdcSettlementInfoField *dat,
                                    struct CThostFtdcRspInfoField *rspInfo,
                                    int reqID, bool isLast);
  void (*ffiOnRspQryTransferBank)(struct CThostFtdcTransferBankField *dat,
                                  struct CThostFtdcRspInfoField *rspInfo,
                                  int reqID, bool isLast);
  void (*ffiOnRspQryInvestorPositionDetail)(
      struct CThostFtdcInvestorPositionDetailField *dat,
      struct CThostFtdcRspInfoField *rspInfo, int reqID, bool isLast);
  void (*ffiOnRspQryNotice)(struct CThostFtdcNoticeField *dat,
                            struct CThostFtdcRspInfoField *rspInfo, int reqID,
                            bool isLast);
  void (*ffiOnRspQrySettlementInfoConfirm)(
      struct CThostFtdcSettlementInfoConfirmField *dat,
      struct CThostFtdcRspInfoField *rspInfo, int reqID, bool isLast);
  void (*ffiOnRspQryInvestorPositionCombineDetail)(
      struct CThostFtdcInvestorPositionCombineDetailField *dat,
      struct CThostFtdcRspInfoField *rspInfo, int reqID, bool isLast);
  void (*ffiOnRspQryCFMMCTradingAccountKey)(
      struct CThostFtdcCFMMCTradingAccountKeyField *dat,
      struct CThostFtdcRspInfoField *rspInfo, int reqID, bool isLast);
  void (*ffiOnRspQryEWarrantOffset)(struct CThostFtdcEWarrantOffsetField *dat,
                                    struct CThostFtdcRspInfoField *rspInfo,
                                    int reqID, bool isLast);
  void (*ffiOnRspQryInvestorProductGroupMargin)(
      struct CThostFtdcInvestorProductGroupMarginField *dat,
      struct CThostFtdcRspInfoField *rspInfo, int reqID, bool isLast);
  void (*ffiOnRspQryExchangeMarginRate)(
      struct CThostFtdcExchangeMarginRateField *dat,
      struct CThostFtdcRspInfoField *rspInfo, int reqID, bool isLast);
  void (*ffiOnRspQryExchangeMarginRateAdjust)(
      struct CThostFtdcExchangeMarginRateAdjustField *dat,
      struct CThostFtdcRspInfoField *rspInfo, int reqID, bool isLast);
  void (*ffiOnRspQryExchangeRate)(struct CThostFtdcExchangeRateField *dat,
                                  struct CThostFtdcRspInfoField *rspInfo,
                                  int reqID, bool isLast);
  void (*ffiOnRspQrySecAgentACIDMap)(struct CThostFtdcSecAgentACIDMapField *dat,
                                     struct CThostFtdcRspInfoField *rspInfo,
                                     int reqID, bool isLast);
  void (*ffiOnRspQryProductExchRate)(struct CThostFtdcProductExchRateField *dat,
                                     struct CThostFtdcRspInfoField *rspInfo,
                                     int reqID, bool isLast);
  void (*ffiOnRspQryProductGroup)(struct CThostFtdcProductGroupField *dat,
                                  struct CThostFtdcRspInfoField *rspInfo,
                                  int reqID, bool isLast);
  void (*ffiOnRspQryMMInstrumentCommissionRate)(
      struct CThostFtdcMMInstrumentCommissionRateField *dat,
      struct CThostFtdcRspInfoField *rspInfo, int reqID, bool isLast);
  void (*ffiOnRspQryMMOptionInstrCommRate)(
      struct CThostFtdcMMOptionInstrCommRateField *dat,
      struct CThostFtdcRspInfoField *rspInfo, int reqID, bool isLast);
  void (*ffiOnRspQryInstrumentOrderCommRate)(
      struct CThostFtdcInstrumentOrderCommRateField *dat,
      struct CThostFtdcRspInfoField *rspInfo, int reqID, bool isLast);
  void (*ffiOnRspQryOptionInstrTradeCost)(
      struct CThostFtdcOptionInstrTradeCostField *dat,
      struct CThostFtdcRspInfoField *rspInfo, int reqID, bool isLast);
  void (*ffiOnRspQryOptionInstrCommRate)(
      struct CThostFtdcOptionInstrCommRateField *dat,
      struct CThostFtdcRspInfoField *rspInfo, int reqID, bool isLast);
  void (*ffiOnRspQryExecOrder)(struct CThostFtdcExecOrderField *dat,
                               struct CThostFtdcRspInfoField *rspInfo,
                               int reqID, bool isLast);
  void (*ffiOnRspQryForQuote)(struct CThostFtdcForQuoteField *dat,
                              struct CThostFtdcRspInfoField *rspInfo, int reqID,
                              bool isLast);
  void (*ffiOnRspQryQuote)(struct CThostFtdcQuoteField *dat,
                           struct CThostFtdcRspInfoField *rspInfo, int reqID,
                           bool isLast);
  void (*ffiOnRspQryLock)(struct CThostFtdcLockField *dat,
                          struct CThostFtdcRspInfoField *rspInfo, int reqID,
                          bool isLast);
  void (*ffiOnRspQryLockPosition)(struct CThostFtdcLockPositionField *dat,
                                  struct CThostFtdcRspInfoField *rspInfo,
                                  int reqID, bool isLast);
  void (*ffiOnRspQryETFOptionInstrCommRate)(
      struct CThostFtdcETFOptionInstrCommRateField *dat,
      struct CThostFtdcRspInfoField *rspInfo, int reqID, bool isLast);
  void (*ffiOnRspQryInvestorLevel)(struct CThostFtdcInvestorLevelField *dat,
                                   struct CThostFtdcRspInfoField *rspInfo,
                                   int reqID, bool isLast);
  void (*ffiOnRspQryExecFreeze)(struct CThostFtdcExecFreezeField *dat,
                                struct CThostFtdcRspInfoField *rspInfo,
                                int reqID, bool isLast);
  void (*ffiOnRspQryCombInstrumentGuard)(
      struct CThostFtdcCombInstrumentGuardField *dat,
      struct CThostFtdcRspInfoField *rspInfo, int reqID, bool isLast);
  void (*ffiOnRspQryCombAction)(struct CThostFtdcCombActionField *dat,
                                struct CThostFtdcRspInfoField *rspInfo,
                                int reqID, bool isLast);
  void (*ffiOnRspQryTransferSerial)(struct CThostFtdcTransferSerialField *dat,
                                    struct CThostFtdcRspInfoField *rspInfo,
                                    int reqID, bool isLast);
  void (*ffiOnRspQryAccountregister)(struct CThostFtdcAccountregisterField *dat,
                                     struct CThostFtdcRspInfoField *rspInfo,
                                     int reqID, bool isLast);
  void (*ffiOnRspError)(struct CThostFtdcRspInfoField *rspInfo, int reqID,
                        bool isLast);
  void (*ffiOnRtnOrder)(struct CThostFtdcOrderField *dat);
  void (*ffiOnRtnTrade)(struct CThostFtdcTradeField *dat);
  void (*ffiOnErrRtnOrderInsert)(struct CThostFtdcInputOrderField *dat,
                                 struct CThostFtdcRspInfoField *rspInfo);
  void (*ffiOnErrRtnOrderAction)(struct CThostFtdcOrderActionField *dat,
                                 struct CThostFtdcRspInfoField *rspInfo);
  void (*ffiOnRtnInstrumentStatus)(struct CThostFtdcInstrumentStatusField *dat);
  void (*ffiOnRtnBulletin)(struct CThostFtdcBulletinField *dat);
  void (*ffiOnRtnTradingNotice)(struct CThostFtdcTradingNoticeInfoField *dat);
  void (*ffiOnRtnErrorConditionalOrder)(
      struct CThostFtdcErrorConditionalOrderField *dat);
  void (*ffiOnRtnExecOrder)(struct CThostFtdcExecOrderField *dat);
  void (*ffiOnErrRtnExecOrderInsert)(struct CThostFtdcInputExecOrderField *dat,
                                     struct CThostFtdcRspInfoField *rspInfo);
  void (*ffiOnErrRtnExecOrderAction)(struct CThostFtdcExecOrderActionField *dat,
                                     struct CThostFtdcRspInfoField *rspInfo);
  void (*ffiOnErrRtnForQuoteInsert)(struct CThostFtdcInputForQuoteField *dat,
                                    struct CThostFtdcRspInfoField *rspInfo);
  void (*ffiOnRtnQuote)(struct CThostFtdcQuoteField *dat);
  void (*ffiOnErrRtnQuoteInsert)(struct CThostFtdcInputQuoteField *dat,
                                 struct CThostFtdcRspInfoField *rspInfo);
  void (*ffiOnErrRtnQuoteAction)(struct CThostFtdcQuoteActionField *dat,
                                 struct CThostFtdcRspInfoField *rspInfo);
  void (*ffiOnRtnForQuoteRsp)(struct CThostFtdcForQuoteRspField *dat);
  void (*ffiOnRtnCFMMCTradingAccountToken)(
      struct CThostFtdcCFMMCTradingAccountTokenField *dat);
  void (*ffiOnRtnLock)(struct CThostFtdcLockField *dat);
  void (*ffiOnErrRtnLockInsert)(struct CThostFtdcInputLockField *dat,
                                struct CThostFtdcRspInfoField *rspInfo);
  void (*ffiOnErrRtnBatchOrderAction)(
      struct CThostFtdcBatchOrderActionField *dat,
      struct CThostFtdcRspInfoField *rspInfo);
  void (*ffiOnRtnCombAction)(struct CThostFtdcCombActionField *dat);
  void (*ffiOnErrRtnCombActionInsert)(
      struct CThostFtdcInputCombActionField *dat,
      struct CThostFtdcRspInfoField *rspInfo);
  void (*ffiOnRspQryContractBank)(struct CThostFtdcContractBankField *dat,
                                  struct CThostFtdcRspInfoField *rspInfo,
                                  int reqID, bool isLast);
  void (*ffiOnRspQryParkedOrder)(struct CThostFtdcParkedOrderField *dat,
                                 struct CThostFtdcRspInfoField *rspInfo,
                                 int reqID, bool isLast);
  void (*ffiOnRspQryParkedOrderAction)(
      struct CThostFtdcParkedOrderActionField *dat,
      struct CThostFtdcRspInfoField *rspInfo, int reqID, bool isLast);
  void (*ffiOnRspQryTradingNotice)(struct CThostFtdcTradingNoticeField *dat,
                                   struct CThostFtdcRspInfoField *rspInfo,
                                   int reqID, bool isLast);
  void (*ffiOnRspQryBrokerTradingParams)(
      struct CThostFtdcBrokerTradingParamsField *dat,
      struct CThostFtdcRspInfoField *rspInfo, int reqID, bool isLast);
  void (*ffiOnRspQryBrokerTradingAlgos)(
      struct CThostFtdcBrokerTradingAlgosField *dat,
      struct CThostFtdcRspInfoField *rspInfo, int reqID, bool isLast);
  void (*ffiOnRspQueryCFMMCTradingAccountToken)(
      struct CThostFtdcQueryCFMMCTradingAccountTokenField *dat,
      struct CThostFtdcRspInfoField *rspInfo, int reqID, bool isLast);
  void (*ffiOnRtnFromBankToFutureByBank)(
      struct CThostFtdcRspTransferField *dat);
  void (*ffiOnRtnFromFutureToBankByBank)(
      struct CThostFtdcRspTransferField *dat);
  void (*ffiOnRtnRepealFromBankToFutureByBank)(
      struct CThostFtdcRspRepealField *dat);
  void (*ffiOnRtnRepealFromFutureToBankByBank)(
      struct CThostFtdcRspRepealField *dat);
  void (*ffiOnRtnFromBankToFutureByFuture)(
      struct CThostFtdcRspTransferField *dat);
  void (*ffiOnRtnFromFutureToBankByFuture)(
      struct CThostFtdcRspTransferField *dat);
  void (*ffiOnRtnRepealFromBankToFutureByFutureManual)(
      struct CThostFtdcRspRepealField *dat);
  void (*ffiOnRtnRepealFromFutureToBankByFutureManual)(
      struct CThostFtdcRspRepealField *dat);
  void (*ffiOnRtnQueryBankBalanceByFuture)(
      struct CThostFtdcNotifyQueryAccountField *dat);
  void (*ffiOnErrRtnBankToFutureByFuture)(
      struct CThostFtdcReqTransferField *dat,
      struct CThostFtdcRspInfoField *rspInfo);
  void (*ffiOnErrRtnFutureToBankByFuture)(
      struct CThostFtdcReqTransferField *dat,
      struct CThostFtdcRspInfoField *rspInfo);
  void (*ffiOnErrRtnRepealBankToFutureByFutureManual)(
      struct CThostFtdcReqRepealField *dat,
      struct CThostFtdcRspInfoField *rspInfo);
  void (*ffiOnErrRtnRepealFutureToBankByFutureManual)(
      struct CThostFtdcReqRepealField *dat,
      struct CThostFtdcRspInfoField *rspInfo);
  void (*ffiOnErrRtnQueryBankBalanceByFuture)(
      struct CThostFtdcReqQueryAccountField *dat,
      struct CThostFtdcRspInfoField *rspInfo);
  void (*ffiOnRtnRepealFromBankToFutureByFuture)(
      struct CThostFtdcRspRepealField *dat);
  void (*ffiOnRtnRepealFromFutureToBankByFuture)(
      struct CThostFtdcRspRepealField *dat);
  void (*ffiOnRspFromBankToFutureByFuture)(
      struct CThostFtdcReqTransferField *dat,
      struct CThostFtdcRspInfoField *rspInfo, int reqID, bool isLast);
  void (*ffiOnRspFromFutureToBankByFuture)(
      struct CThostFtdcReqTransferField *dat,
      struct CThostFtdcRspInfoField *rspInfo, int reqID, bool isLast);
  void (*ffiOnRspQueryBankAccountMoneyByFuture)(
      struct CThostFtdcReqQueryAccountField *dat,
      struct CThostFtdcRspInfoField *rspInfo, int reqID, bool isLast);
  void (*ffiOnRtnOpenAccountByBank)(struct CThostFtdcOpenAccountField *dat);
  void (*ffiOnRtnCancelAccountByBank)(struct CThostFtdcCancelAccountField *dat);
  void (*ffiOnRtnChangeAccountByBank)(struct CThostFtdcChangeAccountField *dat);
};

#endif /* FFI_STRUCT_H_ */
