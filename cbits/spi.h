#ifndef SPI_H_
#define SPI_H_

#include "ctp/ThostFtdcMdApi.h"
#include "ctp/ThostFtdcTraderApi.h"
#include "ffi_struct.h"

//------------------------------------------------------------------------------
// MD
//------------------------------------------------------------------------------

class CtpMDSpi : public CThostFtdcMdSpi {
 public:
  CtpMDSpi(const CtpMDSpiFFI *spi);
  virtual ~CtpMDSpi();

  void OnFrontConnected();
  void OnFrontDisconnected(int reason);
  void OnHeartBeatWarning(int timeLapse);
  void OnRspUserLogin(CThostFtdcRspUserLoginField *dat,
                      CThostFtdcRspInfoField *rspInfo, int reqID, bool isLast);
  void OnRspUserLogout(CThostFtdcUserLogoutField *dat,
                       CThostFtdcRspInfoField *rspInfo, int reqID, bool isLast);
  void OnRspError(CThostFtdcRspInfoField *rspInfo, int reqID, bool isLast);
  void OnRspSubMarketData(CThostFtdcSpecificInstrumentField *dat,
                          CThostFtdcRspInfoField *rspInfo, int reqID,
                          bool isLast);
  void OnRspUnSubMarketData(CThostFtdcSpecificInstrumentField *dat,
                            CThostFtdcRspInfoField *rspInfo, int reqID,
                            bool isLast);
  void OnRspSubForQuoteRsp(CThostFtdcSpecificInstrumentField *dat,
                           CThostFtdcRspInfoField *rspInfo, int reqID,
                           bool isLast);
  void OnRspUnSubForQuoteRsp(CThostFtdcSpecificInstrumentField *dat,
                             CThostFtdcRspInfoField *rspInfo, int reqID,
                             bool isLast);
  void OnRtnDepthMarketData(CThostFtdcDepthMarketDataField *dat);
  void OnRtnForQuoteRsp(CThostFtdcForQuoteRspField *dat);

 private:
  CtpMDSpiFFI spi_;
};

//------------------------------------------------------------------------------
// TD
//------------------------------------------------------------------------------

class CtpTDSpi : public CThostFtdcTraderSpi {
 public:
  CtpTDSpi(const CtpTDSpiFFI *spi);
  virtual ~CtpTDSpi();

  void OnFrontConnected();
  void OnFrontDisconnected(int reason);
  void OnHeartBeatWarning(int timeLapse);
  void OnRspAuthenticate(CThostFtdcRspAuthenticateField *dat,
                         CThostFtdcRspInfoField *rspInfo, int reqID,
                         bool isLast);
  void OnRspUserLogin(CThostFtdcRspUserLoginField *dat,
                      CThostFtdcRspInfoField *rspInfo, int reqID, bool isLast);
  void OnRspUserLogout(CThostFtdcUserLogoutField *dat,
                       CThostFtdcRspInfoField *rspInfo, int reqID, bool isLast);
  void OnRspUserPasswordUpdate(CThostFtdcUserPasswordUpdateField *dat,
                               CThostFtdcRspInfoField *rspInfo, int reqID,
                               bool isLast);
  void OnRspTradingAccountPasswordUpdate(
      CThostFtdcTradingAccountPasswordUpdateField *dat,
      CThostFtdcRspInfoField *rspInfo, int reqID, bool isLast);
  void OnRspOrderInsert(CThostFtdcInputOrderField *dat,
                        CThostFtdcRspInfoField *rspInfo, int reqID,
                        bool isLast);
  void OnRspParkedOrderInsert(CThostFtdcParkedOrderField *dat,
                              CThostFtdcRspInfoField *rspInfo, int reqID,
                              bool isLast);
  void OnRspParkedOrderAction(CThostFtdcParkedOrderActionField *dat,
                              CThostFtdcRspInfoField *rspInfo, int reqID,
                              bool isLast);
  void OnRspOrderAction(CThostFtdcInputOrderActionField *dat,
                        CThostFtdcRspInfoField *rspInfo, int reqID,
                        bool isLast);
  void OnRspQueryMaxOrderVolume(CThostFtdcQueryMaxOrderVolumeField *dat,
                                CThostFtdcRspInfoField *rspInfo, int reqID,
                                bool isLast);
  void OnRspSettlementInfoConfirm(CThostFtdcSettlementInfoConfirmField *dat,
                                  CThostFtdcRspInfoField *rspInfo, int reqID,
                                  bool isLast);
  void OnRspRemoveParkedOrder(CThostFtdcRemoveParkedOrderField *dat,
                              CThostFtdcRspInfoField *rspInfo, int reqID,
                              bool isLast);
  void OnRspRemoveParkedOrderAction(CThostFtdcRemoveParkedOrderActionField *dat,
                                    CThostFtdcRspInfoField *rspInfo, int reqID,
                                    bool isLast);
  void OnRspExecOrderInsert(CThostFtdcInputExecOrderField *dat,
                            CThostFtdcRspInfoField *rspInfo, int reqID,
                            bool isLast);
  void OnRspExecOrderAction(CThostFtdcInputExecOrderActionField *dat,
                            CThostFtdcRspInfoField *rspInfo, int reqID,
                            bool isLast);
  void OnRspForQuoteInsert(CThostFtdcInputForQuoteField *dat,
                           CThostFtdcRspInfoField *rspInfo, int reqID,
                           bool isLast);
  void OnRspQuoteInsert(CThostFtdcInputQuoteField *dat,
                        CThostFtdcRspInfoField *rspInfo, int reqID,
                        bool isLast);
  void OnRspQuoteAction(CThostFtdcInputQuoteActionField *dat,
                        CThostFtdcRspInfoField *rspInfo, int reqID,
                        bool isLast);
  void OnRspLockInsert(CThostFtdcInputLockField *dat,
                       CThostFtdcRspInfoField *rspInfo, int reqID, bool isLast);
  void OnRspBatchOrderAction(CThostFtdcInputBatchOrderActionField *dat,
                             CThostFtdcRspInfoField *rspInfo, int reqID,
                             bool isLast);
  void OnRspCombActionInsert(CThostFtdcInputCombActionField *dat,
                             CThostFtdcRspInfoField *rspInfo, int reqID,
                             bool isLast);
  void OnRspQryOrder(CThostFtdcOrderField *dat, CThostFtdcRspInfoField *rspInfo,
                     int reqID, bool isLast);
  void OnRspQryTrade(CThostFtdcTradeField *dat, CThostFtdcRspInfoField *rspInfo,
                     int reqID, bool isLast);
  void OnRspQryInvestorPosition(CThostFtdcInvestorPositionField *dat,
                                CThostFtdcRspInfoField *rspInfo, int reqID,
                                bool isLast);
  void OnRspQryTradingAccount(CThostFtdcTradingAccountField *dat,
                              CThostFtdcRspInfoField *rspInfo, int reqID,
                              bool isLast);
  void OnRspQryInvestor(CThostFtdcInvestorField *dat,
                        CThostFtdcRspInfoField *rspInfo, int reqID,
                        bool isLast);
  void OnRspQryTradingCode(CThostFtdcTradingCodeField *dat,
                           CThostFtdcRspInfoField *rspInfo, int reqID,
                           bool isLast);
  void OnRspQryInstrumentMarginRate(CThostFtdcInstrumentMarginRateField *dat,
                                    CThostFtdcRspInfoField *rspInfo, int reqID,
                                    bool isLast);
  void OnRspQryInstrumentCommissionRate(
      CThostFtdcInstrumentCommissionRateField *dat,
      CThostFtdcRspInfoField *rspInfo, int reqID, bool isLast);
  void OnRspQryExchange(CThostFtdcExchangeField *dat,
                        CThostFtdcRspInfoField *rspInfo, int reqID,
                        bool isLast);
  void OnRspQryProduct(CThostFtdcProductField *dat,
                       CThostFtdcRspInfoField *rspInfo, int reqID, bool isLast);
  void OnRspQryInstrument(CThostFtdcInstrumentField *dat,
                          CThostFtdcRspInfoField *rspInfo, int reqID,
                          bool isLast);
  void OnRspQryDepthMarketData(CThostFtdcDepthMarketDataField *dat,
                               CThostFtdcRspInfoField *rspInfo, int reqID,
                               bool isLast);
  void OnRspQrySettlementInfo(CThostFtdcSettlementInfoField *dat,
                              CThostFtdcRspInfoField *rspInfo, int reqID,
                              bool isLast);
  void OnRspQryTransferBank(CThostFtdcTransferBankField *dat,
                            CThostFtdcRspInfoField *rspInfo, int reqID,
                            bool isLast);
  void OnRspQryInvestorPositionDetail(
      CThostFtdcInvestorPositionDetailField *dat,
      CThostFtdcRspInfoField *rspInfo, int reqID, bool isLast);
  void OnRspQryNotice(CThostFtdcNoticeField *dat,
                      CThostFtdcRspInfoField *rspInfo, int reqID, bool isLast);
  void OnRspQrySettlementInfoConfirm(CThostFtdcSettlementInfoConfirmField *dat,
                                     CThostFtdcRspInfoField *rspInfo, int reqID,
                                     bool isLast);
  void OnRspQryInvestorPositionCombineDetail(
      CThostFtdcInvestorPositionCombineDetailField *dat,
      CThostFtdcRspInfoField *rspInfo, int reqID, bool isLast);
  void OnRspQryCFMMCTradingAccountKey(
      CThostFtdcCFMMCTradingAccountKeyField *dat,
      CThostFtdcRspInfoField *rspInfo, int reqID, bool isLast);
  void OnRspQryEWarrantOffset(CThostFtdcEWarrantOffsetField *dat,
                              CThostFtdcRspInfoField *rspInfo, int reqID,
                              bool isLast);
  void OnRspQryInvestorProductGroupMargin(
      CThostFtdcInvestorProductGroupMarginField *dat,
      CThostFtdcRspInfoField *rspInfo, int reqID, bool isLast);
  void OnRspQryExchangeMarginRate(CThostFtdcExchangeMarginRateField *dat,
                                  CThostFtdcRspInfoField *rspInfo, int reqID,
                                  bool isLast);
  void OnRspQryExchangeMarginRateAdjust(
      CThostFtdcExchangeMarginRateAdjustField *dat,
      CThostFtdcRspInfoField *rspInfo, int reqID, bool isLast);
  void OnRspQryExchangeRate(CThostFtdcExchangeRateField *dat,
                            CThostFtdcRspInfoField *rspInfo, int reqID,
                            bool isLast);
  void OnRspQrySecAgentACIDMap(CThostFtdcSecAgentACIDMapField *dat,
                               CThostFtdcRspInfoField *rspInfo, int reqID,
                               bool isLast);
  void OnRspQryProductExchRate(CThostFtdcProductExchRateField *dat,
                               CThostFtdcRspInfoField *rspInfo, int reqID,
                               bool isLast);
  void OnRspQryProductGroup(CThostFtdcProductGroupField *dat,
                            CThostFtdcRspInfoField *rspInfo, int reqID,
                            bool isLast);
  void OnRspQryMMInstrumentCommissionRate(
      CThostFtdcMMInstrumentCommissionRateField *dat,
      CThostFtdcRspInfoField *rspInfo, int reqID, bool isLast);
  void OnRspQryMMOptionInstrCommRate(CThostFtdcMMOptionInstrCommRateField *dat,
                                     CThostFtdcRspInfoField *rspInfo, int reqID,
                                     bool isLast);
  void OnRspQryInstrumentOrderCommRate(
      CThostFtdcInstrumentOrderCommRateField *dat,
      CThostFtdcRspInfoField *rspInfo, int reqID, bool isLast);
  void OnRspQryOptionInstrTradeCost(CThostFtdcOptionInstrTradeCostField *dat,
                                    CThostFtdcRspInfoField *rspInfo, int reqID,
                                    bool isLast);
  void OnRspQryOptionInstrCommRate(CThostFtdcOptionInstrCommRateField *dat,
                                   CThostFtdcRspInfoField *rspInfo, int reqID,
                                   bool isLast);
  void OnRspQryExecOrder(CThostFtdcExecOrderField *dat,
                         CThostFtdcRspInfoField *rspInfo, int reqID,
                         bool isLast);
  void OnRspQryForQuote(CThostFtdcForQuoteField *dat,
                        CThostFtdcRspInfoField *rspInfo, int reqID,
                        bool isLast);
  void OnRspQryQuote(CThostFtdcQuoteField *dat, CThostFtdcRspInfoField *rspInfo,
                     int reqID, bool isLast);
  void OnRspQryLock(CThostFtdcLockField *dat, CThostFtdcRspInfoField *rspInfo,
                    int reqID, bool isLast);
  void OnRspQryLockPosition(CThostFtdcLockPositionField *dat,
                            CThostFtdcRspInfoField *rspInfo, int reqID,
                            bool isLast);
  void OnRspQryETFOptionInstrCommRate(
      CThostFtdcETFOptionInstrCommRateField *dat,
      CThostFtdcRspInfoField *rspInfo, int reqID, bool isLast);
  void OnRspQryInvestorLevel(CThostFtdcInvestorLevelField *dat,
                             CThostFtdcRspInfoField *rspInfo, int reqID,
                             bool isLast);
  void OnRspQryExecFreeze(CThostFtdcExecFreezeField *dat,
                          CThostFtdcRspInfoField *rspInfo, int reqID,
                          bool isLast);
  void OnRspQryCombInstrumentGuard(CThostFtdcCombInstrumentGuardField *dat,
                                   CThostFtdcRspInfoField *rspInfo, int reqID,
                                   bool isLast);
  void OnRspQryCombAction(CThostFtdcCombActionField *dat,
                          CThostFtdcRspInfoField *rspInfo, int reqID,
                          bool isLast);
  void OnRspQryTransferSerial(CThostFtdcTransferSerialField *dat,
                              CThostFtdcRspInfoField *rspInfo, int reqID,
                              bool isLast);
  void OnRspQryAccountregister(CThostFtdcAccountregisterField *dat,
                               CThostFtdcRspInfoField *rspInfo, int reqID,
                               bool isLast);
  void OnRspError(CThostFtdcRspInfoField *rspInfo, int reqID, bool isLast);
  void OnRtnOrder(CThostFtdcOrderField *dat);
  void OnRtnTrade(CThostFtdcTradeField *dat);
  void OnErrRtnOrderInsert(CThostFtdcInputOrderField *dat,
                           CThostFtdcRspInfoField *rspInfo);
  void OnErrRtnOrderAction(CThostFtdcOrderActionField *dat,
                           CThostFtdcRspInfoField *rspInfo);
  void OnRtnInstrumentStatus(CThostFtdcInstrumentStatusField *dat);
  void OnRtnBulletin(CThostFtdcBulletinField *dat);
  void OnRtnTradingNotice(CThostFtdcTradingNoticeInfoField *dat);
  void OnRtnErrorConditionalOrder(CThostFtdcErrorConditionalOrderField *dat);
  void OnRtnExecOrder(CThostFtdcExecOrderField *dat);
  void OnErrRtnExecOrderInsert(CThostFtdcInputExecOrderField *dat,
                               CThostFtdcRspInfoField *rspInfo);
  void OnErrRtnExecOrderAction(CThostFtdcExecOrderActionField *dat,
                               CThostFtdcRspInfoField *rspInfo);
  void OnErrRtnForQuoteInsert(CThostFtdcInputForQuoteField *dat,
                              CThostFtdcRspInfoField *rspInfo);
  void OnRtnQuote(CThostFtdcQuoteField *dat);
  void OnErrRtnQuoteInsert(CThostFtdcInputQuoteField *dat,
                           CThostFtdcRspInfoField *rspInfo);
  void OnErrRtnQuoteAction(CThostFtdcQuoteActionField *dat,
                           CThostFtdcRspInfoField *rspInfo);
  void OnRtnForQuoteRsp(CThostFtdcForQuoteRspField *dat);
  void OnRtnCFMMCTradingAccountToken(
      CThostFtdcCFMMCTradingAccountTokenField *dat);
  void OnRtnLock(CThostFtdcLockField *dat);
  void OnErrRtnLockInsert(CThostFtdcInputLockField *dat,
                          CThostFtdcRspInfoField *rspInfo);
  void OnErrRtnBatchOrderAction(CThostFtdcBatchOrderActionField *dat,
                                CThostFtdcRspInfoField *rspInfo);
  void OnRtnCombAction(CThostFtdcCombActionField *dat);
  void OnErrRtnCombActionInsert(CThostFtdcInputCombActionField *dat,
                                CThostFtdcRspInfoField *rspInfo);
  void OnRspQryContractBank(CThostFtdcContractBankField *dat,
                            CThostFtdcRspInfoField *rspInfo, int reqID,
                            bool isLast);
  void OnRspQryParkedOrder(CThostFtdcParkedOrderField *dat,
                           CThostFtdcRspInfoField *rspInfo, int reqID,
                           bool isLast);
  void OnRspQryParkedOrderAction(CThostFtdcParkedOrderActionField *dat,
                                 CThostFtdcRspInfoField *rspInfo, int reqID,
                                 bool isLast);
  void OnRspQryTradingNotice(CThostFtdcTradingNoticeField *dat,
                             CThostFtdcRspInfoField *rspInfo, int reqID,
                             bool isLast);
  void OnRspQryBrokerTradingParams(CThostFtdcBrokerTradingParamsField *dat,
                                   CThostFtdcRspInfoField *rspInfo, int reqID,
                                   bool isLast);
  void OnRspQryBrokerTradingAlgos(CThostFtdcBrokerTradingAlgosField *dat,
                                  CThostFtdcRspInfoField *rspInfo, int reqID,
                                  bool isLast);
  void OnRspQueryCFMMCTradingAccountToken(
      CThostFtdcQueryCFMMCTradingAccountTokenField *dat,
      CThostFtdcRspInfoField *rspInfo, int reqID, bool isLast);
  void OnRtnFromBankToFutureByBank(CThostFtdcRspTransferField *dat);
  void OnRtnFromFutureToBankByBank(CThostFtdcRspTransferField *dat);
  void OnRtnRepealFromBankToFutureByBank(CThostFtdcRspRepealField *dat);
  void OnRtnRepealFromFutureToBankByBank(CThostFtdcRspRepealField *dat);
  void OnRtnFromBankToFutureByFuture(CThostFtdcRspTransferField *dat);
  void OnRtnFromFutureToBankByFuture(CThostFtdcRspTransferField *dat);
  void OnRtnRepealFromBankToFutureByFutureManual(CThostFtdcRspRepealField *dat);
  void OnRtnRepealFromFutureToBankByFutureManual(CThostFtdcRspRepealField *dat);
  void OnRtnQueryBankBalanceByFuture(CThostFtdcNotifyQueryAccountField *dat);
  void OnErrRtnBankToFutureByFuture(CThostFtdcReqTransferField *dat,
                                    CThostFtdcRspInfoField *rspInfo);
  void OnErrRtnFutureToBankByFuture(CThostFtdcReqTransferField *dat,
                                    CThostFtdcRspInfoField *rspInfo);
  void OnErrRtnRepealBankToFutureByFutureManual(
      CThostFtdcReqRepealField *dat, CThostFtdcRspInfoField *rspInfo);
  void OnErrRtnRepealFutureToBankByFutureManual(
      CThostFtdcReqRepealField *dat, CThostFtdcRspInfoField *rspInfo);
  void OnErrRtnQueryBankBalanceByFuture(CThostFtdcReqQueryAccountField *dat,
                                        CThostFtdcRspInfoField *rspInfo);
  void OnRtnRepealFromBankToFutureByFuture(CThostFtdcRspRepealField *dat);
  void OnRtnRepealFromFutureToBankByFuture(CThostFtdcRspRepealField *dat);
  void OnRspFromBankToFutureByFuture(CThostFtdcReqTransferField *dat,
                                     CThostFtdcRspInfoField *rspInfo, int reqID,
                                     bool isLast);
  void OnRspFromFutureToBankByFuture(CThostFtdcReqTransferField *dat,
                                     CThostFtdcRspInfoField *rspInfo, int reqID,
                                     bool isLast);
  void OnRspQueryBankAccountMoneyByFuture(CThostFtdcReqQueryAccountField *dat,
                                          CThostFtdcRspInfoField *rspInfo,
                                          int reqID, bool isLast);
  void OnRtnOpenAccountByBank(CThostFtdcOpenAccountField *dat);
  void OnRtnCancelAccountByBank(CThostFtdcCancelAccountField *dat);
  void OnRtnChangeAccountByBank(CThostFtdcChangeAccountField *dat);

 private:
  CtpTDSpiFFI spi_;
};

#endif /* SPI_H_ */
