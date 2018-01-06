module Bindings.Ctp.Define where

#include "ctp/ThostFtdcUserApiDataType.h"

{#enum THOST_TE_RESUME_TYPE as ThostTeResumeType {underscoreToCase} deriving (Show)#}

thostFtdcExpNormal :: Char
thostFtdcExpNormal = '0'

thostFtdcExpGenOrderByTrade :: Char
thostFtdcExpGenOrderByTrade = '1'

thostFtdcIctEid :: Char
thostFtdcIctEid = '0'

thostFtdcIctIDCard :: Char
thostFtdcIctIDCard = '1'

thostFtdcIctOfficerIDCard :: Char
thostFtdcIctOfficerIDCard = '2'

thostFtdcIctPoliceIDCard :: Char
thostFtdcIctPoliceIDCard = '3'

thostFtdcIctSoldierIDCard :: Char
thostFtdcIctSoldierIDCard = '4'

thostFtdcIctHouseholdRegister :: Char
thostFtdcIctHouseholdRegister = '5'

thostFtdcIctPassport :: Char
thostFtdcIctPassport = '6'

thostFtdcIctTaiwanCompatriotIDCard :: Char
thostFtdcIctTaiwanCompatriotIDCard = '7'

thostFtdcIctHomeComingCard :: Char
thostFtdcIctHomeComingCard = '8'

thostFtdcIctLicenseNo :: Char
thostFtdcIctLicenseNo = '9'

thostFtdcIctTaxNo :: Char
thostFtdcIctTaxNo = 'A'

thostFtdcIctHMMainlandTravelPermit :: Char
thostFtdcIctHMMainlandTravelPermit = 'B'

thostFtdcIctTwMainlandTravelPermit :: Char
thostFtdcIctTwMainlandTravelPermit = 'C'

thostFtdcIctDrivingLicense :: Char
thostFtdcIctDrivingLicense = 'D'

thostFtdcIctSocialID :: Char
thostFtdcIctSocialID = 'F'

thostFtdcIctLocalID :: Char
thostFtdcIctLocalID = 'G'

thostFtdcIctBusinessRegistration :: Char
thostFtdcIctBusinessRegistration = 'H'

thostFtdcIctHKMCIDCard :: Char
thostFtdcIctHKMCIDCard = 'I'

thostFtdcIctAccountsPermits :: Char
thostFtdcIctAccountsPermits = 'J'

thostFtdcIctOtherCard :: Char
thostFtdcIctOtherCard = 'x'

thostFtdcIrAll :: Char
thostFtdcIrAll = '1'

thostFtdcIrGroup :: Char
thostFtdcIrGroup = '2'

thostFtdcIrSingle :: Char
thostFtdcIrSingle = '3'

thostFtdcDrAll :: Char
thostFtdcDrAll = '1'

thostFtdcDrGroup :: Char
thostFtdcDrGroup = '2'

thostFtdcDrSingle :: Char
thostFtdcDrSingle = '3'

thostFtdcDsAsynchronous :: Char
thostFtdcDsAsynchronous = '1'

thostFtdcDsSynchronizing :: Char
thostFtdcDsSynchronizing = '2'

thostFtdcDsSynchronized :: Char
thostFtdcDsSynchronized = '3'

thostFtdcBdsSynchronized :: Char
thostFtdcBdsSynchronized = '1'

thostFtdcBdsSynchronizing :: Char
thostFtdcBdsSynchronizing = '2'

thostFtdcEcsNoConnection :: Char
thostFtdcEcsNoConnection = '1'

thostFtdcEcsQryInstrumentSent :: Char
thostFtdcEcsQryInstrumentSent = '2'

thostFtdcEcsGotInformation :: Char
thostFtdcEcsGotInformation = '9'

thostFtdcTcsNotConnected :: Char
thostFtdcTcsNotConnected = '1'

thostFtdcTcsConnected :: Char
thostFtdcTcsConnected = '2'

thostFtdcTcsQryInstrumentSent :: Char
thostFtdcTcsQryInstrumentSent = '3'

thostFtdcTcsSubPrivateFlow :: Char
thostFtdcTcsSubPrivateFlow = '4'

thostFtdcFcDataAsync :: Char
thostFtdcFcDataAsync = '1'

thostFtdcFcForceUserLogout :: Char
thostFtdcFcForceUserLogout = '2'

thostFtdcFcUserPasswordUpdate :: Char
thostFtdcFcUserPasswordUpdate = '3'

thostFtdcFcBrokerPasswordUpdate :: Char
thostFtdcFcBrokerPasswordUpdate = '4'

thostFtdcFcInvestorPasswordUpdate :: Char
thostFtdcFcInvestorPasswordUpdate = '5'

thostFtdcFcOrderInsert :: Char
thostFtdcFcOrderInsert = '6'

thostFtdcFcOrderAction :: Char
thostFtdcFcOrderAction = '7'

thostFtdcFcSyncSystemData :: Char
thostFtdcFcSyncSystemData = '8'

thostFtdcFcSyncBrokerData :: Char
thostFtdcFcSyncBrokerData = '9'

thostFtdcFcBachSyncBrokerData :: Char
thostFtdcFcBachSyncBrokerData = 'A'

thostFtdcFcSuperQuery :: Char
thostFtdcFcSuperQuery = 'B'

thostFtdcFcParkedOrderInsert :: Char
thostFtdcFcParkedOrderInsert = 'C'

thostFtdcFcParkedOrderAction :: Char
thostFtdcFcParkedOrderAction = 'D'

thostFtdcFcSyncOTP :: Char
thostFtdcFcSyncOTP = 'E'

thostFtdcFcDeleteOrder :: Char
thostFtdcFcDeleteOrder = 'F'

thostFtdcBfcForceUserLogout :: Char
thostFtdcBfcForceUserLogout = '1'

thostFtdcBfcUserPasswordUpdate :: Char
thostFtdcBfcUserPasswordUpdate = '2'

thostFtdcBfcSyncBrokerData :: Char
thostFtdcBfcSyncBrokerData = '3'

thostFtdcBfcBachSyncBrokerData :: Char
thostFtdcBfcBachSyncBrokerData = '4'

thostFtdcBfcOrderInsert :: Char
thostFtdcBfcOrderInsert = '5'

thostFtdcBfcOrderAction :: Char
thostFtdcBfcOrderAction = '6'

thostFtdcBfcAllQuery :: Char
thostFtdcBfcAllQuery = '7'

thostFtdcBfclog :: Char
thostFtdcBfclog = 'a'

thostFtdcBfcBaseQry :: Char
thostFtdcBfcBaseQry = 'b'

thostFtdcBfcTradeQry :: Char
thostFtdcBfcTradeQry = 'c'

thostFtdcBfcTrade :: Char
thostFtdcBfcTrade = 'd'

thostFtdcBfcVirement :: Char
thostFtdcBfcVirement = 'e'

thostFtdcBfcRisk :: Char
thostFtdcBfcRisk = 'f'

thostFtdcBfcSession :: Char
thostFtdcBfcSession = 'g'

thostFtdcBfcRiskNoticeCtl :: Char
thostFtdcBfcRiskNoticeCtl = 'h'

thostFtdcBfcRiskNotice :: Char
thostFtdcBfcRiskNotice = 'i'

thostFtdcBfcBrokerDeposit :: Char
thostFtdcBfcBrokerDeposit = 'j'

thostFtdcBfcQueryFund :: Char
thostFtdcBfcQueryFund = 'k'

thostFtdcBfcQueryOrder :: Char
thostFtdcBfcQueryOrder = 'l'

thostFtdcBfcQueryTrade :: Char
thostFtdcBfcQueryTrade = 'm'

thostFtdcBfcQueryPosition :: Char
thostFtdcBfcQueryPosition = 'n'

thostFtdcBfcQueryMarketData :: Char
thostFtdcBfcQueryMarketData = 'o'

thostFtdcBfcQueryUserEvent :: Char
thostFtdcBfcQueryUserEvent = 'p'

thostFtdcBfcQueryRiskNotify :: Char
thostFtdcBfcQueryRiskNotify = 'q'

thostFtdcBfcQueryFundChange :: Char
thostFtdcBfcQueryFundChange = 'r'

thostFtdcBfcQueryInvestor :: Char
thostFtdcBfcQueryInvestor = 's'

thostFtdcBfcQueryTradingCode :: Char
thostFtdcBfcQueryTradingCode = 't'

thostFtdcBfcForceClose :: Char
thostFtdcBfcForceClose = 'u'

thostFtdcBfcPressTest :: Char
thostFtdcBfcPressTest = 'v'

thostFtdcBfcRemainCalc :: Char
thostFtdcBfcRemainCalc = 'w'

thostFtdcBfcNetPositionInd :: Char
thostFtdcBfcNetPositionInd = 'x'

thostFtdcBfcRiskPredict :: Char
thostFtdcBfcRiskPredict = 'y'

thostFtdcBfcDataExport :: Char
thostFtdcBfcDataExport = 'z'

thostFtdcBfcRiskTargetSetup :: Char
thostFtdcBfcRiskTargetSetup = 'A'

thostFtdcBfcMarketDataWarn :: Char
thostFtdcBfcMarketDataWarn = 'B'

thostFtdcBfcQryBizNotice :: Char
thostFtdcBfcQryBizNotice = 'C'

thostFtdcBfcCfgBizNotice :: Char
thostFtdcBfcCfgBizNotice = 'D'

thostFtdcBfcSyncOTP :: Char
thostFtdcBfcSyncOTP = 'E'

thostFtdcBfcSendBizNotice :: Char
thostFtdcBfcSendBizNotice = 'F'

thostFtdcBfcCfgRiskLevelStd :: Char
thostFtdcBfcCfgRiskLevelStd = 'G'

thostFtdcBfcTbCommand :: Char
thostFtdcBfcTbCommand = 'H'

thostFtdcBfcDeleteOrder :: Char
thostFtdcBfcDeleteOrder = 'J'

thostFtdcBfcParkedOrderInsert :: Char
thostFtdcBfcParkedOrderInsert = 'K'

thostFtdcBfcParkedOrderAction :: Char
thostFtdcBfcParkedOrderAction = 'L'

thostFtdcBfcExecOrderNoCheck :: Char
thostFtdcBfcExecOrderNoCheck = 'M'

thostFtdcOasSubmitted :: Char
thostFtdcOasSubmitted = 'a'

thostFtdcOasAccepted :: Char
thostFtdcOasAccepted = 'b'

thostFtdcOasRejected :: Char
thostFtdcOasRejected = 'c'

thostFtdcOstAllTraded :: Char
thostFtdcOstAllTraded = '0'

thostFtdcOstPartTradedQueueing :: Char
thostFtdcOstPartTradedQueueing = '1'

thostFtdcOstPartTradedNotQueueing :: Char
thostFtdcOstPartTradedNotQueueing = '2'

thostFtdcOstNoTradeQueueing :: Char
thostFtdcOstNoTradeQueueing = '3'

thostFtdcOstNoTradeNotQueueing :: Char
thostFtdcOstNoTradeNotQueueing = '4'

thostFtdcOstCanceled :: Char
thostFtdcOstCanceled = '5'

thostFtdcOstUnknown :: Char
thostFtdcOstUnknown = 'a'

thostFtdcOstNotTouched :: Char
thostFtdcOstNotTouched = 'b'

thostFtdcOstTouched :: Char
thostFtdcOstTouched = 'c'

thostFtdcOssInsertSubmitted :: Char
thostFtdcOssInsertSubmitted = '0'

thostFtdcOssCancelSubmitted :: Char
thostFtdcOssCancelSubmitted = '1'

thostFtdcOssModifySubmitted :: Char
thostFtdcOssModifySubmitted = '2'

thostFtdcOssAccepted :: Char
thostFtdcOssAccepted = '3'

thostFtdcOssInsertRejected :: Char
thostFtdcOssInsertRejected = '4'

thostFtdcOssCancelRejected :: Char
thostFtdcOssCancelRejected = '5'

thostFtdcOssModifyRejected :: Char
thostFtdcOssModifyRejected = '6'

thostFtdcPsdToday :: Char
thostFtdcPsdToday = '1'

thostFtdcPsdHistory :: Char
thostFtdcPsdHistory = '2'

thostFtdcPdtUseHistory :: Char
thostFtdcPdtUseHistory = '1'

thostFtdcPdtNoUseHistory :: Char
thostFtdcPdtNoUseHistory = '2'

thostFtdcErBroker :: Char
thostFtdcErBroker = '1'

thostFtdcErHost :: Char
thostFtdcErHost = '2'

thostFtdcErMaker :: Char
thostFtdcErMaker = '3'

thostFtdcPcFutures :: Char
thostFtdcPcFutures = '1'

thostFtdcPcOptions :: Char
thostFtdcPcOptions = '2'

thostFtdcPcCombination :: Char
thostFtdcPcCombination = '3'

thostFtdcPcSpot :: Char
thostFtdcPcSpot = '4'

thostFtdcPcEfp :: Char
thostFtdcPcEfp = '5'

thostFtdcPcSpotOption :: Char
thostFtdcPcSpotOption = '6'

thostFtdcPcETFOption :: Char
thostFtdcPcETFOption = '7'

thostFtdcPcStock :: Char
thostFtdcPcStock = '8'

thostFtdcIpNotStart :: Char
thostFtdcIpNotStart = '0'

thostFtdcIpStarted :: Char
thostFtdcIpStarted = '1'

thostFtdcIpPause :: Char
thostFtdcIpPause = '2'

thostFtdcIpExpired :: Char
thostFtdcIpExpired = '3'

thostFtdcDBuy :: Char
thostFtdcDBuy = '0'

thostFtdcDSell :: Char
thostFtdcDSell = '1'

thostFtdcPtNet :: Char
thostFtdcPtNet = '1'

thostFtdcPtGross :: Char
thostFtdcPtGross = '2'

thostFtdcPdNet :: Char
thostFtdcPdNet = '1'

thostFtdcPdLong :: Char
thostFtdcPdLong = '2'

thostFtdcPdShort :: Char
thostFtdcPdShort = '3'

thostFtdcSsNonActive :: Char
thostFtdcSsNonActive = '1'

thostFtdcSsStartup :: Char
thostFtdcSsStartup = '2'

thostFtdcSsOperating :: Char
thostFtdcSsOperating = '3'

thostFtdcSsSettlement :: Char
thostFtdcSsSettlement = '4'

thostFtdcSsSettlementFinished :: Char
thostFtdcSsSettlementFinished = '5'

thostFtdcRaTrade :: Char
thostFtdcRaTrade = '0'

thostFtdcRaSettlement :: Char
thostFtdcRaSettlement = '1'

thostFtdcHfSpeculation :: Char
thostFtdcHfSpeculation = '1'

thostFtdcHfArbitrage :: Char
thostFtdcHfArbitrage = '2'

thostFtdcHfHedge :: Char
thostFtdcHfHedge = '3'

thostFtdcHfCovered :: Char
thostFtdcHfCovered = '4'

thostFtdcHfMarketMaker :: Char
thostFtdcHfMarketMaker = '5'

thostFtdcBhfSpeculation :: Char
thostFtdcBhfSpeculation = '1'

thostFtdcBhfArbitrage :: Char
thostFtdcBhfArbitrage = '2'

thostFtdcBhfHedge :: Char
thostFtdcBhfHedge = '3'

thostFtdcCidtSpeculation :: Char
thostFtdcCidtSpeculation = '1'

thostFtdcCidtArbitrage :: Char
thostFtdcCidtArbitrage = '2'

thostFtdcCidtHedge :: Char
thostFtdcCidtHedge = '3'

thostFtdcCidtMarketMaker :: Char
thostFtdcCidtMarketMaker = '5'

thostFtdcOptAnyPrice :: Char
thostFtdcOptAnyPrice = '1'

thostFtdcOptLimitPrice :: Char
thostFtdcOptLimitPrice = '2'

thostFtdcOptBestPrice :: Char
thostFtdcOptBestPrice = '3'

thostFtdcOptLastPrice :: Char
thostFtdcOptLastPrice = '4'

thostFtdcOptLastPricePlusOneTicks :: Char
thostFtdcOptLastPricePlusOneTicks = '5'

thostFtdcOptLastPricePlusTwoTicks :: Char
thostFtdcOptLastPricePlusTwoTicks = '6'

thostFtdcOptLastPricePlusThreeTicks :: Char
thostFtdcOptLastPricePlusThreeTicks = '7'

thostFtdcOptAskPrice1 :: Char
thostFtdcOptAskPrice1 = '8'

thostFtdcOptAskPrice1PlusOneTicks :: Char
thostFtdcOptAskPrice1PlusOneTicks = '9'

thostFtdcOptAskPrice1PlusTwoTicks :: Char
thostFtdcOptAskPrice1PlusTwoTicks = 'A'

thostFtdcOptAskPrice1PlusThreeTicks :: Char
thostFtdcOptAskPrice1PlusThreeTicks = 'B'

thostFtdcOptBidPrice1 :: Char
thostFtdcOptBidPrice1 = 'C'

thostFtdcOptBidPrice1PlusOneTicks :: Char
thostFtdcOptBidPrice1PlusOneTicks = 'D'

thostFtdcOptBidPrice1PlusTwoTicks :: Char
thostFtdcOptBidPrice1PlusTwoTicks = 'E'

thostFtdcOptBidPrice1PlusThreeTicks :: Char
thostFtdcOptBidPrice1PlusThreeTicks = 'F'

thostFtdcOptFiveLevelPrice :: Char
thostFtdcOptFiveLevelPrice = 'G'

thostFtdcOptBestPriceThisSide :: Char
thostFtdcOptBestPriceThisSide = 'H'

thostFtdcOfOpen :: Char
thostFtdcOfOpen = '0'

thostFtdcOfClose :: Char
thostFtdcOfClose = '1'

thostFtdcOfForceClose :: Char
thostFtdcOfForceClose = '2'

thostFtdcOfCloseToday :: Char
thostFtdcOfCloseToday = '3'

thostFtdcOfCloseYesterday :: Char
thostFtdcOfCloseYesterday = '4'

thostFtdcOfForceOff :: Char
thostFtdcOfForceOff = '5'

thostFtdcOfLocalForceClose :: Char
thostFtdcOfLocalForceClose = '6'

thostFtdcFccNotForceClose :: Char
thostFtdcFccNotForceClose = '0'

thostFtdcFccLackDeposit :: Char
thostFtdcFccLackDeposit = '1'

thostFtdcFccClientOverPositionLimit :: Char
thostFtdcFccClientOverPositionLimit = '2'

thostFtdcFccMemberOverPositionLimit :: Char
thostFtdcFccMemberOverPositionLimit = '3'

thostFtdcFccNotMultiple :: Char
thostFtdcFccNotMultiple = '4'

thostFtdcFccViolation :: Char
thostFtdcFccViolation = '5'

thostFtdcFccOther :: Char
thostFtdcFccOther = '6'

thostFtdcFccPersonDeliv :: Char
thostFtdcFccPersonDeliv = '7'

thostFtdcOrdtNormal :: Char
thostFtdcOrdtNormal = '0'

thostFtdcOrdtDeriveFromQuote :: Char
thostFtdcOrdtDeriveFromQuote = '1'

thostFtdcOrdtDeriveFromCombination :: Char
thostFtdcOrdtDeriveFromCombination = '2'

thostFtdcOrdtCombination :: Char
thostFtdcOrdtCombination = '3'

thostFtdcOrdtConditionalOrder :: Char
thostFtdcOrdtConditionalOrder = '4'

thostFtdcOrdtSwap :: Char
thostFtdcOrdtSwap = '5'

thostFtdcTcIoc :: Char
thostFtdcTcIoc = '1'

thostFtdcTcGfs :: Char
thostFtdcTcGfs = '2'

thostFtdcTcGfd :: Char
thostFtdcTcGfd = '3'

thostFtdcTcGtd :: Char
thostFtdcTcGtd = '4'

thostFtdcTcGtc :: Char
thostFtdcTcGtc = '5'

thostFtdcTcGfa :: Char
thostFtdcTcGfa = '6'

thostFtdcVcAv :: Char
thostFtdcVcAv = '1'

thostFtdcVcMv :: Char
thostFtdcVcMv = '2'

thostFtdcVcCv :: Char
thostFtdcVcCv = '3'

thostFtdcCcImmediately :: Char
thostFtdcCcImmediately = '1'

thostFtdcCcTouch :: Char
thostFtdcCcTouch = '2'

thostFtdcCcTouchProfit :: Char
thostFtdcCcTouchProfit = '3'

thostFtdcCcParkedOrder :: Char
thostFtdcCcParkedOrder = '4'

thostFtdcCcLastPriceGreaterThanStopPrice :: Char
thostFtdcCcLastPriceGreaterThanStopPrice = '5'

thostFtdcCcLastPriceGreaterEqualStopPrice :: Char
thostFtdcCcLastPriceGreaterEqualStopPrice = '6'

thostFtdcCcLastPriceLesserThanStopPrice :: Char
thostFtdcCcLastPriceLesserThanStopPrice = '7'

thostFtdcCcLastPriceLesserEqualStopPrice :: Char
thostFtdcCcLastPriceLesserEqualStopPrice = '8'

thostFtdcCcAskPriceGreaterThanStopPrice :: Char
thostFtdcCcAskPriceGreaterThanStopPrice = '9'

thostFtdcCcAskPriceGreaterEqualStopPrice :: Char
thostFtdcCcAskPriceGreaterEqualStopPrice = 'A'

thostFtdcCcAskPriceLesserThanStopPrice :: Char
thostFtdcCcAskPriceLesserThanStopPrice = 'B'

thostFtdcCcAskPriceLesserEqualStopPrice :: Char
thostFtdcCcAskPriceLesserEqualStopPrice = 'C'

thostFtdcCcBidPriceGreaterThanStopPrice :: Char
thostFtdcCcBidPriceGreaterThanStopPrice = 'D'

thostFtdcCcBidPriceGreaterEqualStopPrice :: Char
thostFtdcCcBidPriceGreaterEqualStopPrice = 'E'

thostFtdcCcBidPriceLesserThanStopPrice :: Char
thostFtdcCcBidPriceLesserThanStopPrice = 'F'

thostFtdcCcBidPriceLesserEqualStopPrice :: Char
thostFtdcCcBidPriceLesserEqualStopPrice = 'H'

thostFtdcAfDelete :: Char
thostFtdcAfDelete = '0'

thostFtdcAfModify :: Char
thostFtdcAfModify = '3'

thostFtdcTrAllow :: Char
thostFtdcTrAllow = '0'

thostFtdcTrCloseOnly :: Char
thostFtdcTrCloseOnly = '1'

thostFtdcTrForbidden :: Char
thostFtdcTrForbidden = '2'

thostFtdcOsrcParticipant :: Char
thostFtdcOsrcParticipant = '0'

thostFtdcOsrcAdministrator :: Char
thostFtdcOsrcAdministrator = '1'

thostFtdcTrdtCommon :: Char
thostFtdcTrdtCommon = '0'

thostFtdcTrdtOptionsExecution :: Char
thostFtdcTrdtOptionsExecution = '1'

thostFtdcTrdtOtc :: Char
thostFtdcTrdtOtc = '2'

thostFtdcTrdtEFPDerived :: Char
thostFtdcTrdtEFPDerived = '3'

thostFtdcTrdtCombinationDerived :: Char
thostFtdcTrdtCombinationDerived = '4'

thostFtdcPsrcLastPrice :: Char
thostFtdcPsrcLastPrice = '0'

thostFtdcPsrcBuy :: Char
thostFtdcPsrcBuy = '1'

thostFtdcPsrcSell :: Char
thostFtdcPsrcSell = '2'

thostFtdcIsBeforeTrading :: Char
thostFtdcIsBeforeTrading = '0'

thostFtdcIsNoTrading :: Char
thostFtdcIsNoTrading = '1'

thostFtdcIsContinous :: Char
thostFtdcIsContinous = '2'

thostFtdcIsAuctionOrdering :: Char
thostFtdcIsAuctionOrdering = '3'

thostFtdcIsAuctionBalance :: Char
thostFtdcIsAuctionBalance = '4'

thostFtdcIsAuctionMatch :: Char
thostFtdcIsAuctionMatch = '5'

thostFtdcIsClosed :: Char
thostFtdcIsClosed = '6'

thostFtdcIerAutomatic :: Char
thostFtdcIerAutomatic = '1'

thostFtdcIerManual :: Char
thostFtdcIerManual = '2'

thostFtdcIerFuse :: Char
thostFtdcIerFuse = '3'

thostFtdcBsNoUpload :: Char
thostFtdcBsNoUpload = '1'

thostFtdcBsUploaded :: Char
thostFtdcBsUploaded = '2'

thostFtdcBsFailed :: Char
thostFtdcBsFailed = '3'

thostFtdcRsAll :: Char
thostFtdcRsAll = '1'

thostFtdcRsByProduct :: Char
thostFtdcRsByProduct = '2'

thostFtdcRpByVolume :: Char
thostFtdcRpByVolume = '1'

thostFtdcRpByFeeOnHand :: Char
thostFtdcRpByFeeOnHand = '2'

thostFtdcRlLevel1 :: Char
thostFtdcRlLevel1 = '1'

thostFtdcRlLevel2 :: Char
thostFtdcRlLevel2 = '2'

thostFtdcRlLevel3 :: Char
thostFtdcRlLevel3 = '3'

thostFtdcRlLevel4 :: Char
thostFtdcRlLevel4 = '4'

thostFtdcRlLevel5 :: Char
thostFtdcRlLevel5 = '5'

thostFtdcRlLevel6 :: Char
thostFtdcRlLevel6 = '6'

thostFtdcRlLevel7 :: Char
thostFtdcRlLevel7 = '7'

thostFtdcRlLevel8 :: Char
thostFtdcRlLevel8 = '8'

thostFtdcRlLevel9 :: Char
thostFtdcRlLevel9 = '9'

thostFtdcRsdByPeriod :: Char
thostFtdcRsdByPeriod = '1'

thostFtdcRsdByStandard :: Char
thostFtdcRsdByStandard = '2'

thostFtdcMtOut :: Char
thostFtdcMtOut = '0'

thostFtdcMtIn :: Char
thostFtdcMtIn = '1'

thostFtdcIspiMortgageRatio :: Char
thostFtdcIspiMortgageRatio = '4'

thostFtdcIspiMarginWay :: Char
thostFtdcIspiMarginWay = '5'

thostFtdcIspiBillDeposit :: Char
thostFtdcIspiBillDeposit = '9'

thostFtdcEspiMortgageRatio :: Char
thostFtdcEspiMortgageRatio = '1'

thostFtdcEspiOtherFundItem :: Char
thostFtdcEspiOtherFundItem = '2'

thostFtdcEspiOtherFundImport :: Char
thostFtdcEspiOtherFundImport = '3'

thostFtdcEspiCFFEXMinPrepa :: Char
thostFtdcEspiCFFEXMinPrepa = '6'

thostFtdcEspiCZCESettlementType :: Char
thostFtdcEspiCZCESettlementType = '7'

thostFtdcEspiExchDelivFeeMode :: Char
thostFtdcEspiExchDelivFeeMode = '9'

thostFtdcEspiDelivFeeMode :: Char
thostFtdcEspiDelivFeeMode = '0'

thostFtdcEspiCZCEComMarginType :: Char
thostFtdcEspiCZCEComMarginType = 'A'

thostFtdcEspiDceComMarginType :: Char
thostFtdcEspiDceComMarginType = 'B'

thostFtdcEspiOptOutDisCountRate :: Char
thostFtdcEspiOptOutDisCountRate = 'a'

thostFtdcEspiOptMiniGuarantee :: Char
thostFtdcEspiOptMiniGuarantee = 'b'

thostFtdcSpiInvestorIDMinLength :: Char
thostFtdcSpiInvestorIDMinLength = '1'

thostFtdcSpiAccountIDMinLength :: Char
thostFtdcSpiAccountIDMinLength = '2'

thostFtdcSpiUserRightLogon :: Char
thostFtdcSpiUserRightLogon = '3'

thostFtdcSpiSettlementBillTrade :: Char
thostFtdcSpiSettlementBillTrade = '4'

thostFtdcSpiTradingCode :: Char
thostFtdcSpiTradingCode = '5'

thostFtdcSpiCheckFund :: Char
thostFtdcSpiCheckFund = '6'

thostFtdcSpiCommModelRight :: Char
thostFtdcSpiCommModelRight = '7'

thostFtdcSpiMarginModelRight :: Char
thostFtdcSpiMarginModelRight = '9'

thostFtdcSpiIsStandardActive :: Char
thostFtdcSpiIsStandardActive = '8'

thostFtdcSpiUploadSettlementFile :: Char
thostFtdcSpiUploadSettlementFile = 'U'

thostFtdcSpiDownloadCSRCFile :: Char
thostFtdcSpiDownloadCSRCFile = 'D'

thostFtdcSpiSettlementBillFile :: Char
thostFtdcSpiSettlementBillFile = 'S'

thostFtdcSpiCSRCOthersFile :: Char
thostFtdcSpiCSRCOthersFile = 'C'

thostFtdcSpiInvestorPhoto :: Char
thostFtdcSpiInvestorPhoto = 'P'

thostFtdcSpiCSRCData :: Char
thostFtdcSpiCSRCData = 'R'

thostFtdcSpiInvestorPwdModel :: Char
thostFtdcSpiInvestorPwdModel = 'I'

thostFtdcSpiCFFEXInvestorSettleFile :: Char
thostFtdcSpiCFFEXInvestorSettleFile = 'F'

thostFtdcSpiInvestorIDType :: Char
thostFtdcSpiInvestorIDType = 'a'

thostFtdcSpiFreezeMaxReMain :: Char
thostFtdcSpiFreezeMaxReMain = 'r'

thostFtdcSpiIsSync :: Char
thostFtdcSpiIsSync = 'A'

thostFtdcSpiRelieveOpenLimit :: Char
thostFtdcSpiRelieveOpenLimit = 'O'

thostFtdcSpiIsStandardFreeze :: Char
thostFtdcSpiIsStandardFreeze = 'X'

thostFtdcSpiCZCENormalProductHedge :: Char
thostFtdcSpiCZCENormalProductHedge = 'B'

thostFtdcTpidEncryptionStandard :: Char
thostFtdcTpidEncryptionStandard = 'E'

thostFtdcTpidRiskMode :: Char
thostFtdcTpidRiskMode = 'R'

thostFtdcTpidRiskModeGlobal :: Char
thostFtdcTpidRiskModeGlobal = 'G'

thostFtdcTpidmodeEncode :: Char
thostFtdcTpidmodeEncode = 'P'

thostFtdcTpidtickMode :: Char
thostFtdcTpidtickMode = 'T'

thostFtdcTpidSingleUserSessionMaxNum :: Char
thostFtdcTpidSingleUserSessionMaxNum = 'S'

thostFtdcTpidLoginFailMaxNum :: Char
thostFtdcTpidLoginFailMaxNum = 'L'

thostFtdcTpidIsAuthForce :: Char
thostFtdcTpidIsAuthForce = 'A'

thostFtdcTpidIsPosiFreeze :: Char
thostFtdcTpidIsPosiFreeze = 'F'

thostFtdcTpidIsPosiLimit :: Char
thostFtdcTpidIsPosiLimit = 'M'

thostFtdcTpidForQuoteTimeInterval :: Char
thostFtdcTpidForQuoteTimeInterval = 'Q'

thostFtdcTpidIsFuturePosiLimit :: Char
thostFtdcTpidIsFuturePosiLimit = 'B'

thostFtdcTpidIsFutureOrderFreq :: Char
thostFtdcTpidIsFutureOrderFreq = 'C'

thostFtdcTpidIsOrderTypeLimit :: Char
thostFtdcTpidIsOrderTypeLimit = 'D'

thostFtdcTpidIsExecOrderProfit :: Char
thostFtdcTpidIsExecOrderProfit = 'H'

thostFtdcFiSettlementFund :: Char
thostFtdcFiSettlementFund = 'F'

thostFtdcFiTrade :: Char
thostFtdcFiTrade = 'T'

thostFtdcFiInvestorPosition :: Char
thostFtdcFiInvestorPosition = 'P'

thostFtdcFiSubEntryFund :: Char
thostFtdcFiSubEntryFund = 'O'

thostFtdcFiCZCECombinationPos :: Char
thostFtdcFiCZCECombinationPos = 'C'

thostFtdcFiCSRCData :: Char
thostFtdcFiCSRCData = 'R'

thostFtdcFiCZCEClose :: Char
thostFtdcFiCZCEClose = 'L'

thostFtdcFiCZCENoClose :: Char
thostFtdcFiCZCENoClose = 'N'

thostFtdcFiPositionDtl :: Char
thostFtdcFiPositionDtl = 'D'

thostFtdcFiOptionStrike :: Char
thostFtdcFiOptionStrike = 'S'

thostFtdcFiSettlementPriceComparison :: Char
thostFtdcFiSettlementPriceComparison = 'M'

thostFtdcFiNonTradePosChange :: Char
thostFtdcFiNonTradePosChange = 'B'

thostFtdcFutSettlement :: Char
thostFtdcFutSettlement = '0'

thostFtdcFutCheck :: Char
thostFtdcFutCheck = '1'

thostFtdcFftTxt :: Char
thostFtdcFftTxt = '0'

thostFtdcFftZip :: Char
thostFtdcFftZip = '1'

thostFtdcFftDbf :: Char
thostFtdcFftDbf = '2'

thostFtdcFusSucceedUpload :: Char
thostFtdcFusSucceedUpload = '1'

thostFtdcFusFailedUpload :: Char
thostFtdcFusFailedUpload = '2'

thostFtdcFusSucceedLoad :: Char
thostFtdcFusSucceedLoad = '3'

thostFtdcFusPartSucceedLoad :: Char
thostFtdcFusPartSucceedLoad = '4'

thostFtdcFusFailedLoad :: Char
thostFtdcFusFailedLoad = '5'

thostFtdcTdOut :: Char
thostFtdcTdOut = '0'

thostFtdcTdIn :: Char
thostFtdcTdIn = '1'

thostFtdcScNoSpecialRule :: Char
thostFtdcScNoSpecialRule = '0'

thostFtdcScNoSpringFestival :: Char
thostFtdcScNoSpringFestival = '1'

thostFtdcIptLastSettlement :: Char
thostFtdcIptLastSettlement = '1'

thostFtdcIptLaseClose :: Char
thostFtdcIptLaseClose = '2'

thostFtdcPlpActive :: Char
thostFtdcPlpActive = '1'

thostFtdcPlpNonActive :: Char
thostFtdcPlpNonActive = '2'

thostFtdcPlpCanceled :: Char
thostFtdcPlpCanceled = '3'

thostFtdcDmCashDeliv :: Char
thostFtdcDmCashDeliv = '1'

thostFtdcDmCommodityDeliv :: Char
thostFtdcDmCommodityDeliv = '2'

thostFtdcFiotFundIO :: Char
thostFtdcFiotFundIO = '1'

thostFtdcFiotTransfer :: Char
thostFtdcFiotTransfer = '2'

thostFtdcFiotSwapCurrency :: Char
thostFtdcFiotSwapCurrency = '3'

thostFtdcFtDeposite :: Char
thostFtdcFtDeposite = '1'

thostFtdcFtItemFund :: Char
thostFtdcFtItemFund = '2'

thostFtdcFtCompany :: Char
thostFtdcFtCompany = '3'

thostFtdcFtInnerTransfer :: Char
thostFtdcFtInnerTransfer = '4'

thostFtdcFdIn :: Char
thostFtdcFdIn = '1'

thostFtdcFdOut :: Char
thostFtdcFdOut = '2'

thostFtdcFsRecord :: Char
thostFtdcFsRecord = '1'

thostFtdcFsCheck :: Char
thostFtdcFsCheck = '2'

thostFtdcFsCharge :: Char
thostFtdcFsCharge = '3'

thostFtdcPsNone :: Char
thostFtdcPsNone = '1'

thostFtdcPsPublishing :: Char
thostFtdcPsPublishing = '2'

thostFtdcPsPublished :: Char
thostFtdcPsPublished = '3'

thostFtdcEsNonActive :: Char
thostFtdcEsNonActive = '1'

thostFtdcEsStartup :: Char
thostFtdcEsStartup = '2'

thostFtdcEsInitialize :: Char
thostFtdcEsInitialize = '3'

thostFtdcEsInitialized :: Char
thostFtdcEsInitialized = '4'

thostFtdcEsClose :: Char
thostFtdcEsClose = '5'

thostFtdcEsClosed :: Char
thostFtdcEsClosed = '6'

thostFtdcEsSettlement :: Char
thostFtdcEsSettlement = '7'

thostFtdcStsInitialize :: Char
thostFtdcStsInitialize = '0'

thostFtdcStsSettlementing :: Char
thostFtdcStsSettlementing = '1'

thostFtdcStsSettlemented :: Char
thostFtdcStsSettlemented = '2'

thostFtdcStsFinished :: Char
thostFtdcStsFinished = '3'

thostFtdcCtPerson :: Char
thostFtdcCtPerson = '0'

thostFtdcCtCompany :: Char
thostFtdcCtCompany = '1'

thostFtdcCtFund :: Char
thostFtdcCtFund = '2'

thostFtdcCtSpecialOrgan :: Char
thostFtdcCtSpecialOrgan = '3'

thostFtdcCtAsset :: Char
thostFtdcCtAsset = '4'

thostFtdcBtTrade :: Char
thostFtdcBtTrade = '0'

thostFtdcBtTradeSettle :: Char
thostFtdcBtTradeSettle = '1'

thostFtdcFasLow :: Char
thostFtdcFasLow = '1'

thostFtdcFasNormal :: Char
thostFtdcFasNormal = '2'

thostFtdcFasFocus :: Char
thostFtdcFasFocus = '3'

thostFtdcFasRisk :: Char
thostFtdcFasRisk = '4'

thostFtdcFasByTrade :: Char
thostFtdcFasByTrade = '1'

thostFtdcFasByDeliv :: Char
thostFtdcFasByDeliv = '2'

thostFtdcFasNone :: Char
thostFtdcFasNone = '3'

thostFtdcFasFixFee :: Char
thostFtdcFasFixFee = '4'

thostFtdcPwdtTrade :: Char
thostFtdcPwdtTrade = '1'

thostFtdcPwdtAccount :: Char
thostFtdcPwdtAccount = '2'

thostFtdcAgAll :: Char
thostFtdcAgAll = '1'

thostFtdcAgOnlyLost :: Char
thostFtdcAgOnlyLost = '2'

thostFtdcAgOnlyGain :: Char
thostFtdcAgOnlyGain = '3'

thostFtdcAgNone :: Char
thostFtdcAgNone = '4'

thostFtdcIcpInclude :: Char
thostFtdcIcpInclude = '0'

thostFtdcIcpNotInclude :: Char
thostFtdcIcpNotInclude = '2'

thostFtdcAwtEnable :: Char
thostFtdcAwtEnable = '0'

thostFtdcAwtDisable :: Char
thostFtdcAwtDisable = '2'

thostFtdcAwtNoHoldEnable :: Char
thostFtdcAwtNoHoldEnable = '3'

thostFtdcFpwdUnCheck :: Char
thostFtdcFpwdUnCheck = '0'

thostFtdcFpwdCheck :: Char
thostFtdcFpwdCheck = '1'

thostFtdcTtBankToFuture :: Char
thostFtdcTtBankToFuture = '0'

thostFtdcTtFutureToBank :: Char
thostFtdcTtFutureToBank = '1'

thostFtdcTvfInvalid :: Char
thostFtdcTvfInvalid = '0'

thostFtdcTvfValid :: Char
thostFtdcTvfValid = '1'

thostFtdcTvfReverse :: Char
thostFtdcTvfReverse = '2'

thostFtdcRnCd :: Char
thostFtdcRnCd = '0'

thostFtdcRnZt :: Char
thostFtdcRnZt = '1'

thostFtdcRnQt :: Char
thostFtdcRnQt = '2'

thostFtdcSexNone :: Char
thostFtdcSexNone = '0'

thostFtdcSexMan :: Char
thostFtdcSexMan = '1'

thostFtdcSexWoman :: Char
thostFtdcSexWoman = '2'

thostFtdcUtInvestor :: Char
thostFtdcUtInvestor = '0'

thostFtdcUtOperator :: Char
thostFtdcUtOperator = '1'

thostFtdcUtSuperUser :: Char
thostFtdcUtSuperUser = '2'

thostFtdcRatetypeMarginRate :: Char
thostFtdcRatetypeMarginRate = '2'

thostFtdcNotetypeTradeSettleBill :: Char
thostFtdcNotetypeTradeSettleBill = '1'

thostFtdcNotetypeTradeSettleMonth :: Char
thostFtdcNotetypeTradeSettleMonth = '2'

thostFtdcNotetypeCallMarginNotes :: Char
thostFtdcNotetypeCallMarginNotes = '3'

thostFtdcNotetypeForceCloseNotes :: Char
thostFtdcNotetypeForceCloseNotes = '4'

thostFtdcNotetypeTradeNotes :: Char
thostFtdcNotetypeTradeNotes = '5'

thostFtdcNotetypeDelivNotes :: Char
thostFtdcNotetypeDelivNotes = '6'

thostFtdcSbsDay :: Char
thostFtdcSbsDay = '1'

thostFtdcSbsVolume :: Char
thostFtdcSbsVolume = '2'

thostFtdcStDay :: Char
thostFtdcStDay = '0'

thostFtdcStMonth :: Char
thostFtdcStMonth = '1'

thostFtdcUrtLogon :: Char
thostFtdcUrtLogon = '1'

thostFtdcUrtTransfer :: Char
thostFtdcUrtTransfer = '2'

thostFtdcUrtEMail :: Char
thostFtdcUrtEMail = '3'

thostFtdcUrtFax :: Char
thostFtdcUrtFax = '4'

thostFtdcUrtConditionOrder :: Char
thostFtdcUrtConditionOrder = '5'

thostFtdcMptPreSettlementPrice :: Char
thostFtdcMptPreSettlementPrice = '1'

thostFtdcMptSettlementPrice :: Char
thostFtdcMptSettlementPrice = '2'

thostFtdcMptAveragePrice :: Char
thostFtdcMptAveragePrice = '3'

thostFtdcMptOpenPrice :: Char
thostFtdcMptOpenPrice = '4'

thostFtdcBgsNone :: Char
thostFtdcBgsNone = '0'

thostFtdcBgsNoGenerated :: Char
thostFtdcBgsNoGenerated = '1'

thostFtdcBgsGenerated :: Char
thostFtdcBgsGenerated = '2'

thostFtdcAtHandlePositionAlgo :: Char
thostFtdcAtHandlePositionAlgo = '1'

thostFtdcAtFindMarginRateAlgo :: Char
thostFtdcAtFindMarginRateAlgo = '2'

thostFtdcHpaBase :: Char
thostFtdcHpaBase = '1'

thostFtdcHpaDce :: Char
thostFtdcHpaDce = '2'

thostFtdcHpaCzce :: Char
thostFtdcHpaCzce = '3'

thostFtdcFmraBase :: Char
thostFtdcFmraBase = '1'

thostFtdcFmraDce :: Char
thostFtdcFmraDce = '2'

thostFtdcFmraCzce :: Char
thostFtdcFmraCzce = '3'

thostFtdcHtaaBase :: Char
thostFtdcHtaaBase = '1'

thostFtdcHtaaDce :: Char
thostFtdcHtaaDce = '2'

thostFtdcHtaaCzce :: Char
thostFtdcHtaaCzce = '3'

thostFtdcPstOrder :: Char
thostFtdcPstOrder = '1'

thostFtdcPstOpen :: Char
thostFtdcPstOpen = '2'

thostFtdcPstFund :: Char
thostFtdcPstFund = '3'

thostFtdcPstSettlement :: Char
thostFtdcPstSettlement = '4'

thostFtdcPstCompany :: Char
thostFtdcPstCompany = '5'

thostFtdcPstCorporation :: Char
thostFtdcPstCorporation = '6'

thostFtdcPstLinkMan :: Char
thostFtdcPstLinkMan = '7'

thostFtdcPstLedger :: Char
thostFtdcPstLedger = '8'

thostFtdcPstTrustee :: Char
thostFtdcPstTrustee = '9'

thostFtdcPstTrusteeCorporation :: Char
thostFtdcPstTrusteeCorporation = 'A'

thostFtdcPstTrusteeOpen :: Char
thostFtdcPstTrusteeOpen = 'B'

thostFtdcPstTrusteeContact :: Char
thostFtdcPstTrusteeContact = 'C'

thostFtdcPstForeignerRefer :: Char
thostFtdcPstForeignerRefer = 'D'

thostFtdcPstCorporationRefer :: Char
thostFtdcPstCorporationRefer = 'E'

thostFtdcQirAll :: Char
thostFtdcQirAll = '1'

thostFtdcQirGroup :: Char
thostFtdcQirGroup = '2'

thostFtdcQirSingle :: Char
thostFtdcQirSingle = '3'

thostFtdcIrsNormal :: Char
thostFtdcIrsNormal = '1'

thostFtdcIrsWarn :: Char
thostFtdcIrsWarn = '2'

thostFtdcIrsCall :: Char
thostFtdcIrsCall = '3'

thostFtdcIrsForce :: Char
thostFtdcIrsForce = '4'

thostFtdcIrsException :: Char
thostFtdcIrsException = '5'

thostFtdcUetLogin :: Char
thostFtdcUetLogin = '1'

thostFtdcUetLogout :: Char
thostFtdcUetLogout = '2'

thostFtdcUetTrading :: Char
thostFtdcUetTrading = '3'

thostFtdcUetTradingError :: Char
thostFtdcUetTradingError = '4'

thostFtdcUetUpdatePassword :: Char
thostFtdcUetUpdatePassword = '5'

thostFtdcUetAuthenticate :: Char
thostFtdcUetAuthenticate = '6'

thostFtdcUetOther :: Char
thostFtdcUetOther = '9'

thostFtdcIcsClose :: Char
thostFtdcIcsClose = '0'

thostFtdcIcsCloseToday :: Char
thostFtdcIcsCloseToday = '1'

thostFtdcSmNon :: Char
thostFtdcSmNon = '0'

thostFtdcSmInstrument :: Char
thostFtdcSmInstrument = '1'

thostFtdcSmProduct :: Char
thostFtdcSmProduct = '2'

thostFtdcSmInvestor :: Char
thostFtdcSmInvestor = '3'

thostFtdcPaosNotSend :: Char
thostFtdcPaosNotSend = '1'

thostFtdcPaosSend :: Char
thostFtdcPaosSend = '2'

thostFtdcPaosDeleted :: Char
thostFtdcPaosDeleted = '3'

thostFtdcVdsDealing :: Char
thostFtdcVdsDealing = '1'

thostFtdcVdsDeaclSucceed :: Char
thostFtdcVdsDeaclSucceed = '2'

thostFtdcOrgsStandard :: Char
thostFtdcOrgsStandard = '0'

thostFtdcOrgsESunny :: Char
thostFtdcOrgsESunny = '1'

thostFtdcOrgsKingStarV6 :: Char
thostFtdcOrgsKingStarV6 = '2'

thostFtdcVtsNaturalDeal :: Char
thostFtdcVtsNaturalDeal = '0'

thostFtdcVtsSucceedEnd :: Char
thostFtdcVtsSucceedEnd = '1'

thostFtdcVtsFailedEND :: Char
thostFtdcVtsFailedEND = '2'

thostFtdcVtsException :: Char
thostFtdcVtsException = '3'

thostFtdcVtsManualDeal :: Char
thostFtdcVtsManualDeal = '4'

thostFtdcVtsMesException :: Char
thostFtdcVtsMesException = '5'

thostFtdcVtsSysException :: Char
thostFtdcVtsSysException = '6'

thostFtdcVbatBankBook :: Char
thostFtdcVbatBankBook = '1'

thostFtdcVbatBankCard :: Char
thostFtdcVbatBankCard = '2'

thostFtdcVbatCreditCard :: Char
thostFtdcVbatCreditCard = '3'

thostFtdcVmsNatural :: Char
thostFtdcVmsNatural = '0'

thostFtdcVmsCanceled :: Char
thostFtdcVmsCanceled = '9'

thostFtdcVaaNoAvailAbility :: Char
thostFtdcVaaNoAvailAbility = '0'

thostFtdcVaaAvailAbility :: Char
thostFtdcVaaAvailAbility = '1'

thostFtdcVaaRepeal :: Char
thostFtdcVaaRepeal = '2'

thostFtdcGenProgram :: Char
thostFtdcGenProgram = '0'

thostFtdcGenHandWork :: Char
thostFtdcGenHandWork = '1'

thostFtdcCfmmckkRequest :: Char
thostFtdcCfmmckkRequest = 'R'

thostFtdcCfmmckkAuto :: Char
thostFtdcCfmmckkAuto = 'A'

thostFtdcCfmmckkManual :: Char
thostFtdcCfmmckkManual = 'M'

thostFtdcCftIDCard :: Char
thostFtdcCftIDCard = '0'

thostFtdcCftPassport :: Char
thostFtdcCftPassport = '1'

thostFtdcCftOfficerIDCard :: Char
thostFtdcCftOfficerIDCard = '2'

thostFtdcCftSoldierIDCard :: Char
thostFtdcCftSoldierIDCard = '3'

thostFtdcCftHomeComingCard :: Char
thostFtdcCftHomeComingCard = '4'

thostFtdcCftHouseholdRegister :: Char
thostFtdcCftHouseholdRegister = '5'

thostFtdcCftLicenseNo :: Char
thostFtdcCftLicenseNo = '6'

thostFtdcCftInstitutionCodeCard :: Char
thostFtdcCftInstitutionCodeCard = '7'

thostFtdcCftTempLicenseNo :: Char
thostFtdcCftTempLicenseNo = '8'

thostFtdcCftNoEnterpriseLicenseNo :: Char
thostFtdcCftNoEnterpriseLicenseNo = '9'

thostFtdcCftOtherCard :: Char
thostFtdcCftOtherCard = 'x'

thostFtdcCftSuperDepAgree :: Char
thostFtdcCftSuperDepAgree = 'a'

thostFtdcFbcOthers :: Char
thostFtdcFbcOthers = '0'

thostFtdcFbcTransferDetails :: Char
thostFtdcFbcTransferDetails = '1'

thostFtdcFbcCustAccStatus :: Char
thostFtdcFbcCustAccStatus = '2'

thostFtdcFbcAccountTradeDetails :: Char
thostFtdcFbcAccountTradeDetails = '3'

thostFtdcFbcFutureAccountChangeInfoDetails :: Char
thostFtdcFbcFutureAccountChangeInfoDetails = '4'

thostFtdcFbcCustMoneyDetail :: Char
thostFtdcFbcCustMoneyDetail = '5'

thostFtdcFbcCustCancelAccountInfo :: Char
thostFtdcFbcCustCancelAccountInfo = '6'

thostFtdcFbcCustMoneyResult :: Char
thostFtdcFbcCustMoneyResult = '7'

thostFtdcFbcOthersExceptionResult :: Char
thostFtdcFbcOthersExceptionResult = '8'

thostFtdcFbcCustInterestNetMoneyDetails :: Char
thostFtdcFbcCustInterestNetMoneyDetails = '9'

thostFtdcFbcCustMoneySendAndReceiveDetails :: Char
thostFtdcFbcCustMoneySendAndReceiveDetails = 'a'

thostFtdcFbcCorporationMoneyTotal :: Char
thostFtdcFbcCorporationMoneyTotal = 'b'

thostFtdcFbcMainbodyMoneyTotal :: Char
thostFtdcFbcMainbodyMoneyTotal = 'c'

thostFtdcFbcMainPartMonitorData :: Char
thostFtdcFbcMainPartMonitorData = 'd'

thostFtdcFbcPreparationMoney :: Char
thostFtdcFbcPreparationMoney = 'e'

thostFtdcFbcBankMoneyMonitorData :: Char
thostFtdcFbcBankMoneyMonitorData = 'f'

thostFtdcCecExchange :: Char
thostFtdcCecExchange = '1'

thostFtdcCecCash :: Char
thostFtdcCecCash = '2'

thostFtdcYniYes :: Char
thostFtdcYniYes = '0'

thostFtdcYniNo :: Char
thostFtdcYniNo = '1'

thostFtdcBltCurrentMoney :: Char
thostFtdcBltCurrentMoney = '0'

thostFtdcBltUsableMoney :: Char
thostFtdcBltUsableMoney = '1'

thostFtdcBltFetchableMoney :: Char
thostFtdcBltFetchableMoney = '2'

thostFtdcBltFreezeMoney :: Char
thostFtdcBltFreezeMoney = '3'

thostFtdcGdUnknown :: Char
thostFtdcGdUnknown = '0'

thostFtdcGdMale :: Char
thostFtdcGdMale = '1'

thostFtdcGdFemale :: Char
thostFtdcGdFemale = '2'

thostFtdcFpfBen :: Char
thostFtdcFpfBen = '0'

thostFtdcFpfOur :: Char
thostFtdcFpfOur = '1'

thostFtdcFpfSha :: Char
thostFtdcFpfSha = '2'

thostFtdcPwktExchangeKey :: Char
thostFtdcPwktExchangeKey = '0'

thostFtdcPwktPassWordKey :: Char
thostFtdcPwktPassWordKey = '1'

thostFtdcPwktMACKey :: Char
thostFtdcPwktMACKey = '2'

thostFtdcPwktMessageKey :: Char
thostFtdcPwktMessageKey = '3'

thostFtdcPwtQuery :: Char
thostFtdcPwtQuery = '0'

thostFtdcPwtFetch :: Char
thostFtdcPwtFetch = '1'

thostFtdcPwtTransfer :: Char
thostFtdcPwtTransfer = '2'

thostFtdcPwtTrade :: Char
thostFtdcPwtTrade = '3'

thostFtdcEmNoEncry :: Char
thostFtdcEmNoEncry = '0'

thostFtdcEmDes :: Char
thostFtdcEmDes = '1'

thostFtdcEm3DES :: Char
thostFtdcEm3DES = '2'

thostFtdcBrfBankNotNeedRepeal :: Char
thostFtdcBrfBankNotNeedRepeal = '0'

thostFtdcBrfBankWaitingRepeal :: Char
thostFtdcBrfBankWaitingRepeal = '1'

thostFtdcBrfBankBeenRepealed :: Char
thostFtdcBrfBankBeenRepealed = '2'

thostFtdcBrorfBrokerNotNeedRepeal :: Char
thostFtdcBrorfBrokerNotNeedRepeal = '0'

thostFtdcBrorfBrokerWaitingRepeal :: Char
thostFtdcBrorfBrokerWaitingRepeal = '1'

thostFtdcBrorfBrokerBeenRepealed :: Char
thostFtdcBrorfBrokerBeenRepealed = '2'

thostFtdcTsBank :: Char
thostFtdcTsBank = '0'

thostFtdcTsFuture :: Char
thostFtdcTsFuture = '1'

thostFtdcTsStore :: Char
thostFtdcTsStore = '2'

thostFtdcLfYes :: Char
thostFtdcLfYes = '0'

thostFtdcLfNo :: Char
thostFtdcLfNo = '1'

thostFtdcBasNormal :: Char
thostFtdcBasNormal = '0'

thostFtdcBasFreeze :: Char
thostFtdcBasFreeze = '1'

thostFtdcBasReportLoss :: Char
thostFtdcBasReportLoss = '2'

thostFtdcMasNormal :: Char
thostFtdcMasNormal = '0'

thostFtdcMasCancel :: Char
thostFtdcMasCancel = '1'

thostFtdcMssPoint :: Char
thostFtdcMssPoint = '0'

thostFtdcMssPrePoint :: Char
thostFtdcMssPrePoint = '1'

thostFtdcMssCancelPoint :: Char
thostFtdcMssCancelPoint = '2'

thostFtdcSytFutureBankTransfer :: Char
thostFtdcSytFutureBankTransfer = '0'

thostFtdcSytStockBankTransfer :: Char
thostFtdcSytStockBankTransfer = '1'

thostFtdcSytTheThirdPartStore :: Char
thostFtdcSytTheThirdPartStore = '2'

thostFtdcTefNormalProcessing :: Char
thostFtdcTefNormalProcessing = '0'

thostFtdcTefSuccess :: Char
thostFtdcTefSuccess = '1'

thostFtdcTefFailed :: Char
thostFtdcTefFailed = '2'

thostFtdcTefAbnormal :: Char
thostFtdcTefAbnormal = '3'

thostFtdcTefManualProcessedForException :: Char
thostFtdcTefManualProcessedForException = '4'

thostFtdcTefCommuFailedNeedManualProcess :: Char
thostFtdcTefCommuFailedNeedManualProcess = '5'

thostFtdcTefSysErrorNeedManualProcess :: Char
thostFtdcTefSysErrorNeedManualProcess = '6'

thostFtdcPssNotProcess :: Char
thostFtdcPssNotProcess = '0'

thostFtdcPssStartProcess :: Char
thostFtdcPssStartProcess = '1'

thostFtdcPssFinished :: Char
thostFtdcPssFinished = '2'

thostFtdcCusttPerson :: Char
thostFtdcCusttPerson = '0'

thostFtdcCusttInstitution :: Char
thostFtdcCusttInstitution = '1'

thostFtdcFbttdFromBankToFuture :: Char
thostFtdcFbttdFromBankToFuture = '1'

thostFtdcFbttdFromFutureToBank :: Char
thostFtdcFbttdFromFutureToBank = '2'

thostFtdcOodOpen :: Char
thostFtdcOodOpen = '1'

thostFtdcOodDestroy :: Char
thostFtdcOodDestroy = '0'

thostFtdcAvafInvalid :: Char
thostFtdcAvafInvalid = '0'

thostFtdcAvafValid :: Char
thostFtdcAvafValid = '1'

thostFtdcAvafRepeal :: Char
thostFtdcAvafRepeal = '2'

thostFtdcOtBank :: Char
thostFtdcOtBank = '1'

thostFtdcOtFuture :: Char
thostFtdcOtFuture = '2'

thostFtdcOtPlateForm :: Char
thostFtdcOtPlateForm = '9'

thostFtdcOlHeadQuarters :: Char
thostFtdcOlHeadQuarters = '1'

thostFtdcOlBranch :: Char
thostFtdcOlBranch = '2'

thostFtdcPidFutureProtocal :: Char
thostFtdcPidFutureProtocal = '0'

thostFtdcPidICBCProtocal :: Char
thostFtdcPidICBCProtocal = '1'

thostFtdcPidABCProtocal :: Char
thostFtdcPidABCProtocal = '2'

thostFtdcPidCBCProtocal :: Char
thostFtdcPidCBCProtocal = '3'

thostFtdcPidCCBProtocal :: Char
thostFtdcPidCCBProtocal = '4'

thostFtdcPidBOCOMProtocal :: Char
thostFtdcPidBOCOMProtocal = '5'

thostFtdcPidFBTPlateFormProtocal :: Char
thostFtdcPidFBTPlateFormProtocal = 'X'

thostFtdcCmShortConnect :: Char
thostFtdcCmShortConnect = '0'

thostFtdcCmLongConnect :: Char
thostFtdcCmLongConnect = '1'

thostFtdcSrmASync :: Char
thostFtdcSrmASync = '0'

thostFtdcSrmSync :: Char
thostFtdcSrmSync = '1'

thostFtdcBatBankBook :: Char
thostFtdcBatBankBook = '1'

thostFtdcBatSavingCard :: Char
thostFtdcBatSavingCard = '2'

thostFtdcBatCreditCard :: Char
thostFtdcBatCreditCard = '3'

thostFtdcFatBankBook :: Char
thostFtdcFatBankBook = '1'

thostFtdcFatSavingCard :: Char
thostFtdcFatSavingCard = '2'

thostFtdcFatCreditCard :: Char
thostFtdcFatCreditCard = '3'

thostFtdcOsReady :: Char
thostFtdcOsReady = '0'

thostFtdcOsCheckIn :: Char
thostFtdcOsCheckIn = '1'

thostFtdcOsCheckOut :: Char
thostFtdcOsCheckOut = '2'

thostFtdcOsCheckFileArrived :: Char
thostFtdcOsCheckFileArrived = '3'

thostFtdcOsCheckDetail :: Char
thostFtdcOsCheckDetail = '4'

thostFtdcOsDayEndClean :: Char
thostFtdcOsDayEndClean = '5'

thostFtdcOsInvalid :: Char
thostFtdcOsInvalid = '9'

thostFtdcCcbfmByAmount :: Char
thostFtdcCcbfmByAmount = '1'

thostFtdcCcbfmByMonth :: Char
thostFtdcCcbfmByMonth = '2'

thostFtdcCapitClient :: Char
thostFtdcCapitClient = '1'

thostFtdcCapitServer :: Char
thostFtdcCapitServer = '2'

thostFtdcCapitUserApi :: Char
thostFtdcCapitUserApi = '3'

thostFtdcLsConnected :: Char
thostFtdcLsConnected = '1'

thostFtdcLsDisconnected :: Char
thostFtdcLsDisconnected = '2'

thostFtdcBpwdfNoCheck :: Char
thostFtdcBpwdfNoCheck = '0'

thostFtdcBpwdfBlankCheck :: Char
thostFtdcBpwdfBlankCheck = '1'

thostFtdcBpwdfEncryptCheck :: Char
thostFtdcBpwdfEncryptCheck = '2'

thostFtdcSatAccountID :: Char
thostFtdcSatAccountID = '1'

thostFtdcSatCardID :: Char
thostFtdcSatCardID = '2'

thostFtdcSatSHStockholderID :: Char
thostFtdcSatSHStockholderID = '3'

thostFtdcSatSZStockholderID :: Char
thostFtdcSatSZStockholderID = '4'

thostFtdcTrfsNormal :: Char
thostFtdcTrfsNormal = '0'

thostFtdcTrfsRepealed :: Char
thostFtdcTrfsRepealed = '1'

thostFtdcSptypeBroker :: Char
thostFtdcSptypeBroker = '0'

thostFtdcSptypeBank :: Char
thostFtdcSptypeBank = '1'

thostFtdcReqrspRequest :: Char
thostFtdcReqrspRequest = '0'

thostFtdcReqrspResponse :: Char
thostFtdcReqrspResponse = '1'

thostFtdcFbtuetSignIn :: Char
thostFtdcFbtuetSignIn = '0'

thostFtdcFbtuetFromBankToFuture :: Char
thostFtdcFbtuetFromBankToFuture = '1'

thostFtdcFbtuetFromFutureToBank :: Char
thostFtdcFbtuetFromFutureToBank = '2'

thostFtdcFbtuetOpenAccount :: Char
thostFtdcFbtuetOpenAccount = '3'

thostFtdcFbtuetCancelAccount :: Char
thostFtdcFbtuetCancelAccount = '4'

thostFtdcFbtuetChangeAccount :: Char
thostFtdcFbtuetChangeAccount = '5'

thostFtdcFbtuetRepealFromBankToFuture :: Char
thostFtdcFbtuetRepealFromBankToFuture = '6'

thostFtdcFbtuetRepealFromFutureToBank :: Char
thostFtdcFbtuetRepealFromFutureToBank = '7'

thostFtdcFbtuetQueryBankAccount :: Char
thostFtdcFbtuetQueryBankAccount = '8'

thostFtdcFbtuetQueryFutureAccount :: Char
thostFtdcFbtuetQueryFutureAccount = '9'

thostFtdcFbtuetSignOut :: Char
thostFtdcFbtuetSignOut = 'A'

thostFtdcFbtuetSyncKey :: Char
thostFtdcFbtuetSyncKey = 'B'

thostFtdcFbtuetOther :: Char
thostFtdcFbtuetOther = 'Z'

thostFtdcDbopInsert :: Char
thostFtdcDbopInsert = '0'

thostFtdcDbopUpdate :: Char
thostFtdcDbopUpdate = '1'

thostFtdcDbopDelete :: Char
thostFtdcDbopDelete = '2'

thostFtdcSynfYes :: Char
thostFtdcSynfYes = '0'

thostFtdcSynfNo :: Char
thostFtdcSynfNo = '1'

thostFtdcSyntOneOffSync :: Char
thostFtdcSyntOneOffSync = '0'

thostFtdcSyntTimerSync :: Char
thostFtdcSyntTimerSync = '1'

thostFtdcSyntTimerFullSync :: Char
thostFtdcSyntTimerFullSync = '2'

thostFtdcFbedirSettlement :: Char
thostFtdcFbedirSettlement = '0'

thostFtdcFbedirSale :: Char
thostFtdcFbedirSale = '1'

thostFtdcFberesSuccess :: Char
thostFtdcFberesSuccess = '0'

thostFtdcFberesInsufficientBalance :: Char
thostFtdcFberesInsufficientBalance = '1'

thostFtdcFberesUnknownTrading :: Char
thostFtdcFberesUnknownTrading = '8'

thostFtdcFberesFail :: Char
thostFtdcFberesFail = 'x'

thostFtdcFbeesNormal :: Char
thostFtdcFbeesNormal = '0'

thostFtdcFbeesReExchange :: Char
thostFtdcFbeesReExchange = '1'

thostFtdcFbefgDataPackage :: Char
thostFtdcFbefgDataPackage = '0'

thostFtdcFbefgFile :: Char
thostFtdcFbefgFile = '1'

thostFtdcFbeatNotTrade :: Char
thostFtdcFbeatNotTrade = '0'

thostFtdcFbeatTrade :: Char
thostFtdcFbeatTrade = '1'

thostFtdcFbeuetSignIn :: Char
thostFtdcFbeuetSignIn = '0'

thostFtdcFbeuetExchange :: Char
thostFtdcFbeuetExchange = '1'

thostFtdcFbeuetReExchange :: Char
thostFtdcFbeuetReExchange = '2'

thostFtdcFbeuetQueryBankAccount :: Char
thostFtdcFbeuetQueryBankAccount = '3'

thostFtdcFbeuetQueryExchDetial :: Char
thostFtdcFbeuetQueryExchDetial = '4'

thostFtdcFbeuetQueryExchSummary :: Char
thostFtdcFbeuetQueryExchSummary = '5'

thostFtdcFbeuetQueryExchRate :: Char
thostFtdcFbeuetQueryExchRate = '6'

thostFtdcFbeuetCheckBankAccount :: Char
thostFtdcFbeuetCheckBankAccount = '7'

thostFtdcFbeuetSignOut :: Char
thostFtdcFbeuetSignOut = '8'

thostFtdcFbeuetOther :: Char
thostFtdcFbeuetOther = 'Z'

thostFtdcFberfUnProcessed :: Char
thostFtdcFberfUnProcessed = '0'

thostFtdcFberfWaitSend :: Char
thostFtdcFberfWaitSend = '1'

thostFtdcFberfSendSuccess :: Char
thostFtdcFberfSendSuccess = '2'

thostFtdcFberfSendFailed :: Char
thostFtdcFberfSendFailed = '3'

thostFtdcFberfWaitReSend :: Char
thostFtdcFberfWaitReSend = '4'

thostFtdcNcNoerror :: Char
thostFtdcNcNoerror = '0'

thostFtdcNcWarn :: Char
thostFtdcNcWarn = '1'

thostFtdcNcCall :: Char
thostFtdcNcCall = '2'

thostFtdcNcForce :: Char
thostFtdcNcForce = '3'

thostFtdcNcChuancang :: Char
thostFtdcNcChuancang = '4'

thostFtdcNcException :: Char
thostFtdcNcException = '5'

thostFtdcFctManual :: Char
thostFtdcFctManual = '0'

thostFtdcFctSingle :: Char
thostFtdcFctSingle = '1'

thostFtdcFctGroup :: Char
thostFtdcFctGroup = '2'

thostFtdcRnmSystem :: Char
thostFtdcRnmSystem = '0'

thostFtdcRnmSms :: Char
thostFtdcRnmSms = '1'

thostFtdcRnmEMail :: Char
thostFtdcRnmEMail = '2'

thostFtdcRnmManual :: Char
thostFtdcRnmManual = '3'

thostFtdcRnsNotGen :: Char
thostFtdcRnsNotGen = '0'

thostFtdcRnsGenerated :: Char
thostFtdcRnsGenerated = '1'

thostFtdcRnsSendError :: Char
thostFtdcRnsSendError = '2'

thostFtdcRnsSendOk :: Char
thostFtdcRnsSendOk = '3'

thostFtdcRnsReceived :: Char
thostFtdcRnsReceived = '4'

thostFtdcRnsConfirmed :: Char
thostFtdcRnsConfirmed = '5'

thostFtdcRueExportData :: Char
thostFtdcRueExportData = '0'

thostFtdcCostLastPriceAsc :: Char
thostFtdcCostLastPriceAsc = '0'

thostFtdcCostLastPriceDesc :: Char
thostFtdcCostLastPriceDesc = '1'

thostFtdcCostAskPriceAsc :: Char
thostFtdcCostAskPriceAsc = '2'

thostFtdcCostAskPriceDesc :: Char
thostFtdcCostAskPriceDesc = '3'

thostFtdcCostBidPriceAsc :: Char
thostFtdcCostBidPriceAsc = '4'

thostFtdcCostBidPriceDesc :: Char
thostFtdcCostBidPriceDesc = '5'

thostFtdcUoastNoSend :: Char
thostFtdcUoastNoSend = '0'

thostFtdcUoastSended :: Char
thostFtdcUoastSended = '1'

thostFtdcUoastGenerated :: Char
thostFtdcUoastGenerated = '2'

thostFtdcUoastSendFail :: Char
thostFtdcUoastSendFail = '3'

thostFtdcUoastSuccess :: Char
thostFtdcUoastSuccess = '4'

thostFtdcUoastFail :: Char
thostFtdcUoastFail = '5'

thostFtdcUoastCancel :: Char
thostFtdcUoastCancel = '6'

thostFtdcUoacsNoApply :: Char
thostFtdcUoacsNoApply = '1'

thostFtdcUoacsSubmited :: Char
thostFtdcUoacsSubmited = '2'

thostFtdcUoacsSended :: Char
thostFtdcUoacsSended = '3'

thostFtdcUoacsSuccess :: Char
thostFtdcUoacsSuccess = '4'

thostFtdcUoacsRefuse :: Char
thostFtdcUoacsRefuse = '5'

thostFtdcUoacsCancel :: Char
thostFtdcUoacsCancel = '6'

thostFtdcQtRadio :: Char
thostFtdcQtRadio = '1'

thostFtdcQtOption :: Char
thostFtdcQtOption = '2'

thostFtdcQtBlank :: Char
thostFtdcQtBlank = '3'

thostFtdcBtRequest :: Char
thostFtdcBtRequest = '1'

thostFtdcBtResponse :: Char
thostFtdcBtResponse = '2'

thostFtdcBtNotice :: Char
thostFtdcBtNotice = '3'

thostFtdcCrcSuccess :: Char
thostFtdcCrcSuccess = '0'

thostFtdcCrcWorking :: Char
thostFtdcCrcWorking = '1'

thostFtdcCrcInfoFail :: Char
thostFtdcCrcInfoFail = '2'

thostFtdcCrcIDCardFail :: Char
thostFtdcCrcIDCardFail = '3'

thostFtdcCrcOtherFail :: Char
thostFtdcCrcOtherFail = '4'

thostFtdcCfMMCCTAll :: Char
thostFtdcCfMMCCTAll = '0'

thostFtdcCfMMCCTPerson :: Char
thostFtdcCfMMCCTPerson = '1'

thostFtdcCfMMCCTCompany :: Char
thostFtdcCfMMCCTCompany = '2'

thostFtdcCfMMCCTOther :: Char
thostFtdcCfMMCCTOther = '3'

thostFtdcCfMMCCTSpecialOrgan :: Char
thostFtdcCfMMCCTSpecialOrgan = '4'

thostFtdcCfMMCCTAsset :: Char
thostFtdcCfMMCCTAsset = '5'

thostFtdcEidtShfe :: Char
thostFtdcEidtShfe = 'S'

thostFtdcEidtCzce :: Char
thostFtdcEidtCzce = 'Z'

thostFtdcEidtDce :: Char
thostFtdcEidtDce = 'D'

thostFtdcEidtCffex :: Char
thostFtdcEidtCffex = 'J'

thostFtdcEidtIne :: Char
thostFtdcEidtIne = 'N'

thostFtdcEidtSse :: Char
thostFtdcEidtSse = 'A'

thostFtdcEidtSzse :: Char
thostFtdcEidtSzse = 'E'

thostFtdcEcidtHedge :: Char
thostFtdcEcidtHedge = '1'

thostFtdcEcidtArbitrage :: Char
thostFtdcEcidtArbitrage = '2'

thostFtdcEcidtSpeculation :: Char
thostFtdcEcidtSpeculation = '3'

thostFtdcUfNoUpdate :: Char
thostFtdcUfNoUpdate = '0'

thostFtdcUfSuccess :: Char
thostFtdcUfSuccess = '1'

thostFtdcUfFail :: Char
thostFtdcUfFail = '2'

thostFtdcUfTCSuccess :: Char
thostFtdcUfTCSuccess = '3'

thostFtdcUfTCFail :: Char
thostFtdcUfTCFail = '4'

thostFtdcUfCancel :: Char
thostFtdcUfCancel = '5'

thostFtdcAoidOpenInvestor :: Char
thostFtdcAoidOpenInvestor = '1'

thostFtdcAoidModifyIDCard :: Char
thostFtdcAoidModifyIDCard = '2'

thostFtdcAoidModifyNoIDCard :: Char
thostFtdcAoidModifyNoIDCard = '3'

thostFtdcAoidApplyTradingCode :: Char
thostFtdcAoidApplyTradingCode = '4'

thostFtdcAoidCancelTradingCode :: Char
thostFtdcAoidCancelTradingCode = '5'

thostFtdcAoidCancelInvestor :: Char
thostFtdcAoidCancelInvestor = '6'

thostFtdcAoidFreezeAccount :: Char
thostFtdcAoidFreezeAccount = '8'

thostFtdcAoidActiveFreezeAccount :: Char
thostFtdcAoidActiveFreezeAccount = '9'

thostFtdcAsidNoComplete :: Char
thostFtdcAsidNoComplete = '1'

thostFtdcAsidSubmited :: Char
thostFtdcAsidSubmited = '2'

thostFtdcAsidChecked :: Char
thostFtdcAsidChecked = '3'

thostFtdcAsidRefused :: Char
thostFtdcAsidRefused = '4'

thostFtdcAsidDeleted :: Char
thostFtdcAsidDeleted = '5'

thostFtdcUoasmByAPI :: Char
thostFtdcUoasmByAPI = '1'

thostFtdcUoasmByFile :: Char
thostFtdcUoasmByFile = '2'

thostFtdcEvMAdd :: Char
thostFtdcEvMAdd = '1'

thostFtdcEvMUpdate :: Char
thostFtdcEvMUpdate = '2'

thostFtdcEvMDelete :: Char
thostFtdcEvMDelete = '3'

thostFtdcEvMCheck :: Char
thostFtdcEvMCheck = '4'

thostFtdcEvMCopy :: Char
thostFtdcEvMCopy = '5'

thostFtdcEvMCancel :: Char
thostFtdcEvMCancel = '6'

thostFtdcEvMReverse :: Char
thostFtdcEvMReverse = '7'

thostFtdcUoaaAsr :: Char
thostFtdcUoaaAsr = '1'

thostFtdcUoaaAsnr :: Char
thostFtdcUoaaAsnr = '2'

thostFtdcUoaaNsar :: Char
thostFtdcUoaaNsar = '3'

thostFtdcUoaaNsr :: Char
thostFtdcUoaaNsr = '4'

thostFtdcEvMInvestorGroupFlow :: Char
thostFtdcEvMInvestorGroupFlow = '1'

thostFtdcEvMInvestorRate :: Char
thostFtdcEvMInvestorRate = '2'

thostFtdcEvMInvestorCommRateModel :: Char
thostFtdcEvMInvestorCommRateModel = '3'

thostFtdcClZero :: Char
thostFtdcClZero = '0'

thostFtdcClOne :: Char
thostFtdcClOne = '1'

thostFtdcClTwo :: Char
thostFtdcClTwo = '2'

thostFtdcChsInit :: Char
thostFtdcChsInit = '0'

thostFtdcChsChecking :: Char
thostFtdcChsChecking = '1'

thostFtdcChsChecked :: Char
thostFtdcChsChecked = '2'

thostFtdcChsRefuse :: Char
thostFtdcChsRefuse = '3'

thostFtdcChsCancel :: Char
thostFtdcChsCancel = '4'

thostFtdcChuUnused :: Char
thostFtdcChuUnused = '0'

thostFtdcChuUsed :: Char
thostFtdcChuUsed = '1'

thostFtdcChuFail :: Char
thostFtdcChuFail = '2'

thostFtdcBaoByAccProperty :: Char
thostFtdcBaoByAccProperty = '0'

thostFtdcBaoByFBTransfer :: Char
thostFtdcBaoByFBTransfer = '1'

thostFtdcMbtsByInstrument :: Char
thostFtdcMbtsByInstrument = '0'

thostFtdcMbtsByDayInsPrc :: Char
thostFtdcMbtsByDayInsPrc = '1'

thostFtdcMbtsByDayIns :: Char
thostFtdcMbtsByDayIns = '2'

thostFtdcOtpNone :: Char
thostFtdcOtpNone = '0'

thostFtdcOtpTotp :: Char
thostFtdcOtpTotp = '1'

thostFtdcOtpsUnused :: Char
thostFtdcOtpsUnused = '0'

thostFtdcOtpsUsed :: Char
thostFtdcOtpsUsed = '1'

thostFtdcOtpsDisuse :: Char
thostFtdcOtpsDisuse = '2'

thostFtdcButInvestor :: Char
thostFtdcButInvestor = '1'

thostFtdcButBrokerUser :: Char
thostFtdcButBrokerUser = '2'

thostFtdcFuttCommodity :: Char
thostFtdcFuttCommodity = '1'

thostFtdcFuttFinancial :: Char
thostFtdcFuttFinancial = '2'

thostFtdcFetRestriction :: Char
thostFtdcFetRestriction = '0'

thostFtdcFetTodayRestriction :: Char
thostFtdcFetTodayRestriction = '1'

thostFtdcFetTransfer :: Char
thostFtdcFetTransfer = '2'

thostFtdcFetCredit :: Char
thostFtdcFetCredit = '3'

thostFtdcFetInvestorWithdrawAlm :: Char
thostFtdcFetInvestorWithdrawAlm = '4'

thostFtdcFetBankRestriction :: Char
thostFtdcFetBankRestriction = '5'

thostFtdcFetAccountregister :: Char
thostFtdcFetAccountregister = '6'

thostFtdcFetExchangeFundIO :: Char
thostFtdcFetExchangeFundIO = '7'

thostFtdcFetInvestorFundIO :: Char
thostFtdcFetInvestorFundIO = '8'

thostFtdcAstFBTransfer :: Char
thostFtdcAstFBTransfer = '0'

thostFtdcAstManualEntry :: Char
thostFtdcAstManualEntry = '1'

thostFtdcCstUnifyAccount :: Char
thostFtdcCstUnifyAccount = '0'

thostFtdcCstManualEntry :: Char
thostFtdcCstManualEntry = '1'

thostFtdcUrAll :: Char
thostFtdcUrAll = '0'

thostFtdcUrSingle :: Char
thostFtdcUrSingle = '1'

thostFtdcBgInvestor :: Char
thostFtdcBgInvestor = '2'

thostFtdcBgGroup :: Char
thostFtdcBgGroup = '1'

thostFtdcTssmInstrument :: Char
thostFtdcTssmInstrument = '1'

thostFtdcTssmProduct :: Char
thostFtdcTssmProduct = '2'

thostFtdcTssmExchange :: Char
thostFtdcTssmExchange = '3'

thostFtdcEsmRelative :: Char
thostFtdcEsmRelative = '1'

thostFtdcEsmTypical :: Char
thostFtdcEsmTypical = '2'

thostFtdcRirAll :: Char
thostFtdcRirAll = '1'

thostFtdcRirModel :: Char
thostFtdcRirModel = '2'

thostFtdcRirSingle :: Char
thostFtdcRirSingle = '3'

thostFtdcSdsInitialize :: Char
thostFtdcSdsInitialize = '0'

thostFtdcSdsSettlementing :: Char
thostFtdcSdsSettlementing = '1'

thostFtdcSdsSettlemented :: Char
thostFtdcSdsSettlemented = '2'

thostFtdcTsrcNormal :: Char
thostFtdcTsrcNormal = '0'

thostFtdcTsrcQuery :: Char
thostFtdcTsrcQuery = '1'

thostFtdcFsmProduct :: Char
thostFtdcFsmProduct = '1'

thostFtdcFsmExchange :: Char
thostFtdcFsmExchange = '2'

thostFtdcFsmAll :: Char
thostFtdcFsmAll = '3'

thostFtdcBirProperty :: Char
thostFtdcBirProperty = '1'

thostFtdcBirAll :: Char
thostFtdcBirAll = '2'

thostFtdcPirAll :: Char
thostFtdcPirAll = '1'

thostFtdcPirProperty :: Char
thostFtdcPirProperty = '2'

thostFtdcPirSingle :: Char
thostFtdcPirSingle = '3'

thostFtdcFisNoCreate :: Char
thostFtdcFisNoCreate = '0'

thostFtdcFisCreated :: Char
thostFtdcFisCreated = '1'

thostFtdcFisFailed :: Char
thostFtdcFisFailed = '2'

thostFtdcFgsFileTransmit :: Char
thostFtdcFgsFileTransmit = '0'

thostFtdcFgsFileGen :: Char
thostFtdcFgsFileGen = '1'

thostFtdcSoMAdd :: Char
thostFtdcSoMAdd = '1'

thostFtdcSoMUpdate :: Char
thostFtdcSoMUpdate = '2'

thostFtdcSoMDelete :: Char
thostFtdcSoMDelete = '3'

thostFtdcSoMCopy :: Char
thostFtdcSoMCopy = '4'

thostFtdcSoMAcTive :: Char
thostFtdcSoMAcTive = '5'

thostFtdcSoMCanCel :: Char
thostFtdcSoMCanCel = '6'

thostFtdcSoMReSet :: Char
thostFtdcSoMReSet = '7'

thostFtdcSoTUpdatePassword :: Char
thostFtdcSoTUpdatePassword = '0'

thostFtdcSoTUserDepartment :: Char
thostFtdcSoTUserDepartment = '1'

thostFtdcSoTRoleManager :: Char
thostFtdcSoTRoleManager = '2'

thostFtdcSoTRoleFunction :: Char
thostFtdcSoTRoleFunction = '3'

thostFtdcSoTBaseParam :: Char
thostFtdcSoTBaseParam = '4'

thostFtdcSoTSetUserID :: Char
thostFtdcSoTSetUserID = '5'

thostFtdcSoTSetUserRole :: Char
thostFtdcSoTSetUserRole = '6'

thostFtdcSoTUserIpRestriction :: Char
thostFtdcSoTUserIpRestriction = '7'

thostFtdcSoTDepartmentManager :: Char
thostFtdcSoTDepartmentManager = '8'

thostFtdcSoTDepartmentCopy :: Char
thostFtdcSoTDepartmentCopy = '9'

thostFtdcSoTTradingcode :: Char
thostFtdcSoTTradingcode = 'A'

thostFtdcSoTInvestorStatus :: Char
thostFtdcSoTInvestorStatus = 'B'

thostFtdcSoTInvestorAuthority :: Char
thostFtdcSoTInvestorAuthority = 'C'

thostFtdcSoTPropertySet :: Char
thostFtdcSoTPropertySet = 'D'

thostFtdcSoTReSetInvestorPasswd :: Char
thostFtdcSoTReSetInvestorPasswd = 'E'

thostFtdcSoTInvestorPersonalityInfo :: Char
thostFtdcSoTInvestorPersonalityInfo = 'F'

thostFtdcCsrcqCurrent :: Char
thostFtdcCsrcqCurrent = '0'

thostFtdcCsrcqHistory :: Char
thostFtdcCsrcqHistory = '1'

thostFtdcFrsNormal :: Char
thostFtdcFrsNormal = '1'

thostFtdcFrsFreeze :: Char
thostFtdcFrsFreeze = '0'

thostFtdcStstStandard :: Char
thostFtdcStstStandard = '0'

thostFtdcStstNonStandard :: Char
thostFtdcStstNonStandard = '1'

thostFtdcRptFreeze :: Char
thostFtdcRptFreeze = '1'

thostFtdcRptFreezeActive :: Char
thostFtdcRptFreezeActive = '2'

thostFtdcRptOpenLimit :: Char
thostFtdcRptOpenLimit = '3'

thostFtdcRptRelieveOpenLimit :: Char
thostFtdcRptRelieveOpenLimit = '4'

thostFtdcAmldsNormal :: Char
thostFtdcAmldsNormal = '0'

thostFtdcAmldsDeleted :: Char
thostFtdcAmldsDeleted = '1'

thostFtdcAmlchsInit :: Char
thostFtdcAmlchsInit = '0'

thostFtdcAmlchsChecking :: Char
thostFtdcAmlchsChecking = '1'

thostFtdcAmlchsChecked :: Char
thostFtdcAmlchsChecked = '2'

thostFtdcAmlchsRefuseReport :: Char
thostFtdcAmlchsRefuseReport = '3'

thostFtdcAmldtDrawDay :: Char
thostFtdcAmldtDrawDay = '0'

thostFtdcAmldtTouchDay :: Char
thostFtdcAmldtTouchDay = '1'

thostFtdcAmlclCheckLevel0 :: Char
thostFtdcAmlclCheckLevel0 = '0'

thostFtdcAmlclCheckLevel1 :: Char
thostFtdcAmlclCheckLevel1 = '1'

thostFtdcAmlclCheckLevel2 :: Char
thostFtdcAmlclCheckLevel2 = '2'

thostFtdcAmlclCheckLevel3 :: Char
thostFtdcAmlclCheckLevel3 = '3'

thostFtdcEftCsv :: Char
thostFtdcEftCsv = '0'

thostFtdcEftExcel :: Char
thostFtdcEftExcel = '1'

thostFtdcEftDbf :: Char
thostFtdcEftDbf = '2'

thostFtdcSmtBefore :: Char
thostFtdcSmtBefore = '1'

thostFtdcSmtSettlement :: Char
thostFtdcSmtSettlement = '2'

thostFtdcSmtAfter :: Char
thostFtdcSmtAfter = '3'

thostFtdcSmtSettlemented :: Char
thostFtdcSmtSettlemented = '4'

thostFtdcSmlMust :: Char
thostFtdcSmlMust = '1'

thostFtdcSmlAlarm :: Char
thostFtdcSmlAlarm = '2'

thostFtdcSmlPrompt :: Char
thostFtdcSmlPrompt = '3'

thostFtdcSmlIgnore :: Char
thostFtdcSmlIgnore = '4'

thostFtdcSmgExhcange :: Char
thostFtdcSmgExhcange = '1'

thostFtdcSmgAsp :: Char
thostFtdcSmgAsp = '2'

thostFtdcSmgCsrc :: Char
thostFtdcSmgCsrc = '3'

thostFtdcLutRepeatable :: Char
thostFtdcLutRepeatable = '1'

thostFtdcLutUnrepeatable :: Char
thostFtdcLutUnrepeatable = '2'

thostFtdcDarSettle :: Char
thostFtdcDarSettle = '1'

thostFtdcDarExchange :: Char
thostFtdcDarExchange = '2'

thostFtdcDarCsrc :: Char
thostFtdcDarCsrc = '3'

thostFtdcMgtExchMarginRate :: Char
thostFtdcMgtExchMarginRate = '0'

thostFtdcMgtInstrMarginRate :: Char
thostFtdcMgtInstrMarginRate = '1'

thostFtdcMgtInstrMarginRateTrade :: Char
thostFtdcMgtInstrMarginRateTrade = '2'

thostFtdcActIntraday :: Char
thostFtdcActIntraday = '1'

thostFtdcActLong :: Char
thostFtdcActLong = '2'

thostFtdcMrtExchange :: Char
thostFtdcMrtExchange = '1'

thostFtdcMrtInvestor :: Char
thostFtdcMrtInvestor = '2'

thostFtdcMrtInvestorTrade :: Char
thostFtdcMrtInvestorTrade = '3'

thostFtdcBusUnBak :: Char
thostFtdcBusUnBak = '0'

thostFtdcBusBakUp :: Char
thostFtdcBusBakUp = '1'

thostFtdcBusBakUped :: Char
thostFtdcBusBakUped = '2'

thostFtdcBusBakFail :: Char
thostFtdcBusBakFail = '3'

thostFtdcSisUnInitialize :: Char
thostFtdcSisUnInitialize = '0'

thostFtdcSisInitialize :: Char
thostFtdcSisInitialize = '1'

thostFtdcSisInitialized :: Char
thostFtdcSisInitialized = '2'

thostFtdcSrsNoCreate :: Char
thostFtdcSrsNoCreate = '0'

thostFtdcSrsCreate :: Char
thostFtdcSrsCreate = '1'

thostFtdcSrsCreated :: Char
thostFtdcSrsCreated = '2'

thostFtdcSrsCreateFail :: Char
thostFtdcSrsCreateFail = '3'

thostFtdcSssUnSaveData :: Char
thostFtdcSssUnSaveData = '0'

thostFtdcSssSaveDatad :: Char
thostFtdcSssSaveDatad = '1'

thostFtdcSasUnArchived :: Char
thostFtdcSasUnArchived = '0'

thostFtdcSasArchiving :: Char
thostFtdcSasArchiving = '1'

thostFtdcSasArchived :: Char
thostFtdcSasArchived = '2'

thostFtdcSasArchiveFail :: Char
thostFtdcSasArchiveFail = '3'

thostFtdcCtptUnkown :: Char
thostFtdcCtptUnkown = '0'

thostFtdcCtptMainCenter :: Char
thostFtdcCtptMainCenter = '1'

thostFtdcCtptBackUp :: Char
thostFtdcCtptBackUp = '2'

thostFtdcCdtNormal :: Char
thostFtdcCdtNormal = '0'

thostFtdcCdtSpecFirst :: Char
thostFtdcCdtSpecFirst = '1'

thostFtdcMfurNone :: Char
thostFtdcMfurNone = '0'

thostFtdcMfurMargin :: Char
thostFtdcMfurMargin = '1'

thostFtdcMfurAll :: Char
thostFtdcMfurAll = '2'

thostFtdcSptCzceHedge :: Char
thostFtdcSptCzceHedge = '1'

thostFtdcSptIneForeignCurrency :: Char
thostFtdcSptIneForeignCurrency = '2'

thostFtdcSptDceOpenClose :: Char
thostFtdcSptDceOpenClose = '3'

thostFtdcFmtMortgage :: Char
thostFtdcFmtMortgage = '1'

thostFtdcFmtRedemption :: Char
thostFtdcFmtRedemption = '2'

thostFtdcAspiBaseMargin :: Char
thostFtdcAspiBaseMargin = '1'

thostFtdcAspiLowestInterest :: Char
thostFtdcAspiLowestInterest = '2'

thostFtdcFmdIn :: Char
thostFtdcFmdIn = '1'

thostFtdcFmdOut :: Char
thostFtdcFmdOut = '2'

thostFtdcBtProfit :: Char
thostFtdcBtProfit = '0'

thostFtdcBtLoss :: Char
thostFtdcBtLoss = '1'

thostFtdcBtOther :: Char
thostFtdcBtOther = 'Z'

thostFtdcSstManual :: Char
thostFtdcSstManual = '0'

thostFtdcSstAutomatic :: Char
thostFtdcSstAutomatic = '1'

thostFtdcCedSettlement :: Char
thostFtdcCedSettlement = '0'

thostFtdcCedSale :: Char
thostFtdcCedSale = '1'

thostFtdcCssEntry :: Char
thostFtdcCssEntry = '1'

thostFtdcCssApprove :: Char
thostFtdcCssApprove = '2'

thostFtdcCssRefuse :: Char
thostFtdcCssRefuse = '3'

thostFtdcCssRevoke :: Char
thostFtdcCssRevoke = '4'

thostFtdcCssSend :: Char
thostFtdcCssSend = '5'

thostFtdcCssSuccess :: Char
thostFtdcCssSuccess = '6'

thostFtdcCssFailure :: Char
thostFtdcCssFailure = '7'

thostFtdcReqfNoSend :: Char
thostFtdcReqfNoSend = '0'

thostFtdcReqfSendSuccess :: Char
thostFtdcReqfSendSuccess = '1'

thostFtdcReqfSendFailed :: Char
thostFtdcReqfSendFailed = '2'

thostFtdcReqfWaitReSend :: Char
thostFtdcReqfWaitReSend = '3'

thostFtdcResfSuccess :: Char
thostFtdcResfSuccess = '0'

thostFtdcResfInsuffiCient :: Char
thostFtdcResfInsuffiCient = '1'

thostFtdcResfUnKnown :: Char
thostFtdcResfUnKnown = '8'

thostFtdcExsBefore :: Char
thostFtdcExsBefore = '0'

thostFtdcExsAfter :: Char
thostFtdcExsAfter = '1'

thostFtdcCrDomestic :: Char
thostFtdcCrDomestic = '1'

thostFtdcCrGmt :: Char
thostFtdcCrGmt = '2'

thostFtdcCrForeign :: Char
thostFtdcCrForeign = '3'

thostFtdcHbNo :: Char
thostFtdcHbNo = '0'

thostFtdcHbYes :: Char
thostFtdcHbYes = '1'

thostFtdcSmNormal :: Char
thostFtdcSmNormal = '1'

thostFtdcSmEmerge :: Char
thostFtdcSmEmerge = '2'

thostFtdcSmRestore :: Char
thostFtdcSmRestore = '3'

thostFtdcTptFull :: Char
thostFtdcTptFull = '1'

thostFtdcTptIncrement :: Char
thostFtdcTptIncrement = '2'

thostFtdcTptBackUp :: Char
thostFtdcTptBackUp = '3'

thostFtdcLmTrade :: Char
thostFtdcLmTrade = '0'

thostFtdcLmTransfer :: Char
thostFtdcLmTransfer = '1'

thostFtdcCptInstrument :: Char
thostFtdcCptInstrument = '1'

thostFtdcCptMargin :: Char
thostFtdcCptMargin = '2'

thostFtdcHtYes :: Char
thostFtdcHtYes = '1'

thostFtdcHtNo :: Char
thostFtdcHtNo = '0'

thostFtdcAmtBank :: Char
thostFtdcAmtBank = '1'

thostFtdcAmtSecurities :: Char
thostFtdcAmtSecurities = '2'

thostFtdcAmtFund :: Char
thostFtdcAmtFund = '3'

thostFtdcAmtInsurance :: Char
thostFtdcAmtInsurance = '4'

thostFtdcAmtTrust :: Char
thostFtdcAmtTrust = '5'

thostFtdcAmtOther :: Char
thostFtdcAmtOther = '9'

thostFtdcCfiotFundIO :: Char
thostFtdcCfiotFundIO = '0'

thostFtdcCfiotSwapCurrency :: Char
thostFtdcCfiotSwapCurrency = '1'

thostFtdcCatFutures :: Char
thostFtdcCatFutures = '1'

thostFtdcCatAssetmgrFuture :: Char
thostFtdcCatAssetmgrFuture = '2'

thostFtdcCatAssetmgrTrustee :: Char
thostFtdcCatAssetmgrTrustee = '3'

thostFtdcCatAssetmgrTransfer :: Char
thostFtdcCatAssetmgrTransfer = '4'

thostFtdcLtChinese :: Char
thostFtdcLtChinese = '1'

thostFtdcLtEnglish :: Char
thostFtdcLtEnglish = '2'

thostFtdcAmctPerson :: Char
thostFtdcAmctPerson = '1'

thostFtdcAmctOrgan :: Char
thostFtdcAmctOrgan = '2'

thostFtdcAmctSpecialOrgan :: Char
thostFtdcAmctSpecialOrgan = '4'

thostFtdcAsstFutures :: Char
thostFtdcAsstFutures = '3'

thostFtdcAsstSpecialOrgan :: Char
thostFtdcAsstSpecialOrgan = '4'

thostFtdcCitHasExch :: Char
thostFtdcCitHasExch = '0'

thostFtdcCitHasATP :: Char
thostFtdcCitHasATP = '1'

thostFtdcCitHasDiff :: Char
thostFtdcCitHasDiff = '2'

thostFtdcDtHandDeliv :: Char
thostFtdcDtHandDeliv = '1'

thostFtdcDtPersonDeliv :: Char
thostFtdcDtPersonDeliv = '2'

thostFtdcMmsaNo :: Char
thostFtdcMmsaNo = '0'

thostFtdcMmsaYes :: Char
thostFtdcMmsaYes = '1'

thostFtdcCactPerson :: Char
thostFtdcCactPerson = '0'

thostFtdcCactCompany :: Char
thostFtdcCactCompany = '1'

thostFtdcCactOther :: Char
thostFtdcCactOther = '2'

thostFtdcUoaatFutures :: Char
thostFtdcUoaatFutures = '1'

thostFtdcUoaatSpecialOrgan :: Char
thostFtdcUoaatSpecialOrgan = '2'

thostFtdcDenBuy :: Char
thostFtdcDenBuy = '0'

thostFtdcDenSell :: Char
thostFtdcDenSell = '1'

thostFtdcOfenOpen :: Char
thostFtdcOfenOpen = '0'

thostFtdcOfenClose :: Char
thostFtdcOfenClose = '1'

thostFtdcOfenForceClose :: Char
thostFtdcOfenForceClose = '2'

thostFtdcOfenCloseToday :: Char
thostFtdcOfenCloseToday = '3'

thostFtdcOfenCloseYesterday :: Char
thostFtdcOfenCloseYesterday = '4'

thostFtdcOfenForceOff :: Char
thostFtdcOfenForceOff = '5'

thostFtdcOfenLocalForceClose :: Char
thostFtdcOfenLocalForceClose = '6'

thostFtdcHfenSpeculation :: Char
thostFtdcHfenSpeculation = '1'

thostFtdcHfenArbitrage :: Char
thostFtdcHfenArbitrage = '2'

thostFtdcHfenHedge :: Char
thostFtdcHfenHedge = '3'

thostFtdcFiotenFundIO :: Char
thostFtdcFiotenFundIO = '1'

thostFtdcFiotenTransfer :: Char
thostFtdcFiotenTransfer = '2'

thostFtdcFiotenSwapCurrency :: Char
thostFtdcFiotenSwapCurrency = '3'

thostFtdcFtenDeposite :: Char
thostFtdcFtenDeposite = '1'

thostFtdcFtenItemFund :: Char
thostFtdcFtenItemFund = '2'

thostFtdcFtenCompany :: Char
thostFtdcFtenCompany = '3'

thostFtdcFtenInnerTransfer :: Char
thostFtdcFtenInnerTransfer = '4'

thostFtdcFdenIn :: Char
thostFtdcFdenIn = '1'

thostFtdcFdenOut :: Char
thostFtdcFdenOut = '2'

thostFtdcFmdenIn :: Char
thostFtdcFmdenIn = '1'

thostFtdcFmdenOut :: Char
thostFtdcFmdenOut = '2'

thostFtdcCpCallOptions :: Char
thostFtdcCpCallOptions = '1'

thostFtdcCpPutOptions :: Char
thostFtdcCpPutOptions = '2'

thostFtdcStmContinental :: Char
thostFtdcStmContinental = '0'

thostFtdcStmAmerican :: Char
thostFtdcStmAmerican = '1'

thostFtdcStmBermuda :: Char
thostFtdcStmBermuda = '2'

thostFtdcSttHedge :: Char
thostFtdcSttHedge = '0'

thostFtdcSttMatch :: Char
thostFtdcSttMatch = '1'

thostFtdcApptNotStrikeNum :: Char
thostFtdcApptNotStrikeNum = '4'

thostFtdcGudsGen :: Char
thostFtdcGudsGen = '0'

thostFtdcGudsHand :: Char
thostFtdcGudsHand = '1'

thostFtdcOerNoExec :: Char
thostFtdcOerNoExec = 'n'

thostFtdcOerCanceled :: Char
thostFtdcOerCanceled = 'c'

thostFtdcOerOk :: Char
thostFtdcOerOk = '0'

thostFtdcOerNoPosition :: Char
thostFtdcOerNoPosition = '1'

thostFtdcOerNoDeposit :: Char
thostFtdcOerNoDeposit = '2'

thostFtdcOerNoParticipant :: Char
thostFtdcOerNoParticipant = '3'

thostFtdcOerNoClient :: Char
thostFtdcOerNoClient = '4'

thostFtdcOerNoInstrument :: Char
thostFtdcOerNoInstrument = '6'

thostFtdcOerNoRight :: Char
thostFtdcOerNoRight = '7'

thostFtdcOerInvalidVolume :: Char
thostFtdcOerInvalidVolume = '8'

thostFtdcOerNoEnoughHistoryTrade :: Char
thostFtdcOerNoEnoughHistoryTrade = '9'

thostFtdcOerUnknown :: Char
thostFtdcOerUnknown = 'a'

thostFtdcCombtFuture :: Char
thostFtdcCombtFuture = '0'

thostFtdcCombtBul :: Char
thostFtdcCombtBul = '1'

thostFtdcCombtBer :: Char
thostFtdcCombtBer = '2'

thostFtdcCombtStd :: Char
thostFtdcCombtStd = '3'

thostFtdcCombtStg :: Char
thostFtdcCombtStg = '4'

thostFtdcCombtPrt :: Char
thostFtdcCombtPrt = '5'

thostFtdcCombtCld :: Char
thostFtdcCombtCld = '6'

thostFtdcOrptPreSettlementPrice :: Char
thostFtdcOrptPreSettlementPrice = '1'

thostFtdcOrptOpenPrice :: Char
thostFtdcOrptOpenPrice = '4'

thostFtdcBlagDefault :: Char
thostFtdcBlagDefault = '1'

thostFtdcBlagIncludeOptValLost :: Char
thostFtdcBlagIncludeOptValLost = '2'

thostFtdcActpExec :: Char
thostFtdcActpExec = '1'

thostFtdcActpAbandon :: Char
thostFtdcActpAbandon = '2'

thostFtdcFqstSubmitted :: Char
thostFtdcFqstSubmitted = 'a'

thostFtdcFqstAccepted :: Char
thostFtdcFqstAccepted = 'b'

thostFtdcFqstRejected :: Char
thostFtdcFqstRejected = 'c'

thostFtdcVmAbsolute :: Char
thostFtdcVmAbsolute = '0'

thostFtdcVmRatio :: Char
thostFtdcVmRatio = '1'

thostFtdcEopfReserve :: Char
thostFtdcEopfReserve = '0'

thostFtdcEopfUnReserve :: Char
thostFtdcEopfUnReserve = '1'

thostFtdcEocfAutoClose :: Char
thostFtdcEocfAutoClose = '0'

thostFtdcEocfNotToClose :: Char
thostFtdcEocfNotToClose = '1'

thostFtdcPteFutures :: Char
thostFtdcPteFutures = '1'

thostFtdcPteOptions :: Char
thostFtdcPteOptions = '2'

thostFtdcCufnCufnO :: Char
thostFtdcCufnCufnO = 'O'

thostFtdcCufnCufnT :: Char
thostFtdcCufnCufnT = 'T'

thostFtdcCufnCufnP :: Char
thostFtdcCufnCufnP = 'P'

thostFtdcCufnCufnN :: Char
thostFtdcCufnCufnN = 'N'

thostFtdcCufnCufnL :: Char
thostFtdcCufnCufnL = 'L'

thostFtdcCufnCufnF :: Char
thostFtdcCufnCufnF = 'F'

thostFtdcCufnCufnC :: Char
thostFtdcCufnCufnC = 'C'

thostFtdcCufnCufnM :: Char
thostFtdcCufnCufnM = 'M'

thostFtdcDufnDufnO :: Char
thostFtdcDufnDufnO = 'O'

thostFtdcDufnDufnT :: Char
thostFtdcDufnDufnT = 'T'

thostFtdcDufnDufnP :: Char
thostFtdcDufnDufnP = 'P'

thostFtdcDufnDufnF :: Char
thostFtdcDufnDufnF = 'F'

thostFtdcDufnDufnC :: Char
thostFtdcDufnDufnC = 'C'

thostFtdcDufnDufnD :: Char
thostFtdcDufnDufnD = 'D'

thostFtdcDufnDufnM :: Char
thostFtdcDufnDufnM = 'M'

thostFtdcDufnDufnS :: Char
thostFtdcDufnDufnS = 'S'

thostFtdcSufnSufnO :: Char
thostFtdcSufnSufnO = 'O'

thostFtdcSufnSufnT :: Char
thostFtdcSufnSufnT = 'T'

thostFtdcSufnSufnP :: Char
thostFtdcSufnSufnP = 'P'

thostFtdcSufnSufnF :: Char
thostFtdcSufnSufnF = 'F'

thostFtdcCfufnSufnT :: Char
thostFtdcCfufnSufnT = 'T'

thostFtdcCfufnSufnP :: Char
thostFtdcCfufnSufnP = 'P'

thostFtdcCfufnSufnF :: Char
thostFtdcCfufnSufnF = 'F'

thostFtdcCfufnSufnS :: Char
thostFtdcCfufnSufnS = 'S'

thostFtdcCmdrComb :: Char
thostFtdcCmdrComb = '0'

thostFtdcCmdrUnComb :: Char
thostFtdcCmdrUnComb = '1'

thostFtdcLcktLock :: Char
thostFtdcLcktLock = '1'

thostFtdcLcktUnlock :: Char
thostFtdcLcktUnlock = '2'

thostFtdcBztpFuture :: Char
thostFtdcBztpFuture = '1'

thostFtdcBztpStock :: Char
thostFtdcBztpStock = '2'

thostFtdcDstpRegister :: Char
thostFtdcDstpRegister = '1'

thostFtdcDstpCancel :: Char
thostFtdcDstpCancel = '2'

thostFtdcFrtpInit :: Char
thostFtdcFrtpInit = '1'

thostFtdcFrtpLock :: Char
thostFtdcFrtpLock = '2'

thostFtdcFrtpExec :: Char
thostFtdcFrtpExec = '3'

thostFtdcFrtpCheck :: Char
thostFtdcFrtpCheck = '4'

thostFtdcFrtpExecFreeze :: Char
thostFtdcFrtpExecFreeze = '5'

thostFtdcFztpFreeze :: Char
thostFtdcFztpFreeze = '1'

thostFtdcFztpUnfreeze :: Char
thostFtdcFztpUnfreeze = '2'

thostFtdcFztpForce :: Char
thostFtdcFztpForce = '3'

thostFtdcTstpUnknow :: Char
thostFtdcTstpUnknow = '0'

thostFtdcTstpFuture :: Char
thostFtdcTstpFuture = '1'

thostFtdcTstpIShare :: Char
thostFtdcTstpIShare = '2'

thostFtdcStptToBroker :: Char
thostFtdcStptToBroker = '1'

thostFtdcStptToInvestor :: Char
thostFtdcStptToInvestor = '2'

thostFtdcSdpsSubmitted :: Char
thostFtdcSdpsSubmitted = 'a'

thostFtdcSdpsAccepted :: Char
thostFtdcSdpsAccepted = 'b'

thostFtdcSdpsRejected :: Char
thostFtdcSdpsRejected = 'c'

thostFtdcSdpsCancelled :: Char
thostFtdcSdpsCancelled = 'd'

thostFtdcIstrLimit :: Char
thostFtdcIstrLimit = '1'

thostFtdcIstrLimitFok :: Char
thostFtdcIstrLimitFok = '2'

thostFtdcIstrMarketRemainLimit :: Char
thostFtdcIstrMarketRemainLimit = '3'

thostFtdcIstrMarketFak :: Char
thostFtdcIstrMarketFak = '4'

thostFtdcIstrMarketFok :: Char
thostFtdcIstrMarketFok = '5'

thostFtdcIstrLock :: Char
thostFtdcIstrLock = '6'

thostFtdcIstrUnlock :: Char
thostFtdcIstrUnlock = '7'

thostFtdcIvlvFirstLevel :: Char
thostFtdcIvlvFirstLevel = '1'

thostFtdcIvlvSecondLevel :: Char
thostFtdcIvlvSecondLevel = '2'

thostFtdcIvlvThirdLevel :: Char
thostFtdcIvlvThirdLevel = '3'

thostFtdcStovRealValue :: Char
thostFtdcStovRealValue = '1'

thostFtdcStovProfitValue :: Char
thostFtdcStovProfitValue = '2'

thostFtdcStovRealRatio :: Char
thostFtdcStovRealRatio = '3'

thostFtdcStovProfitRatio :: Char
thostFtdcStovProfitRatio = '4'

