Class {
	#name : #BPEL20BPSourceInstrumentation001,
	#superclass : #BPEL20BPSourceTest,
	#category : #'A4BP-Tests-BPEL20-source'
}

{ #category : #bpel }
BPEL20BPSourceInstrumentation001 >> bpel_BPELProcess004 [
^ '<?xml version = "1.0" encoding = "UTF-8" ?>
<!--
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  Oracle JDeveloper BPEL Designer 
  
  Created: Sat Jul 19 18:18:47 CLT 2014
  Author:  alvarojose
  Type: BPEL 2.0 Process
  Purpose: Asynchronous BPEL Process
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
-->
<process name="BPELProcess004"
         targetNamespace="http://xmlns.oracle.com/A4BPInstrumentation/ProyectoA4BPTest001/BPELProcess004"
         xmlns="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
         xmlns:client="http://xmlns.oracle.com/A4BPInstrumentation/ProyectoA4BPTest001/BPELProcess004"
         xmlns:ora="http://schemas.oracle.com/xpath/extension"
         xmlns:ui="http://xmlns.oracle.com/soa/designer"
         xmlns:bpelx="http://schemas.oracle.com/bpel/extension"
         xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
         xmlns:ns1="http://xmlns.oracle.com/A4BPInstrumentation/ProyectoA4BPTest001/a4bpInstrumentationREST"
         xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
         xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
         xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
         xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
         xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath"
         xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath"
         xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:ess="http://xmlns.oracle.com/scheduler"
         xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk"
         xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
         xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" xmlns:ns2="http://www.a4bp.com">

    <import ui:processWSDL="true" namespace="http://xmlns.oracle.com/A4BPInstrumentation/ProyectoA4BPTest001/BPELProcess004" location="../WSDLs/BPELProcess004.wsdl" importType="http://schemas.xmlsoap.org/wsdl/"/>
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
        <partnerLink name="bpelprocess004_client" partnerLinkType="client:BPELProcess004" myRole="BPELProcess004Provider" partnerRole="BPELProcess004Requester"/>
        <partnerLink name="a4bpInstrumentationREST" partnerLinkType="ns1:a4bpInstrumentationREST"
                     partnerRole="a4bpInstrumentationRESTProvider"/>
    </partnerLinks>

    <!-- 
      ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        VARIABLES                                                        
        List of messages and XML documents used within this BPEL process 
      ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    -->
    <variables>
        <!-- Reference to the message passed as input during initiation -->
        <variable name="inputVariable" messageType="client:BPELProcess004RequestMessage"/>

        <!-- Reference to the message that will be sent back to the requester during callback -->
        <variable name="outputVariable" messageType="client:BPELProcess004ResponseMessage"/>
        <variable name="a4bpInInstrumentation" messageType="ns1:instrumentation_inputMessage"/>
        <variable name="a4bpOutInstrumentation" messageType="ns1:Rest_EmptyMessage"/>
    </variables>

    <!-- 
      ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
       ORCHESTRATION LOGIC                                               
       Set of activities coordinating the flow of messages across the    
       services integrated within this business process                  
      ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    -->
    <sequence name="main">
        <!-- Receive input from requestor. (Note: This maps to operation defined in BPELProcess004.wsdl) -->
        <receive name="receiveInput" partnerLink="bpelprocess004_client" portType="client:BPELProcess004" operation="process" variable="inputVariable" createInstance="yes"/>
        
        <assign name="ActivityToBeAnalyze001">
            <copy>
                <from>$inputVariable.payload</from>
                <to>$outputVariable.payload</to>
            </copy>
        </assign>
        <!-- 
          Asynchronous callback to the requester. (Note: the callback location and correlation id is transparently handled using WS-addressing.)
        -->
        <invoke name="callbackClient" partnerLink="bpelprocess004_client" portType="client:BPELProcess004Callback" operation="processResponse" inputVariable="outputVariable"/>
    </sequence>
</process>'.
]
