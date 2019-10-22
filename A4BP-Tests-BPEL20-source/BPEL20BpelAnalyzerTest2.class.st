Class {
	#name : #BPEL20BpelAnalyzerTest2,
	#superclass : #BPEL20BPSourceTest,
	#category : #'A4BP-Tests-BPEL20-source'
}

{ #category : #'as yet unclassified' }
BPEL20BpelAnalyzerTest2 >> novateTradeProcess [
^ '<?xml version="1.0" encoding="UTF-8"?>
<process
    name="novateTrade"
    targetNamespace="http://enterprise.netbeans.org/bpel/novateTradeProcess/novateTrade"
    xmlns="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
    xmlns:xsd="http://www.w3.org/2001/XMLSchema"
    xmlns:sxt="http://www.sun.com/wsbpel/2.0/process/executable/SUNExtension/Trace" 
    xmlns:sxed="http://www.sun.com/wsbpel/2.0/process/executable/SUNExtension/Editor"
    xmlns:sxeh="http://www.sun.com/wsbpel/2.0/process/executable/SUNExtension/ErrorHandling"
    xmlns:tns="http://enterprise.netbeans.org/bpel/novateTradeProcess/novateTrade" xmlns:ns0="http://xml.netbeans.org/schema/xsdNovateTrade" xmlns:ns1="http://schemas.xmlsoap.org/ws/2004/08/addressing" xmlns:sxxf="http://www.sun.com/wsbpel/2.0/process/executable/SUNExtension/XPathFunctions">
    <import namespace="http://j2ee.netbeans.org/wsdl/novateTrade-bpel/novateTradeWSDL" location="externalWSDL/novateTradeWSDL.wsdl" importType="http://schemas.xmlsoap.org/wsdl/"/>
    <import namespace="http://j2ee.netbeans.org/wsdl/novateTradeProcess/putIncomingMessageToJMS" location="putIncomingMessageToJMS.wsdl" importType="http://schemas.xmlsoap.org/wsdl/"/>
    <partnerLinks>
        <partnerLink name="putToJMS" xmlns:tns="http://j2ee.netbeans.org/wsdl/novateTradeProcess/putIncomingMessageToJMS" partnerLinkType="tns:putIncomingMessageToJMS" partnerRole="JMSOutPortTypeRole"/>
        <partnerLink name="novateTradePL" xmlns:tns="http://j2ee.netbeans.org/wsdl/novateTrade-bpel/novateTradeWSDL" partnerLinkType="tns:novateTradeWSDL" myRole="novateTradeWSDLPortTypeRole"/>
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
                    <from>concat(''START: getIncomingMessage RTC :'', sxxf:current-dateTime())</from>
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
</process>'
]

{ #category : #'as yet unclassified' }
BPEL20BpelAnalyzerTest2 >> novateTrade_bpel [
^ '<?xml version="1.0" encoding="UTF-8"?>
<process
    name="novateTradeProcess"
    targetNamespace="http://enterprise.netbeans.org/bpel/novateTrade-bpel/novateTradeProcess"
    xmlns="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
    xmlns:xsd="http://www.w3.org/2001/XMLSchema"
    xmlns:sxt="http://www.sun.com/wsbpel/2.0/process/executable/SUNExtension/Trace" 
    xmlns:sxed="http://www.sun.com/wsbpel/2.0/process/executable/SUNExtension/Editor"
    xmlns:sxeh="http://www.sun.com/wsbpel/2.0/process/executable/SUNExtension/ErrorHandling"
    xmlns:tns="http://enterprise.netbeans.org/bpel/novateTrade-bpel/novateTradeProcess" xmlns:ns0="http://xml.netbeans.org/schema/xsdNovateTrade">
    <import namespace="http://j2ee.netbeans.org/wsdl/novateTrade-bpel/novateTradeWSDL" location="novateTradeWSDL.wsdl" importType="http://schemas.xmlsoap.org/wsdl/"/>
    <import namespace="http://j2ee.netbeans.org/wsdl/novateTrade-bpel/fileWSDL" location="fileWSDL.wsdl" importType="http://schemas.xmlsoap.org/wsdl/"/>
    <import namespace="http://j2ee.netbeans.org/wsdl/novateTradeClient-bpl/processNovateResponseWSDL" location="registrySystem/processNovateResponseWSDLPort.wsdl" importType="http://schemas.xmlsoap.org/wsdl/"/>
    <partnerLinks>
        <partnerLink name="plFile" xmlns:tns="http://j2ee.netbeans.org/wsdl/novateTrade-bpel/fileWSDL" partnerLinkType="tns:fileWSDL" partnerRole="FileOutboundPortTypeRole"/>
        <partnerLink name="plRegistrySystem" xmlns:tns="http://j2ee.netbeans.org/wsdl/novateTradeClient-bpl/processNovateResponseWSDL" partnerLinkType="tns:processNovateResponseWSDL" partnerRole="processNovateResponseWSDLPortTypeRole"/>
        <partnerLink name="plNovateTrade" xmlns:tns="http://j2ee.netbeans.org/wsdl/novateTrade-bpel/novateTradeWSDL" partnerLinkType="tns:novateTradeWSDL" myRole="novateTradeWSDLPortTypeRole"/>
    </partnerLinks>
    <variables>
        <variable name="ProcessNovateResponseIn" xmlns:tns="http://j2ee.netbeans.org/wsdl/novateTradeClient-bpl/processNovateResponseWSDL" messageType="tns:processNovateResponseRequest"/>
        <variable name="WriteIn" xmlns:tns="http://j2ee.netbeans.org/wsdl/novateTrade-bpel/fileWSDL" messageType="tns:WriteInputMessage"/>
        <variable name="NovateTradeIn" xmlns:tns="http://j2ee.netbeans.org/wsdl/novateTrade-bpel/novateTradeWSDL" messageType="tns:novateTradeRequest"/>
    </variables>
    <sequence>
        <receive name="receiveNovateTrade" createInstance="yes" partnerLink="plNovateTrade" operation="novateTrade" xmlns:tns="http://j2ee.netbeans.org/wsdl/novateTrade-bpel/novateTradeWSDL" portType="tns:novateTradeWSDLPortType" variable="NovateTradeIn"/>
        <assign name="string2File">
            <copy>
                <from>$NovateTradeIn.rtc/ns0:fpMLMessage</from>
                <to variable="WriteIn" part="part1"/>
            </copy>
            <copy>
                <from>$NovateTradeIn.rtc/ns0:fpMLMessage</from>
                <to>$ProcessNovateResponseIn.fpMLMessage/ns0:fpMLMessage</to>
            </copy>
        </assign>
        <invoke name="toWriteFile" partnerLink="plFile" operation="write" xmlns:tns="http://j2ee.netbeans.org/wsdl/novateTrade-bpel/fileWSDL" portType="tns:FileOutboundPortType" inputVariable="WriteIn"/>
        <invoke name="toInvokeRegistrySystem" partnerLink="plRegistrySystem" operation="processNovateResponse" xmlns:tns="http://j2ee.netbeans.org/wsdl/novateTradeClient-bpl/processNovateResponseWSDL" portType="tns:processNovateResponseWSDLPortType" inputVariable="ProcessNovateResponseIn"/>
    </sequence>
</process>
'
]

{ #category : #'as yet unclassified' }
BPEL20BpelAnalyzerTest2 >> processNovateTradeProcess_processNovateTradeProcess [
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
                    <condition>''200'' != $parsingException.fault/reasonCode</condition>
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

{ #category : #'as yet unclassified' }
BPEL20BpelAnalyzerTest2 >> wsdl_processNovateTradeProcess_getIncomingMessageFromJMSWSDL [
^ '<definitions name="getIncomingMessageFromJMSWSDL" 
   targetNamespace="http://j2ee.netbeans.org/wsdl/processNovateTradeProcess/getIncomingMessageFromJMSWSDL"
   xmlns="http://schemas.xmlsoap.org/wsdl/"
   xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
   xmlns:xsd="http://www.w3.org/2001/XMLSchema" 
   xmlns:jms="http://schemas.sun.com/jbi/wsdl-extensions/jms/" 	 	   	xmlns:tns="http://j2ee.netbeans.org/wsdl/processNovateTradeProcess/getIncomingMessageFromJMSWSDL" 
	xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype" xmlns:ns0="http://xml.netbeans.org/schema/novateTradeComposed">
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
