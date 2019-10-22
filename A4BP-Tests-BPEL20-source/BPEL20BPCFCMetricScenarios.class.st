Class {
	#name : #BPEL20BPCFCMetricScenarios,
	#superclass : #BPEL20BPSourceTest,
	#category : #'A4BP-Tests-BPEL20-source'
}

{ #category : #src }
BPEL20BPCFCMetricScenarios >> bankLoanProcessV001 [
^ 
'
<?xml version = "1.0" encoding = "UTF-8" ?>
<!--
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  Oracle JDeveloper BPEL Designer 
  
  Created: Mon Apr 21 10:39:40 CLST 2014
  Author:  aljo
  Type: BPEL 2.0 Process
  Purpose: Asynchronous BPEL Process
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
-->
<process name="BankLoanProcessV001"
         targetNamespace="http://xmlns.oracle.com/CFCMetricScenario/Project1/BankLoanProcessV001"
         xmlns="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
         xmlns:client="http://xmlns.oracle.com/CFCMetricScenario/Project1/BankLoanProcessV001"
         xmlns:ora="http://schemas.oracle.com/xpath/extension"
         xmlns:bpelx="http://schemas.oracle.com/bpel/extension"
         xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable">

    <import namespace="http://xmlns.oracle.com/CFCMetricScenario/Project1/BankLoanProcessV001" location="BankLoanProcessV001.wsdl" importType="http://schemas.xmlsoap.org/wsdl/"/>
    <!-- 
      ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        PARTNERLINKS                                                      
        List of services participating in this BPEL process               
      ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    --> 
    <partnerLinks>
        <!-- 
      The ''client'' role represents the requester of this service. It is 
      used for callback. The location and correlation information associated
      with the client role are automatically set using WS-Addressing.
    -->
        <partnerLink name="bankloanprocessv001_client" partnerLinkType="client:BankLoanProcessV001" myRole="BankLoanProcessV001Provider" partnerRole="BankLoanProcessV001Requester"/>
    </partnerLinks>

    <!-- 
      ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        VARIABLES                                                        
        List of messages and XML documents used within this BPEL process 
      ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    -->
    <variables>
        <!-- Reference to the message passed as input during initiation -->
        <variable name="inputVariable" messageType="client:BankLoanProcessV001RequestMessage"/>

        <!-- Reference to the message that will be sent back to the requester during callback -->
        <variable name="outputVariable" messageType="client:BankLoanProcessV001ResponseMessage"/>
    </variables>

    <!-- 
      ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
       ORCHESTRATION LOGIC                                               
       Set of activities coordinating the flow of messages across the    
       services integrated within this business process                  
      ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    -->
    <sequence name="main">
        <!-- Receive input from requestor. (Note: This maps to operation defined in BankLoanProcessV001.wsdl) -->
        <receive name="receiveInput" partnerLink="bankloanprocessv001_client" portType="client:BankLoanProcessV001" operation="process" variable="inputVariable" createInstance="yes"/>
        <empty name="FillLoanRequest"/>
        <empty name="CheckEducationLoan"/>
        <empty name="NotifyEducationLoanClient"/>
        <empty name="ArchiveApplication"/>
        <!-- 
          Asynchronous callback to the requester. (Note: the callback location and correlation id is transparently handled using WS-addressing.)
        -->
        <invoke name="callbackClient" partnerLink="bankloanprocessv001_client" portType="client:BankLoanProcessV001Callback" operation="processResponse" inputVariable="outputVariable"/>
    </sequence>
</process>
'
]

{ #category : #testCFCMetric }
BPEL20BPCFCMetricScenarios >> testBankLoanProcessV001 [
	"comment stating purpose of message"

	"| parser process value |
	parser := BPParserBPEL new.
	parser parseString: BPCFCMetricScenarios new bankLoanProcessV001.
	process := parser processes at: 1.
	value := process calculateCFC.
	self assert: value = 6"
]
