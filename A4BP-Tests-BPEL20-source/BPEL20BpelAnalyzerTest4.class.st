Class {
	#name : #BPEL20BpelAnalyzerTest4,
	#superclass : #BPEL20BPSourceTest,
	#category : #'A4BP-Tests-BPEL20-source'
}

{ #category : #bpel }
BPEL20BpelAnalyzerTest4 class >> bpelEmpty [
	^ ''
]

{ #category : #bpel }
BPEL20BpelAnalyzerTest4 class >> bpel_B2BOrderProcessingEngine [
	^ '<?xml version = ''1.0'' encoding = ''UTF-8''?>
<!--
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  Oracle JDeveloper BPEL Designer 
  
  Created: Wed Nov 19 20:14:51 PST 2008
  Author:  cutschig
  Purpose: Empty BPEL Process
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
-->
<process xml:id="id1" name="B2BOrderProcessingEngine" targetNamespace="http://xmlns.oracle.com/CompositeServices11gMain/B2BX12OrderGateway/B2BOrderProcessingEngine" xmlns="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:client="http://xmlns.oracle.com/CompositeServices11gMain/B2BX12OrderGateway/B2BOrderProcessingEngine" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xpath20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" xmlns:bpelx="http://schemas.oracle.com/bpel/extension" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:ns1="http://www.oracle.com/integration/b2b/B2B_po_X12_inbound/" xmlns:ns2="www.globalcompany.example.com" xmlns:ns3="http://www.oracle.com/integration/b2b/B2B_orderconfirmation_x12/" xmlns:ns4="http://www.globalcompany.example.com/ns/OrderBookingService" xmlns:ns5="/oracle/fodemo/storefront/store/queries/common/" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:ns6="www.globalcompany.example.com/types/" xmlns:ns7="http://www.globalcompany.example.com/b2b/utils" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.GetRequestHeaderExtnFunction" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns8="/oracle/fodemo/storefront/entities/events/edl/OrderEO" xmlns:ns9="/oracle/fodemo/storefront/entities/events/schema/OrderEO" xmlns:ns10="http://xmlns.oracle.com/CompositeServices11gMain/B2BX12OrderGateway/B2BOrderProcessingEngine/correlationset" xmlns:ns11="urn:oracle:b2b:X12/V4010/855">
  <!-- 
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
      PARTNERLINKS                                                      
      List of services participating in this BPEL process               
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  -->
  <bpelx:annotation><bpelx:analysis><bpelx:property name="propertiesFile"><![CDATA[WSDLs/B2BOrderProcessingEngine_properties.wsdl]]></bpelx:property></bpelx:analysis></bpelx:annotation><partnerLinks xml:id="id2">
    <partnerLink xml:id="id5" myRole="receive_role" name="B2B_po_X12_inbound" partnerLinkType="ns1:B2B_receive_plt"/>
    <partnerLink xml:id="id6" name="StoreFrontService" partnerRole="StoreFrontService" partnerLinkType="ns2:StorefrontService"/>
    <partnerLink xml:id="id7" name="B2B_orderconfirmation_x12" partnerRole="send_role" partnerLinkType="ns3:B2B_send_plt"/>
    <partnerLink xml:id="id8" myRole="OrderProcessorRequester" name="OrderBookingService" partnerRole="OrderProcessorProvider" partnerLinkType="ns4:OrderProcessor"/>
  </partnerLinks>
  <!-- 
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
      VARIABLES                                                        
      List of messages and XML documents used within this BPEL process 
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  -->
  <variables xml:id="id3">
    <variable xml:id="id10" name="gX12OrderVariable" messageType="ns1:B2BMsg"/>
    <variable xml:id="id20" name="gX12OrderOrderConfirmationGeneration" messageType="ns3:B2BMsg"/>
    <variable name="Variable_docProtVersion" type="xsd:string"/>
    <variable name="Variable_docTypeName" type="xsd:string"/>
    <variable name="Variable_fromTP" type="xsd:string"/>
    <variable name="Variable_tpTP" type="xsd:string"/>
    <variable name="Variable_msgID" type="xsd:string"/>
    <variable name="Variable_msgType" type="xsd:string"/>
    <variable xml:id="id56" name="gOrderVariable" messageType="ns2:StoreFrontService_createOrderInfoVOSDO"/>
    <variable xml:id="id61" name="gFaultVariable" messageType="ns7:B2BOrderProcessorFault"/>
    <variable name="aperalta" messageType="ns3:B2BMsg"/>
  </variables>
  <faultHandlers xml:id="id59">
    <catchAll xml:id="id60">
      <assign xml:id="id62" name="Assign_ProcessingFault">
        <copy xml:id="id63">
          <from xml:id="id64" expression="ora:getFaultName()"/>
          <to xml:id="id65" variable="gFaultVariable" part="code"/>
        </copy>
        <copy xml:id="id66">
          <from xml:id="id67" expression="ora:getFaultAsString()"/>
          <to xml:id="id68" variable="gFaultVariable" part="summary"/>
        </copy>
      </assign>
    </catchAll>
  </faultHandlers>
  <!-- 
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
     ORCHESTRATION LOGIC                                               
     Set of activities coordinating the flow of messages across the    
     services integrated within this business process                  
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  -->
  <sequence xml:id="id4" name="main">
    <receive xml:id="id9" name="Receive_X12Order" createInstance="yes" variable="gX12OrderVariable" partnerLink="B2B_po_X12_inbound" portType="ns1:B2B_receive_ptt" operation="receive"/>
    <scope xml:id="id25" name="Scope_CreateOrder">
      <variables xml:id="id57">
        <variable xml:id="id58" name="lOrderCreationResponse" messageType="ns2:StoreFrontService_createOrderInfoVOSDOResponse"/>
      </variables>
      <sequence xml:id="id51">
        <assign xml:id="id50" name="Transform_850ToCanicalOrder">
          <bpelx:annotation>
            <bpelx:pattern>transformation</bpelx:pattern>
          </bpelx:annotation>
          <copy xml:id="id52">
            <from xml:id="id53" expression="ora:processXSLT(''xsl/Transformation_From850X12_To_CanonicalOrderSchema.xsl'',bpws:getVariableData(''gX12OrderVariable'',''body''))"/>
            <to xml:id="id54" variable="gOrderVariable" part="parameters"/>
          </copy>
        </assign>
        <invoke xml:id="id55" name="Invoke_CreateOrder" inputVariable="gOrderVariable" outputVariable="lOrderCreationResponse" partnerLink="StoreFrontService" portType="ns2:StoreFrontService" operation="createOrderInfoVOSDO"/>
      </sequence>
    </scope>
    <bpelx:exec name="setTitleOfComposite" version="1.5" language="java">
      try  
{ 

    // variable="gOrderVariable" query="/ns6:createOrderInfoVOSDO/ns6:orderInfoVO1/ns5:OrderId" part="parameters"
    String orderId = ((oracle.xml.parser.v2.XMLElement)getVariableData("gOrderVariable","parameters","/ns6:createOrderInfoVOSDO/ns6:orderInfoVO1/ns5:OrderId")).getFirstChild().getNodeValue(); 
    setCompositeInstanceTitle("B2B OrderGateway, processing order: " + orderId); 
} 
catch (Exception e)  
{ 
    addAuditTrailEntry("Could not set title: " + e.getMessage()); 
}
    </bpelx:exec>
    <scope xml:id="id12" name="Scope_FulfillOrderRequest">
      <variables xml:id="id17">
        <variable xml:id="id18" name="lProcessingResponse" messageType="ns4:OrderProcessorResponseMessage"/>
        <variable xml:id="id21" name="lOrderIdForProcessing" messageType="ns4:OrderProcessorRequestMessage"/>
        <variable xml:id="id23" name="lOrderProcessingFault" messageType="ns4:OrderProcessorFault"/>
        <variable xml:id="id76" name="lNewOrderSubmittedEvent" element="ns9:NewOrderSubmittedInfo"/>
        <variable xml:id="id81" name="lOrderCompletedEventInfo" element="ns9:OrderCompletedInfo"/>
      </variables>
      <correlationSets xml:id="id82">
        <correlationSet xml:id="id83" name="CorrelationSet_OrderIdForEvent" properties="ns10:orderId"/>
      </correlationSets>
      <sequence xml:id="id16">
        <switch xml:id="id69" name="Switch_EventBased">
          <case xml:id="id70" condition="ora:getConfigProperty(''use.events'') = ''true''">
            <bpelx:annotation>
              <bpelx:pattern>use.events property = true is set on the composite''s component</bpelx:pattern>
            </bpelx:annotation>
            <sequence xml:id="id75">
              <assign name="Assign_OrderIdIntoEvent">
                <copy>
                  <from variable="gOrderVariable" part="parameters" query="/ns6:createOrderInfoVOSDO/ns6:orderInfoVO1/ns5:OrderId"/>
                  <to variable="lNewOrderSubmittedEvent" query="/ns9:NewOrderSubmittedInfo/ns9:OrderId/ns9:newValue/@value"/>
                </copy>
              </assign>
              <invoke xml:id="id74" name="Invoke_SendEventForProcessor" bpelx:eventName="ns8:NewOrderSubmitted" inputVariable="lNewOrderSubmittedEvent">
                <correlations>
                  <correlation xml:id="id85" initiate="yes" set="CorrelationSet_OrderIdForEvent" pattern="out"/>
                </correlations>
              </invoke>
            </sequence>
          </case>
          <otherwise xml:id="id71">
            <sequence xml:id="id72">
              <assign xml:id="id33" name="Assign_OrderId">
                <copy xml:id="id34">
                  <from xml:id="id35" variable="gOrderVariable" query="/ns6:createOrderInfoVOSDO/ns6:orderInfoVO1/ns5:OrderId" part="parameters"/>
                  <to xml:id="id36" variable="lOrderIdForProcessing" part="payload" query="/ns4:process/ns4:orderId"/>
                </copy>
              </assign>
              <invoke xml:id="id11" name="Invoke_ProcessOrder" inputVariable="lOrderIdForProcessing" partnerLink="OrderBookingService" portType="ns4:OrderProcessor" operation="process"/>
            </sequence>
          </otherwise>
        </switch>
        <switch xml:id="id92" name="Switch_isEventBased">
          <case xml:id="id93" condition="ora:getConfigProperty(''use.events'') = ''true''">
            <bpelx:annotation>
              <bpelx:pattern>in case event is set to true</bpelx:pattern>
            </bpelx:annotation>
            <sequence xml:id="id100">
              <receive xml:id="id95" name="Receive_CompletedEvent" createInstance="no" bpelx:eventName="ns8:OrderCompleted" variable="lOrderCompletedEventInfo">
                <correlations>
                  <correlation xml:id="id97" initiate="no" set="CorrelationSet_OrderIdForEvent"/>
                </correlations>
              </receive>
                  <assign name="Transform_CreateAck">
                    <bpelx:annotation>
                      <bpelx:pattern>transformation</bpelx:pattern>
                    </bpelx:annotation>
                    <copy>
                      <from expression="ora:processXSLT(''xsl/transform_x12OrderToX12Ack.xsl'',bpws:getVariableData(''gX12OrderVariable'',''body''))"/>
                      <to variable="gX12OrderOrderConfirmationGeneration" part="body"/>
                    </copy>
                  </assign>
                  <assign name="Assign_Types">
                <copy>
                  <from expression="&quot;4010&quot;"/>
                  <to variable="Variable_docProtVersion"/>
                </copy>
                <copy>
                  <from expression="&quot;855&quot;"/>
                  <to variable="Variable_docTypeName"/>
                </copy>
                <copy>
                  <from expression="&quot;OracleServices&quot;"/>
                  <to variable="Variable_fromTP"/>
                </copy>
                <copy>
                  <from expression="&quot;MarketInc&quot;"/>
                  <to variable="Variable_tpTP"/>
                </copy>
                <copy>
                  <from expression="oraext:generate-guid()"/>
                  <to variable="Variable_msgID"/>
                </copy>
                <copy>
                  <from expression="&quot;1&quot;"/>
                  <to variable="Variable_msgType"/>
                </copy>
              </assign>
                  <invoke name="Invoke_OrderOrderConfirmationGeneration" inputVariable="gX12OrderOrderConfirmationGeneration" partnerLink="B2B_orderconfirmation_x12" portType="ns3:B2B_send_ptt" operation="send">
                    <bpelx:inputProperty name="b2b.documentProtocolVersion" variable="Variable_docProtVersion"/>
                    <bpelx:inputProperty name="b2b.documentTypeName" variable="Variable_docTypeName"/>
                    <bpelx:inputProperty name="b2b.fromTradingPartnerId" variable="Variable_fromTP"/>
                    <bpelx:inputProperty name="b2b.messageId" variable="Variable_msgID"/>
                    <bpelx:inputProperty name="b2b.messageType" variable="Variable_msgType"/>
                    <bpelx:inputProperty name="b2b.toTradingPartnerId" variable="Variable_tpTP"/>
                  </invoke>
            </sequence>
          </case>
          <otherwise xml:id="id94">
            <pick xml:id="id13" name="Pick_OrderProcessingresult">
              <onMessage xml:id="id15" variable="lProcessingResponse" partnerLink="OrderBookingService" portType="ns4:OrderProcessorCallback" operation="processResponse">
                <sequence xml:id="id45">
                  <assign xml:id="id44" name="Transform_CreateAck">
                    <bpelx:annotation>
                      <bpelx:pattern>transformation</bpelx:pattern>
                    </bpelx:annotation>
                    <copy xml:id="id46">
                      <from xml:id="id47" expression="ora:processXSLT(''xsl/transform_x12OrderToX12Ack.xsl'',bpws:getVariableData(''gX12OrderVariable'',''body''))"/>
                      <to xml:id="id48" variable="gX12OrderOrderConfirmationGeneration" part="body"/>
                    </copy>
                  </assign>
                  <assign name="Assign_Types">
                    <copy>
                      <from expression="&quot;4010&quot;"/>
                      <to variable="Variable_docProtVersion"/>
                    </copy>
                    <copy>
                      <from expression="&quot;855&quot;"/>
                      <to variable="Variable_docTypeName"/>
                    </copy>
                    <copy>
                      <from expression="&quot;OracleServices&quot;"/>
                      <to variable="Variable_fromTP"/>
                    </copy>
                    <copy>
                      <from expression="&quot;MarketInc&quot;"/>
                      <to variable="Variable_tpTP"/>
                    </copy>
                    <copy>
                      <from expression="oraext:generate-guid()"/>
                      <to variable="Variable_msgID"/>
                    </copy>
                    <copy>
                      <from expression="&quot;1&quot;"/>
                      <to variable="Variable_msgType"/>
                    </copy>
                  </assign>
                  <invoke xml:id="id19" name="Invoke_OrderOrderConfirmationGeneration" inputVariable="gX12OrderOrderConfirmationGeneration" partnerLink="B2B_orderconfirmation_x12" portType="ns3:B2B_send_ptt" operation="send">
                    <bpelx:inputProperty name="b2b.documentProtocolVersion" variable="Variable_docProtVersion"/>
                    <bpelx:inputProperty name="b2b.documentTypeName" variable="Variable_docTypeName"/>
                    <bpelx:inputProperty name="b2b.fromTradingPartnerId" variable="Variable_fromTP"/>
                    <bpelx:inputProperty name="b2b.messageId" variable="Variable_msgID"/>
                    <bpelx:inputProperty name="b2b.messageType" variable="Variable_msgType"/>
                    <bpelx:inputProperty name="b2b.toTradingPartnerId" variable="Variable_tpTP"/>
                  </invoke>
                </sequence>
              </onMessage>
              <onMessage xml:id="id22" variable="lOrderProcessingFault" partnerLink="OrderBookingService" portType="ns4:OrderProcessorCallback" operation="processFault">
                <bpelx:annotation>
                  <bpelx:pattern/>
                </bpelx:annotation>
                <terminate xml:id="id24" name="Terminate_Instance"/>
              </onMessage>
            </pick>
          </otherwise>
        </switch>
      </sequence>
    </scope>
  </sequence>
</process>
	'
]

{ #category : #bpel }
BPEL20BpelAnalyzerTest4 class >> bpel_CustomerAndOrderService [
^ '<?xml version = "1.0" encoding = "UTF-8" ?>
<!--
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  Oracle JDeveloper BPEL Designer 
  
  Created: Sun Oct 12 15:20:24 PDT 2008
  Author:  cutschig
  Purpose: Synchronous BPEL Process
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
-->
<process name="CustomerAndOrderService"
               targetNamespace="http://xmlns.oracle.com/TestRules/OrderSDOComposite/CustomerAndOrderService"
               xmlns="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
               xmlns:client="http://xmlns.oracle.com/TestRules/OrderSDOComposite/CustomerAndOrderService"
               xmlns:ora="http://schemas.oracle.com/xpath/extension"
               xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
               xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
               xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap"
               xmlns:bpelx="http://schemas.oracle.com/bpel/extension"
               xmlns:ns1="www.globalcompany.example.com"
               xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
         xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xmlns:ns2="www.globalcompany.example.com/types/"
         xmlns:ns3="/oracle/fodemo/storefront/store/queries/common/"
         xmlns:ns9="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
         xmlns:ns7="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.GetRequestHeaderExtnFunction"
         xmlns:ns6="http://xmlns.oracle.com/bpel/services/IdentityService/xpath"
         xmlns:ns10="http://schemas.oracle.com/bpel/extension/xpath/function/xdk"
         xmlns:ns8="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
         xmlns:ns4="http://xmlns.oracle.com/adf/svc/types/"
         xmlns:ns5="http://xmlns.oracle.com/adf/svc/errors/"
         xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath"
         xmlns:med="http://schemas.oracle.com/mediator/xpath"
         xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
         xmlns:xsd="http://www.w3.org/2001/XMLSchema">

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
    <partnerLink name="customerandorderservice_client" partnerLinkType="ns1:StorefrontService" 
        myRole="StoreFrontService"/>
  </partnerLinks>

  <!-- 
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
      VARIABLES                                                        
      List of messages and XML documents used within this BPEL process 
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  -->
  <variables>
    <!-- Reference to the message passed as input during initiation -->
    <variable name="inputVariable" messageType="ns1:StoreFrontService_findCustomerInfoVO1"/>

    <!-- Reference to the message that will be returned to the requester-->
    <variable name="outputVariable" messageType="ns1:StoreFrontService_findCustomerInfoVO1Response"/>
    <variable name="OnMessage_findCustomerInfoVO1CustomerInfoVOCriteria_InputVariable"
              messageType="ns1:StoreFrontService_findCustomerInfoVO1CustomerInfoVOCriteria"/>
    <variable name="Reply_findCustomerInfoVOByCriteria_findCustomerInfoVO1CustomerInfoVOCriteria_OutputVariable"
              messageType="ns1:StoreFrontService_findCustomerInfoVO1CustomerInfoVOCriteriaResponse"/>
    <variable name="OnMessage_getOrderInfoVOSDO_InputVariable"
              messageType="ns1:StoreFrontService_getOrderInfoVOSDO"/>
    <variable name="Reply_getOrderInfoVO_getOrderInfoVOSDO_OutputVariable"
              messageType="ns1:StoreFrontService_getOrderInfoVOSDOResponse"/>
    <variable name="OnMessage_findOrderInfoVOSDO_InputVariable"
              messageType="ns1:StoreFrontService_findOrderInfoVOSDO"/>
    <variable name="Reply_findOrderInfoVO_findOrderInfoVOSDO_OutputVariable"
              messageType="ns1:StoreFrontService_findOrderInfoVOSDOResponse"/>
    <variable name="OnMessage_processOrderInfoVOSDO_InputVariable"
              messageType="ns1:StoreFrontService_processOrderInfoVOSDO"/>
    <variable name="Reply_ProcessOrderInfoVO_processOrderInfoVOSDO_OutputVariable"
              messageType="ns1:StoreFrontService_processOrderInfoVOSDOResponse"/>
    <variable name="OnMessage_processCSOrderInfoVOSDO_InputVariable"
              messageType="ns1:StoreFrontService_processCSOrderInfoVOSDO"/>
    <variable name="Reply_ProcessOrderVOCS_processCSOrderInfoVOSDO_OutputVariable"
              messageType="ns1:StoreFrontService_processCSOrderInfoVOSDOResponse"/>
    <variable name="OnMessage_updateOrderInfoVOSDO_InputVariable"
              messageType="ns1:StoreFrontService_updateOrderInfoVOSDO"/>
    <variable name="Reply_UpdateOrderInfoVO_updateOrderInfoVOSDO_OutputVariable"
              messageType="ns1:StoreFrontService_updateOrderInfoVOSDOResponse"/>
    <variable xml:id="id80" name="createOrderInfoVOSDO_InputVariable"
              messageType="ns1:StoreFrontService_createOrderInfoVOSDO"/>
    <variable xml:id="id82" name="createOrderInfoVOSDO_OutputVariable"
              messageType="ns1:StoreFrontService_createOrderInfoVOSDOResponse"/>
  </variables>

  <!-- 
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
     ORCHESTRATION LOGIC                                               
     Set of activities coordinating the flow of messages across the    
     services integrated within this business process                  
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  -->
  <sequence name="main">

    <!-- Receive input from requestor. (Note: This maps to operation defined in CustomerAndOrderService.wsdl) -->

    <!-- Generate reply to synchronous request -->
    <pick name="Pick_Operation" createInstance="yes">
      <onMessage variable="inputVariable"
                 partnerLink="customerandorderservice_client"
                 portType="ns1:StoreFrontService"
                 operation="findCustomerInfoVO1">
        <sequence>
          <assign name="Assign_FindCustomerInfo">
            <copy>
              <from>
                <ns2:result xmlns:ns2="www.globalcompany.example.com/types/"
                            xmlns:ns3="/oracle/fodemo/storefront/store/queries/common/">
                  <ns3:PersonId>10</ns3:PersonId>
                  <ns3:FirstName>Clemens</ns3:FirstName>
                  <ns3:LastName>Utschig</ns3:LastName>
                  <ns3:ConfirmedEmail>clemens.utschig@oracle.example.com</ns3:ConfirmedEmail>
                  <ns3:MobilePhoneNumber/>
                  <ns3:MembershipId/>
                  <ns3:MembershipTypeCode/>
                </ns2:result>
              </from>
              <to variable="outputVariable" part="parameters"
                  query="/ns2:findCustomerInfoVO1Response/ns2:result"/>
            </copy>
            <copy xml:id="id1">
              <from xml:id="id2" variable="inputVariable" part="parameters"
                    query="/ns2:findCustomerInfoVO1"/>
              <to xml:id="id3" variable="inputVariable" part="parameters"
                  query="/ns2:findCustomerInfoVO1"/>
            </copy>
          </assign>
          <reply name="Reply_findCustomerInfo" variable="outputVariable"
                 partnerLink="customerandorderservice_client"
                 portType="ns1:StoreFrontService"
                 operation="findCustomerInfoVO1"/>
        </sequence>
      </onMessage>
      <onMessage variable="OnMessage_findCustomerInfoVO1CustomerInfoVOCriteria_InputVariable"
                 partnerLink="customerandorderservice_client"
                 portType="ns1:StoreFrontService"
                 operation="findCustomerInfoVO1CustomerInfoVOCriteria">
        <bpelx:annotation>
          <bpelx:pattern></bpelx:pattern>
        </bpelx:annotation>
        <sequence>
          <assign name="Assign_FindCustomerInfoByVC">
            <copy xml:id="id4">
              <from xml:id="id5"
                    variable="OnMessage_findCustomerInfoVO1CustomerInfoVOCriteria_InputVariable"
                    part="parameters"
                    query="/ns2:findCustomerInfoVO1CustomerInfoVOCriteria"/>
              <to xml:id="id6"
                  variable="OnMessage_findCustomerInfoVO1CustomerInfoVOCriteria_InputVariable"
                  part="parameters"
                  query="/ns2:findCustomerInfoVO1CustomerInfoVOCriteria"/>
            </copy>
            <copy>
              <from>
                <ns2:result xmlns:ns2="www.globalcompany.example.com/types/"
                            xmlns:ns3="/oracle/fodemo/storefront/store/queries/common/">
                  <ns3:PersonId/>
                  <ns3:FirstName/>
                  <ns3:LastName/>
                  <ns3:ConfirmedEmail/>
                  <ns3:MobilePhoneNumber/>
                  <ns3:MembershipId/>
                  <ns3:MembershipTypeCode/>
                </ns2:result>
              </from>
              <to variable="Reply_findCustomerInfoVOByCriteria_findCustomerInfoVO1CustomerInfoVOCriteria_OutputVariable"
                  part="parameters"
                  query="/ns2:findCustomerInfoVO1CustomerInfoVOCriteriaResponse/ns2:result"/>
            </copy>
          </assign>
          <switch xml:id="id13" name="Switch_ByCustomerId">
            <case xml:id="id20"
                  condition="bpws:getVariableData(''OnMessage_findCustomerInfoVO1CustomerInfoVOCriteria_InputVariable'',''parameters'',''/ns2:findCustomerInfoVO1CustomerInfoVOCriteria/ns2:CustId'') = 20">
              <bpelx:annotation>
                <bpelx:pattern>customerId = 20</bpelx:pattern>
              </bpelx:annotation>
              <assign xml:id="id21" name="Assign_CustomerWithId20">
                <copy xml:id="id22">
                  <from xml:id="id23">
                    <ns2:result xmlns:ns2="www.globalcompany.example.com/types/"
                                xmlns:ns3="/oracle/fodemo/storefront/store/queries/common/">
                      <ns3:PersonId>20</ns3:PersonId>
                      <ns3:FirstName>Deborah</ns3:FirstName>
                      <ns3:LastName>Steiner</ns3:LastName>
                      <ns3:ConfirmedEmail>deborah.steiner@oracle.example.com</ns3:ConfirmedEmail>
                      <ns3:MobilePhoneNumber>1235550112</ns3:MobilePhoneNumber>
                      <ns3:MembershipId/>
                      <ns3:MembershipTypeCode/>
                    </ns2:result>
                  </from>
                  <to xml:id="id24"
                      variable="Reply_findCustomerInfoVOByCriteria_findCustomerInfoVO1CustomerInfoVOCriteria_OutputVariable"
                      part="parameters"
                      query="/ns2:findCustomerInfoVO1CustomerInfoVOCriteriaResponse/ns2:result"/>
                </copy>
              </assign>
            </case>
            <case xml:id="id14"
                  condition="bpws:getVariableData(''OnMessage_findCustomerInfoVO1CustomerInfoVOCriteria_InputVariable'',''parameters'',''/ns2:findCustomerInfoVO1CustomerInfoVOCriteria/ns2:CustId'') = 10">
              <bpelx:annotation>
                <bpelx:pattern>customerId = 10</bpelx:pattern>
              </bpelx:annotation>
              <assign xml:id="id16" name="Assign_CustomerWithId10">
                <copy xml:id="id17">
                  <from xml:id="id18">
                    <ns2:result xmlns:ns2="www.globalcompany.example.com/types/"
                                xmlns:ns3="/oracle/fodemo/storefront/store/queries/common/">
                      <ns3:PersonId>10</ns3:PersonId>
                      <ns3:FirstName>Clemens</ns3:FirstName>
                      <ns3:LastName>Utschig</ns3:LastName>
                      <ns3:ConfirmedEmail>clemens.utschig@oracle.example.com</ns3:ConfirmedEmail>
                      <ns3:MobilePhoneNumber>1235550111</ns3:MobilePhoneNumber>
                      <ns3:MembershipId/>
                      <ns3:MembershipTypeCode/>
                    </ns2:result>
                  </from>
                  <to xml:id="id19"
                      variable="Reply_findCustomerInfoVOByCriteria_findCustomerInfoVO1CustomerInfoVOCriteria_OutputVariable"
                      part="parameters"
                      query="/ns2:findCustomerInfoVO1CustomerInfoVOCriteriaResponse/ns2:result"/>
                </copy>
              </assign>
            </case>
          </switch>
          <reply name="Reply_findCustomerInfoVOByCriteria"
                 variable="Reply_findCustomerInfoVOByCriteria_findCustomerInfoVO1CustomerInfoVOCriteria_OutputVariable"
                 partnerLink="customerandorderservice_client"
                 portType="ns1:StoreFrontService"
                 operation="findCustomerInfoVO1CustomerInfoVOCriteria"/>
        </sequence>
      </onMessage>
      <onMessage variable="OnMessage_findOrderInfoVOSDO_InputVariable"
                 partnerLink="customerandorderservice_client"
                 portType="ns1:StoreFrontService"
                 operation="findOrderInfoVOSDO">
        <bpelx:annotation>
          <bpelx:pattern></bpelx:pattern>
        </bpelx:annotation>
        <sequence>
          <scope xml:id="id31" name="Scope_ForId">
            <variables xml:id="id33">
              <variable xml:id="id34" name="lOrderId" type="xsd:integer"/>
            </variables>
            <sequence xml:id="id32" name="Sequence_1">
              <assign name="Assign_findOrderInfoVO">
                <copy xml:id="id7">
                  <from xml:id="id8"
                        variable="OnMessage_findOrderInfoVOSDO_InputVariable"
                        part="parameters" query="/ns2:findOrderInfoVOSDO"/>
                  <to xml:id="id9"
                      variable="OnMessage_findOrderInfoVOSDO_InputVariable"
                      part="parameters" query="/ns2:findOrderInfoVOSDO"/>
                </copy>
                <copy xml:id="id35">
                  <from xml:id="id36"
                        variable="OnMessage_findOrderInfoVOSDO_InputVariable"
                        part="parameters"
                        query="/ns2:findOrderInfoVOSDO/ns2:findCriteria/ns4:filter/ns4:group/ns4:item/ns4:value"/>
                  <to xml:id="id37" variable="lOrderId"/>
                </copy>
              </assign>
              <switch xml:id="id28" name="Switch_OrderById">
                <case xml:id="id29"
                      condition="bpws:getVariableData(''lOrderId'') &lt;= 1000">
                  <bpelx:annotation>
                    <bpelx:pattern>OrderId &lt;= 1000</bpelx:pattern>
                  </bpelx:annotation>
                  <assign xml:id="id38" name="Assign_OrderAmountLowerThan2000">
                    <copy xml:id="id48">
                      <from xml:id="id49">
                        <ns2:result xmlns:ns2="www.globalcompany.example.com/types/"
                                    xmlns:ns3="/oracle/fodemo/storefront/store/queries/common/">
                          <ns3:OrderId/>
                          <ns3:OrderDate>2008-08-28T07:17:04.0Z</ns3:OrderDate>
                          <ns3:OrderStatusCode>PENDING</ns3:OrderStatusCode>
                          <ns3:OrderTotal>1999</ns3:OrderTotal>
                          <ns3:CustomerId>10</ns3:CustomerId>
                          <ns3:ShipToName>Clemens Utschig</ns3:ShipToName>
                          <ns3:ShipToPhoneNumber>1235550111</ns3:ShipToPhoneNumber>
                          <ns3:AddressId>10</ns3:AddressId>
                          <ns3:Address1>100 Oracle Parkway</ns3:Address1>
                          <ns3:City>Redwood Shores</ns3:City>
                          <ns3:PostalCode>94065</ns3:PostalCode>
                          <ns3:StateProvince>CA</ns3:StateProvince>
                          <ns3:CountryId>US</ns3:CountryId>
                          <ns3:AccountNumber>41</ns3:AccountNumber>
                          <ns3:CardTypeCode>AMEX</ns3:CardTypeCode>
                          <ns3:ExpireDate>2010-10-26T21:32:52</ns3:ExpireDate>
                          <ns3:CheckDigits>1234</ns3:CheckDigits>
                          <ns3:OrderItemsInfoVO>
                            <ns3:OrderId/>
                            <ns3:LineItemId>1</ns3:LineItemId>
                            <ns3:ProductId>1</ns3:ProductId>
                            <ns3:Quantity>1</ns3:Quantity>
                            <ns3:UnitPrice>1999</ns3:UnitPrice>
                            <ns3:ProductName>something</ns3:ProductName>
                            <ns3:SupplierName>from someone</ns3:SupplierName>
                          </ns3:OrderItemsInfoVO>
                        </ns2:result>
                      </from>
                      <to xml:id="id50"
                          variable="Reply_findOrderInfoVO_findOrderInfoVOSDO_OutputVariable"
                          part="parameters"
                          query="/ns2:findOrderInfoVOSDOResponse/ns2:result"/>
                    </copy>
                  </assign>
                </case>
                <otherwise xml:id="id30">
                  <assign xml:id="id51" name="AssignAmoutHigher2000">
                    <copy xml:id="id52">
                      <from xml:id="id53">
                        <ns2:result xmlns:ns2="www.globalcompany.example.com/types/"
                                    xmlns:ns3="/oracle/fodemo/storefront/store/queries/common/">
                          <ns3:OrderId/>
                          <ns3:OrderDate>2008-08-28T07:17:04.0Z</ns3:OrderDate>
                          <ns3:OrderStatusCode>PENDING</ns3:OrderStatusCode>
                          <ns3:OrderTotal>2001</ns3:OrderTotal>
                          <ns3:CustomerId>20</ns3:CustomerId>
                          <ns3:ShipToName>Clemens Utschig</ns3:ShipToName>
                          <ns3:ShipToPhoneNumber>1235550111</ns3:ShipToPhoneNumber>
                          <ns3:AddressId>10</ns3:AddressId>
                          <ns3:Address1>100 Oracle Parkway</ns3:Address1>
                          <ns3:City>Redwood Shores</ns3:City>
                          <ns3:PostalCode>94065</ns3:PostalCode>
                          <ns3:StateProvince>CA</ns3:StateProvince>
                          <ns3:CountryId>US</ns3:CountryId>
                          <ns3:AccountNumber>41</ns3:AccountNumber>
                          <ns3:CardTypeCode>AMEX</ns3:CardTypeCode>
                          <ns3:ExpireDate>2010-10-26T21:32:52</ns3:ExpireDate>
                          <ns3:CheckDigits>1234</ns3:CheckDigits>
                          <ns3:OrderItemsInfoVO>
                            <ns3:OrderId/>
                            <ns3:LineItemId>1</ns3:LineItemId>
                            <ns3:ProductId>1</ns3:ProductId>
                            <ns3:Quantity>1</ns3:Quantity>
                            <ns3:UnitPrice>2001</ns3:UnitPrice>
                            <ns3:ProductName>something</ns3:ProductName>
                            <ns3:SupplierName>from someone</ns3:SupplierName>
                          </ns3:OrderItemsInfoVO>
                        </ns2:result>
                      </from>
                      <to xml:id="id54"
                          variable="Reply_findOrderInfoVO_findOrderInfoVOSDO_OutputVariable"
                          part="parameters"
                          query="/ns2:findOrderInfoVOSDOResponse/ns2:result"/>
                    </copy>
                  </assign>
                </otherwise>
              </switch>
              <assign xml:id="id55" name="Assign_OrderId">
                <copy xml:id="id56">
                  <from xml:id="id57" variable="lOrderId"/>
                  <to xml:id="id58"
                      variable="Reply_findOrderInfoVO_findOrderInfoVOSDO_OutputVariable"
                      part="parameters"
                      query="/ns2:findOrderInfoVOSDOResponse/ns2:result/ns3:OrderId"/>
                </copy>
                <copy xml:id="id59">
                  <from xml:id="id60" variable="lOrderId"/>
                  <to xml:id="id61"
                      variable="Reply_findOrderInfoVO_findOrderInfoVOSDO_OutputVariable"
                      part="parameters"
                      query="/ns2:findOrderInfoVOSDOResponse/ns2:result/ns3:OrderItemsInfoVO[1]/ns3:OrderId"/>
                </copy>
              </assign>
            </sequence>
          </scope>
          <reply name="Reply_findOrderInfoVO"
                 partnerLink="customerandorderservice_client"
                 portType="ns1:StoreFrontService" operation="findOrderInfoVOSDO"
                 variable="Reply_findOrderInfoVO_findOrderInfoVOSDO_OutputVariable"/>
        </sequence>
      </onMessage>
      <onMessage variable="OnMessage_getOrderInfoVOSDO_InputVariable"
                 partnerLink="customerandorderservice_client"
                 portType="ns1:StoreFrontService" operation="getOrderInfoVOSDO">
        <bpelx:annotation>
          <bpelx:pattern></bpelx:pattern>
        </bpelx:annotation>
        <sequence>
          <switch xml:id="id62" name="Switch_OrderId">
            <case xml:id="id63"
                  condition="bpws:getVariableData(''OnMessage_getOrderInfoVOSDO_InputVariable'',''parameters'',''/ns2:getOrderInfoVOSDO/ns2:orderId'') &lt;= 1000">
              <bpelx:annotation>
                <bpelx:pattern>orderid &lt;= 1000</bpelx:pattern>
              </bpelx:annotation>
              <assign name="Assign_getOrderInfo">
                <copy xml:id="id10">
                  <from xml:id="id11"
                        variable="OnMessage_getOrderInfoVOSDO_InputVariable"
                        part="parameters" query="/ns2:getOrderInfoVOSDO"/>
                  <to xml:id="id12"
                      variable="OnMessage_getOrderInfoVOSDO_InputVariable"
                      part="parameters" query="/ns2:getOrderInfoVOSDO"/>
                </copy>
                <copy>
                  <from>
                    <ns2:result xmlns:ns2="www.globalcompany.example.com/types/"
                                xmlns:ns3="/oracle/fodemo/storefront/store/queries/common/">
                      <ns3:OrderId/>
                      <ns3:OrderDate>2008-08-28T07:17:04.0Z</ns3:OrderDate>
                      <ns3:OrderStatusCode>PENDING</ns3:OrderStatusCode>
                      <ns3:OrderTotal>1999</ns3:OrderTotal>
                      <ns3:CustomerId>10</ns3:CustomerId>
                      <ns3:ShipToName>Clemens Utschig</ns3:ShipToName>
                      <ns3:ShipToPhoneNumber>1235550111</ns3:ShipToPhoneNumber>
                      <ns3:AddressId>10</ns3:AddressId>
                      <ns3:Address1>100 Oracle Parkway</ns3:Address1>
                      <ns3:City>Redwood Shores</ns3:City>
                      <ns3:PostalCode>94065</ns3:PostalCode>
                      <ns3:StateProvince>CA</ns3:StateProvince>
                      <ns3:CountryId>US</ns3:CountryId>
                      <ns3:AccountNumber>41</ns3:AccountNumber>
                      <ns3:CardTypeCode>AMEX</ns3:CardTypeCode>
                      <ns3:ExpireDate>2010-10-26T21:32:52</ns3:ExpireDate>
                      <ns3:CheckDigits>1234</ns3:CheckDigits>
                      <ns3:OrderItemsInfoVO>
                        <ns3:OrderId/>
                        <ns3:LineItemId>1</ns3:LineItemId>
                        <ns3:ProductId>1</ns3:ProductId>
                        <ns3:Quantity>1</ns3:Quantity>
                        <ns3:UnitPrice>1999</ns3:UnitPrice>
                        <ns3:ProductName>something</ns3:ProductName>
                        <ns3:SupplierName>from someone</ns3:SupplierName>
                      </ns3:OrderItemsInfoVO>
                    </ns2:result>
                  </from>
                  <to variable="Reply_getOrderInfoVO_getOrderInfoVOSDO_OutputVariable"
                      part="parameters"
                      query="/ns2:getOrderInfoVOSDOResponse/ns2:result"/>
                </copy>
              </assign>
            </case>
            <otherwise xml:id="id64">
              <assign xml:id="id65" name="Assign_OrderLarger2000">
                <copy xml:id="id76">
                  <from xml:id="id77"
                        variable="OnMessage_getOrderInfoVOSDO_InputVariable"
                        part="parameters" query="/ns2:getOrderInfoVOSDO"/>
                  <to xml:id="id78"
                      variable="OnMessage_getOrderInfoVOSDO_InputVariable"
                      part="parameters" query="/ns2:getOrderInfoVOSDO"/>
                </copy>
                <copy xml:id="id66">
                  <from xml:id="id67">
                    <ns2:result xmlns:ns2="www.globalcompany.example.com/types/"
                                xmlns:ns3="/oracle/fodemo/storefront/store/queries/common/">
                      <ns3:OrderId/>
                      <ns3:OrderDate>2008-08-28T07:17:04.0Z</ns3:OrderDate>
                      <ns3:OrderStatusCode>PENDING</ns3:OrderStatusCode>
                      <ns3:OrderTotal>2001</ns3:OrderTotal>
                      <ns3:CustomerId>20</ns3:CustomerId>
                      <ns3:ShipToName>Clemens Utschig</ns3:ShipToName>
                      <ns3:ShipToPhoneNumber>1234</ns3:ShipToPhoneNumber>
                      <ns3:AddressId>10</ns3:AddressId>
                      <ns3:Address1>100 Oracle Parkway</ns3:Address1>
                      <ns3:City>Redwood Shores</ns3:City>
                      <ns3:PostalCode>94065</ns3:PostalCode>
                      <ns3:StateProvince>CA</ns3:StateProvince>
                      <ns3:CountryId>US</ns3:CountryId>
                      <ns3:AccountNumber>41</ns3:AccountNumber>
                      <ns3:CardTypeCode>AMEX</ns3:CardTypeCode>
                      <ns3:ExpireDate>2010-10-26T21:32:52</ns3:ExpireDate>
                      <ns3:CheckDigits>1234</ns3:CheckDigits>
                      <ns3:OrderItemsInfoVO>
                        <ns3:OrderId/>
                        <ns3:LineItemId>1</ns3:LineItemId>
                        <ns3:ProductId>1</ns3:ProductId>
                        <ns3:Quantity>1</ns3:Quantity>
                        <ns3:UnitPrice>2001</ns3:UnitPrice>
                        <ns3:ProductName>something</ns3:ProductName>
                        <ns3:SupplierName>from someone</ns3:SupplierName>
                      </ns3:OrderItemsInfoVO>
                    </ns2:result>
                  </from>
                  <to xml:id="id68"
                      variable="Reply_getOrderInfoVO_getOrderInfoVOSDO_OutputVariable"
                      part="parameters"
                      query="/ns2:getOrderInfoVOSDOResponse/ns2:result"/>
                </copy>
              </assign>
            </otherwise>
          </switch>
          <assign xml:id="id69" name="Assign_OrderId">
            <copy xml:id="id70">
              <from xml:id="id71"
                    variable="OnMessage_getOrderInfoVOSDO_InputVariable"
                    part="parameters"
                    query="/ns2:getOrderInfoVOSDO/ns2:orderId"/>
              <to xml:id="id72"
                  variable="Reply_getOrderInfoVO_getOrderInfoVOSDO_OutputVariable"
                  part="parameters"
                  query="/ns2:getOrderInfoVOSDOResponse/ns2:result/ns3:OrderId"/>
            </copy>
            <copy xml:id="id73">
              <from xml:id="id74"
                    variable="OnMessage_getOrderInfoVOSDO_InputVariable"
                    part="parameters"
                    query="/ns2:getOrderInfoVOSDO/ns2:orderId"/>
              <to xml:id="id75"
                  variable="Reply_getOrderInfoVO_getOrderInfoVOSDO_OutputVariable"
                  part="parameters"
                  query="/ns2:getOrderInfoVOSDOResponse/ns2:result/ns3:OrderItemsInfoVO[1]/ns3:OrderId"/>
            </copy>
          </assign>
          <reply name="Reply_getOrderInfo"
                 variable="Reply_getOrderInfoVO_getOrderInfoVOSDO_OutputVariable"
                 partnerLink="customerandorderservice_client"
                 portType="ns1:StoreFrontService"
                 operation="getOrderInfoVOSDO"/>
        </sequence>
      </onMessage>
      <onMessage variable="OnMessage_processOrderInfoVOSDO_InputVariable"
                 partnerLink="customerandorderservice_client"
                 portType="ns1:StoreFrontService"
                 operation="processOrderInfoVOSDO">
        <bpelx:annotation>
          <bpelx:pattern></bpelx:pattern>
        </bpelx:annotation>
        <sequence>
          <assign name="Assign_ProcessOrderInfo">
            <copy>
              <from>
                <ns2:result xmlns:ns2="www.globalcompany.example.com/types/"
                            xmlns:ns3="/oracle/fodemo/storefront/store/queries/common/">
                  <ns3:OrderId>1000</ns3:OrderId>
                  <ns3:OrderStatusCode>PENDING</ns3:OrderStatusCode>
                  <ns3:OrderTotal>2001</ns3:OrderTotal>
                  <ns3:CustomerId>10</ns3:CustomerId>
                  <ns3:ShipToName>Clemens Utschig</ns3:ShipToName>
                  <ns3:ShipToPhoneNumber>1235550111</ns3:ShipToPhoneNumber>
                  <ns3:AddressId>10</ns3:AddressId>
                  <ns3:Address1>100 Oracle Parkway</ns3:Address1>
                  <ns3:City>Redwood Shores</ns3:City>
                  <ns3:PostalCode>94065</ns3:PostalCode>
                  <ns3:StateProvince>CA</ns3:StateProvince>
                  <ns3:CountryId>US</ns3:CountryId>
                  <ns3:AccountNumber>41</ns3:AccountNumber>
                  <ns3:CardTypeCode>AMEX</ns3:CardTypeCode>
                  <ns3:ExpireDate>2010-10-26T21:32:52</ns3:ExpireDate>
                  <ns3:CheckDigits>1234</ns3:CheckDigits>
                  <ns3:OrderItemsInfoVO>
                    <ns3:OrderId>10</ns3:OrderId>
                    <ns3:LineItemId>1</ns3:LineItemId>
                    <ns3:ProductId>1</ns3:ProductId>
                    <ns3:Quantity>1</ns3:Quantity>
                    <ns3:UnitPrice>2001</ns3:UnitPrice>
                    <ns3:ProductName>something</ns3:ProductName>
                    <ns3:SupplierName>from someone</ns3:SupplierName>
                  </ns3:OrderItemsInfoVO>
                </ns2:result>
              </from>
              <to variable="Reply_ProcessOrderInfoVO_processOrderInfoVOSDO_OutputVariable"
                  part="parameters"
                  query="/ns2:processOrderInfoVOSDOResponse/ns2:result"/>
            </copy>
          </assign>
          <reply name="Reply_ProcessOrderInfoVO"
                 variable="Reply_ProcessOrderInfoVO_processOrderInfoVOSDO_OutputVariable"
                 partnerLink="customerandorderservice_client"
                 portType="ns1:StoreFrontService"
                 operation="processOrderInfoVOSDO"/>
        </sequence>
      </onMessage>
      <onMessage variable="OnMessage_processCSOrderInfoVOSDO_InputVariable"
                 partnerLink="customerandorderservice_client"
                 portType="ns1:StoreFrontService"
                 operation="processCSOrderInfoVOSDO">
        <bpelx:annotation>
          <bpelx:pattern></bpelx:pattern>
        </bpelx:annotation>
        <sequence>
          <assign name="Assign_ProcessOrderInfoVOCS">
            <copy>
              <from>
                <ns0:Value xsi:type="ns1:OrderInfoVOSDO"
                           xmlns:ns0="http://xmlns.oracle.com/adf/svc/types/"
                           xmlns:ns1="/oracle/fodemo/storefront/store/queries/common/"
                           xmlns:ns2="www.globalcompany.example.com/types/"
                           xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                           xmlns:tns="http://xmlns.oracle.com/adf/svc/errors/">
                  <ns1:OrderId>1010</ns1:OrderId>
                  <ns1:OrderDate>2008-08-28T07:17:04.0Z</ns1:OrderDate>
                  <ns1:OrderShippedDate xsi:nil="true"/>
                  <ns1:OrderStatusCode>complete</ns1:OrderStatusCode>
                  <ns1:OrderTotal>1259.98</ns1:OrderTotal>
                  <ns1:CustomerId>120</ns1:CustomerId>
                  <ns1:ShipToName xsi:nil="true"/>
                  <ns1:ShipToPhoneNumber xsi:nil="true"/>
                  <ns1:AddressId>21</ns1:AddressId>
                  <ns1:Address1>5415 W 11th St</ns1:Address1>
                  <ns1:Address2 xsi:nil="true"/>
                  <ns1:City>Greeley</ns1:City>
                  <ns1:PostalCode>80634</ns1:PostalCode>
                  <ns1:StateProvince>CO</ns1:StateProvince>
                  <ns1:CountryId>US</ns1:CountryId>
                  <ns1:PaymentOptionId>1015</ns1:PaymentOptionId>
                  <ns1:BillingAddressId>21</ns1:BillingAddressId>
                  <ns1:AccountNumber>5555555555554444</ns1:AccountNumber>
                  <ns1:CardTypeCode>MSTR</ns1:CardTypeCode>
                  <ns1:ExpireDate>2010-11-30T08:16:09.0Z</ns1:ExpireDate>
                  <ns1:CheckDigits>333</ns1:CheckDigits>
                  <ns1:RoutingIdentifier xsi:nil="true"/>
                  <ns1:InstitutionName xsi:nil="true"/>
                  <ns1:ShipToAddressId>21</ns1:ShipToAddressId>
                  <ns1:ObjectVersionId>3</ns1:ObjectVersionId>
                  <ns1:ShippingOptionId>2</ns1:ShippingOptionId>
                  <ns1:ObjectVersionId1>0</ns1:ObjectVersionId1>
                  <ns1:FreeShippingFlag>N</ns1:FreeShippingFlag>
                  <ns1:ObjectVersionId2>0</ns1:ObjectVersionId2>
                  <ns1:CustomerCollectFlag>N</ns1:CustomerCollectFlag>
                  <ns1:GiftwrapFlag>N</ns1:GiftwrapFlag>
                  <ns1:PaymentOptionId1>1015</ns1:PaymentOptionId1>
                  <ns1:OrderItemsInfoVO>
                    <ns1:OrderId>1010</ns1:OrderId>
                    <ns1:LineItemId>1</ns1:LineItemId>
                    <ns1:ProductId>31</ns1:ProductId>
                    <ns1:Quantity>2</ns1:Quantity>
                    <ns1:UnitPrice>629.99</ns1:UnitPrice>
                    <ns1:ProductName>7 Megapixel Digital Camera</ns1:ProductName>
                    <ns1:SupplierName>Transistor City</ns1:SupplierName>
                    <ns1:ProductId1>31</ns1:ProductId1>
                  </ns1:OrderItemsInfoVO>
                </ns0:Value>
              </from>
              <to variable="Reply_ProcessOrderVOCS_processCSOrderInfoVOSDO_OutputVariable"
                  part="parameters"
                  query="/ns2:processCSOrderInfoVOSDOResponse/ns2:result/ns4:Value"/>
            </copy>
            <copy>
              <from>
                <ns0:ChangeSummary logging="false" xmlns:sdo="commonj.sdo"
                                   xmlns:ns0="http://xmlns.oracle.com/adf/svc/types/"/>
              </from>
              <to variable="Reply_ProcessOrderVOCS_processCSOrderInfoVOSDO_OutputVariable"
                  part="parameters"
                  query="/ns2:processCSOrderInfoVOSDOResponse/ns2:result/ns4:ChangeSummary"/>
            </copy>
          </assign>
          <reply name="Reply_ProcessOrderVOCS"
                 variable="Reply_ProcessOrderVOCS_processCSOrderInfoVOSDO_OutputVariable"
                 partnerLink="customerandorderservice_client"
                 portType="ns1:StoreFrontService"
                 operation="processCSOrderInfoVOSDO"/>
        </sequence>
      </onMessage>
      <onMessage variable="OnMessage_updateOrderInfoVOSDO_InputVariable"
                 partnerLink="customerandorderservice_client"
                 portType="ns1:StoreFrontService"
                 operation="updateOrderInfoVOSDO">
        <bpelx:annotation>
          <bpelx:pattern></bpelx:pattern>
        </bpelx:annotation>
        <sequence>
          <assign name="Assign_UpdateOrderInfoVO">
            <copy>
              <from variable="OnMessage_updateOrderInfoVOSDO_InputVariable"
                    part="parameters"
                    query="/ns2:updateOrderInfoVOSDO/ns2:orderInfoVO1/ns3:OrderId"/>
              <to variable="Reply_UpdateOrderInfoVO_updateOrderInfoVOSDO_OutputVariable"
                  part="parameters"
                  query="/ns2:updateOrderInfoVOSDOResponse/ns2:result/ns3:OrderId"/>
            </copy>
          </assign>
          <reply name="Reply_UpdateOrderInfoVO"
                 variable="Reply_UpdateOrderInfoVO_updateOrderInfoVOSDO_OutputVariable"
                 partnerLink="customerandorderservice_client"
                 portType="ns1:StoreFrontService"
                 operation="updateOrderInfoVOSDO"/>
        </sequence>
      </onMessage>
      <onMessage xml:id="id79" variable="createOrderInfoVOSDO_InputVariable"
                 partnerLink="customerandorderservice_client"
                 portType="ns1:StoreFrontService"
                 operation="createOrderInfoVOSDO">
        <bpelx:annotation>
          <bpelx:pattern></bpelx:pattern>
        </bpelx:annotation>
        <sequence xml:id="id84">
          <assign xml:id="id88" name="Transform_CreateOrderInfo">
            <bpelx:annotation>
              <bpelx:pattern>transformation</bpelx:pattern>
            </bpelx:annotation>
            <copy xml:id="id89">
              <from xml:id="id90"
                    expression="ora:processXSLT(''xsl/Transformation_CreateOrderInfo.xsl'',bpws:getVariableData(''createOrderInfoVOSDO_InputVariable'',''parameters''))"/>
              <to xml:id="id91" variable="createOrderInfoVOSDO_OutputVariable"
                  part="parameters"/>
            </copy>
          </assign>
          <reply xml:id="id81" name="Reply_CreateOrderInfoVO"
                 variable="createOrderInfoVOSDO_OutputVariable"
                 partnerLink="customerandorderservice_client"
                 portType="ns1:StoreFrontService"
                 operation="createOrderInfoVOSDO"/>
        </sequence>
      </onMessage>
    </pick>
  </sequence>
</process>
'
]

{ #category : #bpel }
BPEL20BpelAnalyzerTest4 class >> bpel_OrderProcessor [
	^ '
<?xml version = "1.0" encoding = "UTF-8" ?>
<!--
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  Oracle JDeveloper BPEL Designer 
  
  Created: Fri Sep 12 14:19:45 PDT 2008
  Author:  lloywill
  Purpose: Asynchronous BPEL Process
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
-->
<process name="OrderProcessor"
         targetNamespace="http://www.globalcompany.example.com/ns/OrderBookingService"
         xmlns="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
         xmlns:client="http://www.globalcompany.example.com/ns/OrderBookingService"
         xmlns:ora="http://schemas.oracle.com/xpath/extension"
         xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
         xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
         xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap"
         xmlns:bpelx="http://schemas.oracle.com/bpel/extension"
         xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
         xmlns:ns1="http://www.globalcompany.example.com/ns/InternalWarehouse"
         xmlns:ns2="http://www.globalcompany.example.com/ns/CreditAuthorizationService"
         xmlns:ns3="www.globalcompany.example.com"
         xmlns:ns4="/oracle/fodemo/storefront/store/queries/common/"
         xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
         xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath"
         xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.GetRequestHeaderExtnFunction"
         xmlns:med="http://schemas.oracle.com/mediator/xpath"
         xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath"
         xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk"
         xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
         xmlns:ns5="http://www.globalcompany.example.com/ns/OrderProcessor"
         xmlns:ns6="www.globalcompany.example.com/types/"
         xmlns:ns7="http://xmlns.oracle.com/adf/svc/types/"
         xmlns:ns8="http://www.globalcompany.example.com/ns/CCAuthorizationService"
         xmlns:ns9="www.globalcompany.example.com/ns/OrderProcessor"
         xmlns:ns10="http://www.globalcompany.example.com/ns/OrderBookingService/rules"
         xmlns:ns11="http://xmlns.oracle.com/RequiresApprovalRule/OracleRules1_DecisionService_1"
         xmlns:ns12="http://xmlns.oracle.com/bpel"
         xmlns:xsd="http://www.w3.org/2001/XMLSchema"
         xmlns:wf="http://schemas.oracle.com/bpel/extension/workflow"
         xmlns:ns13="http://xmlns.oracle.com/bpel/workflow/common/tsc"
         xmlns:ns14="http://xmlns.oracle.com/bpel/workflow/TaskEvidenceService"
         xmlns:ns15="http://xmlns.oracle.com/WebLogicFusionOrderDemo/OrderBookingComposite/PartnerSupplierMediator"
         xmlns:ns16="http://www.globalcompany.com/ns/OrderBooking"
         xmlns:ns17="http://xmlns.oracle.com/WebLogicFusionOrderDemo/OrderBookingComposite/FulfillOrder"
         xmlns:ns18="http://xmlns.oracle.com/ias/pcbpel/NotificationService"
         queryLanguage="http://www.w3.org/TR/1999/REC-xpath-19991116"
         expressionLanguage="http://www.w3.org/TR/1999/REC-xpath-19991116"
         suppressJoinFailure="no" enableInstanceCompensation="no"
         abstractProcess="no"
         xmlns:ns19="http://xmlns.oracle.com/EvaluatePreferredSupplierRule/OracleRules1_DecisionService_1"
         xmlns:ns20="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
         xmlns:task="http://xmlns.oracle.com/bpel/workflow/task"
         xmlns:taskservice="http://xmlns.oracle.com/bpel/workflow/taskService"
         xmlns:wfcommon="http://xmlns.oracle.com/bpel/workflow/common"
         xmlns:bpel2="http://docs.oasis-open.org/wsbpel/2.0/process/executable">

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
        <partnerLink name="orderprocessor_client_ep"
                     partnerLinkType="client:OrderProcessor"
                     myRole="OrderProcessorProvider"
                     partnerRole="OrderProcessorRequester"/>
        <partnerLink myRole="InternalWarehouseServiceRequester"
                     name="InternalWarehouseService"
                     partnerRole="InternalWarehouseServiceProvider"
                     partnerLinkType="ns1:InternalWarehouseService"/>
        <partnerLink name="CreditCardAuthorizationService"
                     partnerRole="CreditAuthorizationPort"
                     partnerLinkType="ns2:CreditCardAuthorizationService"/>
        <partnerLink name="StoreFrontService" partnerRole="StoreFrontService"
                     partnerLinkType="ns3:StorefrontService"/>
        <partnerLink myRole="TaskServiceCallbackListener"
                     name="TaskService"
                     partnerRole="TaskService"
                     partnerLinkType="taskservice:TaskService"/>
        <partnerLink name="PartnerSupplierMediator"
                     myRole="callback_ptt"
                     partnerRole="execute_ptt"
                     partnerLinkType="ns15:PartnerSupplierMediator.PartnerSupplierMediator"/>
        <partnerLink name="NotificationService_WSDL"
                     partnerLinkType="ns18:NotificationServiceLink"
                     partnerRole="NotificationServiceProvider"/>
        <partnerLink name="RequiresApprovalRule_OracleRules1_DecisionService_1"
                     partnerLinkType="ns11:IDecisionService_PL"
                     partnerRole="IDecisionService_Role"/>
        <partnerLink name="FulfillOrder.FulfillOrder" partnerRole="execute_ptt"
                     partnerLinkType="ns17:FulfillOrder.FulfillOrder"/>
        <partnerLink name="EvaluatePreferredSupplierRule.OracleRules1_DecisionService_1"
                     partnerRole="IDecisionService_Role"
                     partnerLinkType="ns19:IDecisionService_PL"/>
    </partnerLinks>

    <!-- 
      ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        VARIABLES                                                        
        List of messages and XML documents used within this BPEL process 
      ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    -->
    <variables>
        <!-- Reference to the message passed as input during initiation -->

        <!-- Reference to the message that will be sent back to the requester during callback -->
        <variable name="inputVariable"
                  messageType="client:OrderProcessorRequestMessage"/>
        <variable name="outputVariable"
                  messageType="client:OrderProcessorResponseMessage"/>
        <variable name="ApprovalHumanTask_1_globalVariable"
                  messageType="taskservice:taskMessage"/>
        <variable name="gOrderInfoVariable" element="ns4:orderInfoVOSDO"
                  bpelx:entity.si="StoreFrontService"/>
        <variable name="gCustomerInfoVariable"
                  messageType="ns3:StoreFrontService_findCustomerInfoVO1CustomerInfoVOCriteriaResponse"/>
        <variable name="gWarehouseQuotes" element="ns1:WarehouseList"/>
        <variable name="gPreferredSupplier" element="ns1:WarehouseResponse"/>
        <variable name="gOrderProcessorFaultVariable"
                  messageType="client:OrderProcessorFault"/>
    </variables>
    <faultHandlers>
        <catch faultName="client:OrderProcessorFault">
            <sequence xml:id="id5">
                <assign name="Assign_FaultedStatusToOrder">
                    <copy>
                        <from expression="string(''FAULTED'')"/>
                        <to variable="gOrderInfoVariable"
                            query="/ns4:orderInfoVOSDO/ns4:OrderStatusCode"/>
                    </copy>
                    <copy>
                        <from expression="concat (''OrderProcessor, order: '', bpws:getVariableData(''inputVariable'',''payload'',''/client:process/client:orderId''), '' fault'')"/>
                        <to variable="gOrderProcessorFaultVariable" part="fault"
                            query="/client:orderProcessFault/client:code"/>
                    </copy>
                </assign>
                <invoke xml:id="id4"
                        name="Invoke_FaultOrderProcessorFaultCallback"
                        inputVariable="gOrderProcessorFaultVariable"
                        partnerLink="orderprocessor_client_ep"
                        portType="client:OrderProcessorCallback"
                        operation="processFault"/>
            </sequence>
        </catch>
        <catchAll>
            <sequence>
                <assign name="Assign_Fault">
                    <copy>
                        <from expression="ora:getFaultAsString()"/>
                        <to variable="gOrderProcessorFaultVariable" part="fault"
                            query="/client:orderProcessFault/client:detail"/>
                    </copy>
                    <copy>
                        <from expression="ora:getFaultName()"/>
                        <to variable="gOrderProcessorFaultVariable" part="fault"
                            query="/client:orderProcessFault/client:code"/>
                    </copy>
                    <copy xml:id="id9">
                        <from xml:id="id10"
                              expression="concat(bpws:getVariableData(''inputVariable'',''payload'',''/client:process/client:orderId''), string('' failed to process, detail: ''), ora:getFaultAsString())"/>
                        <to xml:id="id11"
                            variable="gOrderProcessorFaultVariable" part="fault"
                            query="/client:orderProcessFault/client:summary"/>
                    </copy>
                </assign>
                <invoke name="Invoke_FaultCallback"
                        inputVariable="gOrderProcessorFaultVariable"
                        partnerLink="orderprocessor_client_ep"
                        portType="client:OrderProcessorCallback"
                        operation="processFault"/>
            </sequence>
        </catchAll>
    </faultHandlers>
    <!-- 
      ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
       ORCHESTRATION LOGIC                                               
       Set of activities coordinating the flow of messages across the    
       services integrated within this business process                  
      ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    -->
    <sequence name="main">
        <!-- Receive input from requestor. (Note: This maps to operation defined in OrderProcessor.wsdl) -->
        <receive name="receiveInput" partnerLink="orderprocessor_client_ep" portType="client:OrderProcessor" operation="process" variable="inputVariable" createInstance="yes"/>

        <!-- 
          Asynchronous callback to the requester. (Note: the callback location and correlation id is transparently handled using WS-addressing.)
        -->
        <scope name="Scope_RetrieveOrder">
            <variables xml:id="id12">
                <variable xml:id="id13" name="lTmpOrderInfoVariable"
                          element="ns4:orderInfoVOSDO"/>
            </variables>
            <sequence xml:id="id15">
                <bpelx:bindEntity name="findOrderById"
                                  variable="gOrderInfoVariable">
                    <bpelx:key keyname="ns4:OrderId">bpws:getVariableData(''inputVariable'',''payload'',''/client:process/client:orderId'')</bpelx:key>
                </bpelx:bindEntity>
                <assign xml:id="id14" name="Assign_lVariableForSensor">
                    <copy xml:id="id16">
                        <from xml:id="id17" variable="gOrderInfoVariable"
                              query="/ns4:orderInfoVOSDO"/>
                        <to xml:id="id18" variable="lTmpOrderInfoVariable"
                            query="/ns4:orderInfoVOSDO"/>
                    </copy>
                </assign>
            </sequence>
        </scope>
        <scope name="Scope_RetrieveCustomerForOrder">
            <variables>
                <variable name="lFindCustomerInfo_InputVariable"
                          messageType="ns3:StoreFrontService_findCustomerInfoVO1CustomerInfoVOCriteria"/>
            </variables>
            <sequence>
                <assign name="AssignCustomerId">
                    <copy>
                        <from variable="gOrderInfoVariable"
                              query="/ns4:orderInfoVOSDO/ns4:CustomerId"/>
                        <to variable="lFindCustomerInfo_InputVariable"
                            part="parameters"
                            query="/ns6:findCustomerInfoVO1CustomerInfoVOCriteria/ns6:CustId"/>
                    </copy>
                    <copy>
                        <from expression="-1"/>
                        <to variable="lFindCustomerInfo_InputVariable"
                            part="parameters"
                            query="/ns6:findCustomerInfoVO1CustomerInfoVOCriteria/ns6:findCriteria/ns7:fetchStart"/>
                    </copy>
                    <copy>
                        <from expression="1"/>
                        <to variable="lFindCustomerInfo_InputVariable"
                            part="parameters"
                            query="/ns6:findCustomerInfoVO1CustomerInfoVOCriteria/ns6:findCriteria/ns7:fetchSize"/>
                    </copy>
                    <copy>
                        <from expression="false()"/>
                        <to variable="lFindCustomerInfo_InputVariable"
                            part="parameters"
                            query="/ns6:findCustomerInfoVO1CustomerInfoVOCriteria/ns6:findCriteria/ns7:excludeAttribute"/>
                    </copy>
                    <copy>
                        <from expression="false()"/>
                        <to variable="lFindCustomerInfo_InputVariable"
                            part="parameters"
                            query="/ns6:findCustomerInfoVO1CustomerInfoVOCriteria/ns6:findControl/ns7:retrieveAllTranslations"/>
                    </copy>
                </assign>
                <invoke name="InvokeFindCustomer"
                        inputVariable="lFindCustomerInfo_InputVariable"
                        outputVariable="gCustomerInfoVariable"
                        partnerLink="StoreFrontService"
                        portType="ns3:StoreFrontService"
                        operation="findCustomerInfoVO1CustomerInfoVOCriteria"/>
            </sequence>
        </scope>
        <scope name="Scope_AuthorizeCreditCard">
            <variables>
                <variable name="lCreditCardInput"
                          messageType="ns2:CreditAuthorizationRequestMessage"/>
                <variable name="lCreditCardOutput"
                          messageType="ns2:CreditAuthorizationResponseMessage"/>
            </variables>
            <faultHandlers>
                <catch faultName="bpws:selectionFailure">
                    <sequence>
                        <assign name="Assign_noCCNumber">
                            <copy>
                                <from expression="string(''CreditCardCheck - NO CreditCard'')"/>
                                <to variable="gOrderProcessorFaultVariable"
                                    part="fault"
                                    query="/client:orderProcessFault/client:summary"/>
                            </copy>
                        </assign>
                        <throw name="Throw_NoCreditCard"
                               faultVariable="gOrderProcessorFaultVariable"
                               faultName="client:OrderProcessorFault"/>
                    </sequence>
                </catch>
                <catch faultName="ns2:InvalidCredit">
                    <sequence>
                        <assign name="Assign_InvalidCreditFault">
                            <copy>
                                <from expression="concat(bpws:getVariableData(''gOrderInfoVariable'',''/ns4:orderInfoVOSDO/ns4:CardTypeCode''), '' is not a valid creditcard type'')"/>
                                <to variable="gOrderProcessorFaultVariable"
                                    part="fault"
                                    query="/client:orderProcessFault/client:detail"/>
                            </copy>
                            <copy>
                                <from expression="string(''CreditCardCheck - NOT VALID'')"/>
                                <to variable="gOrderProcessorFaultVariable"
                                    part="fault"
                                    query="/client:orderProcessFault/client:summary"/>
                            </copy>
                        </assign>
                        <throw name="Throw_OrderProcessingFault"
                               faultName="client:OrderProcessorFault"
                               faultVariable="gOrderProcessorFaultVariable"/>
                    </sequence>
                </catch>
            </faultHandlers>
            <sequence>
                <assign name="Assign_CreditCheckInput">
                    <copy>
                        <from variable="gOrderInfoVariable"
                              query="/ns4:orderInfoVOSDO/ns4:OrderTotal"/>
                        <to variable="lCreditCardInput" part="Authorization"
                            query="/ns8:AuthInformation/ns8:PurchaseAmount"/>
                    </copy>
                    <copy>
                        <from variable="gOrderInfoVariable"
                              query="/ns4:orderInfoVOSDO/ns4:CardTypeCode"/>
                        <to variable="lCreditCardInput" part="Authorization"
                            query="/ns8:AuthInformation/ns8:CCType"/>
                    </copy>
                    <copy>
                        <from variable="gOrderInfoVariable"
                              query="/ns4:orderInfoVOSDO/ns4:AccountNumber"/>
                        <to variable="lCreditCardInput" part="Authorization"
                            query="/ns8:AuthInformation/ns8:CCNumber"/>
                    </copy>
                </assign>
                <invoke name="InvokeCheckCreditCard"
                        inputVariable="lCreditCardInput"
                        outputVariable="lCreditCardOutput"
                        partnerLink="CreditCardAuthorizationService"
                        portType="ns2:CreditAuthorizationPort"
                        operation="AuthorizeCredit"/>
                <switch name="Switch_EvaluateCCResult">
                    <case condition="bpws:getVariableData(''lCreditCardOutput'',''status'',''/ns8:status'') != ''APPROVED''">
                        <bpelx:annotation>
                            <bpelx:pattern>status &lt;&gt; approved</bpelx:pattern>
                            <bpelx:general>
                                <bpelx:property name="userLabel">Check if CC
                                                                 card was
                                                                 validated and
                                                                 amount approved</bpelx:property>
                            </bpelx:general>
                        </bpelx:annotation>
                        <sequence>
                            <assign name="Assign_StatusAndMessage">
                                <copy>
                                    <from expression="concat(''Creditcard: '', bpws:getVariableData(''lCreditCardInput'',''Authorization'',''/ns8:AuthInformation/ns8:CCNumber''), '' Status: '', bpws:getVariableData(''lCreditCardOutput'',''status'',''/ns8:status'') )"/>
                                    <to variable="gOrderProcessorFaultVariable"
                                        part="fault"
                                        query="/client:orderProcessFault/client:summary"/>
                                </copy>
                            </assign>
                            <throw name="Throw_Fault_CC_Denied"
                                   faultName="client:OrderProcessorFault"
                                   faultVariable="gOrderProcessorFaultVariable"/>
                        </sequence>
                    </case>
                </switch>
            </sequence>
        </scope>
        <scope name="Scope_CheckApprovalLimit">
            <variables>
                <variable name="lOrderApproved" type="xsd:string"/>
            </variables>
            <sequence>
                <assign name="Assign_DefaultNotRequiresApproval">
                    <copy>
                        <from expression="string(''false'')"/>
                        <to variable="lOrderApproved"/>
                    </copy>
                </assign>
                <scope name="BusinessRule_ApprovalRequired">
                    <bpelx:annotation>
                        <bpelx:pattern patternName="bpelx:decide"></bpelx:pattern>
                    </bpelx:annotation>
                    <variables>
                        <variable name="com_example_globalcompany_ns_orderbookingservice_rules_Approve_i"
                                  element="ns10:approve"/>
                        <variable name="com_example_globalcompany_ns_orderbookingservice_rules_Approve_o"
                                  element="ns10:approve"/>
                        <variable name="dsIn"
                                  messageType="ns11:callFunctionStatelessMessage"/>
                        <variable name="dsOut"
                                  messageType="ns11:callFunctionStatelessDecisionMessage"/>
                    </variables>
                    <sequence name="Sequence_1">
                        <assign name="BPEL_Var_To_Rule_Facts">
                            <copy>
                                <from variable="gOrderInfoVariable"
                                      query="/ns4:orderInfoVOSDO/ns4:OrderTotal"/>
                                <to variable="com_example_globalcompany_ns_orderbookingservice_rules_Approve_i"
                                    query="/ns10:approve/ns10:price"/>
                            </copy>
                            <copy>
                                <from variable="lOrderApproved"/>
                                <to variable="com_example_globalcompany_ns_orderbookingservice_rules_Approve_i"
                                    query="/ns10:approve/ns10:approvalRequired"/>
                            </copy>
                        </assign>
                        <assign name="Facts_To_Rule_Service">
                            <copy>
                                <from variable="com_example_globalcompany_ns_orderbookingservice_rules_Approve_i"/>
                                <to variable="dsIn" part="payload"
                                    query="/ns11:callFunctionStateless/ns11:parameterList/ns10:approve"/>
                            </copy>
                        </assign>
                        <assign name="BPEL_Header">
            <copy>
                <from expression="''OracleRules1_DecisionService_1''"/>
                <to variable="dsIn" part="payload"
                    query="/ns11:callFunctionStateless/@name"/>
            </copy>
        </assign>
                        <invoke name="Invoke"
                                partnerLink="RequiresApprovalRule_OracleRules1_DecisionService_1"
                                portType="ns11:IDecisionService"
                                operation="callFunctionStateless"
                                inputVariable="dsIn" outputVariable="dsOut"/>
                        <assign name="Rule_Service_To_Facts">
                            <copy>
                                <from variable="dsOut" part="payload"
                                      query="/ns11:callFunctionStatelessDecision/ns11:resultList/ns10:approve"/>
                                <to variable="com_example_globalcompany_ns_orderbookingservice_rules_Approve_o"/>
                            </copy>
                        </assign>
                        <assign name="Facts_To_BPEL_Var">
                            <copy>
                                <from variable="com_example_globalcompany_ns_orderbookingservice_rules_Approve_o"
                                      query="/ns10:approve/ns10:approvalRequired"/>
                                <to variable="lOrderApproved"/>
                            </copy>
                        </assign>
                    </sequence>
                </scope>
                <switch name="Switch_ApprovalRequired">
                    <case condition="bpws:getVariableData(''lOrderApproved'') = ''true''">
                        <bpelx:annotation>
                            <bpelx:pattern>approval required = true</bpelx:pattern>
                        </bpelx:annotation>
                        <sequence>
                            <scope name="ApprovalHumanTask_1"
                                   xmlns:wf="http://schemas.oracle.com/bpel/extension/workflow"
                                   wf:key="ApprovalHumanTask_1_globalVariable">
            <bpelx:annotation xmlns:bpelx="http://schemas.oracle.com/bpel/extension">
                <bpelx:pattern patternName="bpelx:workflow"></bpelx:pattern>
            </bpelx:annotation>
        <variables>
            <variable name="initiateTaskInput"
                   messageType="taskservice:initiateTaskMessage"/>
            <variable name="initiateTaskResponseMessage"
                   messageType="taskservice:initiateTaskResponseMessage"/>
            </variables>
            <sequence>
                <assign name="ApprovalHumanTask_1_AssignTaskAttributes">
                                        <copy>
                                            <from expression="number(3)"/>
                                            <to variable="initiateTaskInput"
                                                part="payload"
                                                query="/taskservice:initiateTask/task:task/task:priority"/>
                                        </copy>
                                        <copy>
                                            <from>
                                                <payload xmlns="http://xmlns.oracle.com/bpel/workflow/task">
                                                    <orderId xmlns="http://xmlns.oracle.com/bpel/workflow/task"/>
                                                </payload>
                                            </from>
                                            <to variable="initiateTaskInput"
                                                part="payload"
                                                query="/taskservice:initiateTask/task:task/task:payload"/>
                                        </copy>
                                        <copy>
                                            <from variable="gOrderInfoVariable"
                                                  query="/ns4:orderInfoVOSDO/ns4:OrderId"/>
                                            <to variable="initiateTaskInput"
                                                part="payload"
                                                query="/taskservice:initiateTask/task:task/task:payload/task:orderId"/>
                                        </copy>
                                        <copy>
                                            <from expression="concat(bpws:getVariableData(''gCustomerInfoVariable'',''parameters'',''/ns6:findCustomerInfoVO1CustomerInfoVOCriteriaResponse/ns6:result/ns4:FirstName''), '' '', bpws:getVariableData(''gCustomerInfoVariable'',''parameters'',''/ns6:findCustomerInfoVO1CustomerInfoVOCriteriaResponse/ns6:result/ns4:LastName''))"/>
                                            <to variable="initiateTaskInput"
                                                part="payload"
                                                query="/taskservice:initiateTask/task:task/task:creator"/>
                                        </copy>
                                        <copy>
                                            <from expression="concat(string(''Order approval for order (''), bpws:getVariableData(''inputVariable'',''payload'',''/client:process/client:orderId''), string('')''))"/>
                                            <to variable="initiateTaskInput"
                                                part="payload"
                                                query="/taskservice:initiateTask/task:task/task:title"/>
                                        </copy>
                                    </assign>
                <invoke name="initiateTask_ApprovalHumanTask_1"
                        partnerLink="TaskService"
                        portType="taskservice:TaskService"
                        operation="initiateTask"
                        inputVariable="initiateTaskInput"
                        outputVariable="initiateTaskResponseMessage">
                </invoke>
                <receive name="receiveCompletedTask_ApprovalHumanTask_1"
                         partnerLink="TaskService"
                         portType="taskservice:TaskServiceCallback"
                         operation="onTaskCompleted"
                         variable="ApprovalHumanTask_1_globalVariable"
                         createInstance="no">
                </receive>
            </sequence>
        </scope>
                            <switch name="taskSwitch">
                                <case condition="bpws:getVariableData(''ApprovalHumanTask_1_globalVariable'', ''payload'', ''/task:task/task:systemAttributes/task:state'') = ''COMPLETED'' and bpws:getVariableData(''ApprovalHumanTask_1_globalVariable'', ''payload'', ''/task:task/task:systemAttributes/task:outcome'') = ''REJECT''">
                                    <bpelx:annotation>
                                        <bpelx:pattern>Task outcome is REJECT</bpelx:pattern>
                                    </bpelx:annotation>
                                    <sequence>
                                        <assign name="Assign_FaultDetails">
                                            <copy>
                                                <from expression="concat(''Approval for order was rejected by: '', bpws:getVariableData(''ApprovalHumanTask_1_globalVariable'',''payload'',''/task:task/task:systemAttributes/task:updatedBy/task:id''))"/>
                                                <to variable="gOrderProcessorFaultVariable"
                                                    part="fault"
                                                    query="/client:orderProcessFault/client:summary"/>
                                            </copy>
                                        </assign>
                                        <throw name="Throw_OrderProcessorFault"
                                               faultName="client:OrderProcessorFault"
                                               faultVariable="gOrderProcessorFaultVariable"/>
                                    </sequence>
                                </case>
                                <case condition="bpws:getVariableData(''ApprovalHumanTask_1_globalVariable'', ''payload'', ''/task:task/task:systemAttributes/task:state'') = ''COMPLETED'' and bpws:getVariableData(''ApprovalHumanTask_1_globalVariable'', ''payload'', ''/task:task/task:systemAttributes/task:outcome'') = ''APPROVE''">
                                    <bpelx:annotation>
                                        <bpelx:pattern>Task outcome is APPROVE</bpelx:pattern>
                                    </bpelx:annotation>
                                    <sequence>
                                        <empty/>
                                    </sequence>
                                </case>
                                <otherwise>
                                    <sequence>
                                        <assign name="Assign_FaultDetails">
                                            <copy>
                                                <from expression="concat (''Approval task changed state'', bpws:getVariableData(''ApprovalHumanTask_1_globalVariable'',''payload'',''/task:task/task:systemAttributes/task:state''))"/>
                                                <to variable="gOrderProcessorFaultVariable"
                                                    part="fault"
                                                    query="/client:orderProcessFault/client:summary"/>
                                            </copy>
                                        </assign>
                                        <throw name="Throw_OrderProcessingFault"
                                               faultName="client:OrderProcessorFault"
                                               faultVariable="gOrderProcessorFaultVariable"/>
                                    </sequence>
                                </otherwise>
                            </switch>
                        </sequence>
                    </case>
                </switch>
            </sequence>
        </scope>
        <scope name="Scope_RetrieveQuotes">
            <variables>
                <variable name="lPartnerSupplierInputVariable"
                          messageType="ns15:requestMessage"/>
                <variable name="lPartnerResponseVariable"
                          messageType="ns15:callbackMessage"/>
                <variable name="lInternalWarehouseResponseVariable"
                          messageType="ns1:InternalWarehouseServiceResponseMessage"/>
                <variable name="lInternalWarehouseInputVariable"
                          messageType="ns1:InternalWarehouseServiceRequestMessage"/>
            </variables>
            <flow name="Retrieve_QuotesFromSuppliers">
                <sequence name="Sequence_4">
                    <assign name="Assign_InternalWarehouseRequest">
                        <copy>
                            <from variable="gOrderInfoVariable"
                                  query="/ns4:orderInfoVOSDO/ns4:OrderId"/>
                            <to variable="lInternalWarehouseInputVariable"
                                part="payload"
                                query="/ns1:WarehouseRequest/ns1:orderId"/>
                        </copy>
                    </assign>
                    <invoke name="Invoke_InternalWarehouse"
                            inputVariable="lInternalWarehouseInputVariable"
                            partnerLink="InternalWarehouseService"
                            portType="ns1:InternalWarehouseService"
                            operation="process"/>
                    <receive name="Receive_InternalWarehouse"
                             createInstance="no"
                             variable="lInternalWarehouseResponseVariable"
                             partnerLink="InternalWarehouseService"
                             portType="ns1:InternalWarehouseServiceCallback"
                             operation="processResponse"/>
                    <assign name="Assign_InterWHResponse">
                        <bpelx:append>
                            <bpelx:from variable="lInternalWarehouseResponseVariable"
                                        part="payload"
                                        query="/ns1:WarehouseResponse"/>
                            <bpelx:to variable="gWarehouseQuotes"
                                      query="/ns1:WarehouseList"/>
                        </bpelx:append>
                    </assign>
                </sequence>
                <sequence name="Sequence_4">
                    <assign name="Assign_PartnerRequest">
                        <copy>
                            <from variable="gOrderInfoVariable"
                                  query="/ns4:orderInfoVOSDO"/>
                            <to variable="lPartnerSupplierInputVariable"
                                part="request" query="/ns4:orderInfoVOSDO"/>
                        </copy>
                    </assign>
                    <invoke name="Invoke_PartnerSupplier"
                            partnerLink="PartnerSupplierMediator"
                            portType="ns15:execute_ptt" operation="execute"
                            inputVariable="lPartnerSupplierInputVariable"/>
                    <receive name="Receive_PartnerResponse"
                             createInstance="no"
                             variable="lPartnerResponseVariable"
                             partnerLink="PartnerSupplierMediator"
                             portType="ns15:callback_ptt" operation="callback"/>
                    <assign name="Assign_PartnerWHResponse">
                        <bpelx:append>
                            <bpelx:from variable="lPartnerResponseVariable"
                                        part="callback"
                                        query="/ns1:WarehouseResponse"/>
                            <bpelx:to variable="gWarehouseQuotes"
                                      query="/ns1:WarehouseList"/>
                        </bpelx:append>
                    </assign>
                </sequence>
            </flow>
        </scope>
        <scope name="Scope_SelectPreferredSupplier">
            <!--scope name="BusinessRule_1">
                <bpelx:annotation>
                    <bpelx:pattern patternName="bpelx:decide"></bpelx:pattern>
                </bpelx:annotation>
            </scope-->
            <scope name="BusinessRule_SelectPreferredSupplier">
                <bpelx:annotation>
                    <bpelx:pattern patternName="bpelx:decide"></bpelx:pattern>
                </bpelx:annotation>
                <variables>
                    <variable name="com_example_globalcompany_ns_internalwarehouse_WarehouseList_i"
                              element="ns1:WarehouseList"/>
                    <variable name="com_example_globalcompany_ns_internalwarehouse_WarehouseResponse_o"
                              element="ns1:WarehouseResponse"/>
                    <variable name="dsIn"
                              messageType="ns19:callFunctionStatelessMessage"/>
                    <variable name="dsOut"
                              messageType="ns19:callFunctionStatelessDecisionMessage"/>
                </variables>
                <sequence name="Sequence_6">
                    <assign name="BPEL_Var_To_Rule_Facts">
                        <copy>
                            <from variable="gWarehouseQuotes"
                                  query="/ns1:WarehouseList"/>
                            <to variable="com_example_globalcompany_ns_internalwarehouse_WarehouseList_i"
                                query="/ns1:WarehouseList"/>
                        </copy>
                    </assign>
                    <assign name="Facts_To_Rule_Service">
                        <copy>
                            <from variable="com_example_globalcompany_ns_internalwarehouse_WarehouseList_i"/>
                            <to variable="dsIn" part="payload"
                                query="/ns19:callFunctionStateless/ns19:parameterList/ns1:WarehouseList"/>
                        </copy>
                    </assign>
                    <assign name="BPEL_Header">
                        <copy>
                            <from expression="''OracleRules1_DecisionService_1''"/>
                            <to variable="dsIn" part="payload"
                                query="/ns19:callFunctionStateless/@name"/>
                        </copy>
                    </assign>
                    <invoke name="Invoke"
                            partnerLink="EvaluatePreferredSupplierRule.OracleRules1_DecisionService_1"
                            portType="ns19:IDecisionService"
                            operation="callFunctionStateless"
                            inputVariable="dsIn" outputVariable="dsOut"/>
                    <assign name="Rule_Service_To_Facts">
                        <copy>
                            <from variable="dsOut" part="payload"
                                  query="/ns19:callFunctionStatelessDecision/ns19:resultList/ns1:WarehouseResponse"/>
                            <to variable="com_example_globalcompany_ns_internalwarehouse_WarehouseResponse_o"/>
                        </copy>
                    </assign>
                    <assign name="Facts_To_BPEL_Var">
                        <copy>
                            <from variable="com_example_globalcompany_ns_internalwarehouse_WarehouseResponse_o"
                                  query="/ns1:WarehouseResponse"/>
                            <to variable="gPreferredSupplier"
                                query="/ns1:WarehouseResponse"/>
                        </copy>
                    </assign>
                </sequence>
            </scope>
        </scope>
        <scope name="Scope_FulfillOrder">
            <variables>
                <variable name="lFulfillOrder_InputVariable"
                          messageType="ns17:requestMessage"/>
            </variables>
            <sequence>
                <assign name="Assign_OrderData">
                    <copy>
                        <from variable="gOrderInfoVariable"
                              query="/ns4:orderInfoVOSDO"/>
                        <to variable="lFulfillOrder_InputVariable"
                            part="request" query="/ns4:orderInfoVOSDO"/>
                    </copy>
                </assign>
                <invoke name="Invoke_FulfillOrder"
                        inputVariable="lFulfillOrder_InputVariable"
                        partnerLink="FulfillOrder.FulfillOrder"
                        portType="ns17:execute_ptt" operation="execute"/>
            </sequence>
        </scope>
        <scope name="Scope_UpdateStatusToComplete">
            <assign name="UpdateOrderStatus">
                <copy>
                    <from expression="string(''complete'')"/>
                    <to variable="gOrderInfoVariable"
                        query="/ns4:orderInfoVOSDO/ns4:OrderStatusCode"/>
                </copy>
                <copy xml:id="id1">
                    <from xml:id="id2" variable="inputVariable" part="payload"
                          query="/client:process/client:orderId"/>
                    <to xml:id="id3" variable="outputVariable" part="payload"
                        query="/client:processResponse/client:result"/>
                </copy>
            </assign>
        </scope>
        <scope name="Scope_NotifyCustomerOfCompletion">
            <scope name="Email_ConfirmationToCustomer">
                <bpelx:annotation>
                    <bpelx:pattern patternName="bpelx:email"></bpelx:pattern>
                </bpelx:annotation>
                <variables>
                    <variable name="varNotificationReq"
                              messageType="ns18:EmailNotificationRequest"/>
                    <variable name="varNotificationResponse"
                              messageType="ns18:ArrayOfResponse"/>
                    <variable name="NotificationServiceFaultVariable"
                              messageType="ns18:NotificationServiceErrorMessage"/>
                </variables>
                <sequence name="Sequence_5">
                    <assign name="EmailParamsAssign">
                        <copy>
                            <from expression="string(''Default'')"/>
                            <to variable="varNotificationReq"
                                part="EmailPayload"
                                query="/EmailPayload/ns18:FromAccountName"/>
                        </copy>
                        <copy>
                            <from expression="string('''')"/>
                            <to variable="varNotificationReq"
                                part="EmailPayload"
                                query="/EmailPayload/ns18:Bcc"/>
                        </copy>
                        <copy>
                            <from expression="string('''')"/>
                            <to variable="varNotificationReq"
                                part="EmailPayload"
                                query="/EmailPayload/ns18:Cc"/>
                        </copy>
                        <copy>
                            <from expression="string('''')"/>
                            <to variable="varNotificationReq"
                                part="EmailPayload"
                                query="/EmailPayload/ns18:ReplyToAddress"/>
                        </copy>
                        <copy>
                            <from expression="concat(string(''Order with id ''), bpws:getVariableData(''gOrderInfoVariable'',''/ns4:orderInfoVOSDO/ns4:OrderId''), string('' shipped!''))"/>
                            <to variable="varNotificationReq"
                                part="EmailPayload"
                                query="/EmailPayload/ns18:Subject"/>
                        </copy>
                        <copy>
                            <from expression="bpws:getVariableData(''gCustomerInfoVariable'',''parameters'',''/ns6:findCustomerInfoVO1CustomerInfoVOCriteriaResponse/ns6:result/ns4:ConfirmedEmail'')"/>
                            <to variable="varNotificationReq"
                                part="EmailPayload"
                                query="/EmailPayload/ns18:To"/>
                        </copy>
                        <copy>
                            <from expression="concat(string(''Dear ''), bpws:getVariableData(''gCustomerInfoVariable'',''parameters'',''/ns6:findCustomerInfoVO1CustomerInfoVOCriteriaResponse/ns6:result/ns4:FirstName'') , string('',
your order has been shipped.''))"/>
                            <to variable="varNotificationReq"
                                part="EmailPayload"
                                query="/EmailPayload/ns18:Content/ns18:ContentBody"/>
                        </copy>
                        <copy>
                            <from expression="string(''text/html; charset=UTF-8'')"/>
                            <to variable="varNotificationReq"
                                part="EmailPayload"
                                query="/EmailPayload/ns18:Content/ns18:MimeType"/>
                        </copy>
                    </assign>
                    <invoke name="InvokeNotificationService"
                            portType="ns18:NotificationService"
                            partnerLink="NotificationService_WSDL"
                            inputVariable="varNotificationReq"
                            outputVariable="varNotificationResponse"
                            operation="sendEmailNotification"/>
                </sequence>
            </scope>
        </scope>
        <invoke name="callbackClient" partnerLink="orderprocessor_client_ep" portType="client:OrderProcessorCallback" operation="processResponse" inputVariable="outputVariable"/>
    </sequence>
</process>
'
]
