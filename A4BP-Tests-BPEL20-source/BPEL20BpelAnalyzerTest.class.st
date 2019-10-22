Class {
	#name : #BPEL20BpelAnalyzerTest,
	#superclass : #BPEL20BPSourceTest,
	#category : #'A4BP-Tests-BPEL20-source'
}

{ #category : #'bpel_source' }
BPEL20BpelAnalyzerTest >> AddNonStandarizedContractsBPEL [
^ '<?xml version="1.0" encoding="UTF-8"?>
<process
    name="mergeContractsProcess"
    targetNamespace="http://enterprise.netbeans.org/bpel/AddNonStandarizedContractsBPEL/mergeContractsProcess"
    xmlns="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
    xmlns:xsd="http://www.w3.org/2001/XMLSchema"
    xmlns:sxt="http://www.sun.com/wsbpel/2.0/process/executable/SUNExtension/Trace" 
    xmlns:sxed="http://www.sun.com/wsbpel/2.0/process/executable/SUNExtension/Editor"
    xmlns:sxeh="http://www.sun.com/wsbpel/2.0/process/executable/SUNExtension/ErrorHandling"
    xmlns:tns="http://enterprise.netbeans.org/bpel/AddNonStandarizedContractsBPEL/mergeContractsProcess">
    <import namespace="http://j2ee.netbeans.org/wsdl/AddNonStandarizedContractsBPEL/getRemoteStandarizedFileWSDL" location="getRemoteStandarizedFileWSDL.wsdl" importType="http://schemas.xmlsoap.org/wsdl/"/>
    <import namespace="http://enterprise.netbeans.org/bpel/ContractsServiceWrapper" location="ContractsServiceWrapper.wsdl" importType="http://schemas.xmlsoap.org/wsdl/"/>
    <import namespace="http://data.contracts.otc.crcc.com/" location="externalWSDL/ContractsService.wsdl" importType="http://schemas.xmlsoap.org/wsdl/"/>
    <import namespace="http://j2ee.netbeans.org/wsdl/AddNonStandarizedContractsBPEL/putAllContractsRemoteWSDL" location="putAllContractsRemoteWSDL.wsdl" importType="http://schemas.xmlsoap.org/wsdl/"/>
    <partnerLinks>
        <partnerLink name="contractsFacade" xmlns:tns="http://enterprise.netbeans.org/bpel/ContractsServiceWrapper" partnerLinkType="tns:ContractsServiceLinkType" partnerRole="ContractsServiceRole"/>
        <partnerLink name="putRemoteFile" xmlns:tns="http://j2ee.netbeans.org/wsdl/AddNonStandarizedContractsBPEL/putAllContractsRemoteWSDL" partnerLinkType="tns:putAllContractsRemoteWSDL" partnerRole="OutboundOneWayTransferringPortTypeRole"/>
        <partnerLink name="getRemoteFile" xmlns:tns="http://j2ee.netbeans.org/wsdl/AddNonStandarizedContractsBPEL/getRemoteStandarizedFileWSDL" partnerLinkType="tns:getRemoteStandarizedFileWSDL" myRole="InboundOneWayTransferringPortTypeRole"/>
    </partnerLinks>
    <variables>
        <variable name="requestPutRemoteFileIn" xmlns:tns="http://j2ee.netbeans.org/wsdl/AddNonStandarizedContractsBPEL/putAllContractsRemoteWSDL" messageType="tns:OutboundOneWayTransferringOperationRequest"/>
        <variable name="responseGetNonStandarizedOut" xmlns:tns="http://data.contracts.otc.crcc.com/" messageType="tns:getContractsConsFilesResponse"/>
        <variable name="requestGetNonStandarizedIn" xmlns:tns="http://data.contracts.otc.crcc.com/" messageType="tns:getContractsConsFiles"/>
        <variable name="requestFileIn" xmlns:tns="http://j2ee.netbeans.org/wsdl/AddNonStandarizedContractsBPEL/getRemoteStandarizedFileWSDL" messageType="tns:InboundOneWayTransferringOperationRequest"/>
    </variables>
    <sequence>
        <receive name="getFTPFile" createInstance="yes" partnerLink="getRemoteFile" operation="InboundOneWayTransferringOperation" xmlns:tns="http://j2ee.netbeans.org/wsdl/AddNonStandarizedContractsBPEL/getRemoteStandarizedFileWSDL" portType="tns:InboundOneWayTransferringPortType" variable="requestFileIn"/>
        <assign name="datas">
            <copy>
                <from>''C2''</from>
                <to>$requestGetNonStandarizedIn.parameters/environment</to>
            </copy>
            <copy>
                <from>''01''</from>
                <to>$requestGetNonStandarizedIn.parameters/group</to>
            </copy>
        </assign>
        <invoke name="toGetNonStandarizedContracts" partnerLink="contractsFacade" operation="getContractsConsFiles" xmlns:tns="http://data.contracts.otc.crcc.com/" portType="tns:ContractsService" inputVariable="requestGetNonStandarizedIn" outputVariable="responseGetNonStandarizedOut"/>
        <assign name="standarized2All">
            <copy>
                <from>concat($requestFileIn.part1, $responseGetNonStandarizedOut.parameters/return)</from>
                <to variable="requestPutRemoteFileIn" part="part1"/>
            </copy>
        </assign>
        <invoke name="toPutRemoteFile" partnerLink="putRemoteFile" operation="OutboundOneWayTransferringOperation" xmlns:tns="http://j2ee.netbeans.org/wsdl/AddNonStandarizedContractsBPEL/putAllContractsRemoteWSDL" portType="tns:OutboundOneWayTransferringPortType" inputVariable="requestPutRemoteFileIn"/>
    </sequence>
</process>
'
]

{ #category : #'bpel_source' }
BPEL20BpelAnalyzerTest >> CallBackSendingMessageBPEL [
^ '<?xml version="1.0" encoding="UTF-8"?>
<process
    name="CallBackMessage"
    targetNamespace="http://enterprise.netbeans.org/bpel/CallBackSendingMessageBPEL/CallBackMessage"
    xmlns="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
    xmlns:xsd="http://www.w3.org/2001/XMLSchema"
    xmlns:sxt="http://www.sun.com/wsbpel/2.0/process/executable/SUNExtension/Trace" 
    xmlns:sxed="http://www.sun.com/wsbpel/2.0/process/executable/SUNExtension/Editor"
    xmlns:sxeh="http://www.sun.com/wsbpel/2.0/process/executable/SUNExtension/ErrorHandling"
    xmlns:tns="http://enterprise.netbeans.org/bpel/CallBackSendingMessageBPEL/CallBackMessage" xmlns:ns0="http://j2ee.netbeans.org/xsd/tableSchema" xmlns:ns1="http://xml.netbeans.org/schema/runtimePartner" xmlns:ns2="http://schemas.xmlsoap.org/ws/2004/08/addressing">
    <import namespace="http://j2ee.netbeans.org/wsdl/pollingViewDBSendingMessageWSDL" location="pollingViewDBSendingMessageWSDL.wsdl" importType="http://schemas.xmlsoap.org/wsdl/"/>
    <import namespace="http://j2ee.netbeans.org/wsdl/processNovateTradeBPEL/invokeCallbackPartnerLinkWSDL" location="externalWSDL/invokeCallbackPartnerLinkWSDL.wsdl" importType="http://schemas.xmlsoap.org/wsdl/"/>
    <partnerLinks>
        <partnerLink name="invokeCallBack" xmlns:tns="http://j2ee.netbeans.org/wsdl/processNovateTradeBPEL/invokeCallbackPartnerLinkWSDL" partnerLinkType="tns:invokeCallbackPartnerLinkWSDL" partnerRole="invokeCallbackPartnerLinkWSDLPortTypeRole"/>
        <partnerLink name="pollView" xmlns:tns="http://j2ee.netbeans.org/wsdl/pollingViewDBSendingMessageWSDL" partnerLinkType="tns:jdbcpartner" myRole="jdbcPortTypeRole"/>
    </partnerLinks>
    <variables>
        <variable name="responsePollRecordsIn" xmlns:tns="http://j2ee.netbeans.org/wsdl/pollingViewDBSendingMessageWSDL" messageType="tns:inputMsg"/>
        <variable name="requestInvokeCallbackOperationIn" xmlns:tns="http://j2ee.netbeans.org/wsdl/processNovateTradeBPEL/invokeCallbackPartnerLinkWSDL" messageType="tns:invokeCallbackPartnerLinkWSDLOperationRequest"/>
    </variables>
    <sequence>
        <receive name="getSendingMessage" createInstance="yes" partnerLink="pollView" operation="pollrecords" xmlns:tns="http://j2ee.netbeans.org/wsdl/pollingViewDBSendingMessageWSDL" portType="tns:jdbcPortType" variable="responsePollRecordsIn"/>
        <if name="FindMessages">
            <condition>$responsePollRecordsIn.part/ns0:CallBackMessage_Record</condition>
            <sequence name="Sequence1">
                <assign name="settingMessage">
                    <copy>
                        <from>$responsePollRecordsIn.part/ns0:CallBackMessage_Record/ns0:ID</from>
                            <to>$requestInvokeCallbackOperationIn.part1/ns1:fpmlMessageFK</to>
                    </copy>
                        <copy>
                        <from>$responsePollRecordsIn.part/ns0:CallBackMessage_Record/ns0:partyID</from>
                            <to>$requestInvokeCallbackOperationIn.part1/ns1:senderPartyID</to>
                    </copy>
                        <copy>
                        <from>$responsePollRecordsIn.part/ns0:CallBackMessage_Record/ns0:serviceAddress</from>
                            <to>$requestInvokeCallbackOperationIn.part1/ns1:endPointReference/ns2:Address</to>
                    </copy>
                        <copy>
                        <from>$responsePollRecordsIn.part/ns0:CallBackMessage_Record/ns0:message</from>
                            <to>$requestInvokeCallbackOperationIn.part1/ns1:fpMLMessageAsString</to>
                    </copy>
                        <copy>
                        <from>$responsePollRecordsIn.part/ns0:CallBackMessage_Record/ns0:portName</from>
                            <to>$requestInvokeCallbackOperationIn.part1/ns1:endPointReference/ns2:ServiceName/@PortName</to>
                    </copy>
                        <copy>
                        <from>$responsePollRecordsIn.part/ns0:CallBackMessage_Record/ns0:serviceName</from>
                            <to>$requestInvokeCallbackOperationIn.part1/ns1:endPointReference/ns2:ServiceName</to>
                    </copy>
                </assign>
                <invoke name="toInvokeCallBack" partnerLink="invokeCallBack" operation="invokeCallbackPartnerLinkWSDLOperation" xmlns:tns="http://j2ee.netbeans.org/wsdl/processNovateTradeBPEL/invokeCallbackPartnerLinkWSDL" portType="tns:invokeCallbackPartnerLinkWSDLPortType" inputVariable="requestInvokeCallbackOperationIn"/>
            </sequence>
        </if>
    </sequence>
</process>
'
]

{ #category : #'bpel_source' }
BPEL20BpelAnalyzerTest >> ClientProcessNovateTradeResponse [
^ '<?xml version="1.0" encoding="UTF-8"?>
<process
    name="processNovateTradeResponse"
    targetNamespace="http://enterprise.netbeans.org/bpel/ClientProcessNovateTradeResponse/processNovateTradeResponse"
    xmlns="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
    xmlns:xsd="http://www.w3.org/2001/XMLSchema"
    xmlns:sxt="http://www.sun.com/wsbpel/2.0/process/executable/SUNExtension/Trace" 
    xmlns:sxed="http://www.sun.com/wsbpel/2.0/process/executable/SUNExtension/Editor"
    xmlns:sxeh="http://www.sun.com/wsbpel/2.0/process/executable/SUNExtension/ErrorHandling"
    xmlns:tns="http://enterprise.netbeans.org/bpel/ClientProcessNovateTradeResponse/processNovateTradeResponse" xmlns:ns0="http://xml.netbeans.org/schema/xsdNovateTrade" xmlns:sxxf="http://www.sun.com/wsbpel/2.0/process/executable/SUNExtension/XPathFunctions">
    <import namespace="http://j2ee.netbeans.org/wsdl/novateTradeClient-bpl/processNovateResponseWSDL" location="externalWSDL/processNovateResponseWSDL.wsdl" importType="http://schemas.xmlsoap.org/wsdl/"/>
    <import namespace="http://j2ee.netbeans.org/wsdl/ClientProcessNovateTradeResponse/fileWSDL" location="fileWSDL.wsdl" importType="http://schemas.xmlsoap.org/wsdl/"/>
    <partnerLinks>
        <partnerLink name="file" xmlns:tns="http://j2ee.netbeans.org/wsdl/ClientProcessNovateTradeResponse/fileWSDL" partnerLinkType="tns:fileWSDL" partnerRole="FileOutboundPortTypeRole"/>
        <partnerLink name="processNovateResponse" xmlns:tns="http://j2ee.netbeans.org/wsdl/novateTradeClient-bpl/processNovateResponseWSDL" partnerLinkType="tns:processNovateResponseWSDL" myRole="processNovateResponseWSDLPortTypeRole"/>
    </partnerLinks>
    <variables>
        <variable name="ProcessNovateResponseIn" xmlns:tns="http://j2ee.netbeans.org/wsdl/novateTradeClient-bpl/processNovateResponseWSDL" messageType="tns:processNovateResponse"/>
        <variable name="WriteIn" xmlns:tns="http://j2ee.netbeans.org/wsdl/ClientProcessNovateTradeResponse/fileWSDL" messageType="tns:WriteInputMessage"/>
    </variables>
    <sequence>
        <receive name="Receive1" createInstance="yes" partnerLink="processNovateResponse" operation="processNovateResponse" xmlns:tns="http://j2ee.netbeans.org/wsdl/novateTradeClient-bpl/processNovateResponseWSDL" portType="tns:processNovateResponseWSDLPortType" variable="ProcessNovateResponseIn">
            <sxt:trace>
                <sxt:log level="fine" location="onStart">
                    <from>concat(''START: receiveMessage'', sxxf:current-time())</from>
                </sxt:log>
            </sxt:trace>
        </receive>
        <assign name="Assign1">
            <copy>
                <from>$ProcessNovateResponseIn.fpMLMessage/ns0:fpMLMessage</from>
                <to variable="WriteIn" part="part1"/>
            </copy>
        </assign>
        <invoke name="Invoke1" partnerLink="file" operation="write" xmlns:tns="http://j2ee.netbeans.org/wsdl/ClientProcessNovateTradeResponse/fileWSDL" portType="tns:FileOutboundPortType" inputVariable="WriteIn">
            <sxt:trace>
                <sxt:log level="fine" location="onComplete">
                    <from>concat(''FINISHED: writeMessage'', sxxf:current-time())</from>
                </sxt:log>
            </sxt:trace>
        </invoke>
    </sequence>
</process>
'
]

{ #category : #'bpel_source' }
BPEL20BpelAnalyzerTest >> ManageAccountsAndParticipantsBPEL [
^ '<?xml version="1.0" encoding="UTF-8"?>
<process
    name="ManageMEFFAccountsAndParticipants"
    targetNamespace="http://enterprise.netbeans.org/bpel/ManageAccountsAndParticipantsBPEL/ManageMEFFAccountsAndParticipants"
    xmlns="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
    xmlns:xsd="http://www.w3.org/2001/XMLSchema"
    xmlns:sxt="http://www.sun.com/wsbpel/2.0/process/executable/SUNExtension/Trace" 
    xmlns:sxed="http://www.sun.com/wsbpel/2.0/process/executable/SUNExtension/Editor"
    xmlns:sxeh="http://www.sun.com/wsbpel/2.0/process/executable/SUNExtension/ErrorHandling"
    xmlns:tns="http://enterprise.netbeans.org/bpel/ManageAccountsAndParticipantsBPEL/ManageMEFFAccountsAndParticipants">
   <import namespace="http://j2ee.netbeans.org/wsdl/ManageAccountsAndParticipantsBPEL/ReceiveAccountRemoteFileWSDL" location="ReceiveAccountRemoteFileWSDL.wsdl" importType="http://schemas.xmlsoap.org/wsdl/"/>
   <import namespace="http://j2ee.netbeans.org/wsdl/ManageAccountsAndParticipantsBPEL/getParticipantRemoteFileWSDL" location="GetPartiesRemoteFileWSDL.wsdl" importType="http://schemas.xmlsoap.org/wsdl/"/>
   <import namespace="http://enterprise.netbeans.org/bpel/PartiesAccountsServiceServiceWrapper" location="PartiesAccountsServiceServiceWrapper.wsdl" importType="http://schemas.xmlsoap.org/wsdl/"/>
   <import namespace="http://services.accounts.otc.crcc.com/" location="externalWSDL/PartiesAccountsServiceService.wsdl" importType="http://schemas.xmlsoap.org/wsdl/"/>
   <partnerLinks>
      <partnerLink name="plRemoteParticip" xmlns:tns="http://j2ee.netbeans.org/wsdl/ManageAccountsAndParticipantsBPEL/getParticipantRemoteFileWSDL" partnerLinkType="tns:getParticipantRemoteFileWSDL" partnerRole="ReceiveTransferringPortTypeRole">
         <documentation>this object do a ftp request on demand to get de participants information.
The kind from this object is: On demand receive transfer</documentation>
      </partnerLink>
      <partnerLink name="plAccountsServices" xmlns:tns="http://enterprise.netbeans.org/bpel/PartiesAccountsServiceServiceWrapper" partnerLinkType="tns:PartiesAccountsServiceLinkType" partnerRole="PartiesAccountsServiceRole">
         <documentation>This object do the comunication with the web service which expose the upgrade Accounts and parties method.
This method is located in the AccountsEJB project and follow the next steps in order to do the update
1. Inactivate all the parties an its accounts
2. Activate the participants and accounts which exist in the local BD.
3. activate the new participants
4. activate the new accounts</documentation>
      </partnerLink>
      <partnerLink name="plRemoteAccounts" xmlns:tns="http://j2ee.netbeans.org/wsdl/ManageAccountsAndParticipantsBPEL/ReceiveAccountRemoteFileWSDL" partnerLinkType="tns:ReceiveAccountRemoteFileWSDL" myRole="InboundOneWayTransferringPortTypeRole">
         <documentation>This object do a ftp poll in order to find an accounts file in the temporal file.
file name searched: cuentas
Object type: receive request</documentation>
      </partnerLink>
   </partnerLinks>
   <variables>
      <variable name="upgradeAccountsOut" xmlns:tns="http://services.accounts.otc.crcc.com/" messageType="tns:upgradeAccountsResponse"/>
      <variable name="upgradeAccountsIn" xmlns:tns="http://services.accounts.otc.crcc.com/" messageType="tns:upgradeAccounts"/>
      <variable name="getParticipantsOut" xmlns:tns="http://j2ee.netbeans.org/wsdl/ManageAccountsAndParticipantsBPEL/getParticipantRemoteFileWSDL" messageType="tns:ReceiveTransferringOperationResponse"/>
      <variable name="getParticipantsIn" xmlns:tns="http://j2ee.netbeans.org/wsdl/ManageAccountsAndParticipantsBPEL/getParticipantRemoteFileWSDL" messageType="tns:ReceiveTransferringOperationRequest"/>
      <variable name="receivingAccountsIn" xmlns:tns="http://j2ee.netbeans.org/wsdl/ManageAccountsAndParticipantsBPEL/ReceiveAccountRemoteFileWSDL" messageType="tns:InboundOneWayTransferringOperationRequest"/>
   </variables>
   <sequence>
      <receive name="receiveAccounts" createInstance="yes" partnerLink="plRemoteAccounts" operation="InboundOneWayTransferringOperation" xmlns:tns="http://j2ee.netbeans.org/wsdl/ManageAccountsAndParticipantsBPEL/ReceiveAccountRemoteFileWSDL" portType="tns:InboundOneWayTransferringPortType" variable="receivingAccountsIn">
         <documentation>This is the receiver from the poll object wich get the accounts information</documentation>
      </receive>
      <repeatUntil name="repeatUntilParticipantsNotLoaded">
         <documentation>This loop finish when the program find the pariticipants file. When it finish the system could be sure that both files are in the ftp remote location and it can start to do the rest of the process</documentation>
         <sequence name="LookingForParties">
            <assign name="intializeParticipantIn">
               <documentation>this is the first assign to the variable which is used to ask for the participants file.</documentation>
               <copy>
                  <from>''</from>
                     <to variable="getParticipantsIn" part="part1"/>
               </copy>
            </assign>
            <invoke name="getParties" partnerLink="plRemoteParticip" operation="ReceiveTransferringOperation" xmlns:tns="http://j2ee.netbeans.org/wsdl/ManageAccountsAndParticipantsBPEL/getParticipantRemoteFileWSDL" portType="tns:ReceiveTransferringPortType" inputVariable="getParticipantsIn" outputVariable="getParticipantsOut">
               <documentation>This object do the invoke to the object which is able to get the participant file
the filename from the archive is: particip</documentation>
            </invoke>
            <wait name="WaitForSomeSeconds">
               <documentation>this object introduce a delay for the next request from the participantes file (if it doesn''t exist)</documentation>
               <for>''P0Y0M0DT0H0M5.0S''</for>
            </wait>
         </sequence>
         <condition>$getParticipantsOut.part1 != ''</condition>
      </repeatUntil>
      <assign name="File2UpgradeAccounts">
         <documentation>after the system has both files, this object do the assign for the cuentas an particip files to the remote method called upgradeAccounts</documentation>
         <copy>
               <from variable="receivingAccountsIn" part="part1"/>
                  <to>$upgradeAccountsIn.parameters/accounts</to>
            </copy>
            <copy>
               <from variable="getParticipantsOut" part="part1"/>
                  <to>$upgradeAccountsIn.parameters/parties</to>
            </copy>
      </assign>
      <invoke name="toUpgradeAccounts" partnerLink="plAccountsServices" operation="upgradeAccounts" xmlns:tns="http://services.accounts.otc.crcc.com/" portType="tns:PartiesAccountsService" inputVariable="upgradeAccountsIn" outputVariable="upgradeAccountsOut">
         <documentation>This method do the invoke to the object who call the remote web service</documentation>
      </invoke>
   </sequence>
</process>
'
]

{ #category : #'bpel_source' }
BPEL20BpelAnalyzerTest >> MeffServicesBPEL [
^ '<?xml version="1.0" encoding="UTF-8"?>
<process
    name="RequesTradeProcess"
    targetNamespace="http://enterprise.netbeans.org/bpel/MeffServicesBPEL/RequesTradeProcess"
    xmlns="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
    xmlns:xsd="http://www.w3.org/2001/XMLSchema"
    xmlns:sxt="http://www.sun.com/wsbpel/2.0/process/executable/SUNExtension/Trace" 
    xmlns:sxed="http://www.sun.com/wsbpel/2.0/process/executable/SUNExtension/Editor"
    xmlns:sxeh="http://www.sun.com/wsbpel/2.0/process/executable/SUNExtension/ErrorHandling"
    xmlns:tns="http://enterprise.netbeans.org/bpel/MeffServicesBPEL/RequesTradeProcess" xmlns:ns0="http://xml.netbeans.org/schema/Meff" xmlns:sxnmp="http://www.sun.com/wsbpel/2.0/process/executable/SUNExtension/NMProperty">
    <import namespace="http://j2ee.netbeans.org/wsdl/MeffServicesBPEL/RequestTradeWSDL" location="RequestTradeWSDL.wsdl" importType="http://schemas.xmlsoap.org/wsdl/"/>
    <import namespace="http://enterprise.netbeans.org/bpel/MeffServiceWrapper" location="MeffServiceWrapper.wsdl" importType="http://schemas.xmlsoap.org/wsdl/"/>
    <import namespace="http://facade.data.otc.crcc.com/" location="externalWSDL/MeffService.wsdl" importType="http://schemas.xmlsoap.org/wsdl/"/>
    <partnerLinks>
        <partnerLink name="meffFacade" xmlns:tns="http://enterprise.netbeans.org/bpel/MeffServiceWrapper" partnerLinkType="tns:MeffServiceLinkType" partnerRole="MeffServiceRole"/>        
        <partnerLink name="requestTrade" xmlns:tns="http://j2ee.netbeans.org/wsdl/MeffServicesBPEL/RequestTradeWSDL" partnerLinkType="tns:RequestTradeWSDL" myRole="RequestTradeWSDLPortTypeRole"/>
    </partnerLinks>
    <variables>
        <variable name="requestAddTradeIn" xmlns:tns="http://facade.data.otc.crcc.com/" messageType="tns:addTrade"/>
        <variable name="Trade2StringOut" xmlns:tns="http://facade.data.otc.crcc.com/" messageType="tns:trade2StringResponse"/>
        <variable name="Trade2StringIn" xmlns:tns="http://facade.data.otc.crcc.com/" messageType="tns:trade2String"/>
        <variable name="responseTradeOut" xmlns:tns="http://j2ee.netbeans.org/wsdl/MeffServicesBPEL/RequestTradeWSDL" messageType="tns:RequestTradeWSDLOperationResponse"/>
        <variable name="requestTradeIn" xmlns:tns="http://j2ee.netbeans.org/wsdl/MeffServicesBPEL/RequestTradeWSDL" messageType="tns:RequestTradeWSDLOperationRequest"/>
    </variables>
    <faultHandlers>
        <catchAll>
            <sequence name="Sequence1">
                <assign name="Assign1">
                    <copy>
                        <from>''MEFF SERVICES ERROR TEMP''</from>
                        <to>$responseTradeOut.response/ns0:response/ns0:meffTradeID</to>
                    </copy>
                </assign>
                <reply name="Reply1" partnerLink="requestTrade" operation="RequestTradeWSDLOperation" xmlns:tns="http://j2ee.netbeans.org/wsdl/MeffServicesBPEL/RequestTradeWSDL" portType="tns:RequestTradeWSDLPortType" variable="responseTradeOut"/>
            </sequence>
        </catchAll>
    </faultHandlers>
    <sequence>
        <receive name="getRequestTrade" createInstance="yes" partnerLink="requestTrade" operation="RequestTradeWSDLOperation" xmlns:tns="http://j2ee.netbeans.org/wsdl/MeffServicesBPEL/RequestTradeWSDL" portType="tns:RequestTradeWSDLPortType" variable="requestTradeIn"/>
        <assign name="request2String">
            <copy>
                <from>$requestTradeIn.request/ns0:request/ns0:contractId</from>
                <to>$requestAddTradeIn.parameters/trade/contrato</to>
            </copy>
            <copy>
                <from>$requestTradeIn.request/ns0:request/ns0:buyerAccount</from>
                <to>$requestAddTradeIn.parameters/trade/cuentaSubcuentaCompradora</to>
            </copy>
            <copy>
                <from>$requestTradeIn.request/ns0:request/ns0:sellerAccount</from>
                <to>$requestAddTradeIn.parameters/trade/cuentaSubcuentaVendedora</to>
            </copy>
            <copy>
                <from>$requestTradeIn.request/ns0:request/ns0:price</from>
                <to>$requestAddTradeIn.parameters/trade/precio</to>
            </copy>
            <copy>
                <from>$requestTradeIn.request/ns0:request/ns0:amount</from>
                <to>$requestAddTradeIn.parameters/trade/volumen</to>
            </copy>
            <copy>
                <from>$requestTradeIn.request/ns0:request/ns0:operationType</from>
                <to>$requestAddTradeIn.parameters/trade/tipoOperacion</to>
            </copy>
            <copy>
                <from>$requestTradeIn.request/ns0:request/ns0:originalTradeId</from>
                <to>$requestAddTradeIn.parameters/trade/numeroRegistroNegociacion</to>
            </copy>
            <copy>
                <from>$requestTradeIn.request/ns0:request/ns0:date</from>
                <to>$requestAddTradeIn.parameters/trade/fechaEjecucion</to>
            </copy>
            <copy>
                <from>$requestTradeIn.request/ns0:request/ns0:time</from>
                <to>$requestAddTradeIn.parameters/trade/horaEjecucion</to>
            </copy>
            <copy>
                <from>$requestTradeIn.request/ns0:request/ns0:buyerCode</from>
                <to>$requestAddTradeIn.parameters/trade/miembroComprador</to>
            </copy>
            <copy>
                <from>$requestTradeIn.request/ns0:request/ns0:sellerCode</from>
                <to>$requestAddTradeIn.parameters/trade/miembroVendedor</to>
            </copy>
            <copy>
                <from>''CRCC''</from>
                <to>$requestAddTradeIn.parameters/trade/miembroIntermediario</to>
            </copy>
            <copy>
                <from>$requestTradeIn.request/ns0:request/ns0:registrationSystem</from>
                <to>$requestAddTradeIn.parameters/trade/referenciaIntermediario</to>
            </copy>
        </assign>
        <invoke name="toAddTrade" partnerLink="meffFacade" operation="addTrade" xmlns:tns="http://facade.data.otc.crcc.com/" portType="tns:MeffService" inputVariable="requestAddTradeIn"/>
        <assign name="JMS2Response">
            <copy>
                <from>''ACEPTADO''</from>
                <to>$responseTradeOut.response/ns0:response/ns0:meffTradeID</to>
            </copy>
        </assign>
        <reply name="response" partnerLink="requestTrade" operation="RequestTradeWSDLOperation" xmlns:tns="http://j2ee.netbeans.org/wsdl/MeffServicesBPEL/RequestTradeWSDL" portType="tns:RequestTradeWSDLPortType" variable="responseTradeOut"/>
    </sequence>
</process>'
]

{ #category : #'bpel_source' }
BPEL20BpelAnalyzerTest >> novateTradeClientProcess [
^ '<?xml version="1.0" encoding="UTF-8"?>
<process
    name="novateTradeClientProcess"
    targetNamespace="http://enterprise.netbeans.org/bpel/novateTradeClient-bpl/novateTradeClientProcess"
    xmlns="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
    xmlns:xsd="http://www.w3.org/2001/XMLSchema"
    xmlns:sxt="http://www.sun.com/wsbpel/2.0/process/executable/SUNExtension/Trace" 
    xmlns:sxed="http://www.sun.com/wsbpel/2.0/process/executable/SUNExtension/Editor"
    xmlns:sxeh="http://www.sun.com/wsbpel/2.0/process/executable/SUNExtension/ErrorHandling"
    xmlns:tns="http://enterprise.netbeans.org/bpel/novateTradeClient-bpl/novateTradeClientProcess" xmlns:ns0="http://xml.netbeans.org/schema/xsdNovateTrade">
    <import namespace="http://j2ee.netbeans.org/wsdl/novateTradeClient-bpl/sendTradeToCRCCWSDL" location="sendTradeToCRCCWSDL.wsdl" importType="http://schemas.xmlsoap.org/wsdl/"/>
    <import namespace="http://j2ee.netbeans.org/wsdl/novateTrade-bpel/novateTradeWSDL" location="server/novateTradeWSDL.wsdl" importType="http://schemas.xmlsoap.org/wsdl/"/>
    <partnerLinks>
        <partnerLink name="plInvokeCRCC" xmlns:tns="http://j2ee.netbeans.org/wsdl/novateTrade-bpel/novateTradeWSDL" partnerLinkType="tns:novateTradeWSDL" partnerRole="novateTradeWSDLPortTypeRole"/>
        <partnerLink name="plInput" xmlns:tns="http://j2ee.netbeans.org/wsdl/novateTradeClient-bpl/sendTradeToCRCCWSDL" partnerLinkType="tns:sendTradeToCRCCWSDL" myRole="sendTradeToCRCCWSDLPortTypeRole"/>
    </partnerLinks>
    <variables>
        <variable name="NovateTradeIn" xmlns:tns="http://j2ee.netbeans.org/wsdl/novateTrade-bpel/novateTradeWSDL" messageType="tns:novateTradeRequest"/>
        <variable name="SendTradeToCRCCIn" xmlns:tns="http://j2ee.netbeans.org/wsdl/novateTradeClient-bpl/sendTradeToCRCCWSDL" messageType="tns:sendTradeToCRCCRequest"/>
    </variables>
    <sequence>
        <receive name="receiveInput" createInstance="yes" partnerLink="plInput" operation="sendTradeToCRCC" xmlns:tns="http://j2ee.netbeans.org/wsdl/novateTradeClient-bpl/sendTradeToCRCCWSDL" portType="tns:sendTradeToCRCCWSDLPortType" variable="SendTradeToCRCCIn"/>
        <assign name="Input2novateTrade">
            <copy>
                <from>concat(''BUYER: '', $SendTradeToCRCCIn.part1/ns0:comprador, ''SELLER: '', $SendTradeToCRCCIn.part1/ns0:vendedor)</from>
                <to>$NovateTradeIn.rtc/ns0:fpMLMessage</to>
            </copy>
        </assign>
        <invoke name="invokeNovateTrade" partnerLink="plInvokeCRCC" operation="novateTrade" xmlns:tns="http://j2ee.netbeans.org/wsdl/novateTrade-bpel/novateTradeWSDL" portType="tns:novateTradeWSDLPortType" inputVariable="NovateTradeIn"/>
    </sequence>
</process>
'
]

{ #category : #'bpel_source' }
BPEL20BpelAnalyzerTest >> novateTradeProcess [
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

{ #category : #'bpel_source' }
BPEL20BpelAnalyzerTest >> novateTrade_bpel [
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

{ #category : #'bpel_source' }
BPEL20BpelAnalyzerTest >> processNovateResponseProcess [
^ '<?xml version="1.0" encoding="UTF-8"?>
<process
    name="processNovateResponseProcess"
    targetNamespace="http://enterprise.netbeans.org/bpel/novateTradeClient-bpl/processNovateResponseProcess"
    xmlns="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
    xmlns:xsd="http://www.w3.org/2001/XMLSchema"
    xmlns:sxt="http://www.sun.com/wsbpel/2.0/process/executable/SUNExtension/Trace" 
    xmlns:sxed="http://www.sun.com/wsbpel/2.0/process/executable/SUNExtension/Editor"
    xmlns:sxeh="http://www.sun.com/wsbpel/2.0/process/executable/SUNExtension/ErrorHandling"
    xmlns:tns="http://enterprise.netbeans.org/bpel/novateTradeClient-bpl/processNovateResponseProcess" xmlns:ns0="http://xml.netbeans.org/schema/xsdNovateTrade">
    <import namespace="http://j2ee.netbeans.org/wsdl/novateTradeClient-bpl/responsesClientWriterWSDL" location="responsesClientWriterWSDL.wsdl" importType="http://schemas.xmlsoap.org/wsdl/"/>
    <import namespace="http://j2ee.netbeans.org/wsdl/novateTradeClient-bpl/processNovateResponseWSDL" location="processNovateResponseWSDL.wsdl" importType="http://schemas.xmlsoap.org/wsdl/"/>
    <partnerLinks>
        <partnerLink name="plProcessNovateResponse" xmlns:tns="http://j2ee.netbeans.org/wsdl/novateTradeClient-bpl/processNovateResponseWSDL" partnerLinkType="tns:processNovateResponseWSDL" myRole="processNovateResponseWSDLPortTypeRole"/>
        <partnerLink name="plWriter" xmlns:tns="http://j2ee.netbeans.org/wsdl/novateTradeClient-bpl/responsesClientWriterWSDL" partnerLinkType="tns:responsesClientWriterWSDL" partnerRole="FileOutboundPortTypeRole"/>
    </partnerLinks>
    <variables>
        <variable name="WriteIn" xmlns:tns="http://j2ee.netbeans.org/wsdl/novateTradeClient-bpl/responsesClientWriterWSDL" messageType="tns:WriteInputMessage"/>
        <variable name="FpmlIn" xmlns:tns="http://j2ee.netbeans.org/wsdl/novateTradeClient-bpl/processNovateResponseWSDL" messageType="tns:processNovateResponseRequest"/>
    </variables>
    <sequence>
        <receive name="getFmpl" createInstance="yes" partnerLink="plProcessNovateResponse" operation="processNovateResponse" xmlns:tns="http://j2ee.netbeans.org/wsdl/novateTradeClient-bpl/processNovateResponseWSDL" portType="tns:processNovateResponseWSDLPortType" variable="FpmlIn"/>
        <assign name="Fpml2Writer">
            <copy>
                <from>$FpmlIn.fpMLMessage/ns0:fpMLMessage</from>
                <to variable="WriteIn" part="part1"/>
            </copy>
        </assign>
        <invoke name="toWriteResponse" partnerLink="plWriter" operation="write" xmlns:tns="http://j2ee.netbeans.org/wsdl/novateTradeClient-bpl/responsesClientWriterWSDL" portType="tns:FileOutboundPortType" inputVariable="WriteIn"/>
    </sequence>
</process>'
]

{ #category : #'bpel_source2_processNovateTradeProcess' }
BPEL20BpelAnalyzerTest >> processNovateTradeProcess_invokeCallbackProcess [
^ '<?xml version="1.0" encoding="UTF-8"?>
<process
    name="invokeCallbackProcess"
    targetNamespace="http://enterprise.netbeans.org/bpel/processNovateTradeBPEL/invokeCallbackProcess"
    xmlns="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
    xmlns:xsd="http://www.w3.org/2001/XMLSchema"
    xmlns:sxt="http://www.sun.com/wsbpel/2.0/process/executable/SUNExtension/Trace" 
    xmlns:sxed="http://www.sun.com/wsbpel/2.0/process/executable/SUNExtension/Editor"
    xmlns:sxeh="http://www.sun.com/wsbpel/2.0/process/executable/SUNExtension/ErrorHandling"
    xmlns:tns="http://enterprise.netbeans.org/bpel/processNovateTradeBPEL/invokeCallbackProcess" xmlns:ns0="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:ns1="http://xml.netbeans.org/schema/runtimePartner" xmlns:ns2="http://xml.netbeans.org/schema/xsdNovateTrade" xmlns:ns3="http://j2ee.netbeans.org/wsdl/processNovateTradeBPEL/invokeCallbackPartnerLinkWSDL" xmlns:ns4="http://schemas.xmlsoap.org/ws/2004/08/addressing" xmlns:sxxf="http://www.sun.com/wsbpel/2.0/process/executable/SUNExtension/XPathFunctions" xmlns:ns5="http://j2ee.netbeans.org/xsd/tableSchema">
    <documentation>The process allow to invoke dinamically a registration system by using the partyID of sender (placed on "send by" field on the header of original incoming request trade confirmation message). In addition the process get a URL form end point reference and add a ? wsdl in order to get the WSDL URL. based on partyID, go to database to get the certificate serial number</documentation>
    <import namespace="http://j2ee.netbeans.org/wsdl/novateTradeClient-bpl/processNovateResponseWSDL" location="externalWSDL/processNovateTradeResponse/processNovateResponseWSDL.wsdl" importType="http://schemas.xmlsoap.org/wsdl/"/>
    <import namespace="http://j2ee.netbeans.org/wsdl/processNovateTradeBPEL/invokeCallbackPartnerLinkWSDL" location="invokeCallbackPartnerLinkWSDL.wsdl" importType="http://schemas.xmlsoap.org/wsdl/"/>
    <import namespace="http://xml.netbeans.org/schema/runtimePartner" location="externalWSDL/xsd/runtimePartner.xsd" importType="http://www.w3.org/2001/XMLSchema"/>
    <import namespace="http://enterprise.netbeans.org/bpel/ProcessNovateTradeResponseConsumerServiceWrapper" location="ProcessNovateTradeResponseConsumerServiceWrapper.wsdl" importType="http://schemas.xmlsoap.org/wsdl/"/>
    <import namespace="http://otc.crcc.com/" location="externalWSDL/processNovateTradeConsumer/ProcessNovateTradeResponseConsumerService.wsdl" importType="http://schemas.xmlsoap.org/wsdl/"/>
    <import namespace="http://facade.manage.data.otc.crcc.com/" location="externalWSDL/ManageSystem/ManageSystemService.wsdl" importType="http://schemas.xmlsoap.org/wsdl/"/>
    <import namespace="http://enterprise.netbeans.org/bpel/ManageSystemServiceWrapper" location="ManageSystemServiceWrapper.wsdl" importType="http://schemas.xmlsoap.org/wsdl/"/>
    <import namespace="http://j2ee.netbeans.org/wsdl/sendingMessageControl" location="sendingMessageControl.wsdl" importType="http://schemas.xmlsoap.org/wsdl/"/>
    <partnerLinks>
        <partnerLink name="ManageSystemService" xmlns:tns="http://enterprise.netbeans.org/bpel/ManageSystemServiceWrapper" partnerLinkType="tns:ManageSystemServiceLinkType" partnerRole="ManageSystemServiceRole"/>
        <partnerLink name="processNovateTradeResponseConsumer" xmlns:tns="http://enterprise.netbeans.org/bpel/ProcessNovateTradeResponseConsumerServiceWrapper" partnerLinkType="tns:processNovateTradeResponseConsumerLinkType" partnerRole="processNovateTradeResponseConsumerRole">
            <documentation>Invoke dynamically the registration system based on wsdl URL and cert serail number</documentation>
        </partnerLink>
        <partnerLink name="toInserStateMessage" xmlns:tns="http://j2ee.netbeans.org/wsdl/sendingMessageControl" partnerLinkType="tns:jdbcpartner" partnerRole="jdbcPortTypeRole"/>
        <partnerLink name="invokeCallback" xmlns:tns="http://j2ee.netbeans.org/wsdl/processNovateTradeBPEL/invokeCallbackPartnerLinkWSDL" partnerLinkType="tns:invokeCallbackPartnerLinkWSDL" myRole="invokeCallbackPartnerLinkWSDLPortTypeRole">
            <documentation>This partner get the request form external usert that pretend send message to external system</documentation>
        </partnerLink>
    </partnerLinks>
    <variables>
        <variable name="requestUpdateBadMessageIn" xmlns:tns="http://j2ee.netbeans.org/wsdl/sendingMessageControl" messageType="tns:inputMsg"/>
        <variable name="responseFindBadMessageOut" xmlns:tns="http://j2ee.netbeans.org/wsdl/sendingMessageControl" messageType="tns:outputMsg"/>
        <variable name="requestFindBadMessageIn" xmlns:tns="http://j2ee.netbeans.org/wsdl/sendingMessageControl" messageType="tns:inputMsg"/>
        <variable name="requestMessageUpdateIn" xmlns:tns="http://j2ee.netbeans.org/wsdl/sendingMessageControl" messageType="tns:inputMsg"/>
        <variable name="responseMessageFindOut" xmlns:tns="http://j2ee.netbeans.org/wsdl/sendingMessageControl" messageType="tns:outputMsg"/>
        <variable name="requestFindMessageIn" xmlns:tns="http://j2ee.netbeans.org/wsdl/sendingMessageControl" messageType="tns:inputMsg"/>
        <variable name="responseInsertBadMessageOut" xmlns:tns="http://j2ee.netbeans.org/wsdl/sendingMessageControl" messageType="tns:insertRetMsg"/>
        <variable name="requestInsertBadMessageIn" xmlns:tns="http://j2ee.netbeans.org/wsdl/sendingMessageControl" messageType="tns:inputMsg"/>
        <variable name="responseInsertGoodMessageOut" xmlns:tns="http://j2ee.netbeans.org/wsdl/sendingMessageControl" messageType="tns:insertRetMsg"/>
        <variable name="requestInsertGoodMessageIn" xmlns:tns="http://j2ee.netbeans.org/wsdl/sendingMessageControl" messageType="tns:inputMsg"/>
        <variable name="responseManageGetRegistrationSystemOut" xmlns:tns="http://facade.manage.data.otc.crcc.com/" messageType="tns:getRegistrationSystemResponse"/>
        <variable name="requestManageGetRegistrationSystemIn" xmlns:tns="http://facade.manage.data.otc.crcc.com/" messageType="tns:getRegistrationSystem"/>
        <variable name="finalizationMessage" type="xsd:string"/>
        <variable name="responseConsumeRegistrationSystemOut" xmlns:tns="http://otc.crcc.com/" messageType="tns:consumeRegistrationSystemResponse"/>
        <variable name="requestConsumeRegistrationSystemIn" xmlns:tns="http://otc.crcc.com/" messageType="tns:consumeRegistrationSystem"/>
        <variable name="InvokeCallbackPartnerLinkWSDLOperationIn" xmlns:tns="http://j2ee.netbeans.org/wsdl/processNovateTradeBPEL/invokeCallbackPartnerLinkWSDL" messageType="tns:invokeCallbackPartnerLinkWSDLOperationRequest"/>        
    </variables>
    <sequence>
        <receive name="getAddress" createInstance="yes" partnerLink="invokeCallback" operation="invokeCallbackPartnerLinkWSDLOperation" xmlns:tns="http://j2ee.netbeans.org/wsdl/processNovateTradeBPEL/invokeCallbackPartnerLinkWSDL" portType="tns:invokeCallbackPartnerLinkWSDLPortType" variable="InvokeCallbackPartnerLinkWSDLOperationIn">
            <documentation>This activity get the incoming message</documentation>
        </receive>        
        <assign name="incoming2GetRegistrationSystem">
            <documentation>assing from incoming message to getRegistration System</documentation>
            <copy>
                <from>$InvokeCallbackPartnerLinkWSDLOperationIn.part1/ns1:senderPartyID</from>
                <to>$requestManageGetRegistrationSystemIn.parameters/partyID</to>
            </copy>
        </assign>
        <invoke name="toGetRegistrationSystem" partnerLink="ManageSystemService" operation="getRegistrationSystem" xmlns:tns="http://facade.manage.data.otc.crcc.com/" portType="tns:ManageSystemService" inputVariable="requestManageGetRegistrationSystemIn" outputVariable="responseManageGetRegistrationSystemOut"/>
        <assign name="incomingMessage2Callback">
            <documentation>to Get the information related with registration system. Exactly that nedd the certSerialNumber</documentation>
            <copy>
                <from>concat(string($InvokeCallbackPartnerLinkWSDLOperationIn.part1/ns1:endPointReference/ns4:Address), ''?wsdl'')</from>
                <to>$requestConsumeRegistrationSystemIn.parameters/uRL</to>
            </copy>
            <copy>
                <from>$InvokeCallbackPartnerLinkWSDLOperationIn.part1/ns1:fpMLMessageAsString</from>
                <to>$requestConsumeRegistrationSystemIn.parameters/response</to>
            </copy>
            <copy>
                <from>$responseManageGetRegistrationSystemOut.parameters/return/certSerialNumber</from>
                <to>$requestConsumeRegistrationSystemIn.parameters/certSerialNumber</to>
            </copy>
        </assign>
        <invoke name="toInvokeCallback" partnerLink="processNovateTradeResponseConsumer" operation="consumeRegistrationSystem" xmlns:tns="http://otc.crcc.com/" portType="tns:processNovateTradeResponseConsumer" inputVariable="requestConsumeRegistrationSystemIn" outputVariable="responseConsumeRegistrationSystemOut">
            <documentation>To invoke the callback method on registration system in order to delivery the fpml message</documentation>
        </invoke>
        <if name="IfInvokeCallback">
            <condition>$responseConsumeRegistrationSystemOut.parameters/return</condition>
            <sequence name="Sequence1">
                <assign name="settingGoodFinalizationMessage">
                    <documentation>In this fragment a info log is write on the system to indicate the response was delivered sucessfully</documentation>
                        <sxt:trace>
                            <sxt:log level="info" location="onComplete">
                                    <from variable="finalizationMessage"/>
                                </sxt:log>
                        </sxt:trace>
                        <copy>
                            <from>concat(''The response message was delivered sucessfully to: '', $InvokeCallbackPartnerLinkWSDLOperationIn.part1/ns1:senderPartyID, '' At: '', sxxf:current-dateTime(), '' On: '', $InvokeCallbackPartnerLinkWSDLOperationIn.part1/ns1:endPointReference/ns4:Address)</from>
                                <to variable="finalizationMessage"/>
                        </copy>
                </assign>
                <if name="Secuence3">
                    <documentation>If fpmlMessageFK is null not insert to the table sendingMessage</documentation>
                    <condition>$InvokeCallbackPartnerLinkWSDLOperationIn.part1/ns1:fpmlMessageFK != 0</condition>
                    <sequence name="Sequence3">
                        <assign name="settingFindMessage">
                            <copy>
                                <from>$InvokeCallbackPartnerLinkWSDLOperationIn.part1/ns1:fpmlMessageFK</from>
                                <to>$requestFindMessageIn.part/ns5:FPML_SENDING_MESSAGE_ESTATE_Record/ns5:message_ID</to>
                            </copy>
                        </assign>
                        <invoke name="findMessageOnDB" partnerLink="toInserStateMessage" operation="find" xmlns:tns="http://j2ee.netbeans.org/wsdl/sendingMessageControl" portType="tns:jdbcPortType" inputVariable="requestFindMessageIn" outputVariable="responseMessageFindOut"/>
                        <if name="Secuence5">
                            <documentation>Condition to Find message Id null or no exists, so insert message and state.</documentation>
                            <condition>$responseMessageFindOut.part/ns5:FPML_SENDING_MESSAGE_ESTATE_Record/ns5:message_ID</condition>
                            <sequence name="Sequence5">
                                <assign name="settingupdateMessage">
                                    <copy>
                                            <from>$responseMessageFindOut.part/ns5:FPML_SENDING_MESSAGE_ESTATE_Record/ns5:message_ID</from>
                                                <to>$requestMessageUpdateIn.part/ns5:FPML_SENDING_MESSAGE_ESTATE_Record/ns5:message_ID</to>
                                        </copy>
                                        <copy>
                                            <from>1</from>
                                                <to>$requestMessageUpdateIn.part/ns5:FPML_SENDING_MESSAGE_ESTATE_Record/ns5:state_operation</to>
                                        </copy>
                                </assign>
                                <invoke name="updateMessageOnDB" partnerLink="toInserStateMessage" operation="update" xmlns:tns="http://j2ee.netbeans.org/wsdl/sendingMessageControl" portType="tns:jdbcPortType" inputVariable="requestMessageUpdateIn"/>
                            </sequence>
                            <else>
                                <sequence name="Sequence6">
                                    <assign name="settingGodMessagePool">
                                        <documentation>To Insert God Message in a table sendinMessagePool</documentation>
                                            <copy>
                                            <from>1</from>
                                                <to>$requestInsertGoodMessageIn.part/ns5:FPML_SENDING_MESSAGE_ESTATE_Record/ns5:state_operation</to>
                                        </copy>
                                            <copy>
                                            <from>$InvokeCallbackPartnerLinkWSDLOperationIn.part1/ns1:fpmlMessageFK</from>
                                                <to>$requestInsertGoodMessageIn.part/ns5:FPML_SENDING_MESSAGE_ESTATE_Record/ns5:message_ID</to>
                                        </copy>
                                    </assign>
                                    <invoke name="insertGodMessage" partnerLink="toInserStateMessage" operation="insert" xmlns:tns="http://j2ee.netbeans.org/wsdl/sendingMessageControl" portType="tns:jdbcPortType" inputVariable="requestInsertGoodMessageIn" outputVariable="responseInsertGoodMessageOut"/>
                                </sequence>
                            </else>
                        </if>
                    </sequence>
                </if>
            </sequence>
            <else>
                <sequence name="Sequence2">
                    <assign name="settingBadFinalizationMessage">
                        <documentation>In this fragment a info log is write on the system to indicate the response was delivered unsucessfully</documentation>
                        <sxt:trace>
                            <sxt:log level="severe" location="onComplete">
                                <ns0:from variable="finalizationMessage"/>
                            </sxt:log>
                        </sxt:trace>
                        <copy>
                                <from>concat(''We could not delivery the response message to: '', $InvokeCallbackPartnerLinkWSDLOperationIn.part1/ns1:senderPartyID, '' At: '', sxxf:current-dateTime(), '' On: '', $InvokeCallbackPartnerLinkWSDLOperationIn.part1/ns1:endPointReference/ns4:Address, ''Please contact your system administrator'')</from>
                                    <to variable="finalizationMessage"/>
                            </copy>
                    </assign>
                    <if name="Secuence4">
                        <documentation>If fpmlMessage is null not insert to the table sendingMessage</documentation>
                        <condition>0 != $InvokeCallbackPartnerLinkWSDLOperationIn.part1/ns1:fpmlMessageFK</condition>
                        <sequence name="Sequence4">
                            <assign name="settingFindBadMessage">
                                <copy>
                                    <from>$InvokeCallbackPartnerLinkWSDLOperationIn.part1/ns1:fpmlMessageFK</from>
                                    <to>$requestFindBadMessageIn.part/ns5:FPML_SENDING_MESSAGE_ESTATE_Record/ns5:message_ID</to>
                                </copy>
                            </assign>
                            <invoke name="findBadMessageOnDB" partnerLink="toInserStateMessage" operation="find" xmlns:tns="http://j2ee.netbeans.org/wsdl/sendingMessageControl" portType="tns:jdbcPortType" inputVariable="requestFindBadMessageIn" outputVariable="responseFindBadMessageOut"/>
                            <if>
                                <condition>$responseFindBadMessageOut.part/ns5:FPML_SENDING_MESSAGE_ESTATE_Record/ns5:message_ID</condition>
                                <sequence name="Sequence8">
                                    <assign name="settingUpdateBadmessageOnDB">
                                        <copy>
                                            <from>$responseFindBadMessageOut.part/ns5:FPML_SENDING_MESSAGE_ESTATE_Record/ns5:message_ID</from>
                                            <to>$requestUpdateBadMessageIn.part/ns5:FPML_SENDING_MESSAGE_ESTATE_Record/ns5:message_ID</to>
                                        </copy>
                                        <copy>
                                            <from>2</from>
                                            <to>$requestUpdateBadMessageIn.part/ns5:FPML_SENDING_MESSAGE_ESTATE_Record/ns5:state_operation</to>
                                        </copy>
                                    </assign>
                                    <invoke name="updateBadMessage" partnerLink="toInserStateMessage" operation="update" xmlns:tns="http://j2ee.netbeans.org/wsdl/sendingMessageControl" portType="tns:jdbcPortType" inputVariable="requestUpdateBadMessageIn"/>
                                </sequence>
                                <else>
                                    <sequence name="Sequence7">
                                        <assign name="settingBadMessagePool">
                                            <documentation>To Insert God Message in a table sendinMessagePool</documentation>
                                                <copy>
                                                <from>$InvokeCallbackPartnerLinkWSDLOperationIn.part1/ns1:fpmlMessageFK</from>
                                                    <to>$requestInsertBadMessageIn.part/ns5:FPML_SENDING_MESSAGE_ESTATE_Record/ns5:message_ID</to>
                                            </copy>
                                                <copy>
                                                <from>2</from>
                                                    <to>$requestInsertBadMessageIn.part/ns5:FPML_SENDING_MESSAGE_ESTATE_Record/ns5:state_operation</to>
                                            </copy>
                                        </assign>
                                        <invoke name="InsertBadmessage" partnerLink="toInserStateMessage" operation="insert" xmlns:tns="http://j2ee.netbeans.org/wsdl/sendingMessageControl" portType="tns:jdbcPortType" inputVariable="requestInsertBadMessageIn" outputVariable="responseInsertBadMessageOut"/>
                                    </sequence>
                                </else>
                            </if>
                        </sequence>
                    </if>
                </sequence>
            </else>
        </if>
    </sequence>
</process>
'
]

{ #category : #'bpel_source2_processNovateTradeProcess' }
BPEL20BpelAnalyzerTest >> processNovateTradeProcess_processNovateTradeProcess [
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

{ #category : #'bpel_source2_processNovateTradeProcess' }
BPEL20BpelAnalyzerTest >> processNovateTradeProcess_processTradeConfirmed [
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
                <from>''http://www.camaraderiesgo.com/messageId''</from>
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
                <from>concat(string($ProcessTradeConfirmedWSDLOperationIn.tradeConfirmedIn/ns0:tradeConfirmed/ns1:header/ns1:sendTo), ''-'', $tradeIDFinal)</from>
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

{ #category : #'bpel_source' }
BPEL20BpelAnalyzerTest >> processOTCParsingError [
^ '<?xml version="1.0" encoding="UTF-8"?>
<process
    name="processOTCParsingError"
    targetNamespace="http://enterprise.netbeans.org/bpel/processOTCBusinessError/processOTCParsingError"
    xmlns="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
    xmlns:xsd="http://www.w3.org/2001/XMLSchema"
    xmlns:sxt="http://www.sun.com/wsbpel/2.0/process/executable/SUNExtension/Trace" 
    xmlns:sxed="http://www.sun.com/wsbpel/2.0/process/executable/SUNExtension/Editor"
    xmlns:sxeh="http://www.sun.com/wsbpel/2.0/process/executable/SUNExtension/ErrorHandling"
    xmlns:tns="http://enterprise.netbeans.org/bpel/processOTCBusinessError/processOTCBusinessError" xmlns:ns0="http://xml.netbeans.org/schema/processOTCError" xmlns:ns1="http://www.fpml.org/2008/FpML-4-5" xmlns:sxxf="http://www.sun.com/wsbpel/2.0/process/executable/SUNExtension/XPathFunctions" xmlns:ns2="http://xml.netbeans.org/schema/runtimePartner" xmlns:ns3="http://j2ee.netbeans.org/xsd/tableSchema">
    <documentation>This process execute some activies in order to manage a parsing error</documentation>
    <import namespace="http://j2ee.netbeans.org/wsdl/processOTCBusinessError/getIncomingOTCParsingErrorWSDL" location="getIncomingOTCParsingErrorWSDL.wsdl" importType="http://schemas.xmlsoap.org/wsdl/"/>
    <import namespace="http://j2ee.netbeans.org/wsdl/processNovateTradeBPEL/invokeCallbackPartnerLinkWSDL" location="externalWSDL/invokeCallbackPartnerLinkWSDL.wsdl" importType="http://schemas.xmlsoap.org/wsdl/"/>
    <import namespace="http://enterprise.netbeans.org/bpel/FpMLParserWrapper" location="FpMLParserWrapper.wsdl" importType="http://schemas.xmlsoap.org/wsdl/"/>
    <import namespace="http://parsing.trade.otc.crcc.com/" location="externalWSDL/FpMLParser/FpMLParser.wsdl" importType="http://schemas.xmlsoap.org/wsdl/"/>
    <import namespace="http://enterprise.netbeans.org/bpel/RiskServiceWSWrapper" location="RiskServiceWSWrapper.wsdl" importType="http://schemas.xmlsoap.org/wsdl/"/>
    <import namespace="http://facade.data.risk.otc.crcc.com/" location="externalWSDL/riskEJB/RiskServiceWS.wsdl" importType="http://schemas.xmlsoap.org/wsdl/"/>
    <import namespace="http://enterprise.netbeans.org/bpel/MeffServiceWrapper" location="MeffServiceWrapper.wsdl" importType="http://schemas.xmlsoap.org/wsdl/"/>
    <import namespace="http://facade.data.otc.crcc.com/" location="externalWSDL/commons/MeffService.wsdl" importType="http://schemas.xmlsoap.org/wsdl/"/>
    <import namespace="http://j2ee.netbeans.org/wsdl/fpMLMessageInDBWSDL" location="fpMLMessageInDBWSDL.wsdl" importType="http://schemas.xmlsoap.org/wsdl/"/>
    <partnerLinks>        
        <partnerLink name="meffService" xmlns:tns="http://enterprise.netbeans.org/bpel/MeffServiceWrapper" partnerLinkType="tns:MeffServiceLinkType" partnerRole="MeffServiceRole">
            <documentation>Contain the Risk EJB</documentation>
        </partnerLink>
        <partnerLink name="FpMLParser" xmlns:tns="http://enterprise.netbeans.org/bpel/FpMLParserWrapper" partnerLinkType="tns:FpMLParserLinkType" partnerRole="FpMLParserRole"/>
        <partnerLink name="invokeCallBack" xmlns:tns="http://j2ee.netbeans.org/wsdl/processNovateTradeBPEL/invokeCallbackPartnerLinkWSDL" partnerLinkType="tns:invokeCallbackPartnerLinkWSDL" partnerRole="invokeCallbackPartnerLinkWSDLPortTypeRole"/>
        <partnerLink name="OTCMessage" xmlns:tns="http://j2ee.netbeans.org/wsdl/fpMLMessageInDBWSDL" partnerLinkType="tns:jdbcpartner" partnerRole="jdbcPortTypeRole"/>
        <partnerLink name="getJMS" xmlns:tns="http://j2ee.netbeans.org/wsdl/processOTCBusinessError/getIncomingOTCParsingErrorWSDL" partnerLinkType="tns:getIncomingOTCParsingErrorWSDL" myRole="JMSInPortTypeRole">
            <documentation>partner link that get message from JMS</documentation>
        </partnerLink>
    </partnerLinks>
    <variables>
        <variable name="responseInsertFpMLMessageOut" xmlns:tns="http://j2ee.netbeans.org/wsdl/fpMLMessageInDBWSDL" messageType="tns:insertRetMsg"/>
        <variable name="requestInsertFpMLMessageIn" xmlns:tns="http://j2ee.netbeans.org/wsdl/fpMLMessageInDBWSDL" messageType="tns:inputMsg"/>
        <variable name="requestInvokeCallbackPartnerLinkWSDLOperationIn" xmlns:tns="http://j2ee.netbeans.org/wsdl/processNovateTradeBPEL/invokeCallbackPartnerLinkWSDL" messageType="tns:invokeCallbackPartnerLinkWSDLOperationRequest"/>
        <variable name="responseMessageRejectedAsStringOut" xmlns:tns="http://parsing.trade.otc.crcc.com/" messageType="tns:messageRejectedAsStringResponse"/>
        <variable name="requestMessageRejectedAsStringIn" xmlns:tns="http://parsing.trade.otc.crcc.com/" messageType="tns:messageRejectedAsString"/>
        <variable name="responseGetIdMessageOut" xmlns:tns="http://facade.data.otc.crcc.com/" messageType="tns:getIdMessageResponse"/>
        <variable name="requestGetIdMessageIn" xmlns:tns="http://facade.data.otc.crcc.com/" messageType="tns:getIdMessage"/>
        <variable name="IncomingError" xmlns:tns="http://j2ee.netbeans.org/wsdl/processOTCBusinessError/getIncomingOTCParsingErrorWSDL" messageType="tns:JMSInputMessage"/>
    </variables>
    <sequence>
        <receive name="getError" createInstance="yes" partnerLink="getJMS" operation="JMSInOperation" xmlns:tns="http://j2ee.netbeans.org/wsdl/processOTCBusinessError/getIncomingOTCParsingErrorWSDL" portType="tns:JMSInPortType" variable="IncomingError">
            <documentation>Receive the incoming Error</documentation>
            <sxt:trace>
                <sxt:log level="fine" location="onStart">
                    <from>concat(''START Receive the incoming parsing error: '', sxxf:current-dateTime())</from>
                </sxt:log>
                <sxt:log level="fine" location="onComplete">
                    <from>concat(''FINISHED  Receive the incoming parsing error: '', sxxf:current-dateTime())</from>
                </sxt:log>
            </sxt:trace>
        </receive>
        <if name="IfDefaultProccesingError">
            <documentation>Verifiy is the incoming error is a 200: Default message processing error code</documentation>
            <condition>''200'' != $IncomingError.part1/ns0:validationException/reasonCode</condition>
            <sequence name="nonDefaultErrorSeq">
                <documentation>Execute some activities when the error is not default parsing</documentation>
                <assign name="settingMessageId">
                    <documentation>Setting up the incoming parameter for get messageId</documentation>
                        <copy>
                        <from>''''</from>
                            <to variable="requestGetIdMessageIn" part="parameters"/>
                    </copy>
                </assign>
                <invoke name="toGetMessageId" partnerLink="meffService" operation="getIdMessage" xmlns:tns="http://facade.data.otc.crcc.com/" portType="tns:MeffService" inputVariable="requestGetIdMessageIn" outputVariable="responseGetIdMessageOut">
                    <documentation>Get the next message ID generated by CRCC</documentation>
                </invoke>
                <assign name="settingOTCMessage">
                    <documentation>set up the MEFF message</documentation>
                    <copy>
                        <from>$IncomingError.part1/ns0:rtcInternalID</from>
                        <to>$requestInsertFpMLMessageIn.part/ns3:FPML_MESSAGE_Record/ns3:priorMessage_FK</to>
                    </copy>
                    <copy>
                        <from>$responseGetIdMessageOut.parameters/return</from>
                        <to>$requestInsertFpMLMessageIn.part/ns3:FPML_MESSAGE_Record/ns3:messageID</to>
                    </copy>
                    <copy>
                        <from>2</from>
                        <to>$requestInsertFpMLMessageIn.part/ns3:FPML_MESSAGE_Record/ns3:messageType_FK</to>
                    </copy>
                    <copy>
                        <from>1</from>
                        <to>$requestInsertFpMLMessageIn.part/ns3:FPML_MESSAGE_Record/ns3:sender_FK</to>
                    </copy>
                    <copy>
                        <from>''http://www.camaraderiesgo.com/messageId''</from>
                        <to>$requestInsertFpMLMessageIn.part/ns3:FPML_MESSAGE_Record/ns3:messageSchemaID</to>
                    </copy>
                </assign>
                <invoke name="toInsertFpMLInDB" partnerLink="OTCMessage" operation="insert" xmlns:tns="http://j2ee.netbeans.org/wsdl/fpMLMessageInDBWSDL" portType="tns:jdbcPortType" inputVariable="requestInsertFpMLMessageIn" outputVariable="responseInsertFpMLMessageOut">
                    <documentation>Insert a message on FPML_MESSAGE table</documentation>
                </invoke>
                <assign name="settingMessageRejected">
                    <documentation>Set up the message rejected information</documentation>
                    <copy>
                            <from>$IncomingError.part1/ns0:validationException/location</from>
                                <to>$requestMessageRejectedAsStringIn.parameters/messageRejected/ns1:reason/ns1:location</to>
                        </copy>
                        <copy>
                            <from>$IncomingError.part1/ns0:validationException/message</from>
                                <to>$requestMessageRejectedAsStringIn.parameters/messageRejected/ns1:reason/ns1:description</to>
                        </copy>
                        <copy>
                            <from>$IncomingError.part1/ns0:validationException/reasonCode</from>
                                <to>$requestMessageRejectedAsStringIn.parameters/messageRejected/ns1:reason/ns1:reasonCode</to>
                        </copy>
                        <copy>
                            <from>$IncomingError.part1/ns0:validationException/semanticRuleId</from>
                                <to>$requestMessageRejectedAsStringIn.parameters/messageRejected/ns1:reason/ns1:validationRuleId</to>
                        </copy>
                        <copy>
                            <from>$IncomingError.part1/ns0:validationException/semanticRuleDescription</from>
                                <to>$requestMessageRejectedAsStringIn.parameters/messageRejected/ns1:reason/ns1:additionalData</to>
                        </copy>
                        <copy>
                            <from>$IncomingError.part1/ns0:requestMessageHeader/ns1:messageId</from>
                                <to>$requestMessageRejectedAsStringIn.parameters/messageRejected/ns1:header/ns1:inReplyTo</to>
                        </copy>
                        <copy>
                            <from>$IncomingError.part1/ns0:requestMessageHeader/ns1:sentBy</from>
                                <to>$requestMessageRejectedAsStringIn.parameters/messageRejected/ns1:header/ns1:sendTo</to>
                        </copy>
                        <copy>
                            <from>''CRCC''</from>
                                <to>$requestMessageRejectedAsStringIn.parameters/messageRejected/ns1:header/ns1:sentBy</to>
                        </copy>
                        <copy>
                            <from>''http://www.camaraderiesgo.com.co/partyId''</from>
                                <to>$requestMessageRejectedAsStringIn.parameters/messageRejected/ns1:header/ns1:sentBy/@partyIdScheme</to>
                        </copy>
                        <copy>
                            <from>$responseGetIdMessageOut.parameters/return</from>
                                <to>$requestMessageRejectedAsStringIn.parameters/messageRejected/ns1:header/ns1:messageId</to>
                        </copy>
                        <copy>
                            <from>''4-5''</from>
                                <to>$requestMessageRejectedAsStringIn.parameters/messageRejected/@version</to>
                        </copy>
                        <copy>
                            <from>sxxf:current-dateTime()</from>
                                <to>$requestMessageRejectedAsStringIn.parameters/messageRejected/ns1:header/ns1:creationTimestamp</to>
                        </copy>
                        <copy>
                            <from>$IncomingError.part1/ns0:validationException/semanticRuleDescription</from>
                                <to>$requestMessageRejectedAsStringIn.parameters/messageRejected/ns1:additionalData</to>
                        </copy>
                    <copy>
                        <from>0</from>
                        <to>$requestInsertFpMLMessageIn.part/ns3:FPML_MESSAGE_Record/ns3:ID</to>
                    </copy>
                    <copy>
                        <from>sxxf:current-date()</from>
                        <to>$requestInsertFpMLMessageIn.part/ns3:FPML_MESSAGE_Record/ns3:creationDateTime</to>
                    </copy>
                    <copy>
                        <from>0</from>
                        <to>$requestInsertFpMLMessageIn.part/ns3:FPML_MESSAGE_Record/ns3:messageType_FK</to>
                    </copy>
                    <copy>
                        <from>''messageSchemaID''</from>
                        <to>$requestInsertFpMLMessageIn.part/ns3:FPML_MESSAGE_Record/ns3:messageSchemaID</to>
                    </copy>
                    <copy>
                        <from>''messageID''</from>
                        <to>$requestInsertFpMLMessageIn.part/ns3:FPML_MESSAGE_Record/ns3:messageID</to>
                    </copy>
                    <copy>
                        <from>0</from>
                        <to>$requestInsertFpMLMessageIn.part/ns3:FPML_MESSAGE_Record/ns3:priorMessage_FK</to>
                    </copy>
                    <copy>
                        <from>sxxf:current-date()</from>
                        <to>$requestInsertFpMLMessageIn.part/ns3:FPML_MESSAGE_Record/ns3:receptionDateSystem</to>
                    </copy>
                    <copy>
                        <from>0</from>
                        <to>$requestInsertFpMLMessageIn.part/ns3:FPML_MESSAGE_Record/ns3:sender_FK</to>
                    </copy>
                </assign>
                <assign name="setMessageIdScheme">
                    <copy>
                            <from>''http://www.camaraderiesgo.com.co/messageId''</from>
                                <to>$requestMessageRejectedAsStringIn.parameters/messageRejected/ns1:header/ns1:messageId/@messageIdScheme</to>
                        </copy>
                </assign>
                <invoke name="toGetMessageRejectedAsString" partnerLink="FpMLParser" operation="messageRejectedAsString" xmlns:tns="http://parsing.trade.otc.crcc.com/" portType="tns:FpMLParser" inputVariable="requestMessageRejectedAsStringIn" outputVariable="responseMessageRejectedAsStringOut">
                    <documentation>Get the message rejected as string</documentation>
                </invoke>
                <assign name="settingInvokeCallback">
                    <documentation>Setting the invoke callback</documentation>
                        <copy>
                            <from>$IncomingError.part1/ns0:callbackAddress</from>
                                <to>$requestInvokeCallbackPartnerLinkWSDLOperationIn.part1/ns2:endPointReference</to>
                        </copy>
                        <copy>
                            <from>$responseMessageRejectedAsStringOut.parameters/return</from>
                                <to>$requestInvokeCallbackPartnerLinkWSDLOperationIn.part1/ns2:fpMLMessageAsString</to>
                        </copy>
                        <copy>
                            <from>$IncomingError.part1/ns0:requestMessageHeader/ns1:sentBy</from>
                                <to>$requestInvokeCallbackPartnerLinkWSDLOperationIn.part1/ns2:senderPartyID</to>
                        </copy>
                        <copy>
                            <from>$requestInsertFpMLMessageIn.part/ns3:FPML_MESSAGE_Record/ns3:ID</from>
                                <to>$requestInvokeCallbackPartnerLinkWSDLOperationIn.part1/ns2:fpmlMessageFK</to>
                        </copy>
                </assign>
                <invoke name="toInvokeCallback" partnerLink="invokeCallBack" operation="invokeCallbackPartnerLinkWSDLOperation" xmlns:tns="http://j2ee.netbeans.org/wsdl/processNovateTradeBPEL/invokeCallbackPartnerLinkWSDL" portType="tns:invokeCallbackPartnerLinkWSDLPortType" inputVariable="requestInvokeCallbackPartnerLinkWSDLOperationIn">
                    <documentation>Invoke the callback</documentation>
                    <sxt:trace>
                        <sxt:log level="fine" location="onStart">
                            <from>concat(''START toInvokeCallback parsing error: '', sxxf:current-dateTime())</from>
                        </sxt:log>
                        <sxt:log level="fine" location="onComplete">
                            <from>concat(''FINISHED  toInvokeCallback parsing error: '', sxxf:current-dateTime())</from>
                        </sxt:log>
                    </sxt:trace>
                </invoke>
            </sequence>
        </if>
    </sequence>
</process>
'
]

{ #category : #'bpel_source' }
BPEL20BpelAnalyzerTest >> processOTCRiskError [
^ '<?xml version="1.0" encoding="UTF-8"?>
<process
    name="processOTCRiskError"
    targetNamespace="http://enterprise.netbeans.org/bpel/processOTCBusinessError/processOTCRiskError"
    xmlns="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
    xmlns:xsd="http://www.w3.org/2001/XMLSchema"
    xmlns:sxt="http://www.sun.com/wsbpel/2.0/process/executable/SUNExtension/Trace" 
    xmlns:sxed="http://www.sun.com/wsbpel/2.0/process/executable/SUNExtension/Editor"
    xmlns:sxeh="http://www.sun.com/wsbpel/2.0/process/executable/SUNExtension/ErrorHandling"
    xmlns:tns="http://enterprise.netbeans.org/bpel/processOTCBusinessError/processOTCRiskError" xmlns:ns0="http://xml.netbeans.org/schema/processOTCError" xmlns:ns1="http://www.fpml.org/2008/FpML-4-5" xmlns:sxxf="http://www.sun.com/wsbpel/2.0/process/executable/SUNExtension/XPathFunctions" xmlns:ns2="http://xml.netbeans.org/schema/runtimePartner" xmlns:ns3="http://j2ee.netbeans.org/xsd/tableSchema" xmlns:ns4="http://j2ee.netbeans.org/wsdl/fpMLMessageInDBWSDL" xmlns:ns5="http://schemas.xmlsoap.org/ws/2004/08/addressing">
    <documentation>Manage a risk error</documentation>
    <import namespace="http://j2ee.netbeans.org/wsdl/processOTCBusinessError/getIncomingOTCRiskErrorWSDL" location="getIncomingOTCRiskErrorWSDL.wsdl" importType="http://schemas.xmlsoap.org/wsdl/"/>
    <import namespace="http://j2ee.netbeans.org/wsdl/processNovateTradeBPEL/invokeCallbackPartnerLinkWSDL" location="externalWSDL/invokeCallbackPartnerLinkWSDL.wsdl" importType="http://schemas.xmlsoap.org/wsdl/"/>
    <import namespace="http://enterprise.netbeans.org/bpel/FpMLParserWrapper" location="FpMLParserWrapper.wsdl" importType="http://schemas.xmlsoap.org/wsdl/"/>
    <import namespace="http://parsing.trade.otc.crcc.com/" location="externalWSDL/FpMLParser/FpMLParser.wsdl" importType="http://schemas.xmlsoap.org/wsdl/"/>
    <import namespace="http://enterprise.netbeans.org/bpel/RiskServiceWSWrapper" location="RiskServiceWSWrapper.wsdl" importType="http://schemas.xmlsoap.org/wsdl/"/>
    <import namespace="http://facade.data.risk.otc.crcc.com/" location="externalWSDL/riskEJB/RiskServiceWS.wsdl" importType="http://schemas.xmlsoap.org/wsdl/"/>
    <import namespace="http://enterprise.netbeans.org/bpel/MeffServiceWrapper" location="MeffServiceWrapper.wsdl" importType="http://schemas.xmlsoap.org/wsdl/"/>
    <import namespace="http://facade.data.otc.crcc.com/" location="externalWSDL/commons/MeffService.wsdl" importType="http://schemas.xmlsoap.org/wsdl/"/>
    <import namespace="http://j2ee.netbeans.org/wsdl/fpMLMessageInDBWSDL" location="fpMLMessageInDBWSDL.wsdl" importType="http://schemas.xmlsoap.org/wsdl/"/>
    <import namespace="http://j2ee.netbeans.org/wsdl/FpmlSoapAttachmentWSDL" location="FpmlSoapAttachmentWSDL.wsdl" importType="http://schemas.xmlsoap.org/wsdl/"/>
    <partnerLinks>
        <partnerLink name="meffService" xmlns:tns="http://enterprise.netbeans.org/bpel/MeffServiceWrapper" partnerLinkType="tns:MeffServiceLinkType" partnerRole="MeffServiceRole"/>
        <partnerLink name="FpMLParser" xmlns:tns="http://enterprise.netbeans.org/bpel/FpMLParserWrapper" partnerLinkType="tns:FpMLParserLinkType" partnerRole="FpMLParserRole"/>
        <partnerLink name="invokeCallBack" xmlns:tns="http://j2ee.netbeans.org/wsdl/processNovateTradeBPEL/invokeCallbackPartnerLinkWSDL" partnerLinkType="tns:invokeCallbackPartnerLinkWSDL" partnerRole="invokeCallbackPartnerLinkWSDLPortTypeRole"/>
        <partnerLink name="OTCMessage" xmlns:tns="http://j2ee.netbeans.org/wsdl/fpMLMessageInDBWSDL" partnerLinkType="tns:jdbcpartner" partnerRole="jdbcPortTypeRole"/>
        <partnerLink name="SOAP_ATTACHMENT" xmlns:tns="http://j2ee.netbeans.org/wsdl/FpmlSoapAttachmentWSDL" partnerLinkType="tns:jdbcpartner" partnerRole="jdbcPortTypeRole"/>
        <partnerLink name="getRiskError" xmlns:tns="http://j2ee.netbeans.org/wsdl/processOTCBusinessError/getIncomingOTCRiskErrorWSDL" partnerLinkType="tns:getIncomingOTCRiskErrorWSDL" myRole="JMSInPortTypeRole"/>
    </partnerLinks>
    <variables>
        <variable name="responseInsertOutSoapAttach" xmlns:tns="http://j2ee.netbeans.org/wsdl/FpmlSoapAttachmentWSDL" messageType="tns:insertRetMsg"/>
        <variable name="requestInsertInSoapAttach" xmlns:tns="http://j2ee.netbeans.org/wsdl/FpmlSoapAttachmentWSDL" messageType="tns:inputMsg"/>
        <variable name="responseInsertFpMLMessageOut" xmlns:tns="http://j2ee.netbeans.org/wsdl/fpMLMessageInDBWSDL" messageType="tns:insertRetMsg"/>
        <variable name="requestInsertFpMLMessageIn" xmlns:tns="http://j2ee.netbeans.org/wsdl/fpMLMessageInDBWSDL" messageType="tns:inputMsg"/>
        <variable name="requestInvokeCallbackPartnerLinkWSDLOperationIn" xmlns:tns="http://j2ee.netbeans.org/wsdl/processNovateTradeBPEL/invokeCallbackPartnerLinkWSDL" messageType="tns:invokeCallbackPartnerLinkWSDLOperationRequest"/>
        <variable name="responseMessageRejectedAsStringOut" xmlns:tns="http://parsing.trade.otc.crcc.com/" messageType="tns:messageRejectedAsStringResponse"/>
        <variable name="requestMessageRejectedAsStringIn" xmlns:tns="http://parsing.trade.otc.crcc.com/" messageType="tns:messageRejectedAsString"/>
        <variable name="responseGetIdMessageOut" xmlns:tns="http://facade.data.otc.crcc.com/" messageType="tns:getIdMessageResponse"/>
        <variable name="requestGetIdMessageIn" xmlns:tns="http://facade.data.otc.crcc.com/" messageType="tns:getIdMessage"/>
        <variable name="IncomingError" xmlns:tns="http://j2ee.netbeans.org/wsdl/processOTCBusinessError/getIncomingOTCRiskErrorWSDL" messageType="tns:JMSInputMessage"/>
    </variables>
    <sequence>
        <receive name="getError" createInstance="yes" partnerLink="getRiskError" operation="JMSInOperation" xmlns:tns="http://j2ee.netbeans.org/wsdl/processOTCBusinessError/getIncomingOTCRiskErrorWSDL" portType="tns:JMSInPortType" variable="IncomingError">
            <documentation>Receive the incoming Error</documentation>
            <sxt:trace>
                <sxt:log level="fine" location="onStart">
                    <from>concat(''START Receive the incoming risk error: '', sxxf:current-dateTime())</from>
                </sxt:log>
                <sxt:log level="fine" location="onComplete">
                    <from>concat(''FINISHED  Receive the incoming risk error: '', sxxf:current-dateTime())</from>
                </sxt:log>
            </sxt:trace>
        </receive>
        <assign name="settingMessageId">
            <documentation>Setting up the incoming parameter for get messageId</documentation>
            <copy>
                <from>''''</from>
                <to variable="requestGetIdMessageIn" part="parameters"/>
            </copy>
        </assign>
        <invoke name="toGetMessageId" partnerLink="meffService" operation="getIdMessage" xmlns:tns="http://facade.data.otc.crcc.com/" portType="tns:MeffService" inputVariable="requestGetIdMessageIn" outputVariable="responseGetIdMessageOut">
            <documentation>Get the next message ID generated by CRCC</documentation>
        </invoke>
        <if name="IfErrorIsNotMessageAlreadyExist">
            <documentation>If the error is not message already exist, insert the message on database otherwise does not insert because doesn''t have the prior message code</documentation>
            <condition>''513'' != $IncomingError.part1/ns0:validationException/reasonCode and ''210'' != $IncomingError.part1/ns0:validationException/reasonCode</condition>
            <sequence name="nonAlreadyExistSeq">
                <documentation>Execute some activities when the messaage is different to Message already exist</documentation>
                <assign name="settingFpMLMessage">
                    <documentation>configure the insert message by getting the prior message</documentation>
                    <copy>
                            <from>1</from>
                                <to>$requestInsertFpMLMessageIn.part/ns3:FPML_MESSAGE_Record/ns3:sender_FK</to>
                        </copy>
                        <copy>
                            <from>$responseGetIdMessageOut.parameters/return</from>
                                <to>$requestInsertFpMLMessageIn.part/ns3:FPML_MESSAGE_Record/ns3:messageID</to>
                        </copy>
                        <copy>
                            <from>''http://www.camaraderiesgo.com/messageId''</from>
                                <to>$requestInsertFpMLMessageIn.part/ns3:FPML_MESSAGE_Record/ns3:messageSchemaID</to>
                        </copy>
                        <copy>
                            <from>2</from>
                                <to>$requestInsertFpMLMessageIn.part/ns3:FPML_MESSAGE_Record/ns3:messageType_FK</to>
                        </copy>
                    <copy>
                        <from>$IncomingError.part1/ns0:rtcInternalID</from>
                        <to>$requestInsertFpMLMessageIn.part/ns3:FPML_MESSAGE_Record/ns3:priorMessage_FK</to>
                    </copy>
                </assign>
                <invoke name="toInsertFpMLMessage" partnerLink="OTCMessage" operation="insert" portType="ns4:jdbcPortType" inputVariable="requestInsertFpMLMessageIn" outputVariable="responseInsertFpMLMessageOut">
                    <documentation>Insert a message on FPML_MESSAGE</documentation>
                </invoke>
            </sequence>
        </if>
        <assign name="settingMessageRejected">
            <documentation>Set up the message rejected</documentation>
            <copy>
                <from>$IncomingError.part1/ns0:validationException/location</from>
                <to>$requestMessageRejectedAsStringIn.parameters/messageRejected/ns1:reason/ns1:location</to>
            </copy>
            <copy>
                <from>$IncomingError.part1/ns0:validationException/message</from>
                <to>$requestMessageRejectedAsStringIn.parameters/messageRejected/ns1:reason/ns1:description</to>
            </copy>
            <copy>
                <from>$IncomingError.part1/ns0:validationException/reasonCode</from>
                <to>$requestMessageRejectedAsStringIn.parameters/messageRejected/ns1:reason/ns1:reasonCode</to>
            </copy>
            <copy>
                <from>$IncomingError.part1/ns0:validationException/semanticRuleId</from>
                <to>$requestMessageRejectedAsStringIn.parameters/messageRejected/ns1:reason/ns1:validationRuleId</to>
            </copy>
            <copy>
                <from>$IncomingError.part1/ns0:validationException/semanticRuleDescription</from>
                <to>$requestMessageRejectedAsStringIn.parameters/messageRejected/ns1:reason/ns1:additionalData</to>
            </copy>
            <copy>
                <from>$IncomingError.part1/ns0:requestMessageHeader/ns1:messageId</from>
                <to>$requestMessageRejectedAsStringIn.parameters/messageRejected/ns1:header/ns1:inReplyTo</to>
            </copy>
            <copy>
                <from>$IncomingError.part1/ns0:requestMessageHeader/ns1:sentBy</from>
                <to>$requestMessageRejectedAsStringIn.parameters/messageRejected/ns1:header/ns1:sendTo</to>
            </copy>
            <copy>
                <from>''CRCC''</from>
                <to>$requestMessageRejectedAsStringIn.parameters/messageRejected/ns1:header/ns1:sentBy</to>
            </copy>
            <copy>
                <from>''http://www.camaraderiesgo.com.co/partyId''</from>
                <to>$requestMessageRejectedAsStringIn.parameters/messageRejected/ns1:header/ns1:sentBy/@partyIdScheme</to>
            </copy>
            <copy>
                <from>$responseGetIdMessageOut.parameters/return</from>
                <to>$requestMessageRejectedAsStringIn.parameters/messageRejected/ns1:header/ns1:messageId</to>
            </copy>
            <copy>
                <from>''4-5''</from>
                <to>$requestMessageRejectedAsStringIn.parameters/messageRejected/@version</to>
            </copy>
            <copy>
                <from>sxxf:current-dateTime()</from>
                <to>$requestMessageRejectedAsStringIn.parameters/messageRejected/ns1:header/ns1:creationTimestamp</to>
            </copy>
            <copy>
                <from>$IncomingError.part1/ns0:validationException/semanticRuleDescription</from>
                <to>$requestMessageRejectedAsStringIn.parameters/messageRejected/ns1:additionalData</to>
            </copy>
            <copy>
                <from>sxxf:current-date()</from>
                <to>$requestInsertFpMLMessageIn.part/ns3:FPML_MESSAGE_Record/ns3:creationDateTime</to>
            </copy>
            <copy>
                <from>0</from>
                <to>$requestInsertFpMLMessageIn.part/ns3:FPML_MESSAGE_Record/ns3:messageType_FK</to>
            </copy>
            <copy>
                <from>''messageSchemaID''</from>
                <to>$requestInsertFpMLMessageIn.part/ns3:FPML_MESSAGE_Record/ns3:messageSchemaID</to>
            </copy>
            <copy>
                <from>''messageID''</from>
                <to>$requestInsertFpMLMessageIn.part/ns3:FPML_MESSAGE_Record/ns3:messageID</to>
            </copy>
            <copy>
                <from>0</from>
                <to>$requestInsertFpMLMessageIn.part/ns3:FPML_MESSAGE_Record/ns3:priorMessage_FK</to>
            </copy>
            <copy>
                <from>sxxf:current-date()</from>
                <to>$requestInsertFpMLMessageIn.part/ns3:FPML_MESSAGE_Record/ns3:receptionDateSystem</to>
            </copy>
            <copy>
                <from>0</from>
                <to>$requestInsertFpMLMessageIn.part/ns3:FPML_MESSAGE_Record/ns3:sender_FK</to>
            </copy>
            <copy>
                <from>0</from>
                <to>$requestInsertFpMLMessageIn.part/ns3:FPML_MESSAGE_Record/ns3:ID</to>
            </copy>
        </assign>
        <assign name="setMessageIdScheme">
            <documentation>Add the messageIdScheme to the before activity</documentation>
            <copy>
                <from>''http://www.camaraderiesgo.com.co/messageId''</from>
                <to>$requestMessageRejectedAsStringIn.parameters/messageRejected/ns1:header/ns1:messageId/@messageIdScheme</to>
            </copy>
        </assign>
        <invoke name="toGetMessageRejectedAsString" partnerLink="FpMLParser" operation="messageRejectedAsString" xmlns:tns="http://parsing.trade.otc.crcc.com/" portType="tns:FpMLParser" inputVariable="requestMessageRejectedAsStringIn" outputVariable="responseMessageRejectedAsStringOut">
            <documentation>Get the message rejected as string</documentation>
        </invoke>
        <assign name="settingInvokeCallback">
            <documentation>copy the message rejected as stringo into invoke callback FpML Message</documentation>
                <copy>
                    <from>$IncomingError.part1/ns0:callbackAddress</from>
                        <to>$requestInvokeCallbackPartnerLinkWSDLOperationIn.part1/ns2:endPointReference</to>
                </copy>
                <copy>
                    <from>$responseMessageRejectedAsStringOut.parameters/return</from>
                        <to>$requestInvokeCallbackPartnerLinkWSDLOperationIn.part1/ns2:fpMLMessageAsString</to>
                </copy>
                <copy>
                    <from>$IncomingError.part1/ns0:requestMessageHeader/ns1:sentBy</from>
                        <to>$requestInvokeCallbackPartnerLinkWSDLOperationIn.part1/ns2:senderPartyID</to>
                </copy>
            <copy>
                <from>$requestInsertFpMLMessageIn.part/ns3:FPML_MESSAGE_Record/ns3:ID</from>
                <to>$requestInvokeCallbackPartnerLinkWSDLOperationIn.part1/ns2:fpmlMessageFK</to>
            </copy>
        </assign>
        <assign name="setSoapAttachment">
            <copy>
                <from>string($IncomingError.part1/ns0:callbackAddress/ns5:ServiceName/@PortName)</from>
                <to>$requestInsertInSoapAttach.part/ns3:FPML_SOAP_ATTACHMENT_Record/ns3:portName</to>
            </copy>
            <copy>
                <from>string($IncomingError.part1/ns0:callbackAddress/ns5:ServiceName)</from>
                <to>$requestInsertInSoapAttach.part/ns3:FPML_SOAP_ATTACHMENT_Record/ns3:serviceName</to>
            </copy>
            <copy>
                <from>string($IncomingError.part1/ns0:callbackAddress/ns5:PortType)</from>
                <to>$requestInsertInSoapAttach.part/ns3:FPML_SOAP_ATTACHMENT_Record/ns3:portType</to>
            </copy>
            <copy>
                <from>string($IncomingError.part1/ns0:callbackAddress/ns5:Address)</from>
                <to>$requestInsertInSoapAttach.part/ns3:FPML_SOAP_ATTACHMENT_Record/ns3:serviceAddress</to>
            </copy>
            <copy>
                <from>$responseMessageRejectedAsStringOut.parameters/return</from>
                <to>$requestInsertInSoapAttach.part/ns3:FPML_SOAP_ATTACHMENT_Record/ns3:message</to>
            </copy>
            <copy>
                <from>number($responseGetIdMessageOut.parameters/return)</from>
                <to>$requestInsertInSoapAttach.part/ns3:FPML_SOAP_ATTACHMENT_Record/ns3:message_FK</to>
            </copy>
        </assign>
        <invoke name="toInserSOAP_ATTACHMENT" partnerLink="SOAP_ATTACHMENT" operation="insert" xmlns:tns="http://j2ee.netbeans.org/wsdl/FpmlSoapAttachmentWSDL" portType="tns:jdbcPortType" inputVariable="requestInsertInSoapAttach" outputVariable="responseInsertOutSoapAttach"/>
        <invoke name="toInvokeCallback" partnerLink="invokeCallBack" operation="invokeCallbackPartnerLinkWSDLOperation" xmlns:tns="http://j2ee.netbeans.org/wsdl/processNovateTradeBPEL/invokeCallbackPartnerLinkWSDL" portType="tns:invokeCallbackPartnerLinkWSDLPortType" inputVariable="requestInvokeCallbackPartnerLinkWSDLOperationIn">
            <documentation>Invoke the registration system</documentation>
            <sxt:trace>
                <sxt:log level="fine" location="onStart">
                    <from>concat(''START toInvokeCallback risk error: '', sxxf:current-dateTime())</from>
                </sxt:log>
                <sxt:log level="fine" location="onComplete">
                    <from>concat(''FINISHED  toInvokeCallback risk error: '', sxxf:current-dateTime())</from>
                </sxt:log>
            </sxt:trace>
        </invoke>
    </sequence>
</process>
'
]

{ #category : #'bpel_source' }
BPEL20BpelAnalyzerTest >> sourceExample1 [

	^ '<?xml version="1.0" encoding="UTF-8"?>
<process
    name="ManageMEFFAccountsAndParticipants"
    targetNamespace="http://enterprise.netbeans.org/bpel/ManageAccountsAndParticipantsBPEL/ManageMEFFAccountsAndParticipants"
    xmlns="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
    xmlns:xsd="http://www.w3.org/2001/XMLSchema"
    xmlns:sxt="http://www.sun.com/wsbpel/2.0/process/executable/SUNExtension/Trace" 
    xmlns:sxed="http://www.sun.com/wsbpel/2.0/process/executable/SUNExtension/Editor"
    xmlns:sxeh="http://www.sun.com/wsbpel/2.0/process/executable/SUNExtension/ErrorHandling"
    xmlns:tns="http://enterprise.netbeans.org/bpel/ManageAccountsAndParticipantsBPEL/ManageMEFFAccountsAndParticipants">
   <import namespace="http://j2ee.netbeans.org/wsdl/ManageAccountsAndParticipantsBPEL/ReceiveAccountRemoteFileWSDL" location="ReceiveAccountRemoteFileWSDL.wsdl" importType="http://schemas.xmlsoap.org/wsdl/"/>
   <import namespace="http://j2ee.netbeans.org/wsdl/ManageAccountsAndParticipantsBPEL/getParticipantRemoteFileWSDL" location="GetPartiesRemoteFileWSDL.wsdl" importType="http://schemas.xmlsoap.org/wsdl/"/>
   <import namespace="http://enterprise.netbeans.org/bpel/PartiesAccountsServiceServiceWrapper" location="PartiesAccountsServiceServiceWrapper.wsdl" importType="http://schemas.xmlsoap.org/wsdl/"/>
   <import namespace="http://services.accounts.otc.crcc.com/" location="externalWSDL/PartiesAccountsServiceService.wsdl" importType="http://schemas.xmlsoap.org/wsdl/"/>
   <partnerLinks>
      <partnerLink name="plRemoteParticip" xmlns:tns="http://j2ee.netbeans.org/wsdl/ManageAccountsAndParticipantsBPEL/getParticipantRemoteFileWSDL" partnerLinkType="tns:getParticipantRemoteFileWSDL" partnerRole="ReceiveTransferringPortTypeRole">
         <documentation>this object do a ftp request on demand to get de participants information.
The kind from this object is: On demand receive transfer</documentation>
      </partnerLink>
      <partnerLink name="plAccountsServices" xmlns:tns="http://enterprise.netbeans.org/bpel/PartiesAccountsServiceServiceWrapper" partnerLinkType="tns:PartiesAccountsServiceLinkType" partnerRole="PartiesAccountsServiceRole">
         <documentation>This object do the comunication with the web service which expose the upgrade Accounts and parties method.
This method is located in the AccountsEJB project and follow the next steps in order to do the update
1. Inactivate all the parties an its accounts
2. Activate the participants and accounts which exist in the local BD.
3. activate the new participants
4. activate the new accounts</documentation>
      </partnerLink>
      <partnerLink name="plRemoteAccounts" xmlns:tns="http://j2ee.netbeans.org/wsdl/ManageAccountsAndParticipantsBPEL/ReceiveAccountRemoteFileWSDL" partnerLinkType="tns:ReceiveAccountRemoteFileWSDL" myRole="InboundOneWayTransferringPortTypeRole">
         <documentation>This object do a ftp poll in order to find an accounts file in the temporal file.
file name searched: cuentas
Object type: receive request</documentation>
      </partnerLink>
   </partnerLinks>
   <variables>
      <variable name="upgradeAccountsOut" xmlns:tns="http://services.accounts.otc.crcc.com/" messageType="tns:upgradeAccountsResponse"/>
      <variable name="upgradeAccountsIn" xmlns:tns="http://services.accounts.otc.crcc.com/" messageType="tns:upgradeAccounts"/>
      <variable name="getParticipantsOut" xmlns:tns="http://j2ee.netbeans.org/wsdl/ManageAccountsAndParticipantsBPEL/getParticipantRemoteFileWSDL" messageType="tns:ReceiveTransferringOperationResponse"/>
      <variable name="getParticipantsIn" xmlns:tns="http://j2ee.netbeans.org/wsdl/ManageAccountsAndParticipantsBPEL/getParticipantRemoteFileWSDL" messageType="tns:ReceiveTransferringOperationRequest"/>
      <variable name="receivingAccountsIn" xmlns:tns="http://j2ee.netbeans.org/wsdl/ManageAccountsAndParticipantsBPEL/ReceiveAccountRemoteFileWSDL" messageType="tns:InboundOneWayTransferringOperationRequest"/>
   </variables>
   <sequence>
      <receive name="receiveAccounts" createInstance="yes" partnerLink="plRemoteAccounts" operation="InboundOneWayTransferringOperation" xmlns:tns="http://j2ee.netbeans.org/wsdl/ManageAccountsAndParticipantsBPEL/ReceiveAccountRemoteFileWSDL" portType="tns:InboundOneWayTransferringPortType" variable="receivingAccountsIn">
         <documentation>This is the receiver from the poll object wich get the accounts information</documentation>
      </receive>
      <repeatUntil name="repeatUntilParticipantsNotLoaded">
         <documentation>This loop finish when the program find the pariticipants file. When it finish the system could be sure that both files are in the ftp remote location and it can start to do the rest of the process</documentation>
         <sequence name="LookingForParties">
            <assign name="intializeParticipantIn">
               <documentation>this is the first assign to the variable which is used to ask for the participants file.</documentation>
               <copy>
                  <from>''</from>
                     <to variable="getParticipantsIn" part="part1"/>
               </copy>
            </assign>
            <invoke name="getParties" partnerLink="plRemoteParticip" operation="ReceiveTransferringOperation" xmlns:tns="http://j2ee.netbeans.org/wsdl/ManageAccountsAndParticipantsBPEL/getParticipantRemoteFileWSDL" portType="tns:ReceiveTransferringPortType" inputVariable="getParticipantsIn" outputVariable="getParticipantsOut">
               <documentation>This object do the invoke to the object which is able to get the participant file
the filename from the archive is: particip</documentation>
            </invoke>
            <wait name="WaitForSomeSeconds">
               <documentation>this object introduce a delay for the next request from the participantes file (if it doesnt exist)</documentation>
               <for>''P0Y0M0DT0H0M5.0S''</for>
            </wait>
         </sequence>
         <condition>$getParticipantsOut.part1 != ''</condition>
      </repeatUntil>
      <assign name="File2UpgradeAccounts">
         <documentation>after the system has both files, this object do the assign for the cuentas an particip files to the remote method called upgradeAccounts</documentation>
         <copy>
               <from variable="receivingAccountsIn" part="part1"/>
                  <to>$upgradeAccountsIn.parameters/accounts</to>
            </copy>
            <copy>
               <from variable="getParticipantsOut" part="part1"/>
                  <to>$upgradeAccountsIn.parameters/parties</to>
            </copy>
      </assign>
      <invoke name="toUpgradeAccounts" partnerLink="plAccountsServices" operation="upgradeAccounts" xmlns:tns="http://services.accounts.otc.crcc.com/" portType="tns:PartiesAccountsService" inputVariable="upgradeAccountsIn" outputVariable="upgradeAccountsOut">
         <documentation>This method do the invoke to the object who call the remote web service</documentation>
      </invoke>
   </sequence>
</process>
'
]

{ #category : #'tests - parsing' }
BPEL20BpelAnalyzerTest >> testDefaultParsing [

	self assert: BPEL20Parser new numberOfDefinedProcesses = 0
]

{ #category : #'tests - parsing' }
BPEL20BpelAnalyzerTest >> testGettingVariable [
	"| parser process variable plnk|
	parser := BPEL20Parser parseString: self sourceExample1.
	process := parser processes first.
	variable := process variableAt: 'upgradeAccountsOut'.
	plnk := process partnerLinkAt: 'plRemoteParticip'.
	self assert: variable notNil.
	self assert: variable class == BPVariable.	
	self assert: variable variableName = 'upgradeAccountsOut'.
	self assert: variable process == process.
	
	self assert: variable numberOfInvokes = 1.
	self assert: variable invokes first aName = 'toUpgradeAccounts'.

	self assert: plnk notNil.
	self assert: plnk class == BPPartnerLink.
	self assert: plnk aName = 'plRemoteParticip'.
	self assert: plnk numberOfRef = 1."
]

{ #category : #'tests - parsing' }
BPEL20BpelAnalyzerTest >> testParsing [
	"| parser process |
	parser := BPEL20Parser parseString: self sourceExample1.
	self assert: parser numberOfDefinedProcesses = 1.
	
	process := parser processes first.
	self assert: process processName = 'ManageMEFFAccountsAndParticipants'.
	self assert: process name = 'ManageMEFFAccountsAndParticipants'.
	self assert: process numberOfVariables = 5.
	self assert: process numberOfInvokes = 2."
	
	
]

{ #category : #'tests - model' }
BPEL20BpelAnalyzerTest >> testProcess [

	| process |
	process := BPEL20ProcessImpl new.
	self assert: process processName = ''.
	self assert: process numberOfActivities = 0.
	self assert: process numberOfVariables = 0.
]

{ #category : #'tests - parsing' }
BPEL20BpelAnalyzerTest >> testWSDLParsing [
	"| parser wsdl wsdlDefinition wsdlPlnkType wsdlPlnkRole value|
	parser := BPParserWSDL parseString: self wsdl_processNovateTradeProcess_getIncomingMessageFromJMSWSDL.
	self assert: parser numberOfDefinedProcesses = 1.
	value :=parser lstWsdl.
	wsdl :=  value first.
	self assert: wsdl aName = 'getIncomingMessageFromJMSWSDL'.
	wsdlDefinition := ( wsdl wsdlDefinition).
	self assert: wsdlDefinition targetNamespace = 'http://j2ee.netbeans.org/wsdl/processNovateTradeProcess/getIncomingMessageFromJMSWSDL'.
	value :=wsdlDefinition lstPartnertLinkTypes.
	wsdlPlnkType := value at:'getIncomingMessageFromJMSWSDL'.
	self assert:  wsdlPlnkType aName = 'getIncomingMessageFromJMSWSDL'.
	wsdlPlnkRole := wsdlPlnkType role.
	self assert: wsdlPlnkRole aName = 'JMSInPortTypeRole'.
	self assert: wsdlPlnkRole portType = 'tns:JMSInPortType'."

]

{ #category : #'wsdl_source2_processNovateTradeProcess' }
BPEL20BpelAnalyzerTest >> wsdl_processNovateTradeProcess_getIncomingMessageFromJMSWSDL [
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
