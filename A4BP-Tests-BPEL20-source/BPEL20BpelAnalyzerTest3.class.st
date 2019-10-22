Class {
	#name : #BPEL20BpelAnalyzerTest3,
	#superclass : #BPEL20BPSourceTest,
	#category : #'A4BP-Tests-BPEL20-source'
}

{ #category : #bpel }
BPEL20BpelAnalyzerTest3 >> bpel_novateTrade [
^ '<?xml version="1.0" encoding="UTF-8"?>
<process
    name="novateTrade"
    targetNamespace="http://enterprise.netbeans.org/bpel/novateTradeProcess/novateTrade"
    xmlns="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
    xmlns:xsd="http://www.w3.org/2001/XMLSchema"
    xmlns:sxt="http://www.sun.com/wsbpel/2.0/process/executable/SUNExtension/Trace" 
    xmlns:sxed="http://www.sun.com/wsbpel/2.0/process/executable/SUNExtension/Editor"
    xmlns:sxeh="http://www.sun.com/wsbpel/2.0/process/executable/SUNExtension/ErrorHandling"
    xmlns:tns="http://enterprise.netbeans.org/bpel/novateTradeProcess/novateTrade" 
    xmlns:ns0="http://xml.netbeans.org/schema/xsdNovateTrade" 
    xmlns:ns1="http://schemas.xmlsoap.org/ws/2004/08/addressing" 
    xmlns:sxxf="http://www.sun.com/wsbpel/2.0/process/executable/SUNExtension/XPathFunctions">
    <import namespace="http://j2ee.netbeans.org/wsdl/novateTrade-bpel/novateTradeWSDL" 
    location="externalWSDL/novateTradeWSDL.wsdl" 
    importType="http://schemas.xmlsoap.org/wsdl/"/>
    <import namespace="http://j2ee.netbeans.org/wsdl/novateTradeProcess/putIncomingMessageToJMS" 
    location="putIncomingMessageToJMS.wsdl" 
    importType="http://schemas.xmlsoap.org/wsdl/"/>
    <partnerLinks>
        <partnerLink name="putToJMS"
        xmlns:tns="http://j2ee.netbeans.org/wsdl/novateTradeProcess/putIncomingMessageToJMS" 
        partnerLinkType="tns:putIncomingMessageToJMS" 
        partnerRole="JMSOutPortTypeRole" 
        myRole="JMSOutPortTypeRole"/>
        <partnerLink name="novateTradePL" 
        xmlns:tns="http://j2ee.netbeans.org/wsdl/novateTrade-bpel/novateTradeWSDL" 
        partnerLinkType="tns:novateTradeWSDL" 
        myRole="novateTradeWSDLPortTypeRole"/>
    </partnerLinks>
    <variables>
        <variable name="requestNovateTradeIn" xmlns:tns="http://j2ee.netbeans.org/wsdl/novateTrade-bpel/novateTradeWSDL" messageType="tns:novateTradeRequest"/>
        <variable name="requestJMSOutOperationIn" xmlns:tns="http://j2ee.netbeans.org/wsdl/novateTradeProcess/putIncomingMessageToJMS" messageType="tns:JMSInputMessage"/>
    </variables>
    <sequence>
        <receive name="getIncomingMessage" createInstance="yes" partnerLink="novateTradePL" operation="novateTrade" xmlns:tns="http://j2ee.netbeans.org/wsdl/novateTrade-bpel/novateTradeWSDL" portType="tns:novateTradeWSDLPortType" variable="requestNovateTradeIn">
            <documentation>This activity get the incoming message for external client</documentation>
            <sxt:trace>
                <sxt:log level="fine" location="onStart">
                    <from>concat(''START: getIncomingMessage RTC  End of statement list encounted ->:'', sxxf:current-dateTime())</from>
                </sxt:log>                
            </sxt:trace>
        </receive>
        <assign name="settingJMS">
            <copy>
                <from>$requestNovateTradeIn.rtc/ns0:fpMLMessage</from>
                <to>$requestJMSOutOperationIn.part1/ns0:novateTrade/ns0:fpMLMessage</to>
            </copy>
            <copy>
                <from>$requestNovateTradeIn.headerPart/ns1:EndpointReference</from>
                <to>$requestJMSOutOperationIn.part1/ns0:headerCRCC/ns1:EndpointReference</to>
            </copy>
        </assign>
        <invoke name="toPutToJMS" partnerLink="putToJMS" operation="JMSOutOperation" xmlns:tns="http://j2ee.netbeans.org/wsdl/novateTradeProcess/putIncomingMessageToJMS" portType="tns:JMSOutPortType" inputVariable="requestJMSOutOperationIn">
            <documentation>Invoke the PL to put the incoming message to JMS QUEUE</documentation>
            <sxt:trace>
                <sxt:log level="fine" location="onComplete">
                    <from>concat(''FINISHED: getIncomingMessage putting on JMS :'', sxxf:current-dateTime())</from>
                </sxt:log>                
            </sxt:trace>
        </invoke>
    </sequence>
</process>
'
]

{ #category : #bpel }
BPEL20BpelAnalyzerTest3 >> bpel_processNovateTradeProcess [
^ '<?xml version="1.0" encoding="UTF-8"?>
<process
    name="processNovateTradeProcess"
    targetNamespace="http://enterprise.netbeans.org/bpel/processNovateTradeProcess/processNovateTradeProcess"
    xmlns="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
    xmlns:xsd="http://www.w3.org/2001/XMLSchema"
    xmlns:sxt="http://www.sun.com/wsbpel/2.0/process/executable/SUNExtension/Trace" 
    xmlns:sxed="http://www.sun.com/wsbpel/2.0/process/executable/SUNExtension/Editor"
    xmlns:sxeh="http://www.sun.com/wsbpel/2.0/process/executable/SUNExtension/ErrorHandling"
    xmlns:tns="http://enterprise.netbeans.org/bpel/processNovateTradeProcess/processNovateTradeProcess" 
    xmlns:ns0="http://xml.netbeans.org/schema/xsdNovateTrade" 
    xmlns:ns1="http://www.fpml.org/2008/FpML-4-5" 
    xmlns:ns2="http://xml.netbeans.org/schema/processTradeConfirmed" 
    xmlns:ns3="http://schemas.xmlsoap.org/ws/2004/08/addressing" 
    xmlns:ns4="http://xml.netbeans.org/schema/processOTCError" 
    xmlns:sxxf="http://www.sun.com/wsbpel/2.0/process/executable/SUNExtension/XPathFunctions" xmlns:ns5="http://j2ee.netbeans.org/xsd/tableSchema" xmlns:ns6="http://facade.manage.data.otc.crcc.com/">
    <documentation>This process is a sequence of activities for novate a trade</documentation>
    <import namespace="http://enterprise.netbeans.org/bpel/FpMLParserWrapper" location="FpMLParserWrapper.wsdl" importType="http://schemas.xmlsoap.org/wsdl/"/>
    <import namespace="http://parsing.trade.otc.crcc.com/" location="externalWSDL/FpMLParser/FpMLParser.wsdl" importType="http://schemas.xmlsoap.org/wsdl/"/>
    <import namespace="http://enterprise.netbeans.org/bpel/MeffServiceWrapper" location="MeffServiceWrapper.wsdl" importType="http://schemas.xmlsoap.org/wsdl/"/>
    <import namespace="http://facade.data.otc.crcc.com/" location="externalWSDL/commons/MeffService.wsdl" importType="http://schemas.xmlsoap.org/wsdl/"/>
    <import namespace="http://j2ee.netbeans.org/wsdl/processNovateTradeProcess/getIncomingMessageFromJMSWSDL" location="getIncomingMessageFromJMSWSDL.wsdl" importType="http://schemas.xmlsoap.org/wsdl/"/>
    <import namespace="http://enterprise.netbeans.org/bpel/RiskServiceWSWrapper" location="RiskServiceWSWrapper.wsdl" importType="http://schemas.xmlsoap.org/wsdl/"/>
    <import namespace="http://facade.data.risk.otc.crcc.com/" location="externalWSDL/riskEJB/RiskServiceWS.wsdl" importType="http://schemas.xmlsoap.org/wsdl/"/>
    <import namespace="http://j2ee.netbeans.org/wsdl/processNovateTradeProcess/processTradeConfirmedWSDL" location="processTradeConfirmedWSDL.wsdl" importType="http://schemas.xmlsoap.org/wsdl/"/>
    <import namespace="http://j2ee.netbeans.org/wsdl/processNovateTradeProcess/putToParsingErrorJMSWSDL" location="putToParsingErrorJMSWSDL.wsdl" importType="http://schemas.xmlsoap.org/wsdl/"/>
    <import namespace="http://j2ee.netbeans.org/wsdl/processNovateTradeProcess/putToRiskErrorJMSWSDL" location="putToRiskErrorJMSWSDL.wsdl" importType="http://schemas.xmlsoap.org/wsdl/"/>
    <import namespace="http://j2ee.netbeans.org/wsdl/processNovateTradeProcess/putToUnknownErrorJMSWSDL" location="putToUnknownErrorJMSWSDL.wsdl" importType="http://schemas.xmlsoap.org/wsdl/"/>
    <import namespace="http://j2ee.netbeans.org/wsdl/fpmlSoapAttachmentWSDL" location="fpmlSoapAttachmentWSDL.wsdl" importType="http://schemas.xmlsoap.org/wsdl/"/>
    <import namespace="http://enterprise.netbeans.org/bpel/ManageSystemServiceWrapper" location="ManageSystemServiceWrapper.wsdl" importType="http://schemas.xmlsoap.org/wsdl/"/>
    <import namespace="http://facade.manage.data.otc.crcc.com/" location="externalWSDL/ManageSystem/ManageSystemService.wsdl" importType="http://schemas.xmlsoap.org/wsdl/"/>
    <partnerLinks>
        <partnerLink name="ManageSystemService" xmlns:tns="http://enterprise.netbeans.org/bpel/ManageSystemServiceWrapper" partnerLinkType="tns:ManageSystemServiceLinkType" partnerRole="ManageSystemServiceRole"/>
        <partnerLink name="getMessageFormJMSPL" xmlns:tns="http://j2ee.netbeans.org/wsdl/processNovateTradeProcess/getIncomingMessageFromJMSWSDL" partnerLinkType="tns:getIncomingMessageFromJMSWSDL" myRole="JMSInPortTypeRole">
            <documentation>This PL get the message from OTCIncomingTopicQUEUE message by message</documentation>
        </partnerLink>
        <partnerLink name="FpMLParser" xmlns:tns="http://enterprise.netbeans.org/bpel/FpMLParserWrapper" partnerLinkType="tns:FpMLParserLinkType" partnerRole="FpMLParserRole"/>
        <partnerLink name="UnknownError" xmlns:tns="http://j2ee.netbeans.org/wsdl/processNovateTradeProcess/putToUnknownErrorJMSWSDL" partnerLinkType="tns:putToUnknownErrorJMSWSDL" partnerRole="JMSOutPortTypeRole"/>
        <partnerLink name="soapAttachment" xmlns:tns="http://j2ee.netbeans.org/wsdl/fpmlSoapAttachmentWSDL" partnerLinkType="tns:jdbcpartner" partnerRole="jdbcPortTypeRole"/>
        <partnerLink name="ParsingErrorJMS" xmlns:tns="http://j2ee.netbeans.org/wsdl/processNovateTradeProcess/putToParsingErrorJMSWSDL" partnerLinkType="tns:putToParsingErrorJMSWSDL" partnerRole="JMSOutPortTypeRole"/>
        <partnerLink name="RiskErrorJMS" xmlns:tns="http://j2ee.netbeans.org/wsdl/processNovateTradeProcess/putToRiskErrorJMSWSDL" partnerLinkType="tns:putToRiskErrorJMSWSDL" partnerRole="JMSOutPortTypeRole"/>
        <partnerLink name="RiskEJB" xmlns:tns="http://enterprise.netbeans.org/bpel/RiskServiceWSWrapper" partnerLinkType="tns:RiskServiceWSLinkType" partnerRole="RiskServiceWSRole"/>
        <partnerLink name="processTradeConfirmed" xmlns:tns="http://j2ee.netbeans.org/wsdl/processNovateTradeProcess/processTradeConfirmedWSDL" partnerLinkType="tns:processTradeConfirmedWSDL" partnerRole="processTradeConfirmedWSDLPortTypeRole"/>
    </partnerLinks>
    <variables>
        <variable name="responseManageParseFpMLNonValidatedOut" xmlns:tns="http://parsing.trade.otc.crcc.com/" messageType="tns:parseFpMLNonValidatedResponse"/>
        <variable name="requestManageParseFpMLNonValidatedOut" xmlns:tns="http://parsing.trade.otc.crcc.com/" messageType="tns:parseFpMLNonValidatedResponse"/>
        <variable name="requestManageParseFpMLNonValidatedIn" xmlns:tns="http://parsing.trade.otc.crcc.com/" messageType="tns:parseFpMLNonValidated"/>
        <variable name="requestManageJMSOutOperationIn" xmlns:tns="http://j2ee.netbeans.org/wsdl/processNovateTradeProcess/putToRiskErrorJMSWSDL" messageType="tns:JMSInputMessage"/>
        <variable name="requestGetCurrentSystemStateOut" messageType="ns6:getCurrentSystemStateResponse"/>
        <variable name="requestGetCurrentSystemStateIn" messageType="ns6:getCurrentSystemState"/>
        <variable name="requestJMSOutOperationIn" xmlns:tns="http://j2ee.netbeans.org/wsdl/processNovateTradeProcess/putToRiskErrorJMSWSDL" messageType="tns:JMSInputMessage"/>
        <variable name="responseInsertSoapAttachmentParsingOut" xmlns:tns="http://j2ee.netbeans.org/wsdl/fpmlSoapAttachmentWSDL" messageType="tns:insertRetMsg"/>
        <variable name="requestInsertSoapAttachmentParsingIn" xmlns:tns="http://j2ee.netbeans.org/wsdl/fpmlSoapAttachmentWSDL" messageType="tns:inputMsg"/>
        <variable name="responseInsertSoapAttachmentOut" xmlns:tns="http://j2ee.netbeans.org/wsdl/fpmlSoapAttachmentWSDL" messageType="tns:insertRetMsg"/>
        <variable name="requestInsertSoapAttachmentIn" xmlns:tns="http://j2ee.netbeans.org/wsdl/fpmlSoapAttachmentWSDL" messageType="tns:inputMsg"/>
        <variable name="responseInsertMessageFPMLErrorOut" xmlns:tns="http://facade.data.risk.otc.crcc.com/" messageType="tns:insertMessageFPMLResponse"/>
        <variable name="requestInsertMessageFPMLErrorIn" xmlns:tns="http://facade.data.risk.otc.crcc.com/" messageType="tns:insertMessageFPML"/>
        <variable name="putUnknownErrorJMSOutOperationIn" xmlns:tns="http://j2ee.netbeans.org/wsdl/processNovateTradeProcess/putToUnknownErrorJMSWSDL" messageType="tns:JMSInputMessage"/>
        <variable name="responseParseFpMLNonValidatedOut" xmlns:tns="http://parsing.trade.otc.crcc.com/" messageType="tns:parseFpMLNonValidatedResponse"/>
        <variable name="requestParseFpMLNonValidatedIn" xmlns:tns="http://parsing.trade.otc.crcc.com/" messageType="tns:parseFpMLNonValidated"/>
        <variable name="requestRiskJMSOutOperationIn" xmlns:tns="http://j2ee.netbeans.org/wsdl/processNovateTradeProcess/putToRiskErrorJMSWSDL" messageType="tns:JMSInputMessage"/>
        <variable name="requestParsingJMSOutOperationIn" xmlns:tns="http://j2ee.netbeans.org/wsdl/processNovateTradeProcess/putToParsingErrorJMSWSDL" messageType="tns:JMSInputMessage"/>
        <variable name="requestProcessTradeConfirmedWSDLOperationIn" xmlns:tns="http://j2ee.netbeans.org/wsdl/processNovateTradeProcess/processTradeConfirmedWSDL" messageType="tns:processTradeConfirmedWSDLOperationRequest"/>
        <variable name="responseInsertMessageFPMLOut" xmlns:tns="http://facade.data.risk.otc.crcc.com/" messageType="tns:insertMessageFPMLResponse"/>
        <variable name="requestInsertMessageFPMLIn" xmlns:tns="http://facade.data.risk.otc.crcc.com/" messageType="tns:insertMessageFPML"/>
        <variable name="responseValidateMemberOut" xmlns:tns="http://facade.data.risk.otc.crcc.com/" messageType="tns:validateMemberResponse"/>
        <variable name="requestValidateMemberIn" xmlns:tns="http://facade.data.risk.otc.crcc.com/" messageType="tns:validateMember"/>
        <variable name="responseEvaluateRiskOut" xmlns:tns="http://facade.data.risk.otc.crcc.com/" messageType="tns:evaluateRiskResponse"/>
        <variable name="requestEvaluateRiskIn" xmlns:tns="http://facade.data.risk.otc.crcc.com/" messageType="tns:evaluateRisk"/>
        <variable name="responseParseFpMLOut" xmlns:tns="http://parsing.trade.otc.crcc.com/" messageType="tns:parseFpMLResponse"/>
        <variable name="requestParseFpMLIn" xmlns:tns="http://parsing.trade.otc.crcc.com/" messageType="tns:parseFpML"/>
        <variable name="JMSInOperationIn" xmlns:tns="http://j2ee.netbeans.org/wsdl/processNovateTradeProcess/getIncomingMessageFromJMSWSDL" messageType="tns:JMSInputMessage"/>
    </variables>
    <faultHandlers>
        <catch xmlns:tns="http://parsing.trade.otc.crcc.com/" faultMessageType="tns:ValidationException" faultName="tns:ValidationException" faultVariable="parsingException">
            <documentation>This catch manages every validation exception generated by FpML parser not related 
with a not well formed XML, just considers the validation issues, is a not well formed exception 
is throws it be catche by an internal </documentation>
            <sequence name="handlingParsingException">
                <assign name="parsingError2JMS">
                    <documentation>Catch a parsing exception and send to JMS queue in order to other process the parsing error</documentation>
                    <copy>
                        <from variable="parsingException" part="fault"/>
                        <to>$requestParsingJMSOutOperationIn.part1/ns4:validationException</to>
                    </copy>
                    <copy>
                        <from>$JMSInOperationIn.part1/ns0:headerCRCC/ns3:EndpointReference</from>
                        <to>$requestParsingJMSOutOperationIn.part1/ns4:callbackAddress</to>
                    </copy>
                    <copy>
                        <from>$JMSInOperationIn.part1/ns0:novateTrade/ns0:fpMLMessage</from>
                        <to>$requestParseFpMLNonValidatedIn.parameters/fpml</to>
                    </copy>
                </assign>
                <if name="ifNotDefaultProcessingErrorCode">
                    <documentation>If the error was not a default parsing error then execute a parsing FPML, otherwise create a Unknown parsing error</documentation>
                    <condition>'' End of statement list encounted ->200'' != $parsingException.fault/reasonCode</condition>
                    <sequence name="noDefaultErrorSeq">
                        <documentation>Execute some activities when the string is well formed</documentation>
                        <invoke name="toParseNonValidated" partnerLink="FpMLParser" operation="parseFpMLNonValidated" portType="tns:FpMLParser" inputVariable="requestParseFpMLNonValidatedIn" outputVariable="responseParseFpMLNonValidatedOut">
                            <documentation>To parse the string without validate fpml</documentation>
                        </invoke>
                        <assign name="settingFpMLMessage">
                            <documentation>Set up the fpml string</documentation>
                            <copy>
                                <from>$responseParseFpMLNonValidatedOut.parameters/return</from>
                                <to>$requestInsertMessageFPMLErrorIn.parameters/rtc</to>
                            </copy>
                        </assign>
                        <invoke name="toInsertFpMLMessage" partnerLink="RiskEJB" operation="insertMessageFPML" xmlns:tns="http://facade.data.risk.otc.crcc.com/" portType="tns:RiskServiceWS" inputVariable="requestInsertMessageFPMLErrorIn" outputVariable="responseInsertMessageFPMLErrorOut">
                            <documentation>Insert the incoming message on a databasepossible to insert message that no contain the sender information, in this case the system save the recors without sender information</documentation>
                        </invoke>
                        <assign name="settingInsertSoapAttachmentParsing">
                            <copy>
                                <from>string($JMSInOperationIn.part1/ns0:headerCRCC/ns3:EndpointReference/ns3:ServiceName/@PortName)</from>
                                <to>$requestInsertSoapAttachmentParsingIn.part/ns5:FPML_SOAP_ATTACHMENT_Record/ns5:portName</to>
                            </copy>
                            <copy>
                                <from>string($JMSInOperationIn.part1/ns0:headerCRCC/ns3:EndpointReference/ns3:ServiceName)</from>
                                <to>$requestInsertSoapAttachmentParsingIn.part/ns5:FPML_SOAP_ATTACHMENT_Record/ns5:serviceName</to>
                            </copy>
                            <copy>
                                <from>string($JMSInOperationIn.part1/ns0:headerCRCC/ns3:EndpointReference/ns3:PortType)</from>
                                <to>$requestInsertSoapAttachmentParsingIn.part/ns5:FPML_SOAP_ATTACHMENT_Record/ns5:portType</to>
                            </copy>
                            <copy>
                                <from>string($JMSInOperationIn.part1/ns0:headerCRCC/ns3:EndpointReference/ns3:Address)</from>
                                <to>$requestInsertSoapAttachmentParsingIn.part/ns5:FPML_SOAP_ATTACHMENT_Record/ns5:serviceAddress</to>
                            </copy>
                            <copy>
                                <from>$JMSInOperationIn.part1/ns0:novateTrade/ns0:fpMLMessage</from>
                                <to>$requestInsertSoapAttachmentParsingIn.part/ns5:FPML_SOAP_ATTACHMENT_Record/ns5:message</to>
                            </copy>
                            <copy>
                                <from>$responseInsertMessageFPMLErrorOut.parameters/return</from>
                                <to>$requestInsertSoapAttachmentParsingIn.part/ns5:FPML_SOAP_ATTACHMENT_Record/ns5:message_FK</to>
                            </copy>
                        </assign>
                        <invoke name="toInvokeSoapAttachmentParsing" partnerLink="soapAttachment" operation="insert" xmlns:tns="http://j2ee.netbeans.org/wsdl/fpmlSoapAttachmentWSDL" portType="tns:jdbcPortType" inputVariable="requestInsertSoapAttachmentParsingIn" outputVariable="responseInsertSoapAttachmentParsingOut"/>
                        <assign name="settingParsingJMS">
                            <documentation>Set up the message tha will be send it to JMS parsing error</documentation>
                            <copy>
                                    <from>$responseParseFpMLNonValidatedOut.parameters/return/ns1:header</from>
                                        <to>$requestParsingJMSOutOperationIn.part1/ns4:requestMessageHeader</to>
                                </copy>
                            <copy>
                                <from variable="parsingException" part="fault"/>
                                <to>$requestParsingJMSOutOperationIn.part1/ns4:validationException</to>
                            </copy>
                            <copy>
                                <from>$JMSInOperationIn.part1/ns0:headerCRCC/ns3:EndpointReference</from>
                                <to>$requestParsingJMSOutOperationIn.part1/ns4:callbackAddress</to>
                            </copy>
                            <copy>
                                <from>$responseInsertMessageFPMLErrorOut.parameters/return</from>
                                <to>$requestParsingJMSOutOperationIn.part1/ns4:rtcInternalID</to>
                            </copy>
                        </assign>
                        <invoke name="toPutParsingJMS" partnerLink="ParsingErrorJMS" operation="JMSOutOperation" xmlns:tns="http://j2ee.netbeans.org/wsdl/processNovateTradeProcess/putToParsingErrorJMSWSDL" portType="tns:JMSOutPortType" inputVariable="requestParsingJMSOutOperationIn">
                            <documentation>Put the parsing error to JMS in order to process it</documentation>
                        </invoke>
                    </sequence>
                    <else>
                        <sequence name="Sequence4">
                            <assign name="settingUnknownError">
                                <sxt:trace>
                                    <sxt:log level="warning" location="onStart">
                                        <from>concat(''FPML NOT WELL FORMED: '', $JMSInOperationIn.part1/ns0:novateTrade/ns0:fpMLMessage)</from>
                                    </sxt:log>
                                </sxt:trace>
                                <copy>
                                    <from>$JMSInOperationIn.part1/ns0:novateTrade/ns0:fpMLMessage</from>
                                    <to variable="putUnknownErrorJMSOutOperationIn" part="part1"/>
                                </copy>
                            </assign>
                            <invoke name="toPutUnknownErrorrJMS" partnerLink="UnknownError" operation="JMSOutOperation" xmlns:tns="http://j2ee.netbeans.org/wsdl/processNovateTradeProcess/putToUnknownErrorJMSWSDL" portType="tns:JMSOutPortType" inputVariable="putUnknownErrorJMSOutOperationIn"/>
                        </sequence>
                    </else>
                </if>
            </sequence>
        </catch>
        <catch xmlns:tns="http://facade.data.risk.otc.crcc.com/" faultMessageType="tns:ValidationException" faultVariable="riskException" faultName="tns:ValidationException">
            <documentation>This catch manages every validation exception generated by Risk  EJB  </documentation>
            <sequence name="handlingRiskError">
                <assign name="riskError2JMS">
                    <copy>
                        <from variable="riskException" part="fault"/>
                        <to>$requestRiskJMSOutOperationIn.part1/ns4:validationException</to>
                    </copy>
                    <copy>
                        <from>$JMSInOperationIn.part1/ns0:headerCRCC/ns3:EndpointReference</from>
                        <to>$requestRiskJMSOutOperationIn.part1/ns4:callbackAddress</to>
                    </copy>
                    <copy>
                        <from>$responseParseFpMLOut.parameters/return/ns1:header</from>
                        <to>$requestRiskJMSOutOperationIn.part1/ns4:requestMessageHeader</to>
                    </copy>
                </assign>
                <if name="IfNotMessageAlreadyExist">
                    <condition>''513'' != $riskException.fault/reasonCode</condition>
                    <assign name="setPriorMessage">
                        <copy>
                            <from>$responseInsertMessageFPMLOut.parameters/return</from>
                            <to>$requestRiskJMSOutOperationIn.part1/ns4:rtcInternalID</to>
                        </copy>
                    </assign>
                </if>
                <invoke name="toPutRiskJMS" partnerLink="RiskErrorJMS" operation="JMSOutOperation" xmlns:tns="http://j2ee.netbeans.org/wsdl/processNovateTradeProcess/putToRiskErrorJMSWSDL" portType="tns:JMSOutPortType" inputVariable="requestRiskJMSOutOperationIn"/>
            </sequence>
        </catch>
        <catch faultName="ns6:ValidationException" faultMessageType="ns6:ValidationException" faultVariable="manageSystemValidation">
            <documentation>Exception to System available</documentation>
            <sequence name="HandlingManageSystemExeception">
                <assign name="parseFpmlNoValidate">
                    <copy>
                        <from>$JMSInOperationIn.part1/ns0:novateTrade/ns0:fpMLMessage</from>
                        <to>$requestManageParseFpMLNonValidatedIn.parameters/fpml</to>
                    </copy>
                </assign>
                <invoke name="toParseFpmlNonValidated" partnerLink="FpMLParser" operation="parseFpMLNonValidated" xmlns:tns="http://parsing.trade.otc.crcc.com/" portType="tns:FpMLParser" inputVariable="requestManageParseFpMLNonValidatedIn" outputVariable="responseManageParseFpMLNonValidatedOut"/>
                <assign name="toSendManageError">
                    <copy>
                        <from>$responseManageParseFpMLNonValidatedOut.parameters/return/ns1:header</from>
                        <to>$requestManageJMSOutOperationIn.part1/ns4:requestMessageHeader</to>
                    </copy>
                    <copy>
                        <from>$JMSInOperationIn.part1/ns0:headerCRCC/ns3:EndpointReference</from>
                        <to>$requestManageJMSOutOperationIn.part1/ns4:callbackAddress</to>
                    </copy>
                    <copy>
                        <from>$manageSystemValidation.fault/additionalData</from>
                        <to>$requestManageJMSOutOperationIn.part1/ns4:validationException/additionalData</to>
                    </copy>
                    <copy>
                        <from>$manageSystemValidation.fault/location</from>
                        <to>$requestManageJMSOutOperationIn.part1/ns4:validationException/location</to>
                    </copy>
                    <copy>
                        <from>$manageSystemValidation.fault/message</from>
                        <to>$requestManageJMSOutOperationIn.part1/ns4:validationException/message</to>
                    </copy>
                    <copy>
                        <from>$manageSystemValidation.fault/reasonCode</from>
                        <to>$requestManageJMSOutOperationIn.part1/ns4:validationException/reasonCode</to>
                    </copy>
                    <copy>
                        <from>$manageSystemValidation.fault/semanticRuleDescription</from>
                        <to>$requestManageJMSOutOperationIn.part1/ns4:validationException/semanticRuleDescription</to>
                    </copy>
                    <copy>
                        <from>$manageSystemValidation.fault/semanticRuleId</from>
                        <to>$requestManageJMSOutOperationIn.part1/ns4:validationException/semanticRuleId</to>
                    </copy>
                </assign>
                <invoke name="toPutRiskJMSManage" partnerLink="RiskErrorJMS" operation="JMSOutOperation" xmlns:tns="http://j2ee.netbeans.org/wsdl/processNovateTradeProcess/putToRiskErrorJMSWSDL" portType="tns:JMSOutPortType" inputVariable="requestManageJMSOutOperationIn"/>
            </sequence>
        </catch>
    </faultHandlers>
    <sequence>
        <receive name="getMessageFromJMS" createInstance="yes" partnerLink="getMessageFormJMSPL" operation="JMSInOperation" xmlns:tns="http://j2ee.netbeans.org/wsdl/processNovateTradeProcess/getIncomingMessageFromJMSWSDL" portType="tns:JMSInPortType" variable="JMSInOperationIn">
            <documentation>Get the message from JMS to BPEL</documentation>
            <sxt:trace>
                <sxt:log level="fine" location="onStart">
                    <from>concat(''START getMessageFromJMS FpmL :'', sxxf:current-dateTime())</from>
                </sxt:log>
            </sxt:trace>
        </receive>
        <assign name="initializeRequestGetSystem">
            <copy>
                <from>''</from>
                <to variable="requestGetCurrentSystemStateIn" part="parameters"/>
            </copy>
        </assign>
        <invoke name="toGetManageSystem" partnerLink="ManageSystemService" operation="getCurrentSystemState" portType="ns6:ManageSystemService" inputVariable="requestGetCurrentSystemStateIn" outputVariable="requestGetCurrentSystemStateOut">
            <documentation>To get the OTC current system state, if not avalaible an exception is thrown, it is handled by Handler Manage System Exception</documentation>
        </invoke>
        <assign name="JMS2Parser">
            <documentation>Get the fpml String and put it on incoming parameter of FpML parser</documentation>
            <copy>
                <from>$JMSInOperationIn.part1/ns0:novateTrade/ns0:fpMLMessage</from>
                <to>$requestParseFpMLIn.parameters/fpml</to>
            </copy>
        </assign>
        <invoke name="toParseFpML" partnerLink="FpMLParser" operation="parseFpML" xmlns:tns="http://parsing.trade.otc.crcc.com/" portType="tns:FpMLParser" inputVariable="requestParseFpMLIn" outputVariable="responseParseFpMLOut">
            <documentation>Invoke parse FpmL that can thorw a handling Parsing Exception</documentation>
            <sxt:trace>
                <sxt:log level="fine" location="onStart">
                    <from>concat(''START Parsing FpmL :'', sxxf:current-dateTime())</from>
                </sxt:log>
                <sxt:log level="fine" location="onComplete">
                    <from>concat(''FINISHED  Parsing FpmL :'', sxxf:current-dateTime())</from>
                </sxt:log>
            </sxt:trace>
        </invoke>
        <assign name="Parser2Risk">
            <documentation>once time the parser return a RTC that message is sent to Risk facade to make some risk validation</documentation>
            <copy>
                <from>$responseParseFpMLOut.parameters/return</from>
                <to>$requestValidateMemberIn.parameters/rtc</to>
            </copy>
            <copy>
                <from>$responseParseFpMLOut.parameters/return</from>
                <to>$requestEvaluateRiskIn.parameters/rtc</to>
            </copy>
            <copy>
                <from>$responseParseFpMLOut.parameters/return</from>
                <to>$requestInsertMessageFPMLIn.parameters/rtc</to>
            </copy>
        </assign>
        <invoke name="toInsertFpML" partnerLink="RiskEJB" operation="insertMessageFPML" xmlns:tns="http://facade.data.risk.otc.crcc.com/" portType="tns:RiskServiceWS" inputVariable="requestInsertMessageFPMLIn" outputVariable="responseInsertMessageFPMLOut">
            <documentation>This method insert the incoming message on database</documentation>
            <sxt:trace>
                <sxt:log level="fine" location="onStart">
                    <from>concat(''START toInsertFpML  :'', sxxf:current-dateTime())</from>
                </sxt:log>
                <sxt:log level="fine" location="onComplete">
                    <from>concat(''FINISHED  toInsertFpML :'', sxxf:current-dateTime())</from>
                </sxt:log>
            </sxt:trace>
        </invoke>
        <assign name="settingSoapAttachment">
            <documentation>setting the soap attachmente by including messageFK</documentation>
            <copy>
                <from>string($JMSInOperationIn.part1/ns0:headerCRCC/ns3:EndpointReference/ns3:ServiceName/@PortName)</from>
                <to>$requestInsertSoapAttachmentIn.part/ns5:FPML_SOAP_ATTACHMENT_Record/ns5:portName</to>
            </copy>
            <copy>
                <from>string($JMSInOperationIn.part1/ns0:headerCRCC/ns3:EndpointReference/ns3:ServiceName)</from>
                <to>$requestInsertSoapAttachmentIn.part/ns5:FPML_SOAP_ATTACHMENT_Record/ns5:serviceName</to>
            </copy>
            <copy>
                <from>string($JMSInOperationIn.part1/ns0:headerCRCC/ns3:EndpointReference/ns3:PortType)</from>
                <to>$requestInsertSoapAttachmentIn.part/ns5:FPML_SOAP_ATTACHMENT_Record/ns5:portType</to>
            </copy>
            <copy>
                <from>string($JMSInOperationIn.part1/ns0:headerCRCC/ns3:EndpointReference/ns3:Address)</from>
                <to>$requestInsertSoapAttachmentIn.part/ns5:FPML_SOAP_ATTACHMENT_Record/ns5:serviceAddress</to>
            </copy>
            <copy>
                <from>$responseInsertMessageFPMLOut.parameters/return</from>
                <to>$requestInsertSoapAttachmentIn.part/ns5:FPML_SOAP_ATTACHMENT_Record/ns5:message_FK</to>
            </copy>
            <copy>
                <from>$JMSInOperationIn.part1/ns0:novateTrade/ns0:fpMLMessage</from>
                <to>$requestInsertSoapAttachmentIn.part/ns5:FPML_SOAP_ATTACHMENT_Record/ns5:message</to>
            </copy>
        </assign>
        <invoke name="toInsertSoapAttachment" partnerLink="soapAttachment" operation="insert" xmlns:tns="http://j2ee.netbeans.org/wsdl/fpmlSoapAttachmentWSDL" portType="tns:jdbcPortType" inputVariable="requestInsertSoapAttachmentIn" outputVariable="responseInsertSoapAttachmentOut">
            <documentation>to insert the soapMessage</documentation>
        </invoke>
        <invoke name="toValidateMembers" partnerLink="RiskEJB" operation="validateMember" xmlns:tns="http://facade.data.risk.otc.crcc.com/" portType="tns:RiskServiceWS" inputVariable="requestValidateMemberIn" outputVariable="responseValidateMemberOut">
            <documentation>To validate if every member included on RTC message exist on OTC database</documentation>
            <sxt:trace>
                <sxt:log level="fine" location="onStart">
                    <from>concat(''START toValidateMembers  :'', sxxf:current-dateTime())</from>
                </sxt:log>
                <sxt:log level="fine" location="onComplete">
                    <from>concat(''FINISHED  toValidateMembers :'', sxxf:current-dateTime())</from>
                </sxt:log>
            </sxt:trace>
        </invoke>            
        <invoke name="toEvaluateRisk" partnerLink="RiskEJB" operation="evaluateRisk" xmlns:tns="http://facade.data.risk.otc.crcc.com/" portType="tns:RiskServiceWS" inputVariable="requestEvaluateRiskIn" outputVariable="responseEvaluateRiskOut">
            <documentation>To verify the current risk of member</documentation>
            <sxt:trace>
                <sxt:log level="fine" location="onStart">
                    <from>concat(''START toEvaluateRisk :'', sxxf:current-dateTime())</from>
                </sxt:log>
                <sxt:log level="fine" location="onComplete">
                    <from>concat(''FINISHED  toEvaluateRisk :'', sxxf:current-dateTime())</from>
                </sxt:log>
            </sxt:trace>
        </invoke>
        <assign name="EvaluateRisk2ProcessTradeC">
            <documentation>If the evaluate risk was sucessfull then get the retun value an assign it to the process trade confirmed process.</documentation>
            <copy>
                <from>$responseEvaluateRiskOut.parameters/return</from>
                <to>$requestProcessTradeConfirmedWSDLOperationIn.tradeConfirmedIn/ns2:tradeConfirmed</to>
            </copy>
            <copy>
                <from>$JMSInOperationIn.part1/ns0:headerCRCC/ns3:EndpointReference</from>
                <to>$requestProcessTradeConfirmedWSDLOperationIn.tradeConfirmedIn/ns2:header/ns3:EndpointReference</to>
            </copy>
            <copy>
                <from>$responseInsertMessageFPMLOut.parameters/return</from>
                <to>$requestProcessTradeConfirmedWSDLOperationIn.tradeConfirmedIn/ns2:rtcInternalID</to>
            </copy>
        </assign>
        <invoke name="toProcessTradeConfirmed" partnerLink="processTradeConfirmed" operation="processTradeConfirmedWSDLOperation" xmlns:tns="http://j2ee.netbeans.org/wsdl/processNovateTradeProcess/processTradeConfirmedWSDL" portType="tns:processTradeConfirmedWSDLPortType" inputVariable="requestProcessTradeConfirmedWSDLOperationIn">
            <documentation>Invoke the bpel that process the confirmed trade</documentation>
            <sxt:trace>
                <sxt:log level="fine" location="onStart">
                    <from>concat(''START ProcessTradeConfirmed :'', sxxf:current-dateTime())</from>
                </sxt:log>
                <sxt:log level="fine" location="onComplete">
                    <from>concat(''FINISHED  ProcessTradeConfirmed :'', sxxf:current-dateTime())</from>
                </sxt:log>
            </sxt:trace>
        </invoke>        
    </sequence>
</process>
'
]

{ #category : #bpel }
BPEL20BpelAnalyzerTest3 >> bpel_processTradeConfirmed [
	^ '<?xml version="1.0" encoding="UTF-8"?>
<process
    name="processTradeConfirmed"
    targetNamespace="http://enterprise.netbeans.org/bpel/processNovateTradeProcess/processTradeConfirmed"
    xmlns="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
    xmlns:xsd="http://www.w3.org/2001/XMLSchema"
    xmlns:sxt="http://www.sun.com/wsbpel/2.0/process/executable/SUNExtension/Trace" 
    xmlns:sxed="http://www.sun.com/wsbpel/2.0/process/executable/SUNExtension/Editor"
    xmlns:sxeh="http://www.sun.com/wsbpel/2.0/process/executable/SUNExtension/ErrorHandling"
    xmlns:tns="http://enterprise.netbeans.org/bpel/processNovateTradeProcess/processTradeConfirmed" xmlns:ns0="http://xml.netbeans.org/schema/processTradeConfirmed" xmlns:ns1="http://www.fpml.org/2008/FpML-4-5" xmlns:ns2="http://xml.netbeans.org/schema/Meff" xmlns:sxxf="http://www.sun.com/wsbpel/2.0/process/executable/SUNExtension/XPathFunctions" xmlns:ns3="http://xml.netbeans.org/schema/runtimePartner" xmlns:ns4="http://schemas.xmlsoap.org/ws/2004/08/addressing" xmlns:ns5="http://j2ee.netbeans.org/xsd/tableSchema">
    <documentation>Se agregan 3 variables globales 

tradeId = corresponde al codigo alfanumerico que envian los sistemas de registro.

tradeIdLength = Longitud total del tradeId enviado por los sistemas de registro

tradeIdFinal = variable que es calculada por la longitud del tradeId y un numero constante para obtener un tamaño de 10 caracteres en la variable.

Por otra parte estos cambios se realizan para tener el registro el numero de negociacion de los sistemas de registro que el sistema Meff no visualiza en las terminales de las herramientas de camara. Este codigo queda en el campo  referencia intermediario concadenado con el codigo del sistema de registro Ej: CRCC-12345678AS.</documentation>        
    <import namespace="http://j2ee.netbeans.org/wsdl/processNovateTradeProcess/processTradeConfirmedWSDL" location="processTradeConfirmedWSDL.wsdl" importType="http://schemas.xmlsoap.org/wsdl/"/>
    <import namespace="http://enterprise.netbeans.org/bpel/RiskServiceWSWrapper" location="RiskServiceWSWrapper.wsdl" importType="http://schemas.xmlsoap.org/wsdl/"/>
    <import namespace="http://facade.data.risk.otc.crcc.com/" location="externalWSDL/riskEJB/RiskServiceWS.wsdl" importType="http://schemas.xmlsoap.org/wsdl/"/>
    <import namespace="http://enterprise.netbeans.org/bpel/FpMLParserWrapper" location="FpMLParserWrapper.wsdl" importType="http://schemas.xmlsoap.org/wsdl/"/>
    <import namespace="http://parsing.trade.otc.crcc.com/" location="externalWSDL/FpMLParser/FpMLParser.wsdl" importType="http://schemas.xmlsoap.org/wsdl/"/>
    <import namespace="http://enterprise.netbeans.org/bpel/MeffServiceWrapper" location="MeffServiceWrapper.wsdl" importType="http://schemas.xmlsoap.org/wsdl/"/>
    <import namespace="http://facade.data.otc.crcc.com/" location="externalWSDL/commons/MeffService.wsdl" importType="http://schemas.xmlsoap.org/wsdl/"/>
    <import namespace="http://j2ee.netbeans.org/wsdl/MeffServicesBPEL/RequestTradeWSDL" location="externalWSDL/meffServicesBPEL/RequestTradeWSDL.wsdl" importType="http://schemas.xmlsoap.org/wsdl/"/>
    <import namespace="http://j2ee.netbeans.org/wsdl/processNovateTradeBPEL/invokeCallbackPartnerLinkWSDL" location="invokeCallbackPartnerLinkWSDL.wsdl" importType="http://schemas.xmlsoap.org/wsdl/"/>
    <import namespace="http://j2ee.netbeans.org/wsdl/fpMLMessageOnDBWSDL" location="fpMLMessageOnDBWSDL.wsdl" importType="http://schemas.xmlsoap.org/wsdl/"/>
    <import namespace="http://j2ee.netbeans.org/wsdl/fpmlSoapAttachmentWSDL" location="fpmlSoapAttachmentWSDL.wsdl" importType="http://schemas.xmlsoap.org/wsdl/"/>
    <partnerLinks>
        <partnerLink name="FpMLParser" xmlns:tns="http://enterprise.netbeans.org/bpel/FpMLParserWrapper" partnerLinkType="tns:FpMLParserLinkType" partnerRole="FpMLParserRole"/>
        <partnerLink name="fpMLSoapAttachment" xmlns:tns="http://j2ee.netbeans.org/wsdl/fpmlSoapAttachmentWSDL" partnerLinkType="tns:jdbcpartner" partnerRole="jdbcPortTypeRole"/>
        <partnerLink name="OTCDB" xmlns:tns="http://j2ee.netbeans.org/wsdl/fpMLMessageOnDBWSDL" partnerLinkType="tns:jdbcpartner" partnerRole="jdbcPortTypeRole"/>
        <partnerLink name="CommonServices" xmlns:tns="http://enterprise.netbeans.org/bpel/MeffServiceWrapper" partnerLinkType="tns:MeffServiceLinkType" partnerRole="MeffServiceRole"/>
        <partnerLink name="MeffService" xmlns:tns="http://j2ee.netbeans.org/wsdl/MeffServicesBPEL/RequestTradeWSDL" partnerLinkType="tns:RequestTradeWSDL" partnerRole="RequestTradeWSDLPortTypeRole"/>
        <partnerLink name="RiskEJB" xmlns:tns="http://enterprise.netbeans.org/bpel/RiskServiceWSWrapper" partnerLinkType="tns:RiskServiceWSLinkType" partnerRole="RiskServiceWSRole"/>
        <partnerLink name="invokeCallback" xmlns:tns="http://j2ee.netbeans.org/wsdl/processNovateTradeBPEL/invokeCallbackPartnerLinkWSDL" partnerLinkType="tns:invokeCallbackPartnerLinkWSDL" partnerRole="invokeCallbackPartnerLinkWSDLPortTypeRole"/>
        <partnerLink name="processTradeConfirmed" xmlns:tns="http://j2ee.netbeans.org/wsdl/processNovateTradeProcess/processTradeConfirmedWSDL" partnerLinkType="tns:processTradeConfirmedWSDL" myRole="processTradeConfirmedWSDLPortTypeRole"/>
    </partnerLinks>
    <variables>
        <variable name="tradeIDFinal" type="xsd:string"/>
        <variable name="tradeIdLenght" type="xsd:int"/>
        <variable name="tradeID" type="xsd:string"/>        
        <variable name="responseFindFpmlMessageOut" xmlns:tns="http://j2ee.netbeans.org/wsdl/fpMLMessageOnDBWSDL" messageType="tns:outputMsg"/>
        <variable name="requestFindFpmlMessageIn" xmlns:tns="http://j2ee.netbeans.org/wsdl/fpMLMessageOnDBWSDL" messageType="tns:inputMsg"/>
        <variable name="responseInsertFpmLSoapOut" xmlns:tns="http://j2ee.netbeans.org/wsdl/fpmlSoapAttachmentWSDL" messageType="tns:insertRetMsg"/>
        <variable name="requestInsertFpmLSoapIn" xmlns:tns="http://j2ee.netbeans.org/wsdl/fpmlSoapAttachmentWSDL" messageType="tns:inputMsg"/>
        <variable name="responseInsertFpMLMessageOut" xmlns:tns="http://j2ee.netbeans.org/wsdl/fpMLMessageOnDBWSDL" messageType="tns:insertRetMsg"/>
        <variable name="requestInsertFpMLMessageIn" xmlns:tns="http://j2ee.netbeans.org/wsdl/fpMLMessageOnDBWSDL" messageType="tns:inputMsg"/>
        <variable name="requestInvokeCallbackPartnerLinkWSDLOperationIn" xmlns:tns="http://j2ee.netbeans.org/wsdl/processNovateTradeBPEL/invokeCallbackPartnerLinkWSDL" messageType="tns:invokeCallbackPartnerLinkWSDLOperationRequest"/>
        <variable name="responseContractPriceIDOut" xmlns:tns="http://facade.data.risk.otc.crcc.com/" messageType="tns:contractPriceIDResponse"/>
        <variable name="requestContractPriceIDIn" xmlns:tns="http://facade.data.risk.otc.crcc.com/" messageType="tns:contractPriceID"/>
        <variable name="responseTradeWSDLOperationOut" xmlns:tns="http://j2ee.netbeans.org/wsdl/MeffServicesBPEL/RequestTradeWSDL" messageType="tns:RequestTradeWSDLOperationResponse"/>
        <variable name="requestTradeWSDLOperationIn" xmlns:tns="http://j2ee.netbeans.org/wsdl/MeffServicesBPEL/RequestTradeWSDL" messageType="tns:RequestTradeWSDLOperationRequest"/>
        <variable name="responseTradeConfirmedAsStringOut" xmlns:tns="http://parsing.trade.otc.crcc.com/" messageType="tns:tradeConfirmedAsStringResponse"/>
        <variable name="requestTradeConfirmedAsStringIn" xmlns:tns="http://parsing.trade.otc.crcc.com/" messageType="tns:tradeConfirmedAsString"/>
        <variable name="responseGetIdMessageOut" xmlns:tns="http://facade.data.otc.crcc.com/" messageType="tns:getIdMessageResponse"/>
        <variable name="requestGetIdMessageIn" xmlns:tns="http://facade.data.otc.crcc.com/" messageType="tns:getIdMessage"/>
        <variable name="ProcessTradeConfirmedWSDLOperationIn" xmlns:tns="http://j2ee.netbeans.org/wsdl/processNovateTradeProcess/processTradeConfirmedWSDL" messageType="tns:processTradeConfirmedWSDLOperationRequest"/>
    </variables>
    <sequence>
        <receive name="getTradeConfirmed" createInstance="yes" partnerLink="processTradeConfirmed" operation="processTradeConfirmedWSDLOperation" xmlns:tns="http://j2ee.netbeans.org/wsdl/processNovateTradeProcess/processTradeConfirmedWSDL" portType="tns:processTradeConfirmedWSDLPortType" variable="ProcessTradeConfirmedWSDLOperationIn"/>
        <assign name="initializeVariables">
            <documentation>set the contract ID variable
set the getSequence variable</documentation>
            <copy>
                <from>''</from>
                <to variable="requestGetIdMessageIn" part="parameters"/>
            </copy>
            <copy>
                <from>$ProcessTradeConfirmedWSDLOperationIn.tradeConfirmedIn/ns0:tradeConfirmed</from>
                <to>$requestTradeConfirmedAsStringIn.parameters/tradeConfirmed</to>
            </copy>
            <copy>
                <from>substring($ProcessTradeConfirmedWSDLOperationIn.tradeConfirmedIn/ns0:tradeConfirmed/ns1:trade/ns1:fxSingleLeg/ns1:valueDate, 1, 10)</from>
                <to>$requestContractPriceIDIn.parameters/valueDate</to>
            </copy>
        </assign>
        <invoke name="toGetSequence" partnerLink="CommonServices" operation="getIdMessage" xmlns:tns="http://facade.data.otc.crcc.com/" portType="tns:MeffService" inputVariable="requestGetIdMessageIn" outputVariable="responseGetIdMessageOut"/>
        <invoke name="toGetContractID" partnerLink="RiskEJB" operation="contractPriceID" xmlns:tns="http://facade.data.risk.otc.crcc.com/" portType="tns:RiskServiceWS" inputVariable="requestContractPriceIDIn" outputVariable="responseContractPriceIDOut"/>
        <assign name="setMessageId">
            <copy>
                <from>$responseGetIdMessageOut.parameters/return</from>
                <to>$requestTradeConfirmedAsStringIn.parameters/tradeConfirmed/ns1:header/ns1:messageId</to>
            </copy>
        </assign>
        <assign name="setMessageIdSchema">
            <copy>
                <from>''http: Variable or expression expected ->//www.camaraderiesgo.com/messageId''</from>
                <to>$requestTradeConfirmedAsStringIn.parameters/tradeConfirmed/ns1:header/ns1:messageId/@messageIdScheme</to>
            </copy>
        </assign>
        <invoke name="toGetStringFromTradeConfirmed" partnerLink="FpMLParser" operation="tradeConfirmedAsString" xmlns:tns="http://parsing.trade.otc.crcc.com/" portType="tns:FpMLParser" inputVariable="requestTradeConfirmedAsStringIn" outputVariable="responseTradeConfirmedAsStringOut"/>
        <assign name="FPML2OTCDB">
            <copy>
                <from>1</from>
                <to>$requestInsertFpMLMessageIn.part/ns5:FPML_MESSAGE_Record/ns5:sender_FK</to>
            </copy>
            <copy>
                <from>$ProcessTradeConfirmedWSDLOperationIn.tradeConfirmedIn/ns0:rtcInternalID</from>
                <to>$requestInsertFpMLMessageIn.part/ns5:FPML_MESSAGE_Record/ns5:priorMessage_FK</to>
            </copy>
            <copy>
                <from>string($ProcessTradeConfirmedWSDLOperationIn.tradeConfirmedIn/ns0:tradeConfirmed/ns1:header/ns1:messageId/@messageIdScheme)</from>
                <to>$requestInsertFpMLMessageIn.part/ns5:FPML_MESSAGE_Record/ns5:messageSchemaID</to>
            </copy>
            <copy>
                <from>3</from>
                <to>$requestInsertFpMLMessageIn.part/ns5:FPML_MESSAGE_Record/ns5:messageType_FK</to>
            </copy>
            <copy>
                <from>$responseGetIdMessageOut.parameters/return</from>
                <to>$requestInsertFpMLMessageIn.part/ns5:FPML_MESSAGE_Record/ns5:messageID</to>
            </copy>
            <copy>
                <from>string($ProcessTradeConfirmedWSDLOperationIn.tradeConfirmedIn/ns0:tradeConfirmed/ns1:trade/ns1:tradeHeader/ns1:partyTradeIdentifier/ns1:tradeId)</from>
                <to variable="tradeID"/>
            </copy>
            <copy>
                <from>string-length($ProcessTradeConfirmedWSDLOperationIn.tradeConfirmedIn/ns0:tradeConfirmed/ns1:trade/ns1:tradeHeader/ns1:partyTradeIdentifier/ns1:tradeId)</from>
                <to variable="tradeIdLenght"/>
            </copy>
        </assign>
        <invoke name="toInsertOnOTCDB" partnerLink="OTCDB" operation="insert" xmlns:tns="http://j2ee.netbeans.org/wsdl/fpMLMessageOnDBWSDL" portType="tns:jdbcPortType" inputVariable="requestInsertFpMLMessageIn" outputVariable="responseInsertFpMLMessageOut"/>
        <if name="ConditionalReceiver">
            <condition>$ProcessTradeConfirmedWSDLOperationIn.tradeConfirmedIn/ns0:tradeConfirmed/ns1:party[@id = $ProcessTradeConfirmedWSDLOperationIn.tradeConfirmedIn/ns0:tradeConfirmed/ns1:trade/ns1:fxSingleLeg/ns1:exchangedCurrency1/ns1:receiverPartyReference/@href]/ns1:account/ns1:accountId</condition>
            <assign name="setAccountReceiverNull">
                <copy>
                    <from>$ProcessTradeConfirmedWSDLOperationIn.tradeConfirmedIn/ns0:tradeConfirmed/ns1:party[@id = $ProcessTradeConfirmedWSDLOperationIn.tradeConfirmedIn/ns0:tradeConfirmed/ns1:trade/ns1:fxSingleLeg/ns1:exchangedCurrency1/ns1:receiverPartyReference/@href]/ns1:account/ns1:accountId</from>
                    <to>$requestTradeWSDLOperationIn.request/ns2:request/ns2:buyerAccount</to>
                </copy>
                    
            </assign>            
            <else>
                <assign name="setAccountReceiverNotNull">
                    
                     <copy>
                        <from>''P0101''</from>
                        <to>$requestTradeWSDLOperationIn.request/ns2:request/ns2:buyerAccount</to>
                    </copy>
                    
                </assign>
            </else>
        </if>
        
        <if name="ConditionalPayer">
            <condition>$ProcessTradeConfirmedWSDLOperationIn.tradeConfirmedIn/ns0:tradeConfirmed/ns1:party[@id = $ProcessTradeConfirmedWSDLOperationIn.tradeConfirmedIn/ns0:tradeConfirmed/ns1:trade/ns1:fxSingleLeg/ns1:exchangedCurrency1/ns1:payerPartyReference/@href]/ns1:account/ns1:accountId</condition>
            <assign name="setAccountPayerNull">
                <copy>
                    <from>$ProcessTradeConfirmedWSDLOperationIn.tradeConfirmedIn/ns0:tradeConfirmed/ns1:party[@id = $ProcessTradeConfirmedWSDLOperationIn.tradeConfirmedIn/ns0:tradeConfirmed/ns1:trade/ns1:fxSingleLeg/ns1:exchangedCurrency1/ns1:payerPartyReference/@href]/ns1:account/ns1:accountId</from>
                    <to>$requestTradeWSDLOperationIn.request/ns2:request/ns2:sellerAccount</to>
                </copy>            
                    
            </assign>            
            <else>
                <assign name="setAccountPayerNotNull">
                    
                    <copy>
                        <from>''P0101''</from>
                        <to>$requestTradeWSDLOperationIn.request/ns2:request/ns2:sellerAccount</to>
                    </copy>
                    
                </assign>
            </else>
        </if>
        
        <assign name="FpML2MEFF">
            <copy>
                <from>$ProcessTradeConfirmedWSDLOperationIn.tradeConfirmedIn/ns0:tradeConfirmed/ns1:party[@id = $ProcessTradeConfirmedWSDLOperationIn.tradeConfirmedIn/ns0:tradeConfirmed/ns1:trade/ns1:fxSingleLeg/ns1:exchangedCurrency1/ns1:receiverPartyReference/@href]/ns1:partyId</from>
                <to>$requestTradeWSDLOperationIn.request/ns2:request/ns2:buyerCode</to>
            </copy>
            <copy>
                <from>$ProcessTradeConfirmedWSDLOperationIn.tradeConfirmedIn/ns0:tradeConfirmed/ns1:party[@id = $ProcessTradeConfirmedWSDLOperationIn.tradeConfirmedIn/ns0:tradeConfirmed/ns1:trade/ns1:fxSingleLeg/ns1:exchangedCurrency1/ns1:payerPartyReference/@href]/ns1:partyId</from>
                <to>$requestTradeWSDLOperationIn.request/ns2:request/ns2:sellerCode</to>
            </copy>
            <copy>
                <from>''H''</from>
                <to>$requestTradeWSDLOperationIn.request/ns2:request/ns2:operationType</to>
            </copy>
            <copy>
                <from>sxxf:current-date()</from>
                <to>$requestTradeWSDLOperationIn.request/ns2:request/ns2:date</to>
            </copy>
            <copy>
                <from>sxxf:current-time()</from>
                <to>$requestTradeWSDLOperationIn.request/ns2:request/ns2:time</to>
            </copy>
            <copy>
                <from>string($ProcessTradeConfirmedWSDLOperationIn.tradeConfirmedIn/ns0:tradeConfirmed/ns1:trade/ns1:fxSingleLeg/ns1:exchangeRate/ns1:rate)</from>
                <to>$requestTradeWSDLOperationIn.request/ns2:request/ns2:price</to>
            </copy>
            <copy>
                <from>string($ProcessTradeConfirmedWSDLOperationIn.tradeConfirmedIn/ns0:tradeConfirmed/ns1:trade/ns1:fxSingleLeg/ns1:exchangedCurrency1/ns1:paymentAmount/ns1:amount)</from>
                <to>$requestTradeWSDLOperationIn.request/ns2:request/ns2:amount</to>
            </copy>
            <copy>
                <from>$responseContractPriceIDOut.parameters/return/name</from>
                <to>$requestTradeWSDLOperationIn.request/ns2:request/ns2:contractId</to>
            </copy>
            <copy>
                <from>substring($tradeID, $tradeIdLenght - 10, 10)</from>
                <to variable="tradeIDFinal"/>
            </copy>
            <copy>
                <from>string($tradeIDFinal)</from>
                <to>$requestTradeWSDLOperationIn.request/ns2:request/ns2:originalTradeId</to>
            </copy>
            <copy>
                <from>
			concat(string($ProcessTradeConfirmedWSDLOperationIn.tradeConfirmedIn/ns0:tradeConfirmed/ns1:header/ns1:sendTo), ''-'', $tradeIDFinal)</from>
                <to>$requestTradeWSDLOperationIn.request/ns2:request/ns2:registrationSystem</to>
            </copy>
        </assign>
        <assign name="settingSelectFpML">
            <copy>
                <from>$responseGetIdMessageOut.parameters/return</from>
                <to>$requestFindFpmlMessageIn.part/ns5:FPML_MESSAGE_Record/ns5:messageID</to>
            </copy>
            <copy>
                <from>''http://www.camaraderiesgo.com/messageId''</from>
                <to>$requestFindFpmlMessageIn.part/ns5:FPML_MESSAGE_Record/ns5:messageSchemaID</to>
            </copy>
        </assign>
        <invoke name="toFindFpMLMessage" partnerLink="OTCDB" operation="find" xmlns:tns="http://j2ee.netbeans.org/wsdl/fpMLMessageOnDBWSDL" portType="tns:jdbcPortType" inputVariable="requestFindFpmlMessageIn" outputVariable="responseFindFpmlMessageOut"/>
        <assign name="settingFpMLSoap">
            <copy>
                <from>string($ProcessTradeConfirmedWSDLOperationIn.tradeConfirmedIn/ns0:header/ns4:EndpointReference/ns4:ServiceName/@PortName)</from>
                <to>$requestInsertFpmLSoapIn.part/ns5:FPML_SOAP_ATTACHMENT_Record/ns5:portName</to>
            </copy>
            <copy>
                <from>string($ProcessTradeConfirmedWSDLOperationIn.tradeConfirmedIn/ns0:header/ns4:EndpointReference/ns4:ServiceName)</from>
                <to>$requestInsertFpmLSoapIn.part/ns5:FPML_SOAP_ATTACHMENT_Record/ns5:serviceName</to>
            </copy>
            <copy>
                <from>string($ProcessTradeConfirmedWSDLOperationIn.tradeConfirmedIn/ns0:header/ns4:EndpointReference/ns4:PortType)</from>
                <to>$requestInsertFpmLSoapIn.part/ns5:FPML_SOAP_ATTACHMENT_Record/ns5:portType</to>
            </copy>
            <copy>
                <from>string($ProcessTradeConfirmedWSDLOperationIn.tradeConfirmedIn/ns0:header/ns4:EndpointReference/ns4:Address)</from>
                <to>$requestInsertFpmLSoapIn.part/ns5:FPML_SOAP_ATTACHMENT_Record/ns5:serviceAddress</to>
            </copy>
            <copy>
                <from>$responseTradeConfirmedAsStringOut.parameters/return</from>
                <to>$requestInsertFpmLSoapIn.part/ns5:FPML_SOAP_ATTACHMENT_Record/ns5:message</to>
            </copy>
            <copy>
                <from>$responseFindFpmlMessageOut.part/ns5:FPML_MESSAGE_Record/ns5:ID</from>
                <to>$requestInsertFpmLSoapIn.part/ns5:FPML_SOAP_ATTACHMENT_Record/ns5:message_FK</to>
            </copy>
        </assign>
        <invoke name="toInsertFpMLSoap" partnerLink="fpMLSoapAttachment" operation="insert" xmlns:tns="http://j2ee.netbeans.org/wsdl/fpmlSoapAttachmentWSDL" portType="tns:jdbcPortType" inputVariable="requestInsertFpmLSoapIn" outputVariable="responseInsertFpmLSoapOut"/>
        <invoke name="toSendTradeToMeff" partnerLink="MeffService" operation="RequestTradeWSDLOperation" xmlns:tns="http://j2ee.netbeans.org/wsdl/MeffServicesBPEL/RequestTradeWSDL" portType="tns:RequestTradeWSDLPortType" inputVariable="requestTradeWSDLOperationIn" outputVariable="responseTradeWSDLOperationOut"/>
        <assign name="settingInvokeCallback">
            <copy>
                <from>$responseTradeConfirmedAsStringOut.parameters/return</from>
                <to>$requestInvokeCallbackPartnerLinkWSDLOperationIn.part1/ns3:fpMLMessageAsString</to>
            </copy>
            <copy>
                <from>$ProcessTradeConfirmedWSDLOperationIn.tradeConfirmedIn/ns0:header/ns4:EndpointReference</from>
                <to>$requestInvokeCallbackPartnerLinkWSDLOperationIn.part1/ns3:endPointReference</to>
            </copy>
            <copy>
                <from>$ProcessTradeConfirmedWSDLOperationIn.tradeConfirmedIn/ns0:tradeConfirmed/ns1:header/ns1:sendTo</from>
                <to>$requestInvokeCallbackPartnerLinkWSDLOperationIn.part1/ns3:senderPartyID</to>
            </copy>
            <copy>
                <from>$responseFindFpmlMessageOut.part/ns5:FPML_MESSAGE_Record/ns5:ID</from>
                <to>$requestInvokeCallbackPartnerLinkWSDLOperationIn.part1/ns3:fpmlMessageFK</to>
            </copy>
        </assign>
        <invoke name="toInvokeCallBack" partnerLink="invokeCallback" operation="invokeCallbackPartnerLinkWSDLOperation" xmlns:tns="http://j2ee.netbeans.org/wsdl/processNovateTradeBPEL/invokeCallbackPartnerLinkWSDL" portType="tns:invokeCallbackPartnerLinkWSDLPortType" inputVariable="requestInvokeCallbackPartnerLinkWSDLOperationIn"/>
    </sequence>
</process>
'
]

{ #category : #wsdl }
BPEL20BpelAnalyzerTest3 >> wsdl_FpMLParserWrapper [
^ '<?xml version="1.0" encoding="UTF-8"?>

<definitions
    xmlns="http://schemas.xmlsoap.org/wsdl/"
    xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/"
    xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
    xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="FpMLParserWrapper" targetNamespace="http://enterprise.netbeans.org/bpel/FpMLParserWrapper" xmlns:tns="http://enterprise.netbeans.org/bpel/FpMLParserWrapper" xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype" xmlns:ns="http://parsing.trade.otc.crcc.com/">
    <import location="externalWSDL/FpMLParser/FpMLParser.wsdl" namespace="http://parsing.trade.otc.crcc.com/"/>
    <plnk:partnerLinkType name="FpMLParserLinkType">
        <plnk:role name="FpMLParserRole" portType="ns:FpMLParser"/>
    </plnk:partnerLinkType>
</definitions>
'
]

{ #category : #wsdl }
BPEL20BpelAnalyzerTest3 >> wsdl_ManageSystemServiceWrapper [
^ '<?xml version="1.0" encoding="UTF-8"?>

<definitions
    xmlns="http://schemas.xmlsoap.org/wsdl/"
    xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/"
    xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
    xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="ManageSystemServiceWrapper" targetNamespace="http://enterprise.netbeans.org/bpel/ManageSystemServiceWrapper" xmlns:tns="http://enterprise.netbeans.org/bpel/ManageSystemServiceWrapper" xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype" xmlns:ns="http://facade.manage.data.otc.crcc.com/">
    <import location="externalWSDL/ManageSystem/ManageSystemService.wsdl" namespace="http://facade.manage.data.otc.crcc.com/"/>
    <plnk:partnerLinkType name="ManageSystemServiceLinkType">
        <plnk:role name="ManageSystemServiceRole" portType="ns:ManageSystemService"/>
    </plnk:partnerLinkType>
</definitions>
'
]

{ #category : #wsdl }
BPEL20BpelAnalyzerTest3 >> wsdl_RiskServiceWSWrapper [
^ '<?xml version="1.0" encoding="UTF-8"?>

<definitions
    xmlns="http://schemas.xmlsoap.org/wsdl/"
    xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/"
    xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
    xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="RiskServiceWSWrapper" targetNamespace="http://enterprise.netbeans.org/bpel/RiskServiceWSWrapper" xmlns:tns="http://enterprise.netbeans.org/bpel/RiskServiceWSWrapper" xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype" xmlns:ns="http://facade.data.risk.otc.crcc.com/">
    <import location="externalWSDL/riskEJB/RiskServiceWS.wsdl" namespace="http://facade.data.risk.otc.crcc.com/"/>
    <plnk:partnerLinkType name="RiskServiceWSLinkType">
        <plnk:role name="RiskServiceWSRole" portType="ns:RiskServiceWS"/>
    </plnk:partnerLinkType>
</definitions>
'
]

{ #category : #wsdl }
BPEL20BpelAnalyzerTest3 >> wsdl_getIncomingMessageFromJMSWSDL [
^ '<definitions 
	name="getIncomingMessageFromJMSWSDL" 
	targetNamespace="http://j2ee.netbeans.org/wsdl/processNovateTradeProcess/getIncomingMessageFromJMSWSDL"
    xmlns="http://schemas.xmlsoap.org/wsdl/"
    xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
    xmlns:xsd="http://www.w3.org/2001/XMLSchema" 
    xmlns:jms="http://schemas.sun.com/jbi/wsdl-extensions/jms/" 
    xmlns:tns="http://j2ee.netbeans.org/wsdl/processNovateTradeProcess/getIncomingMessageFromJMSWSDL" 
    xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype" 
    xmlns:ns0="http://xml.netbeans.org/schema/novateTradeComposed">
    <types>
        <xsd:schema targetNamespace="http://j2ee.netbeans.org/wsdl/processNovateTradeProcess/getIncomingMessageFromJMSWSDL">
            <xsd:import namespace="http://xml.netbeans.org/schema/novateTradeComposed" schemaLocation="novateTradeComposed.xsd"/>
        </xsd:schema>
    </types>   
    <message name="JMSInputMessage">
        <part name="part1" element="ns0:novateTradeComposed"/>
    </message>    
    <portType name="JMSInPortType">
        <operation name="JMSInOperation">
            <input name="input1" message="tns:JMSInputMessage"/>
        </operation>
    </portType>
    <binding name="JMSInBinding" type="tns:JMSInPortType">
        <jms:binding/>
        <operation name="JMSInOperation">
            <jms:operation destination="OTCIncomingMessagesQueue" destinationType="Queue" transaction="XATransaction" concurrencyMode="cc" maxConcurrentConsumers="30"/>
            <input name="input1">
                <jms:message messageType="TextMessage" textPart="part1"/>
            </input>
        </operation>
    </binding>
    <service name="JMSInService">
        <port name="getIncomingMessageFromJMSWSDL_InPort" binding="tns:JMSInBinding">
            <jms:address connectionURL="${JmsDefaultURL}" username="guest" password="guest">
                <jms:jmsjcaOptions><![CDATA[]]></jms:jmsjcaOptions>
            </jms:address>
        </port>
    </service>
    <plnk:partnerLinkType name="getIncomingMessageFromJMSWSDL">
        <!-- A partner link type is automatically generated when a new port type is added. Partner link types are used by BPEL processes. 
In a BPEL process, a partner link represents the interaction between the BPEL process and a partner service. Each partner link is associated with a partner link type.
A partner link type characterizes the conversational relationship between two services. The partner link type can have one or two roles.-->
        <plnk:role name="JMSInPortTypeRole" portType="tns:JMSInPortType"/>
    </plnk:partnerLinkType>
</definitions>
'
]

{ #category : #wsdl }
BPEL20BpelAnalyzerTest3 >> wsdl_novateTradeWSDL [
^ '<?xml version="1.0" encoding="UTF-8"?>
<definitions name="novateTradeWSDL" targetNamespace="http://j2ee.netbeans.org/wsdl/novateTrade-bpel/novateTradeWSDL"
    xmlns="http://schemas.xmlsoap.org/wsdl/"
    xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
    xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:tns="http://j2ee.netbeans.org/wsdl/novateTrade-bpel/novateTradeWSDL" xmlns:ns="http://xml.netbeans.org/schema/xsdNovateTrade" xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:wsu="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd" xmlns:wspp="http://java.sun.com/xml/ns/wsit/policy">
    <types>
        <xsd:schema targetNamespace="http://j2ee.netbeans.org/wsdl/novateTrade-bpel/novateTradeWSDL">
            <xsd:import namespace="http://xml.netbeans.org/schema/xsdNovateTrade" schemaLocation="xsdNovateTrade.xsd"/>
        </xsd:schema>
    </types>
    <message name="novateTradeRequest">
        <part name="rtc" element="ns:novateTrade"/>
	<part name="headerPart" element="ns:headerCRCC"/>
    </message>
    <portType name="novateTradeWSDLPortType">
        <operation name="novateTrade">
            <input name="input1" message="tns:novateTradeRequest"/>
        </operation>
    </portType>
    <binding name="novateTradeWSDLBinding" type="tns:novateTradeWSDLPortType">
        <soap:binding style="document" transport="http://schemas.xmlsoap.org/soap/http"/>
        <operation name="novateTrade">
            <soap:operation soapAction="novateTrade"/>
            <input name="input1">
                <soap:body use="literal" parts="rtc"/>
                <soap:header message="tns:novateTradeRequest" part="headerPart" use="literal"/>                
            </input>
        </operation>
    </binding>
    <service name="novateTradeWSDLService">
        <port name="novateTradeWSDLPort" binding="tns:novateTradeWSDLBinding">
            <soap:address location="http://localhost:${HttpDefaultPort}/novateTradeWSDLService/novateTradeWSDLPort"/>
        </port>
    </service>
    <plnk:partnerLinkType name="novateTradeWSDL">
        <!-- A partner link type is automatically generated when a new port type is added. Partner link types are used by BPEL processes. 
In a BPEL process, a partner link represents the interaction between the BPEL process and a partner service. Each partner link is associated with a partner link type.
A partner link type characterizes the conversational relationship between two services. The partner link type can have one or two roles.-->
        <plnk:role name="novateTradeWSDLPortTypeRole" portType="tns:novateTradeWSDLPortType"/>
    </plnk:partnerLinkType>
</definitions>
'
]

{ #category : #wsdl }
BPEL20BpelAnalyzerTest3 >> wsdl_processTradeConfirmedWSDL [
^ '<?xml version="1.0" encoding="UTF-8"?>
<definitions name="processTradeConfirmedWSDL" targetNamespace="http://j2ee.netbeans.org/wsdl/processNovateTradeProcess/processTradeConfirmedWSDL"
    xmlns="http://schemas.xmlsoap.org/wsdl/"
    xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
    xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:tns="http://j2ee.netbeans.org/wsdl/processNovateTradeProcess/processTradeConfirmedWSDL" xmlns:ns="http://xml.netbeans.org/schema/processTradeConfirmed" xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/">
    <types>
        <xsd:schema targetNamespace="http://j2ee.netbeans.org/wsdl/processNovateTradeProcess/processTradeConfirmedWSDL">
            <xsd:import namespace="http://xml.netbeans.org/schema/processTradeConfirmed" schemaLocation="processTradeConfirmed.xsd"/>
        </xsd:schema>
    </types>
    <message name="processTradeConfirmedWSDLOperationRequest">
        <part name="tradeConfirmedIn" element="ns:processNovateTradeIn"/>
    </message>
    <portType name="processTradeConfirmedWSDLPortType">
        <operation name="processTradeConfirmedWSDLOperation">
            <input name="input1" message="tns:processTradeConfirmedWSDLOperationRequest"/>
        </operation>
    </portType>
    <binding name="processTradeConfirmedWSDLBinding" type="tns:processTradeConfirmedWSDLPortType">
        <soap:binding style="document" transport="http://schemas.xmlsoap.org/soap/http"/>
        <operation name="processTradeConfirmedWSDLOperation">
            <soap:operation/>
            <input name="input1">
                <soap:body use="literal"/>
            </input>
        </operation>
    </binding>
    <service name="processTradeConfirmedWSDLService">
        <port name="processTradeConfirmedWSDLPort" binding="tns:processTradeConfirmedWSDLBinding">
            <soap:address location="http://localhost:${HttpDefaultPort}/processTradeConfirmedWSDLService/processTradeConfirmedWSDLPort"/>
        </port>
    </service>
    <plnk:partnerLinkType name="processTradeConfirmedWSDL">
        <!-- A partner link type is automatically generated when a new port type is added. Partner link types are used by BPEL processes. 
In a BPEL process, a partner link represents the interaction between the BPEL process and a partner service. Each partner link is associated with a partner link type.
A partner link type characterizes the conversational relationship between two services. The partner link type can have one or two roles.-->
        <plnk:role name="processTradeConfirmedWSDLPortTypeRole" portType="tns:processTradeConfirmedWSDLPortType"/>
    </plnk:partnerLinkType>
</definitions>
'
]

{ #category : #wsdl }
BPEL20BpelAnalyzerTest3 >> wsdl_putIncomingMessageToJMS [
^ '<definitions name="putIncomingMessageToJMS" targetNamespace="http://j2ee.netbeans.org/wsdl/novateTradeProcess/putIncomingMessageToJMS"
    xmlns="http://schemas.xmlsoap.org/wsdl/"
    xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
    xmlns:xsd="http://www.w3.org/2001/XMLSchema" 
    xmlns:jms="http://schemas.sun.com/jbi/wsdl-extensions/jms/" xmlns:tns="http://j2ee.netbeans.org/wsdl/novateTradeProcess/putIncomingMessageToJMS" xmlns:ns="http://xml.netbeans.org/schema/novateTradeComposed" xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype">
    <types>
        <xsd:schema targetNamespace="http://j2ee.netbeans.org/wsdl/novateTradeProcess/putIncomingMessageToJMS">
            <xsd:import namespace="http://xml.netbeans.org/schema/novateTradeComposed" schemaLocation="novateTradeComposed.xsd"/>
        </xsd:schema>
    </types>
    <message name="JMSInputMessage">
        <part name="part1" element="ns:novateTradeComposed"/>
    </message>  
    <portType name="JMSOutPortType">
        <operation name="JMSOutOperation">
            <input name="input1" message="tns:JMSInputMessage"/>
        </operation>
    </portType>
    <binding name="JMSOutBinding" type="tns:JMSOutPortType">
        <jms:binding/>
        <operation name="JMSOutOperation">
            <jms:operation destination="OTCIncomingMessagesQueue" destinationType="Queue" transaction="NoTransaction" deliveryMode="PERSISTENT" priority="4" timeout="300000" maxConcurrentConsumers="30" concurrencyMode="cc"/>
            <input name="input1">
                <jms:message messageType="TextMessage" textPart="part1"/>
            </input>
        </operation>
    </binding>
    <service name="JMSOutService">
        <port name="putIncomingMessageToJMS_OutPort" binding="tns:JMSOutBinding">
            <jms:address connectionURL="${JmsDefaultURL}" username="guest" password="guest">
                <jms:jmsjcaOptions><![CDATA[]]></jms:jmsjcaOptions>
            </jms:address>
        </port>
    </service>
    <plnk:partnerLinkType name="putIncomingMessageToJMS">
        <!-- A partner link type is automatically generated when a new port type is added. Partner link types are used by BPEL processes. 
In a BPEL process, a partner link represents the interaction between the BPEL process and a partner service. Each partner link is associated with a partner link type.
A partner link type characterizes the conversational relationship between two services. The partner link type can have one or two roles.-->
        <plnk:role name="JMSOutPortTypeRole" portType="tns:JMSOutPortType"/>
    </plnk:partnerLinkType>
</definitions>
'
]
