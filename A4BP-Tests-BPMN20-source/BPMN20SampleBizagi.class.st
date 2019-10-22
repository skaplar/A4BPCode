Class {
	#name : #BPMN20SampleBizagi,
	#superclass : #Object,
	#category : #'A4BP-Tests-BPMN20-source'
}

{ #category : #'as yet unclassified' }
BPMN20SampleBizagi class >> vehicleInsurancePolicyUnderwriting [
	^ '<?xml version="1.0"?>
<definitions xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" id="_2015032608176" targetNamespace="http://www.bizagi.com/definitions/_2015032608176" xmlns="http://www.omg.org/spec/BPMN/20100524/MODEL">
  <resource id="Main_Agent" name="Main Agent">
    <documentation>Agent with the capacity to approve or reject the vehicle for different reasons, someone who depends directly on the insurance company. </documentation>
  </resource>
  <resource id="Inspection_Outsourcing_or_Workshop" name="Inspection Outsourcing or Workshop">
    <documentation>Are official workshops of the insurance company that are in charge of performing inspections on the vehicle to be insured.</documentation>
  </resource>
  <resource id="Agent_or_Intermediary" name="Agent or Intermediary">
    <documentation>Is the individual or company that, being connected to an insurance company by means of a contract of insurance agency, is dedicated to the negotiation or production of insurance and to the conservation of the subsequent accounts receivable, by means of necessary commercial and administrative tasks for obtaining insurance contracts that are part of it and their current maintenance.</documentation>
  </resource>
  <process id="Id_07de2261-433f-40e3-85e9-9517d9d64afc" name="Proceso principal">
    <documentation />
    <laneSet id="Id_524ccc0f-e4b5-44bb-88dd-98d8c996c94e" />
  </process>
  <process id="Id_a7ebbb75-038b-4f1b-b690-d24e822ee647" name="Vehicle Insurance Policy Underwriting  ">
    <documentation />
    <laneSet id="Id_cda93091-982a-404d-8bbb-5b6f2958ad4f">
      <lane id="Id_ddd80615-d845-4705-97e5-82cb8bc71daa" name="Agent / Intermediary">
        <documentation />
        <childLaneSet id="Id_959720b2-d1eb-40d3-b554-f12e8d56742e" />
      </lane>
      <lane id="Id_0542163c-da68-4dcf-bca3-34866af42956" name="Main Agent">
        <documentation />
        <childLaneSet id="Id_04e04b5a-a6b9-4d0e-875f-f85a5d7b4825" />
      </lane>
    </laneSet>
    <task id="Id_b82d0031-228f-4761-9198-976ecc81bb90" name="Register Features and Select Product">
      <documentation>&lt;p&gt;&lt;span style="font-family:Segoe UI;font-size:8pt;"&gt;In this phase, all the necessary activities and validations are performed for the quotation of the vehicle to be insured. In this activity the user (Agent/ Intermediary, main agent) continues to enter the specific features of the vehicle, such as amount to insure, value of the accessories, circulation zone and other features that are required for the quotation of the policy. According to the nature of the vehicle, the user can select the product that best meets the necessities or levels of cover required, with the selection of each product a brief description of the coverage will be displayed.&lt;/span&gt;&lt;/p&gt;</documentation>
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="#ECEFFF" />
            <bizagi:BizagiProperty name="borderColor" value="#03689A" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <incoming>Id_34ed5a7c-6e2a-4e2a-9e84-3aae51d5b5f6</incoming>
      <incoming>Id_46f8181f-7d1d-4cb2-a3ec-75c226a22a53</incoming>
      <incoming>Id_3d6e558e-f36f-4626-aea9-09793c0cab48</incoming>
      <outgoing>Id_93c88531-112c-447b-8439-fa831259dc09</outgoing>
      <resourceRole id="Id_f6ef0b1f-91de-4e78-8f93-64c8c84a2fd7">
        <q1:resourceRef xmlns="" xmlns:q1="http://www.omg.org/spec/BPMN/20100524/MODEL">Agent_or_Intermediary</q1:resourceRef>
      </resourceRole>
    </task>
    <eventBasedGateway id="Id_72e9c869-31a2-4bc8-a043-8d09c54abd15" name="Event Based Gateway 2" gatewayDirection="Diverging" instantiate="false" eventGatewayType="Exclusive">
      <documentation>This gateway enables control of the period of maximum validity of the quotation that is established by the company.  If the time expires before the customer has made a decision, the process will be finalized.</documentation>
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="#FFFFCC" />
            <bizagi:BizagiProperty name="borderColor" value="#A6A61D" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <incoming>Id_5d75dea1-c47a-46f3-8408-c6e40c95d661</incoming>
      <outgoing>Id_9ec2b2e8-8e68-4417-b916-24f5ba55b237</outgoing>
      <outgoing>Id_9e17c1e9-35ef-442d-8d37-aac39fd301d9</outgoing>
    </eventBasedGateway>
    <exclusiveGateway id="Id_64728d91-dd50-460c-8132-3120ff253acf" name="Risk Analysis Results" gatewayDirection="Diverging">
      <documentation>This exclusive gateway determines the path taken depending on the result produced by the Risk Verification interface. 
The process can take one of the following paths: 
- Risks approved, and continue the process with the inspection of the vehicle in case this is necessary. 
- Risks rejected, whereby notification will be sent and the process finalized. 
- Approval required for risks whereby an approval task is generated for the main agent who should analyze the situation and decide whether it is approved or rejected.</documentation>
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="#FFFFCC" />
            <bizagi:BizagiProperty name="borderColor" value="#A6A61D" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <incoming>Id_9bd3ea87-61ec-4342-907b-cb35495c2095</incoming>
      <outgoing>Id_fed77f5a-b95e-4cd0-912f-c11bd659d7d5</outgoing>
      <outgoing>Id_7689ade7-cc94-4fc3-ad0e-312c47095962</outgoing>
      <outgoing>Id_053c3c5b-ff3e-4a74-b4df-965cdabd231d</outgoing>
    </exclusiveGateway>
    <parallelGateway id="Id_e085926b-95b5-4af9-b8cd-6f1c23a649dc" name="Parallel Gateway 1" gatewayDirection="Diverging">
      <documentation>This parallel gateway enables the option to cancel the process from the beginning.</documentation>
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="#FFFFCC" />
            <bizagi:BizagiProperty name="borderColor" value="#A6A61D" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <incoming>Id_659f9001-da96-4c3c-8d99-198a28211c6c</incoming>
      <outgoing>Id_3b9a47a8-2e4e-4597-8a65-6bb4eb8c77af</outgoing>
      <outgoing>Id_3cc575b4-b10e-4bbb-aae7-8499f149a56e</outgoing>
    </parallelGateway>
    <exclusiveGateway id="Id_048027df-f389-4a37-9d1e-f9815c4afa99" name="Satisfactory Inspection?" gatewayDirection="Diverging" default="Id_13a6dbf8-d524-4328-b500-a28f9a469fbf">
      <documentation>This exclusive gateway determines the path taken depending on the result produced by the Inspection.  The process can take one of the following paths:  
-	Inspection is satisfactory and the process continues with the policy issue.  
-	Inspection rejected whereby notification will be sent and the process finalized. Within the inspection sub-process, it is possible that the result could be unsatisfactory due to the result of the inspection, re-quotation and rejection by the customer or the risk analysis.  
</documentation>
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="#FFFFCC" />
            <bizagi:BizagiProperty name="borderColor" value="#A6A61D" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <incoming>Id_2464a6b3-4f00-4a6b-bbba-90267a86a8a6</incoming>
      <outgoing>Id_2821d6b9-ce16-48bf-ab9f-39c81f86f824</outgoing>
      <outgoing>Id_13a6dbf8-d524-4328-b500-a28f9a469fbf</outgoing>
    </exclusiveGateway>
    <startEvent id="Id_7a69b401-734e-4bc9-9f51-7f1dc100b9bc" name="Start">
      <documentation>The none start event indicates that the Vehicle Insurance Policy Request  process has begun.</documentation>
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="#E6FF97" />
            <bizagi:BizagiProperty name="borderColor" value="#62A716" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <outgoing>Id_659f9001-da96-4c3c-8d99-198a28211c6c</outgoing>
    </startEvent>
    <task id="Id_bee3003e-c8a3-4b9c-90b1-0114e632002a" name="Register Details of Previous Policies">
      <documentation>&lt;p&gt;&lt;span style="font-family:Segoe UI;font-size:8pt;"&gt;The consultant, intermediary or main consultant should collect the current policy information of the vehicle or of the last policy that it had. Additionally, if the policyholder does not have a No Claims Discount then the history of accidents or incidents of the policyholder should be included.&lt;/span&gt;&lt;/p&gt;</documentation>
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="#ECEFFF" />
            <bizagi:BizagiProperty name="borderColor" value="#03689A" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <incoming>Id_05c58a81-e6d1-4269-8b4b-861b38af42df</incoming>
      <outgoing>Id_34ed5a7c-6e2a-4e2a-9e84-3aae51d5b5f6</outgoing>
      <resourceRole id="Id_09938c1f-64d6-4bdb-8ddb-7acbdada81e3">
        <q2:resourceRef xmlns="" xmlns:q2="http://www.omg.org/spec/BPMN/20100524/MODEL">Agent_or_Intermediary</q2:resourceRef>
      </resourceRole>
    </task>
    <exclusiveGateway id="Id_9a452f8a-5bc7-4b5e-aee8-166f2d19c74f" name="Exceeds Policies?" gatewayDirection="Diverging" default="Id_42eb5e8e-7ef9-4a15-b5c9-68ca5ef81760">
      <documentation>This exclusive gateway enables the verification of the result of the interface that validates the policies for the vehicle and the selected product. There are two possibilities, that it is within the policies of the entity or that it is rejected by policies. The latter option returns the process to the Enter Features and Select Product activity, where the user should review the reasons for rejection and change the product.  In the case that there are no restrictions, the process continues with the verification of coverage and deductibles.</documentation>
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="#FFFFCC" />
            <bizagi:BizagiProperty name="borderColor" value="#A6A61D" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <incoming>Id_93c88531-112c-447b-8439-fa831259dc09</incoming>
      <outgoing>Id_42eb5e8e-7ef9-4a15-b5c9-68ca5ef81760</outgoing>
      <outgoing>Id_46f8181f-7d1d-4cb2-a3ec-75c226a22a53</outgoing>
    </exclusiveGateway>
    <task id="Id_f8d24c69-0ba8-4a8d-a638-7ae0221b064d" name="Review Risk Analysis Results">
      <documentation>&lt;p&gt;&lt;span style="font-family:Segoe UI;font-size:8pt;"&gt;When the response is Request Authorization from a Main Agent the case is assigned a designated role who should evaluate the risk presented and decide whether to authorize or reject it.&lt;/span&gt;&lt;/p&gt;</documentation>
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="#ECEFFF" />
            <bizagi:BizagiProperty name="borderColor" value="#03689A" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <incoming>Id_7689ade7-cc94-4fc3-ad0e-312c47095962</incoming>
      <outgoing>Id_a4d7c82b-340f-4213-96f7-3f1755a0fd99</outgoing>
      <resourceRole id="Id_2638fde1-d8bd-4455-935d-df85c43f0053">
        <q3:resourceRef xmlns="" xmlns:q3="http://www.omg.org/spec/BPMN/20100524/MODEL">Main_Agent</q3:resourceRef>
      </resourceRole>
    </task>
    <task id="Id_65baa1f5-73b2-4a73-8674-f890d3090847" name="Verify Coverages and Deductibles">
      <documentation>&lt;p&gt;&lt;span style="font-family:Segoe UI;font-size:8pt;"&gt;In this activity the user can verify the details of the selected product, the protection offered, the insured limits and the corresponding deductibles. In this activity, the user can change the deductibles for the protection that has modifiable cover.&lt;/span&gt;&lt;/p&gt;</documentation>
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="#ECEFFF" />
            <bizagi:BizagiProperty name="borderColor" value="#03689A" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <incoming>Id_02b4cb87-b271-4bc2-91ed-87cd9c053fee</incoming>
      <incoming>Id_a3a67b57-aabb-4a30-afd6-2d1648d0b7f2</incoming>
      <incoming>Id_57e4d9e3-1d10-4166-9c98-df8a61c56f3e</incoming>
      <outgoing>Id_66897dac-2f1d-42cd-add4-3fc09700b0e2</outgoing>
      <resourceRole id="Id_4d332da2-0e22-4085-9e87-74821cf8f47a">
        <q4:resourceRef xmlns="" xmlns:q4="http://www.omg.org/spec/BPMN/20100524/MODEL">Agent_or_Intermediary</q4:resourceRef>
      </resourceRole>
    </task>
    <task id="Id_387f2a1f-f895-4342-90f5-bf61743374ce" name="Register Client and Vehicle Data">
      <documentation>&lt;p&gt;&lt;span style="font-family:Segoe UI;font-size:8pt;"&gt;The Vehicle Insurance Policy Request Process begins when a consultant, intermediary or main consultant, collects the necessary information from the policyholder, the vehicle to be insured (such as make, class, type, model and use) and the additional insured if they are to be included.  &lt;/span&gt;&lt;/p&gt;</documentation>
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="#ECEFFF" />
            <bizagi:BizagiProperty name="borderColor" value="#03689A" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <incoming>Id_3b9a47a8-2e4e-4597-8a65-6bb4eb8c77af</incoming>
      <outgoing>Id_05c58a81-e6d1-4269-8b4b-861b38af42df</outgoing>
      <resourceRole id="Id_10a1336b-9e31-45f2-b5d3-3c5fe6d41b06">
        <q5:resourceRef xmlns="" xmlns:q5="http://www.omg.org/spec/BPMN/20100524/MODEL">Main_Agent</q5:resourceRef>
      </resourceRole>
      <resourceRole id="Id_4b2bdd4c-4d74-46b9-b9f0-25b385f9dd8b">
        <q6:resourceRef xmlns="" xmlns:q6="http://www.omg.org/spec/BPMN/20100524/MODEL">Agent_or_Intermediary</q6:resourceRef>
      </resourceRole>
    </task>
    <eventBasedGateway id="Id_0a71bbf6-9d14-4951-bce7-377cc14d4584" name="Event Based Gateway 1" gatewayDirection="Diverging" instantiate="false" eventGatewayType="Exclusive">
      <documentation>This event-based gateway allows control of the cancellation of the process only up to before the policy is issued, that is once the process is in the policy issue stage, this cancellation event is no longer available.</documentation>
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="#FFFFCC" />
            <bizagi:BizagiProperty name="borderColor" value="#A6A61D" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <incoming>Id_3cc575b4-b10e-4bbb-aae7-8499f149a56e</incoming>
      <outgoing>Id_636e297c-bba3-4f3d-847f-2834924e9314</outgoing>
      <outgoing>Id_dcf62cf4-18ef-460c-8dca-c9557b94a3b9</outgoing>
    </eventBasedGateway>
    <intermediateCatchEvent id="Id_8a1cd0c8-eec4-43e2-a539-6d08faed5351" name="Period of Validity of Quotation">
      <documentation>&lt;p&gt;&lt;span style="font-family:Segoe UI;font-size:8pt;"&gt;Each insurance company defines a period of validity for quotations. This intermediate timer event controls this time. If the period expires and no decision has been made, the process will be closed automatically. This time can be changed directly in the Web application, changing the definition of the vocabulary of the process called &amp;quot;Period of validity of the quotation (minutes)&amp;quot;&lt;/span&gt;&lt;/p&gt;</documentation>
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="#FEFAEF" />
            <bizagi:BizagiProperty name="borderColor" value="#969149" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <incoming>Id_9e17c1e9-35ef-442d-8d37-aac39fd301d9</incoming>
      <outgoing>Id_bd4effe5-6d2e-408f-9ee3-dfc632e878e7</outgoing>
      <timerEventDefinition id="Id_515fb991-f5c2-4c39-8a55-3a4a9cb2487d">
        <timeCycle id="Expression_b23bd489-b479-40ae-9094-b657cef72a77">R1/P20D</timeCycle>
      </timerEventDefinition>
    </intermediateCatchEvent>
    <parallelGateway id="Id_637c2ef1-6d38-44be-b18e-d8ac80b84c41" name="Disable Cancellation of the Case" gatewayDirection="Converging">
      <documentation>This gateway allows the disabling of the cancellation of the case once the normal process arrives at this point, i.e. once the vehicle has passed through the inspection phase, it continues with the policy issue without being able to cancel the case. </documentation>
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="#FFFFCC" />
            <bizagi:BizagiProperty name="borderColor" value="#A6A61D" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <incoming>Id_636e297c-bba3-4f3d-847f-2834924e9314</incoming>
      <incoming>Id_070f6d67-7c50-4c02-9ee6-48c7d087fe99</incoming>
      <outgoing>Id_e0962aaf-8b91-4da2-b762-380bc21a99e2</outgoing>
    </parallelGateway>
    <scriptTask id="Id_8d75431b-6ee3-4448-ae6f-d547710c93f6" name="Notify Quotation validity expired">
      <documentation>When the period of validity of the quotation expires, an activity is generated that sends an email to the agent originating the case, informing him of its closure.</documentation>
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="#ECEFFF" />
            <bizagi:BizagiProperty name="borderColor" value="#03689A" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <incoming>Id_bd4effe5-6d2e-408f-9ee3-dfc632e878e7</incoming>
      <outgoing>Id_8f05a6fc-c336-421f-9302-5f74e1d76d2d</outgoing>
      <script>We write to inform you that the Vehicle Insurance Policy Request number X has been closed due to the expiration of the period of validity of the quotation.  Sincerely,  This email was generated automatically. Please do not respond.</script>
    </scriptTask>
    <scriptTask id="Id_a1e30bc3-3de9-43ca-bfb9-94171487b286" name="Notify Rejection">
      <documentation>This activity enables the dispatch of an email to the person who created the case when it has been rejected, and is then finalized.  
There are 3 possible reasons: 
- Customer rejects the new quotation. 
- Vehicle rejected due to inspection. 
- Rejected due to risk analysis</documentation>
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="#ECEFFF" />
            <bizagi:BizagiProperty name="borderColor" value="#03689A" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <incoming>Id_2821d6b9-ce16-48bf-ab9f-39c81f86f824</incoming>
      <incoming>Id_053c3c5b-ff3e-4a74-b4df-965cdabd231d</incoming>
      <incoming>Id_0ab79072-5200-4991-9f68-2566f1a167f7</incoming>
      <outgoing>Id_eb3f7cbd-a34b-4b31-9423-b683d5de601e</outgoing>
      <script>1.	Request for vehicle insurance rejected due to inspection: Dear, We regret to inform you that your application for vehicle policy number X has been closed due to the inspection being rejected. The observations of the inspection were as follows:    For further information consult the case.    Sincerely,BizAgi Insurance This email was generated automatically. Please do not reply   2.	Request for vehicle insurance rejected due to non-acceptance of the quotation:   Dear,We regret to inform you that your application for vehicle policy number X has been closed because the policyholder did not accept the new quotation. The observations of the inspection were as follows:For further information consult the case.    Sincerely,    BizAgi InsuranceThis email was generated automatically. Please do not reply    3.	Request for vehicle insurance rejected due to risk analysis:  Dear,We regret to inform you that your application for vehicle policy number X has been closed due to the risks. The observations of the result of the risk analysis are the following:     For further information consult the case.    Sincerely,    BizAgi InsuranceThis email was generated automatically. Please do not reply    </script>
    </scriptTask>
    <serviceTask id="Id_bb72aaa8-1a88-4dde-a813-4bceb3276f3e" name="Risk Analysis ">
      <documentation>To send details of the vehicle and of the insured, by means of an interface to perform the risk analysis. The response from this interface will be: risk approved, rejected or request authorization of a main agent.  In case of a negative response it should also return the reason. </documentation>
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="#ECEFFF" />
            <bizagi:BizagiProperty name="borderColor" value="#03689A" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <incoming>Id_c5bdd495-300c-4586-9090-39596edaf215</incoming>
      <outgoing>Id_9bd3ea87-61ec-4342-907b-cb35495c2095</outgoing>
      <resourceRole id="Id_ca3dc110-83d8-48d0-b6aa-5e95f4fa4e7e">
        <q7:resourceRef xmlns="" xmlns:q7="http://www.omg.org/spec/BPMN/20100524/MODEL">Agent_or_Intermediary</q7:resourceRef>
      </resourceRole>
    </serviceTask>
    <intermediateThrowEvent id="Id_3ca38249-aa30-4b7b-a995-0946ebf35218" name="Cancel Case">
      <documentation>&lt;p&gt;&lt;span style="font-family:Segoe UI;font-size:8pt;"&gt;This event allows the user to cancel the case from when the process begins until before the policy is issued, i.e. once the process arrives at the policy issue event, this is not available. This is available for all users that have the agent or main agent role.&lt;/span&gt;&lt;/p&gt;</documentation>
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="#FEFAEF" />
            <bizagi:BizagiProperty name="borderColor" value="#969149" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <incoming>Id_dcf62cf4-18ef-460c-8dca-c9557b94a3b9</incoming>
      <outgoing>Id_509a13e8-1849-4692-a145-d8beb478d691</outgoing>
    </intermediateThrowEvent>
    <serviceTask id="Id_edb31085-934e-4157-8d82-13472d876a7b" name="Import Vehicle Coverages and Deductibles">
      <documentation>This activity enables the interface with the system that handles the vehicle insurance products for the company and imports the protection and deductibles corresponding to the product or level of cover selected.	
</documentation>
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="#ECEFFF" />
            <bizagi:BizagiProperty name="borderColor" value="#03689A" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <incoming>Id_42eb5e8e-7ef9-4a15-b5c9-68ca5ef81760</incoming>
      <outgoing>Id_57e4d9e3-1d10-4166-9c98-df8a61c56f3e</outgoing>
    </serviceTask>
    <exclusiveGateway id="Id_9d1f5d39-f220-41d6-a0a2-925e274ab70d" name="Exceeds Policies?" gatewayDirection="Diverging" default="Id_da2a5f9c-b0bb-4af1-b8c1-3cd4a754f8c1">
      <documentation>This exclusive gateway enables the verification of the result of the interface that validates the policies for the combination of protection and/or amounts of the selected deductibles. There are two possibilities, that it is within the policies of the entity or that it is rejected by policies. The latter option returns the process to the Verify Protection and Deductibles activity, where the user should review the reasons for rejection and change the combination of protection and deductibles.  In the case that there are no restrictions, the process continues with the insurance quotation of the vehicle.</documentation>
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="#FFFFCC" />
            <bizagi:BizagiProperty name="borderColor" value="#A6A61D" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <incoming>Id_1de20c8f-001a-4795-b3dd-f5d14f5661d7</incoming>
      <outgoing>Id_da2a5f9c-b0bb-4af1-b8c1-3cd4a754f8c1</outgoing>
      <outgoing>Id_a3a67b57-aabb-4a30-afd6-2d1648d0b7f2</outgoing>
    </exclusiveGateway>
    <task id="Id_11652dba-c561-47bf-aad9-2460392171b2" name="Register Additional Information">
      <documentation>&lt;p&gt;&lt;span style="font-family:Segoe UI;font-size:8pt;"&gt;Once the customer has accepted the quotation, the process continues with the collection of additional information about the vehicle and beneficiaries, necessary for the verification of risks, and then issue of the policy, details that were not necessary for the quotation, such as VIN or the vehicle, registration, engine number, etc.  &lt;/span&gt;&lt;/p&gt;</documentation>
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="#ECEFFF" />
            <bizagi:BizagiProperty name="borderColor" value="#03689A" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <incoming>Id_ed43720a-ce88-4b80-aa6c-7f4bf524ca97</incoming>
      <outgoing>Id_c5bdd495-300c-4586-9090-39596edaf215</outgoing>
      <resourceRole id="Id_0d1656b6-8e35-4ffe-8af7-b14a1712fa4b">
        <q8:resourceRef xmlns="" xmlns:q8="http://www.omg.org/spec/BPMN/20100524/MODEL">Agent_or_Intermediary</q8:resourceRef>
      </resourceRole>
    </task>
    <task id="Id_ac5254e8-01f7-4ad4-bc5b-db7c6e4e5cc5" name="Verify Quotation Results">
      <documentation>&lt;p&gt;&lt;span style="font-family:Segoe UI;font-size:8pt;"&gt;Once the insurance quotation has been made this activity show the results of the quotation, the amount of premium to be paid, taxes, discounts, etc.  &lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style="font-family:Segoe UI;font-size:8pt;"&gt;In this activity, the user can define the action to follow.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style="font-family:Segoe UI;font-size:8pt;"&gt; - Accept the quotation and continue with the process. &lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style="font-family:Segoe UI;font-size:8pt;"&gt;- Reject the quotation and close the case. &lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style="font-family:Segoe UI;font-size:8pt;"&gt;- Return to the activity of entering details and select the product to change the information entered about the vehicle or the product and re-quote. &lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style="font-family:Segoe UI;font-size:8pt;"&gt;- Return to the activity Verify Coverages and Deductibles, where the deductibles of the selected product can be amended and then re-quote.  &lt;/span&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;</documentation>
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="#ECEFFF" />
            <bizagi:BizagiProperty name="borderColor" value="#03689A" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <incoming>Id_9ec2b2e8-8e68-4417-b916-24f5ba55b237</incoming>
      <outgoing>Id_4dcc11fb-b301-4579-a6c0-c2d886cd5ebe</outgoing>
      <resourceRole id="Id_73da93ad-22a3-4e40-bf01-11aa34a3b528">
        <q9:resourceRef xmlns="" xmlns:q9="http://www.omg.org/spec/BPMN/20100524/MODEL">Agent_or_Intermediary</q9:resourceRef>
      </resourceRole>
    </task>
    <endEvent id="Id_7a3a3543-2218-4213-9f34-3128d1937ccc" name="Fin">
      <documentation>Indicates the end of the process. The process is finalized when the policy has been issued and the documents received.</documentation>
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="#EEAAAA" />
            <bizagi:BizagiProperty name="borderColor" value="#990000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <incoming>Id_d88f6a7e-75d3-4340-8f2d-d929504df02d</incoming>
      <incoming>Id_42871ab6-1678-4fee-909b-35bfcce8b13a</incoming>
    </endEvent>
    <serviceTask id="Id_b7e8c9f1-2371-4dbd-bd76-475a152c2aa8" name="Quotation">
      <documentation>In this activity, the necessary information (details of vehicle and insured, features of the vehicle, protection, deductibles and selected product) is sent to the system of the insurance company that prepares the quotation.  This interface returns the amount of the premium to be paid, as well as other relevant data.</documentation>
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="#ECEFFF" />
            <bizagi:BizagiProperty name="borderColor" value="#03689A" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <incoming>Id_da2a5f9c-b0bb-4af1-b8c1-3cd4a754f8c1</incoming>
      <outgoing>Id_73d1b55f-8f37-4121-b362-f7b4384c23d0</outgoing>
    </serviceTask>
    <task id="Id_f41e6e4f-f957-456b-b1db-42a81eec8c12" name="Verify Policy and Print">
      <documentation>&lt;p&gt;&lt;span style="font-family:Segoe UI;font-size:8pt;"&gt;The policy is created by means of an interface after the inspection phase. In this activity the user can verify the details of the policy and afterwards, print it.&lt;/span&gt;&lt;/p&gt;</documentation>
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="#ECEFFF" />
            <bizagi:BizagiProperty name="borderColor" value="#03689A" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <incoming>Id_1f85f817-cd7d-4518-95d4-07bf2b1cf9ca</incoming>
      <outgoing>Id_42871ab6-1678-4fee-909b-35bfcce8b13a</outgoing>
      <resourceRole id="Id_4945ab09-7719-4a6d-b36f-9dd83a32d2ff">
        <q10:resourceRef xmlns="" xmlns:q10="http://www.omg.org/spec/BPMN/20100524/MODEL">Agent_or_Intermediary</q10:resourceRef>
      </resourceRole>
    </task>
    <serviceTask id="Id_5e9c2112-1ea9-4d95-8e21-ac10c4053834" name="Issue Policy">
      <documentation>This interface is for the creation of the policy in the main system of the insurance company. By means of this interface, all the details of the vehicle, features, and in general, all the data that has been captured during the process, is sent to the policy system with the aim of creating the policy.
</documentation>
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="#ECEFFF" />
            <bizagi:BizagiProperty name="borderColor" value="#03689A" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <incoming>Id_e0962aaf-8b91-4da2-b762-380bc21a99e2</incoming>
      <outgoing>Id_d121eb37-6c0a-4d9f-9665-404dc5f93c7d</outgoing>
    </serviceTask>
    <endEvent id="Id_4d22da9b-38fa-449d-83da-0605e9d6bbbd" name="End 1">
      <documentation>When the process arrives at this End, the process finishes completely regardless of whether there are pending activities or not. This End is reached once the case has been cancelled.</documentation>
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="#EEAAAA" />
            <bizagi:BizagiProperty name="borderColor" value="#990000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <incoming>Id_4bcdce87-7833-45e8-9be9-5b1f02d2e8a9</incoming>
      <terminateEventDefinition id="Id_69e85e64-43e2-47c1-95d5-7f05ddab5afd" />
    </endEvent>
    <endEvent id="Id_5a8f8a8a-91ee-4ff1-a00a-c8ec2b7a8b7f" name="End">
      <documentation>El proceso termina cuando la cotización fue rechazada</documentation>
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="#EEAAAA" />
            <bizagi:BizagiProperty name="borderColor" value="#990000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <incoming>Id_3c333b3a-dc4c-40aa-bffd-dea1a74ddd68</incoming>
      <terminateEventDefinition id="Id_e7bd5817-b299-405a-986d-522d43536998" />
    </endEvent>
    <intermediateThrowEvent id="Id_8b482fcf-3d8c-4644-9085-50b21e02aebf" name="Receive Documents">
      <documentation>&lt;p&gt;&lt;span style="font-family:Segoe UI;font-size:8pt;"&gt;The required documents are requested for the policy according to the nature of the vehicle, and the policy is issued. &lt;/span&gt;&lt;/p&gt;</documentation>
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="#FEFAEF" />
            <bizagi:BizagiProperty name="borderColor" value="#969149" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <incoming>Id_d405f33d-fa81-497d-ada4-9c7d7ae5c4a9</incoming>
      <outgoing>Id_d88f6a7e-75d3-4340-8f2d-d929504df02d</outgoing>
    </intermediateThrowEvent>
    <scriptTask id="Id_2c6339b8-160c-4f06-a7f4-69934ff91a8e" name="Notify Cancellation of the Case">
      <documentation>This activity enables an email to be sent to the user who created the case, notifying the cancellation, when it was cancelled by someone, other than the creator of the case, who cancelled it.</documentation>
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="#ECEFFF" />
            <bizagi:BizagiProperty name="borderColor" value="#03689A" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <incoming>Id_509a13e8-1849-4692-a145-d8beb478d691</incoming>
      <outgoing>Id_4bcdce87-7833-45e8-9be9-5b1f02d2e8a9</outgoing>
      <script>Dear,We wish to inform you that case number X has been cancelled due to: The observations of this cancellation are as follows:  For further information consult the case.    Sincerely,    BizAgi InsuranceThis email was generated automatically. Please do not reply    </script>
    </scriptTask>
    <endEvent id="Id_130a3695-b354-40f1-ae6c-d1286fb33d3d" name="End">
      <documentation>The process has finished as the period of validity of the quotation, has expired.</documentation>
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="#EEAAAA" />
            <bizagi:BizagiProperty name="borderColor" value="#990000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <incoming>Id_8f05a6fc-c336-421f-9302-5f74e1d76d2d</incoming>
      <terminateEventDefinition id="Id_f38e3de2-c83a-408e-9d36-b3b53957dec3" />
    </endEvent>
    <exclusiveGateway id="Id_d68353f6-4e8e-4465-9b52-6cac8b0aca3e" name="Action to take?" gatewayDirection="Diverging">
      <documentation>This exclusive gateway determines the path taken by the customer in respect of the amount of the quotation. 
The process can take one of the following paths: 
- Accept the premium and continue with the Collect Additional Information activity. 
- Reject the premium, whereby the process will be closed. 
- Amend the features of the vehicle or the chosen product, returning to the Include Features and Select Product activity. 
- Amend the deductibles for the product, returning to the Verify Protection and Deductibles activity.</documentation>
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="#FFFFCC" />
            <bizagi:BizagiProperty name="borderColor" value="#A6A61D" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <incoming>Id_4dcc11fb-b301-4579-a6c0-c2d886cd5ebe</incoming>
      <outgoing>Id_ed43720a-ce88-4b80-aa6c-7f4bf524ca97</outgoing>
      <outgoing>Id_02b4cb87-b271-4bc2-91ed-87cd9c053fee</outgoing>
      <outgoing>Id_3d6e558e-f36f-4626-aea9-09793c0cab48</outgoing>
      <outgoing>Id_3c333b3a-dc4c-40aa-bffd-dea1a74ddd68</outgoing>
    </exclusiveGateway>
    <exclusiveGateway id="Id_eb025e4f-28c3-40c2-8154-08e145f00105" name="Exclusive Convergence Gateway 2" gatewayDirection="Converging" default="Id_070f6d67-7c50-4c02-9ee6-48c7d087fe99">
      <documentation>This exclusive gateway used as an element of convergence, converts into only one path, the two exclusive paths of inspection required or not in order to synchronize the flow later on. </documentation>
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="#FFFFCC" />
            <bizagi:BizagiProperty name="borderColor" value="#A6A61D" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <incoming>Id_13a6dbf8-d524-4328-b500-a28f9a469fbf</incoming>
      <incoming>Id_1486070d-d415-47ad-9652-af3dc656429a</incoming>
      <outgoing>Id_070f6d67-7c50-4c02-9ee6-48c7d087fe99</outgoing>
    </exclusiveGateway>
    <callActivity id="Id_0a68437c-1b5b-418d-821a-095a598def0c" name="Inspection" calledElement="Id_5235e604-469b-425f-b5a5-06df8a413956">
      <documentation>&lt;p&gt;&lt;span style="font-family:Segoe UI;font-size:8pt;"&gt;Before the policy is issued, it is necessary to inspect the vehicle and its accessories. The inspection can be performed by means of a sub-process. The result of the inspection can be accepted, rejected, consult main agent, make new quotation, re-process risks or to quote and re-process risks again. When a new quotation is made the main agent or intermediary owner of the case can consult the result of the quotation and decide whether or not to accept it, and, similarly, await the rejection, acceptance or authorization of the risks.&lt;/span&gt;&lt;/p&gt;</documentation>
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="#ECEFFF" />
            <bizagi:BizagiProperty name="borderColor" value="#03689A" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <incoming>Id_4ff0b090-e344-4ea6-b627-b3b738ce2d15</incoming>
      <outgoing>Id_2464a6b3-4f00-4a6b-bbba-90267a86a8a6</outgoing>
      <resourceRole id="Id_3c4c9334-6beb-45de-a301-993b46688db2">
        <q11:resourceRef xmlns="" xmlns:q11="http://www.omg.org/spec/BPMN/20100524/MODEL">Agent_or_Intermediary</q11:resourceRef>
      </resourceRole>
    </callActivity>
    <serviceTask id="Id_595b94ec-7a18-445e-8605-0373013f7f2e" name="Generate Policy Files">
      <documentation>This activity generates a pdf file of the policy in order that it can be printed.</documentation>
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="#ECEFFF" />
            <bizagi:BizagiProperty name="borderColor" value="#03689A" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <incoming>Id_d121eb37-6c0a-4d9f-9665-404dc5f93c7d</incoming>
      <outgoing>Id_1f85f817-cd7d-4518-95d4-07bf2b1cf9ca</outgoing>
    </serviceTask>
    <exclusiveGateway id="Id_5d2a6165-0248-4116-8ef1-970834b26a9e" name="Inspection Required?" gatewayDirection="Diverging">
      <documentation>This exclusive gateway determines the path taken depending if the vehicle requires an inspection or not. 
- If an inspection is required, the process enters the Inspection sub-process. 
- If an inspection is not required, the process continues with the policy issue.
</documentation>
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="#FFFFCC" />
            <bizagi:BizagiProperty name="borderColor" value="#A6A61D" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <incoming>Id_dc868fd6-2574-44eb-bbb7-b5f6eea21964</incoming>
      <outgoing>Id_4ff0b090-e344-4ea6-b627-b3b738ce2d15</outgoing>
      <outgoing>Id_1486070d-d415-47ad-9652-af3dc656429a</outgoing>
    </exclusiveGateway>
    <parallelGateway id="Id_177493e4-30c8-424e-aa0c-b3f3fcd1d3dd" name="Parallel Gateway 2" gatewayDirection="Diverging">
      <documentation>This parallel gateway enables the reception of documents in parallel with the inspection and policy issue.</documentation>
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="#FFFFCC" />
            <bizagi:BizagiProperty name="borderColor" value="#A6A61D" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <incoming>Id_a2d56ed9-2eb0-4a9a-97b9-f30dd59657d2</incoming>
      <outgoing>Id_d405f33d-fa81-497d-ada4-9c7d7ae5c4a9</outgoing>
      <outgoing>Id_dc868fd6-2574-44eb-bbb7-b5f6eea21964</outgoing>
    </parallelGateway>
    <serviceTask id="Id_626c027e-4e2d-4f31-becd-2a029d7d5908" name="Generate Quotation File">
      <documentation>This activity generates a pdf file with the information of the quotation. </documentation>
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="#ECEFFF" />
            <bizagi:BizagiProperty name="borderColor" value="#03689A" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <incoming>Id_73d1b55f-8f37-4121-b362-f7b4384c23d0</incoming>
      <outgoing>Id_5d75dea1-c47a-46f3-8408-c6e40c95d661</outgoing>
    </serviceTask>
    <exclusiveGateway id="Id_53d6f723-7b34-41bb-a778-9fe2cb33d767" name="Risks Approved?" gatewayDirection="Diverging">
      <documentation>This exclusive gateway determines the path taken by the process once Verification of the Risk Analysis result has been performed. 
In this case, the user can approve or reject the risks. 
- In the case of approval, the process will continue with the inspection of the vehicle if this is required. 
- In the case of rejection, notification will be sent and the case closed.</documentation>
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="#FFFFCC" />
            <bizagi:BizagiProperty name="borderColor" value="#A6A61D" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <incoming>Id_a4d7c82b-340f-4213-96f7-3f1755a0fd99</incoming>
      <outgoing>Id_1459714a-ebae-41a4-aa05-6b945ee1898a</outgoing>
      <outgoing>Id_0ab79072-5200-4991-9f68-2566f1a167f7</outgoing>
    </exclusiveGateway>
    <endEvent id="Id_a1873359-1dbf-4cc1-9ab3-476f78be24d9" name="End">
      <documentation>The process ends because the inspection was rejected, the risks were rejected or the quotation made in the inspection sub-process was not accepted.</documentation>
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="#EEAAAA" />
            <bizagi:BizagiProperty name="borderColor" value="#990000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <incoming>Id_eb3f7cbd-a34b-4b31-9423-b683d5de601e</incoming>
      <terminateEventDefinition id="Id_5826ebd4-b4bf-4fd4-990a-869901c7c714" />
    </endEvent>
    <serviceTask id="Id_6b2100fd-86df-477a-9969-a643f1f2afe1" name="Verify Coverages and Deductibles">
      <documentation>When the possibility exists that the user can change some of the deductibles or remove some of the protection, this activity has the objective to verify that the combination of protection and/or selected amounts of deductibles, are within the policies of the entity and do not have restrictions. If there are restrictions, the case will be marked as rejected due to policies and the reason for the rejection recorded so that the user can correct it and try the quotation again. This verification is performed by an interface with the quotation system of the company with the aim of not duplicating the business logic in BizAgi.</documentation>
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="#ECEFFF" />
            <bizagi:BizagiProperty name="borderColor" value="#03689A" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <incoming>Id_66897dac-2f1d-42cd-add4-3fc09700b0e2</incoming>
      <outgoing>Id_1de20c8f-001a-4795-b3dd-f5d14f5661d7</outgoing>
    </serviceTask>
    <exclusiveGateway id="Id_db710b8c-3d8b-4114-9ba8-59151857e4a1" name="Exclusive Convergence Gateway 1" gatewayDirection="Converging">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="#FFFFCC" />
            <bizagi:BizagiProperty name="borderColor" value="#A6A61D" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <incoming>Id_fed77f5a-b95e-4cd0-912f-c11bd659d7d5</incoming>
      <incoming>Id_1459714a-ebae-41a4-aa05-6b945ee1898a</incoming>
      <outgoing>Id_a2d56ed9-2eb0-4a9a-97b9-f30dd59657d2</outgoing>
    </exclusiveGateway>
    <sequenceFlow id="Id_2821d6b9-ce16-48bf-ab9f-39c81f86f824" name="No" sourceRef="Id_048027df-f389-4a37-9d1e-f9815c4afa99" targetRef="Id_a1e30bc3-3de9-43ca-bfb9-94171487b286">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="White" />
            <bizagi:BizagiProperty name="borderColor" value="#000000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <conditionExpression id="Expression_c765cc24-16b8-4255-8398-dcb3be5ea149">Evaluate the result of the inspection sub-process, take this path if the vehicle was rejected due to the inspection or was rejected due to the risks or the quotation was rejected within the inspection process.</conditionExpression>
    </sequenceFlow>
    <sequenceFlow id="Id_3b9a47a8-2e4e-4597-8a65-6bb4eb8c77af" name="" sourceRef="Id_e085926b-95b5-4af9-b8cd-6f1c23a649dc" targetRef="Id_387f2a1f-f895-4342-90f5-bf61743374ce">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="White" />
            <bizagi:BizagiProperty name="borderColor" value="#000000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
    </sequenceFlow>
    <sequenceFlow id="Id_1de20c8f-001a-4795-b3dd-f5d14f5661d7" name="" sourceRef="Id_6b2100fd-86df-477a-9969-a643f1f2afe1" targetRef="Id_9d1f5d39-f220-41d6-a0a2-925e274ab70d">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="White" />
            <bizagi:BizagiProperty name="borderColor" value="#000000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
    </sequenceFlow>
    <sequenceFlow id="Id_ed43720a-ce88-4b80-aa6c-7f4bf524ca97" name="Accept &#xA;quote" sourceRef="Id_d68353f6-4e8e-4465-9b52-6cac8b0aca3e" targetRef="Id_11652dba-c561-47bf-aad9-2460392171b2">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="White" />
            <bizagi:BizagiProperty name="borderColor" value="#000000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <conditionExpression id="Expression_2d2f6386-3951-4c65-926b-bd6b94ed13ec">Accept the quotation</conditionExpression>
    </sequenceFlow>
    <sequenceFlow id="Id_9ec2b2e8-8e68-4417-b916-24f5ba55b237" name="" sourceRef="Id_72e9c869-31a2-4bc8-a043-8d09c54abd15" targetRef="Id_ac5254e8-01f7-4ad4-bc5b-db7c6e4e5cc5">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="White" />
            <bizagi:BizagiProperty name="borderColor" value="#000000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
    </sequenceFlow>
    <sequenceFlow id="Id_05c58a81-e6d1-4269-8b4b-861b38af42df" name="" sourceRef="Id_387f2a1f-f895-4342-90f5-bf61743374ce" targetRef="Id_bee3003e-c8a3-4b9c-90b1-0114e632002a">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="White" />
            <bizagi:BizagiProperty name="borderColor" value="#000000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
    </sequenceFlow>
    <sequenceFlow id="Id_d88f6a7e-75d3-4340-8f2d-d929504df02d" name="" sourceRef="Id_8b482fcf-3d8c-4644-9085-50b21e02aebf" targetRef="Id_7a3a3543-2218-4213-9f34-3128d1937ccc">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="White" />
            <bizagi:BizagiProperty name="borderColor" value="#000000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
    </sequenceFlow>
    <sequenceFlow id="Id_659f9001-da96-4c3c-8d99-198a28211c6c" name="" sourceRef="Id_7a69b401-734e-4bc9-9f51-7f1dc100b9bc" targetRef="Id_e085926b-95b5-4af9-b8cd-6f1c23a649dc">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="White" />
            <bizagi:BizagiProperty name="borderColor" value="#000000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
    </sequenceFlow>
    <sequenceFlow id="Id_2464a6b3-4f00-4a6b-bbba-90267a86a8a6" name="" sourceRef="Id_0a68437c-1b5b-418d-821a-095a598def0c" targetRef="Id_048027df-f389-4a37-9d1e-f9815c4afa99">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="White" />
            <bizagi:BizagiProperty name="borderColor" value="#000000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
    </sequenceFlow>
    <sequenceFlow id="Id_636e297c-bba3-4f3d-847f-2834924e9314" name="" sourceRef="Id_0a71bbf6-9d14-4951-bce7-377cc14d4584" targetRef="Id_637c2ef1-6d38-44be-b18e-d8ac80b84c41">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="White" />
            <bizagi:BizagiProperty name="borderColor" value="#000000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
    </sequenceFlow>
    <sequenceFlow id="Id_3cc575b4-b10e-4bbb-aae7-8499f149a56e" name="" sourceRef="Id_e085926b-95b5-4af9-b8cd-6f1c23a649dc" targetRef="Id_0a71bbf6-9d14-4951-bce7-377cc14d4584">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="White" />
            <bizagi:BizagiProperty name="borderColor" value="#000000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
    </sequenceFlow>
    <sequenceFlow id="Id_66897dac-2f1d-42cd-add4-3fc09700b0e2" name="" sourceRef="Id_65baa1f5-73b2-4a73-8674-f890d3090847" targetRef="Id_6b2100fd-86df-477a-9969-a643f1f2afe1">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="White" />
            <bizagi:BizagiProperty name="borderColor" value="#000000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
    </sequenceFlow>
    <sequenceFlow id="Id_dcf62cf4-18ef-460c-8dca-c9557b94a3b9" name="" sourceRef="Id_0a71bbf6-9d14-4951-bce7-377cc14d4584" targetRef="Id_3ca38249-aa30-4b7b-a995-0946ebf35218">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="White" />
            <bizagi:BizagiProperty name="borderColor" value="#000000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
    </sequenceFlow>
    <sequenceFlow id="Id_4dcc11fb-b301-4579-a6c0-c2d886cd5ebe" name="" sourceRef="Id_ac5254e8-01f7-4ad4-bc5b-db7c6e4e5cc5" targetRef="Id_d68353f6-4e8e-4465-9b52-6cac8b0aca3e">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="White" />
            <bizagi:BizagiProperty name="borderColor" value="#000000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
    </sequenceFlow>
    <sequenceFlow id="Id_34ed5a7c-6e2a-4e2a-9e84-3aae51d5b5f6" name="" sourceRef="Id_bee3003e-c8a3-4b9c-90b1-0114e632002a" targetRef="Id_b82d0031-228f-4761-9198-976ecc81bb90">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="White" />
            <bizagi:BizagiProperty name="borderColor" value="#000000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
    </sequenceFlow>
    <sequenceFlow id="Id_fed77f5a-b95e-4cd0-912f-c11bd659d7d5" name="Ok" sourceRef="Id_64728d91-dd50-460c-8132-3120ff253acf" targetRef="Id_db710b8c-3d8b-4114-9ba8-59151857e4a1">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="White" />
            <bizagi:BizagiProperty name="borderColor" value="#000000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <conditionExpression id="Expression_a9c2d4a8-e52f-43e1-baa3-9da9666372c8">The result is Risks approved</conditionExpression>
    </sequenceFlow>
    <sequenceFlow id="Id_bd4effe5-6d2e-408f-9ee3-dfc632e878e7" name="" sourceRef="Id_8a1cd0c8-eec4-43e2-a539-6d08faed5351" targetRef="Id_8d75431b-6ee3-4448-ae6f-d547710c93f6">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="White" />
            <bizagi:BizagiProperty name="borderColor" value="#000000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
    </sequenceFlow>
    <sequenceFlow id="Id_7689ade7-cc94-4fc3-ad0e-312c47095962" name="Approval required " sourceRef="Id_64728d91-dd50-460c-8132-3120ff253acf" targetRef="Id_f8d24c69-0ba8-4a8d-a638-7ae0221b064d">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="White" />
            <bizagi:BizagiProperty name="borderColor" value="#000000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <conditionExpression id="Expression_d0ef7ede-1956-48e1-bfe9-d05e76dc2a6b">The result is requires approval</conditionExpression>
    </sequenceFlow>
    <sequenceFlow id="Id_02b4cb87-b271-4bc2-91ed-87cd9c053fee" name="Modify coverages and deductibles" sourceRef="Id_d68353f6-4e8e-4465-9b52-6cac8b0aca3e" targetRef="Id_65baa1f5-73b2-4a73-8674-f890d3090847">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="White" />
            <bizagi:BizagiProperty name="borderColor" value="#000000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <conditionExpression id="Expression_65a91d11-41ce-49aa-9bb4-43003a4e4367">Amend the coverages or the deductibles for the product</conditionExpression>
    </sequenceFlow>
    <sequenceFlow id="Id_9e17c1e9-35ef-442d-8d37-aac39fd301d9" name="" sourceRef="Id_72e9c869-31a2-4bc8-a043-8d09c54abd15" targetRef="Id_8a1cd0c8-eec4-43e2-a539-6d08faed5351">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="White" />
            <bizagi:BizagiProperty name="borderColor" value="#000000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
    </sequenceFlow>
    <sequenceFlow id="Id_da2a5f9c-b0bb-4af1-b8c1-3cd4a754f8c1" name="No" sourceRef="Id_9d1f5d39-f220-41d6-a0a2-925e274ab70d" targetRef="Id_b7e8c9f1-2371-4dbd-bd76-475a152c2aa8">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="White" />
            <bizagi:BizagiProperty name="borderColor" value="#000000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
    </sequenceFlow>
    <sequenceFlow id="Id_e0962aaf-8b91-4da2-b762-380bc21a99e2" name="" sourceRef="Id_637c2ef1-6d38-44be-b18e-d8ac80b84c41" targetRef="Id_5e9c2112-1ea9-4d95-8e21-ac10c4053834">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="White" />
            <bizagi:BizagiProperty name="borderColor" value="#000000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
    </sequenceFlow>
    <sequenceFlow id="Id_93c88531-112c-447b-8439-fa831259dc09" name="" sourceRef="Id_b82d0031-228f-4761-9198-976ecc81bb90" targetRef="Id_9a452f8a-5bc7-4b5e-aee8-166f2d19c74f">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="White" />
            <bizagi:BizagiProperty name="borderColor" value="#000000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
    </sequenceFlow>
    <sequenceFlow id="Id_42eb5e8e-7ef9-4a15-b5c9-68ca5ef81760" name="No" sourceRef="Id_9a452f8a-5bc7-4b5e-aee8-166f2d19c74f" targetRef="Id_edb31085-934e-4157-8d82-13472d876a7b">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="White" />
            <bizagi:BizagiProperty name="borderColor" value="#000000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
    </sequenceFlow>
    <sequenceFlow id="Id_13a6dbf8-d524-4328-b500-a28f9a469fbf" name="Yes" sourceRef="Id_048027df-f389-4a37-9d1e-f9815c4afa99" targetRef="Id_eb025e4f-28c3-40c2-8154-08e145f00105">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="White" />
            <bizagi:BizagiProperty name="borderColor" value="#000000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
    </sequenceFlow>
    <sequenceFlow id="Id_d405f33d-fa81-497d-ada4-9c7d7ae5c4a9" name="" sourceRef="Id_177493e4-30c8-424e-aa0c-b3f3fcd1d3dd" targetRef="Id_8b482fcf-3d8c-4644-9085-50b21e02aebf">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="White" />
            <bizagi:BizagiProperty name="borderColor" value="#000000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
    </sequenceFlow>
    <sequenceFlow id="Id_4ff0b090-e344-4ea6-b627-b3b738ce2d15" name="Yes" sourceRef="Id_5d2a6165-0248-4116-8ef1-970834b26a9e" targetRef="Id_0a68437c-1b5b-418d-821a-095a598def0c">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="White" />
            <bizagi:BizagiProperty name="borderColor" value="#000000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <conditionExpression id="Expression_b1563380-b64c-46d3-a18d-b6e2ab62ca3c">If an inspection is required, this is determined by a policy that can be amended in the Web application.</conditionExpression>
    </sequenceFlow>
    <sequenceFlow id="Id_46f8181f-7d1d-4cb2-a3ec-75c226a22a53" name="Yes" sourceRef="Id_9a452f8a-5bc7-4b5e-aee8-166f2d19c74f" targetRef="Id_b82d0031-228f-4761-9198-976ecc81bb90">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="White" />
            <bizagi:BizagiProperty name="borderColor" value="#000000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <conditionExpression id="Expression_d447b9ca-1b87-4848-b25e-d50e598608fb">Exceeds the policies of the product.</conditionExpression>
    </sequenceFlow>
    <sequenceFlow id="Id_9bd3ea87-61ec-4342-907b-cb35495c2095" name="" sourceRef="Id_bb72aaa8-1a88-4dde-a813-4bceb3276f3e" targetRef="Id_64728d91-dd50-460c-8132-3120ff253acf">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="White" />
            <bizagi:BizagiProperty name="borderColor" value="#000000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
    </sequenceFlow>
    <sequenceFlow id="Id_c5bdd495-300c-4586-9090-39596edaf215" name="" sourceRef="Id_11652dba-c561-47bf-aad9-2460392171b2" targetRef="Id_bb72aaa8-1a88-4dde-a813-4bceb3276f3e">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="White" />
            <bizagi:BizagiProperty name="borderColor" value="#000000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
    </sequenceFlow>
    <sequenceFlow id="Id_3d6e558e-f36f-4626-aea9-09793c0cab48" name="Change product" sourceRef="Id_d68353f6-4e8e-4465-9b52-6cac8b0aca3e" targetRef="Id_b82d0031-228f-4761-9198-976ecc81bb90">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="White" />
            <bizagi:BizagiProperty name="borderColor" value="#000000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <conditionExpression id="Expression_8eb57459-7d6a-4d4a-b306-df7549bbf0e7">Amend the features of the vehicle or the chosen product</conditionExpression>
    </sequenceFlow>
    <sequenceFlow id="Id_a3a67b57-aabb-4a30-afd6-2d1648d0b7f2" name="Yes" sourceRef="Id_9d1f5d39-f220-41d6-a0a2-925e274ab70d" targetRef="Id_65baa1f5-73b2-4a73-8674-f890d3090847">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="White" />
            <bizagi:BizagiProperty name="borderColor" value="#000000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <conditionExpression id="Expression_e2c63ba0-dd1e-4ca2-907f-dee85172e86c">Exceeds the policies of the company.</conditionExpression>
    </sequenceFlow>
    <sequenceFlow id="Id_053c3c5b-ff3e-4a74-b4df-965cdabd231d" name="RisK Rejected" sourceRef="Id_64728d91-dd50-460c-8132-3120ff253acf" targetRef="Id_a1e30bc3-3de9-43ca-bfb9-94171487b286">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="White" />
            <bizagi:BizagiProperty name="borderColor" value="#000000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <conditionExpression id="Expression_6c56e72d-6f10-47fe-b147-ce64c3debae3">The result is Risks rejected</conditionExpression>
    </sequenceFlow>
    <sequenceFlow id="Id_42871ab6-1678-4fee-909b-35bfcce8b13a" name="" sourceRef="Id_f41e6e4f-f957-456b-b1db-42a81eec8c12" targetRef="Id_7a3a3543-2218-4213-9f34-3128d1937ccc">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="White" />
            <bizagi:BizagiProperty name="borderColor" value="#000000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
    </sequenceFlow>
    <sequenceFlow id="Id_57e4d9e3-1d10-4166-9c98-df8a61c56f3e" name="" sourceRef="Id_edb31085-934e-4157-8d82-13472d876a7b" targetRef="Id_65baa1f5-73b2-4a73-8674-f890d3090847">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="White" />
            <bizagi:BizagiProperty name="borderColor" value="#000000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
    </sequenceFlow>
    <sequenceFlow id="Id_509a13e8-1849-4692-a145-d8beb478d691" name="" sourceRef="Id_3ca38249-aa30-4b7b-a995-0946ebf35218" targetRef="Id_2c6339b8-160c-4f06-a7f4-69934ff91a8e">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="White" />
            <bizagi:BizagiProperty name="borderColor" value="#000000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
    </sequenceFlow>
    <sequenceFlow id="Id_4bcdce87-7833-45e8-9be9-5b1f02d2e8a9" name="" sourceRef="Id_2c6339b8-160c-4f06-a7f4-69934ff91a8e" targetRef="Id_4d22da9b-38fa-449d-83da-0605e9d6bbbd">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="White" />
            <bizagi:BizagiProperty name="borderColor" value="#000000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
    </sequenceFlow>
    <sequenceFlow id="Id_3c333b3a-dc4c-40aa-bffd-dea1a74ddd68" name="Reject &#xA;Quote" sourceRef="Id_d68353f6-4e8e-4465-9b52-6cac8b0aca3e" targetRef="Id_5a8f8a8a-91ee-4ff1-a00a-c8ec2b7a8b7f">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="White" />
            <bizagi:BizagiProperty name="borderColor" value="#000000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <conditionExpression id="Expression_f1560700-e9ea-4777-8a25-b45fd3cc30a7">Reject the quotation</conditionExpression>
    </sequenceFlow>
    <sequenceFlow id="Id_8f05a6fc-c336-421f-9302-5f74e1d76d2d" name="" sourceRef="Id_8d75431b-6ee3-4448-ae6f-d547710c93f6" targetRef="Id_130a3695-b354-40f1-ae6c-d1286fb33d3d">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="White" />
            <bizagi:BizagiProperty name="borderColor" value="#000000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
    </sequenceFlow>
    <sequenceFlow id="Id_1486070d-d415-47ad-9652-af3dc656429a" name="No" sourceRef="Id_5d2a6165-0248-4116-8ef1-970834b26a9e" targetRef="Id_eb025e4f-28c3-40c2-8154-08e145f00105">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="White" />
            <bizagi:BizagiProperty name="borderColor" value="#000000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <conditionExpression id="Expression_e1b64759-d9bd-4322-9ffb-e2a27fdd1c54">Inspection not required. In this case the policy indicates that if the model of the vehicle is equal to or later than 2010, inspection is not required. This can be amended in the Web application.</conditionExpression>
    </sequenceFlow>
    <sequenceFlow id="Id_070f6d67-7c50-4c02-9ee6-48c7d087fe99" name="" sourceRef="Id_eb025e4f-28c3-40c2-8154-08e145f00105" targetRef="Id_637c2ef1-6d38-44be-b18e-d8ac80b84c41">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="White" />
            <bizagi:BizagiProperty name="borderColor" value="#000000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
    </sequenceFlow>
    <sequenceFlow id="Id_d121eb37-6c0a-4d9f-9665-404dc5f93c7d" name="" sourceRef="Id_5e9c2112-1ea9-4d95-8e21-ac10c4053834" targetRef="Id_595b94ec-7a18-445e-8605-0373013f7f2e">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="White" />
            <bizagi:BizagiProperty name="borderColor" value="#000000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
    </sequenceFlow>
    <sequenceFlow id="Id_1f85f817-cd7d-4518-95d4-07bf2b1cf9ca" name="" sourceRef="Id_595b94ec-7a18-445e-8605-0373013f7f2e" targetRef="Id_f41e6e4f-f957-456b-b1db-42a81eec8c12">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="White" />
            <bizagi:BizagiProperty name="borderColor" value="#000000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
    </sequenceFlow>
    <sequenceFlow id="Id_dc868fd6-2574-44eb-bbb7-b5f6eea21964" name="" sourceRef="Id_177493e4-30c8-424e-aa0c-b3f3fcd1d3dd" targetRef="Id_5d2a6165-0248-4116-8ef1-970834b26a9e">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="White" />
            <bizagi:BizagiProperty name="borderColor" value="#000000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
    </sequenceFlow>
    <sequenceFlow id="Id_73d1b55f-8f37-4121-b362-f7b4384c23d0" name="" sourceRef="Id_b7e8c9f1-2371-4dbd-bd76-475a152c2aa8" targetRef="Id_626c027e-4e2d-4f31-becd-2a029d7d5908">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="White" />
            <bizagi:BizagiProperty name="borderColor" value="#000000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
    </sequenceFlow>
    <sequenceFlow id="Id_5d75dea1-c47a-46f3-8408-c6e40c95d661" name="" sourceRef="Id_626c027e-4e2d-4f31-becd-2a029d7d5908" targetRef="Id_72e9c869-31a2-4bc8-a043-8d09c54abd15">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="White" />
            <bizagi:BizagiProperty name="borderColor" value="#000000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
    </sequenceFlow>
    <sequenceFlow id="Id_a4d7c82b-340f-4213-96f7-3f1755a0fd99" name="" sourceRef="Id_f8d24c69-0ba8-4a8d-a638-7ae0221b064d" targetRef="Id_53d6f723-7b34-41bb-a778-9fe2cb33d767">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="White" />
            <bizagi:BizagiProperty name="borderColor" value="#000000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
    </sequenceFlow>
    <sequenceFlow id="Id_1459714a-ebae-41a4-aa05-6b945ee1898a" name="Yes" sourceRef="Id_53d6f723-7b34-41bb-a778-9fe2cb33d767" targetRef="Id_db710b8c-3d8b-4114-9ba8-59151857e4a1">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="White" />
            <bizagi:BizagiProperty name="borderColor" value="#000000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <conditionExpression id="Expression_161939a0-4b8b-45b5-bde9-ba4a0cc820c6">Risk was Approved</conditionExpression>
    </sequenceFlow>
    <sequenceFlow id="Id_0ab79072-5200-4991-9f68-2566f1a167f7" name="No" sourceRef="Id_53d6f723-7b34-41bb-a778-9fe2cb33d767" targetRef="Id_a1e30bc3-3de9-43ca-bfb9-94171487b286">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="White" />
            <bizagi:BizagiProperty name="borderColor" value="#000000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <conditionExpression id="Expression_33ead98c-8367-492c-a079-4c2caffd2369">Risk was Rejected</conditionExpression>
    </sequenceFlow>
    <sequenceFlow id="Id_eb3f7cbd-a34b-4b31-9423-b683d5de601e" name="" sourceRef="Id_a1e30bc3-3de9-43ca-bfb9-94171487b286" targetRef="Id_a1873359-1dbf-4cc1-9ab3-476f78be24d9">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="White" />
            <bizagi:BizagiProperty name="borderColor" value="#000000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
    </sequenceFlow>
    <sequenceFlow id="Id_a2d56ed9-2eb0-4a9a-97b9-f30dd59657d2" name="" sourceRef="Id_db710b8c-3d8b-4114-9ba8-59151857e4a1" targetRef="Id_177493e4-30c8-424e-aa0c-b3f3fcd1d3dd">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="White" />
            <bizagi:BizagiProperty name="borderColor" value="#000000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <conditionExpression id="Expression_9e86c7f3-9a97-449b-87ee-112f1e951c30" />
    </sequenceFlow>
  </process>
  <collaboration id="Id_4da73555-0ddb-4711-991d-b58398993464" name="Vehicle Insurance Policy Underwriting">
    <documentation>This process covers all the stages required to issue a new policy for car insurance. It includes a study of the vehicle, insurance quotation for the vehicle, study of the viability and risks, inspection and, finally, the issue of the insurance policy for the vehicle. </documentation>
    <participant id="Id_2f2d02f1-bab1-497d-9a2e-fa949fd08669" name="Proceso principal" processRef="Id_07de2261-433f-40e3-85e9-9517d9d64afc">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="#FFFFFF" />
            <bizagi:BizagiProperty name="borderColor" value="#000000" />
            <bizagi:BizagiProperty name="isMainParticipant" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
    </participant>
    <participant id="Id_1a04d3cc-f60b-420a-9ae1-bc1098d350b9" name="Vehicle Insurance Policy Underwriting  " processRef="Id_a7ebbb75-038b-4f1b-b690-d24e822ee647">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="#FFFFFF" />
            <bizagi:BizagiProperty name="borderColor" value="#000000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
    </participant>
  </collaboration>
  <BPMNDiagram id="Diagram_77ea9f05-c011-4930-894a-9ff93f8e1168" xmlns="http://www.omg.org/spec/BPMN/20100524/DI">
    <BPMNPlane id="DiagramElement_320ffc46-07ae-40e7-8047-60ea4dce50a8" bpmnElement="Id_4da73555-0ddb-4711-991d-b58398993464">
      <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
      <BPMNShape id="DiagramElement_a216bb9f-d06a-4697-87dc-d08273d1a41e" bpmnElement="Id_2f2d02f1-bab1-497d-9a2e-fa949fd08669" isHorizontal="true">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <Bounds x="0" y="0" width="700" height="350" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        <BPMNLabel id="DiagramElement_c3a54d0a-45c0-470b-bf79-794935f10113" labelStyle="Style_7a9590dd-77f0-4796-b3cc-7fb37c652aa0">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNShape>
      <BPMNShape id="DiagramElement_70563570-a8c6-45e5-a88b-c866069df62c" bpmnElement="Id_1a04d3cc-f60b-420a-9ae1-bc1098d350b9" isHorizontal="true">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <Bounds x="1" y="18" width="3440" height="690" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        <BPMNLabel id="DiagramElement_8b404388-a686-468f-85b1-c4ec10327fab" labelStyle="Style_ad09e303-fc76-41a0-94e7-d44f516f3b88">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNShape>
      <BPMNShape id="DiagramElement_e6328e72-0afb-400b-89a2-352d45e51ba5" bpmnElement="Id_ddd80615-d845-4705-97e5-82cb8bc71daa" isHorizontal="true">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <Bounds x="50" y="18" width="3390" height="551" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        <BPMNLabel id="DiagramElement_f0a955bd-8e30-4202-aa3a-a4a971391a2e" labelStyle="Style_67f78ffe-95ea-4f73-9f08-c30d7a9248f0">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNShape>
      <BPMNShape id="DiagramElement_6d3477cd-fec9-4117-9ab7-fcb8b4188ebc" bpmnElement="Id_0542163c-da68-4dcf-bca3-34866af42956" isHorizontal="true">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <Bounds x="50" y="569" width="3390" height="139" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        <BPMNLabel id="DiagramElement_ef38a033-95d3-4922-97bf-2ae6fc10e0b3" labelStyle="Style_d3f9304e-90ff-49a1-9984-9688962aad47">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNShape>
      <BPMNShape id="DiagramElement_5da8bc2c-a4b6-4509-97cc-ad77dd3b36e1" bpmnElement="Id_b82d0031-228f-4761-9198-976ecc81bb90">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <Bounds x="457" y="256.5" width="92" height="64" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        <BPMNLabel id="DiagramElement_b37df0d1-5dff-466f-861d-7c05e19a5f3b" labelStyle="Style_509b4b40-32f3-4ada-889e-d124932c134b">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNShape>
      <BPMNShape id="DiagramElement_32b63405-4e13-4026-b61c-00e652488dcc" bpmnElement="Id_72e9c869-31a2-4bc8-a043-8d09c54abd15">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <Bounds x="1553" y="269" width="40" height="40" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        <BPMNLabel id="DiagramElement_7921a848-318e-41e0-b017-3ea25dfd6a94" labelStyle="Style_d0634995-5cff-488f-a31a-556bd4c5fc7a">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNShape>
      <BPMNShape id="DiagramElement_9ade0490-3c29-498f-b003-bf96d581df90" bpmnElement="Id_64728d91-dd50-460c-8132-3120ff253acf">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <Bounds x="2149.963623046875" y="352" width="40" height="40" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        <BPMNLabel id="DiagramElement_c3f97b77-4d88-4e07-a6ee-171c6590418a" labelStyle="Style_6d02a2f1-f448-4ae2-91e7-1973ce0312b2">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNShape>
      <BPMNShape id="DiagramElement_ec4a4f30-5211-40e9-8dac-4fc5bb629cdc" bpmnElement="Id_e085926b-95b5-4af9-b8cd-6f1c23a649dc">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <Bounds x="126" y="159" width="40" height="40" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        <BPMNLabel id="DiagramElement_3984efe7-fac0-4baa-99d7-b99a9391c790" labelStyle="Style_59f6864c-f1df-411d-b094-cbfd5bbcfba2">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNShape>
      <BPMNShape id="DiagramElement_aedb8e1a-ec2c-49d0-9b9e-1c86e67da84b" bpmnElement="Id_048027df-f389-4a37-9d1e-f9815c4afa99">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <Bounds x="2733.97265625" y="352" width="40" height="40" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        <BPMNLabel id="DiagramElement_07e9f8f2-92ae-486f-8767-dc14fb982b55" labelStyle="Style_e9ef4fa1-b116-4925-bc65-432d7c5260e4">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNShape>
      <BPMNShape id="DiagramElement_4054abb2-f9f7-42ea-b6be-8b2ca4e30582" bpmnElement="Id_7a69b401-734e-4bc9-9f51-7f1dc100b9bc">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <Bounds x="131" y="77" width="30" height="30" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        <BPMNLabel id="DiagramElement_c339f911-4e86-4de8-bc82-51a3df05461d" labelStyle="Style_9fb761a2-0f4d-4acf-9e24-cae081379a4c">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNShape>
      <BPMNShape id="DiagramElement_4dbfa5bd-09a3-45b2-b142-9fc41b0befaa" bpmnElement="Id_bee3003e-c8a3-4b9c-90b1-0114e632002a">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <Bounds x="250" y="256" width="92" height="65" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        <BPMNLabel id="DiagramElement_43c85b9d-1dd5-4c25-bb17-ab5e9952fbdb" labelStyle="Style_747bb493-ce98-4c07-ac23-12bd504f87f1">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNShape>
      <BPMNShape id="DiagramElement_f5830815-c469-425a-bf3f-24ec62e62d87" bpmnElement="Id_9a452f8a-5bc7-4b5e-aee8-166f2d19c74f">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <Bounds x="743" y="268.5" width="40" height="40" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        <BPMNLabel id="DiagramElement_00d5e953-990e-458c-959f-0a7ddce6d252" labelStyle="Style_581cbe66-b6f0-487e-928c-aedb81af4c03">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNShape>
      <BPMNShape id="DiagramElement_ae5182ce-6b85-4b9e-ac91-7ef78c56f03d" bpmnElement="Id_f8d24c69-0ba8-4a8d-a638-7ae0221b064d">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <Bounds x="2124.463623046875" y="600" width="91" height="62" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        <BPMNLabel id="DiagramElement_ff736848-d256-4c68-bacc-1e2174a9a2fb" labelStyle="Style_b3b2e651-4c1c-4d5b-8a0e-d973d2abb3e3">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNShape>
      <BPMNShape id="DiagramElement_fcfe61e2-ef38-48f1-90dc-f39b3cb738b7" bpmnElement="Id_65baa1f5-73b2-4a73-8674-f890d3090847">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <Bounds x="968" y="258" width="88" height="61" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        <BPMNLabel id="DiagramElement_d86ab025-4260-4212-82eb-a828604d48ac" labelStyle="Style_65a8e846-10ec-44e9-a1e3-e2f9219c5000">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNShape>
      <BPMNShape id="DiagramElement_daff35bc-5644-42de-9a30-bb46154b1634" bpmnElement="Id_387f2a1f-f895-4342-90f5-bf61743374ce">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <Bounds x="99" y="256" width="94" height="65" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        <BPMNLabel id="DiagramElement_44083496-2e44-4c56-818e-36ee6f8e708d" labelStyle="Style_fab1b47b-7ed3-4e23-a4ee-f11c03ed75b0">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNShape>
      <BPMNShape id="DiagramElement_fcd67351-50d9-428b-9d1d-dd142d75198f" bpmnElement="Id_0a71bbf6-9d14-4951-bce7-377cc14d4584">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <Bounds x="274" y="159" width="40" height="40" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        <BPMNLabel id="DiagramElement_7917e168-d322-4daa-ad68-d636641c5b5b" labelStyle="Style_71d95876-5f10-496f-a9c6-1405e4382cce">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNShape>
      <BPMNShape id="DiagramElement_0befd6d0-af43-45af-ae10-1b50949fdf9a" bpmnElement="Id_8a1cd0c8-eec4-43e2-a539-6d08faed5351">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <Bounds x="1666" y="145.75" width="30" height="30" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        <BPMNLabel id="DiagramElement_8f18363e-32df-4941-a1e2-463d9e52a1c1" labelStyle="Style_d0de6f16-a89e-45e9-ae36-960d04648dd1">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNShape>
      <BPMNShape id="DiagramElement_47624b10-022c-4297-b66d-913dc526e0f8" bpmnElement="Id_637c2ef1-6d38-44be-b18e-d8ac80b84c41">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <Bounds x="2937.94580078125" y="352" width="40" height="40" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        <BPMNLabel id="DiagramElement_ac35c3f9-245d-42db-8ebb-6e82f68f45ff" labelStyle="Style_ed040bc9-3e3f-4a7d-8328-b0bd4576d202">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNShape>
      <BPMNShape id="DiagramElement_78c277f8-c442-4b4f-8d76-291144e63c1a" bpmnElement="Id_8d75431b-6ee3-4448-ae6f-d547710c93f6">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <Bounds x="1803" y="129.75" width="88" height="62" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        <BPMNLabel id="DiagramElement_d485e2f0-e84e-4494-aa6a-70df96b4f25c" labelStyle="Style_2e0ec276-b436-420c-9db4-09d726b47ee0">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNShape>
      <BPMNShape id="DiagramElement_6fb95f04-e467-4a48-8bef-0847769a19bb" bpmnElement="Id_a1e30bc3-3de9-43ca-bfb9-94171487b286">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <Bounds x="2707.97265625" y="242" width="92" height="58" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        <BPMNLabel id="DiagramElement_ee1327d2-54cc-42c6-90bf-b7592a6bbaba" labelStyle="Style_fe23c401-a412-4669-9262-a8a35b70aa0b">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNShape>
      <BPMNShape id="DiagramElement_63df24dd-19c8-472e-9597-d17456324a37" bpmnElement="Id_bb72aaa8-1a88-4dde-a813-4bceb3276f3e">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <Bounds x="2012.9637451171875" y="342" width="89" height="60" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        <BPMNLabel id="DiagramElement_cf9dfb5e-7d69-4b5d-bdba-2d7f1e0f1d50" labelStyle="Style_556cf876-da28-41be-83d8-1ddd9f0e3ef7">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNShape>
      <BPMNShape id="DiagramElement_dd1c15fc-7068-4ed9-aa65-72be7a070db9" bpmnElement="Id_3ca38249-aa30-4b7b-a995-0946ebf35218">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <Bounds x="371" y="164" width="30" height="30" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        <BPMNLabel id="DiagramElement_8945b002-078e-4610-a004-4f94c43f682b" labelStyle="Style_4927733e-877f-4815-bb54-473be5c47d59">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNShape>
      <BPMNShape id="DiagramElement_21e485e6-df37-4f36-ba66-e4dca574467b" bpmnElement="Id_edb31085-934e-4157-8d82-13472d876a7b">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <Bounds x="844" y="256.5" width="92" height="64" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        <BPMNLabel id="DiagramElement_cdae5b0e-2881-4a84-a649-966ab51e9731" labelStyle="Style_1ac9029a-3ccc-43cd-a3d4-e6fd23561dc8">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNShape>
      <BPMNShape id="DiagramElement_1a5a3fd7-902e-4fc1-acfb-ba08a5d637bd" bpmnElement="Id_9d1f5d39-f220-41d6-a0a2-925e274ab70d">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <Bounds x="1222" y="269" width="40" height="40" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        <BPMNLabel id="DiagramElement_44492ea8-8c46-43dc-ad80-7cd59efe149a" labelStyle="Style_8c1339d3-c693-4a0e-a198-f03481d10349">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNShape>
      <BPMNShape id="DiagramElement_d047ed12-cfed-4289-bc87-389e4689cd2b" bpmnElement="Id_11652dba-c561-47bf-aad9-2460392171b2">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <Bounds x="1803" y="340" width="88" height="64" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        <BPMNLabel id="DiagramElement_a125f61c-7a24-4c34-9a29-6713916a278d" labelStyle="Style_8b384e2c-0a1d-4942-a822-46bac38fcd65">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNShape>
      <BPMNShape id="DiagramElement_dc4185ce-dc87-4c26-a639-a3ab4789aa9e" bpmnElement="Id_ac5254e8-01f7-4ad4-bc5b-db7c6e4e5cc5">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <Bounds x="1636" y="257" width="90" height="64" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        <BPMNLabel id="DiagramElement_18522fd8-48b7-4676-952c-f1f9ce695b4b" labelStyle="Style_7562e26f-99f9-46e6-99e5-e245314af88f">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNShape>
      <BPMNShape id="DiagramElement_e47efa0f-eba8-4d24-b239-caa1bbf9bf9c" bpmnElement="Id_7a3a3543-2218-4213-9f34-3128d1937ccc">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <Bounds x="3374.97265625" y="357" width="30" height="30" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        <BPMNLabel id="DiagramElement_b4701fcf-a0e7-44b1-8332-0eab0d874801" labelStyle="Style_443e5d5b-fecc-4809-8ed9-2fbac34ef5ce">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNShape>
      <BPMNShape id="DiagramElement_46c1ef5a-780b-4f1e-a7d8-5b4f66551e52" bpmnElement="Id_b7e8c9f1-2371-4dbd-bd76-475a152c2aa8">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <Bounds x="1312" y="259" width="90" height="60" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        <BPMNLabel id="DiagramElement_42f3e86d-35f7-4345-b820-1d019d0ace4e" labelStyle="Style_4a3804fa-8737-4e71-b96b-2bdfd3552124">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNShape>
      <BPMNShape id="DiagramElement_c4bb2792-6948-46a0-a64e-d9da5fb74619" bpmnElement="Id_f41e6e4f-f957-456b-b1db-42a81eec8c12">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <Bounds x="3242" y="342" width="90" height="60" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        <BPMNLabel id="DiagramElement_c6347f6f-fb35-4972-8ba0-2b70f909223c" labelStyle="Style_6648017a-28b0-4b86-aceb-27bca020e2cd">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNShape>
      <BPMNShape id="DiagramElement_c825ede1-a8e9-4b00-9493-5cf1a100d05a" bpmnElement="Id_5e9c2112-1ea9-4d95-8e21-ac10c4053834">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <Bounds x="3019.83642578125" y="342" width="90" height="60" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        <BPMNLabel id="DiagramElement_a433ff2a-4505-407b-8187-64c1d8cb0a7c" labelStyle="Style_156e1f50-eceb-480b-8938-8fa4c0f51520">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNShape>
      <BPMNShape id="DiagramElement_847d7000-aa7a-4354-9fe4-ad1534407e82" bpmnElement="Id_4d22da9b-38fa-449d-83da-0605e9d6bbbd">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <Bounds x="637" y="164" width="30" height="30" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        <BPMNLabel id="DiagramElement_38def564-0f27-4a2a-a7f2-51b0db7ec68d" labelStyle="Style_06ecbf2e-eeaf-494f-b3a8-cb4c3f8ceed6">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNShape>
      <BPMNShape id="DiagramElement_8a7b4e80-1bb3-4628-9fc2-1f5f40850bad" bpmnElement="Id_5a8f8a8a-91ee-4ff1-a00a-c8ec2b7a8b7f">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <Bounds x="1831" y="479" width="30" height="30" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        <BPMNLabel id="DiagramElement_b25ce424-ebd0-4459-8f78-17ea7eeb5705" labelStyle="Style_4dfcbed6-f634-4209-82e4-4dbdb14e17b0">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNShape>
      <BPMNShape id="DiagramElement_649589ae-430b-40da-9f31-96e8f03b8f1c" bpmnElement="Id_8b482fcf-3d8c-4644-9085-50b21e02aebf">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <Bounds x="2941" y="474" width="30" height="30" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        <BPMNLabel id="DiagramElement_e71c696f-377b-4d3c-94ba-b758d583d8cc" labelStyle="Style_02cffa6f-e57f-47eb-952b-611972b59eb7">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNShape>
      <BPMNShape id="DiagramElement_622af31b-6a2d-489f-80be-dca74027e387" bpmnElement="Id_2c6339b8-160c-4f06-a7f4-69934ff91a8e">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <Bounds x="461" y="149" width="90" height="60" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        <BPMNLabel id="DiagramElement_2857a6da-2701-4290-bd31-d074afcf685e" labelStyle="Style_724aafdd-d4a9-486f-8b32-7746f7404469">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNShape>
      <BPMNShape id="DiagramElement_08b9040c-4dab-47e3-b38f-9e99e06aedf9" bpmnElement="Id_130a3695-b354-40f1-ae6c-d1286fb33d3d">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <Bounds x="1923" y="145.75" width="30" height="30" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        <BPMNLabel id="DiagramElement_5e15a2db-e172-48ff-95a7-42680e7afe95" labelStyle="Style_064b5bcf-0eaf-4898-8ae5-695b68c85f78">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNShape>
      <BPMNShape id="DiagramElement_3e382ec0-a786-43e2-bc9d-1828a4f7d7fd" bpmnElement="Id_d68353f6-4e8e-4465-9b52-6cac8b0aca3e">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <Bounds x="1661" y="352" width="40" height="40" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        <BPMNLabel id="DiagramElement_31ce5862-b183-4edc-b429-d00bba0187b1" labelStyle="Style_c5784047-3072-44e6-b0a1-9810c4a059b0">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNShape>
      <BPMNShape id="DiagramElement_c96884c7-6bc4-4d7f-bc80-7caa71fc9bf9" bpmnElement="Id_eb025e4f-28c3-40c2-8154-08e145f00105">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <Bounds x="2829.97265625" y="352" width="40" height="40" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        <BPMNLabel id="DiagramElement_38e9b75c-4afc-441e-bb15-af9c2a84e606" labelStyle="Style_158749ad-34ab-4ceb-b040-c431cf2ed034">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNShape>
      <BPMNShape id="DiagramElement_2090942a-f4f9-48a1-997f-b155cb510c2b" bpmnElement="Id_0a68437c-1b5b-418d-821a-095a598def0c">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <Bounds x="2585.97265625" y="342" width="90" height="60" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        <BPMNLabel id="DiagramElement_eedbfac2-de10-44d4-bd37-894af05e7890" labelStyle="Style_5a295b51-496c-4313-99f2-cad8a327bf22">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNShape>
      <BPMNShape id="DiagramElement_914ab439-144b-419e-bdd7-c6d7869b0134" bpmnElement="Id_595b94ec-7a18-445e-8605-0373013f7f2e">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <Bounds x="3125.83642578125" y="342" width="90" height="60" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        <BPMNLabel id="DiagramElement_84cbc5e9-3163-4f1f-a1f9-2b19fa6f3da5" labelStyle="Style_8108f5c8-5158-4c13-a2c6-6f9edebbb363">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNShape>
      <BPMNShape id="DiagramElement_c6e6401a-e38e-41f6-974e-3a181bd437d0" bpmnElement="Id_5d2a6165-0248-4116-8ef1-970834b26a9e">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <Bounds x="2508.97265625" y="352" width="40" height="40" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        <BPMNLabel id="DiagramElement_eb66f479-6529-4610-b6da-04cc2e52e37b" labelStyle="Style_eb5ec7e0-38be-4318-a724-dd9996d217e5">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNShape>
      <BPMNShape id="DiagramElement_a2ffdc9e-f80d-42ee-ad0a-3a8d0b58b370" bpmnElement="Id_177493e4-30c8-424e-aa0c-b3f3fcd1d3dd">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <Bounds x="2430.97265625" y="352" width="40" height="40" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        <BPMNLabel id="DiagramElement_d9c0c863-b94a-4b4b-99cd-0beccf21ef54" labelStyle="Style_743a9769-5a55-457e-a24f-9d15a17ef968">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNShape>
      <BPMNShape id="DiagramElement_d74d3633-7cc6-4587-b471-d3a503875d74" bpmnElement="Id_626c027e-4e2d-4f31-becd-2a029d7d5908">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <Bounds x="1428" y="259" width="90" height="60" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        <BPMNLabel id="DiagramElement_dd332a36-9217-4464-98d7-dff986669218" labelStyle="Style_5905725f-db89-4a04-80e9-6f2d53738990">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNShape>
      <BPMNShape id="DiagramElement_ccd08dcf-7777-4cd6-a580-a4ba5d73a8b0" bpmnElement="Id_53d6f723-7b34-41bb-a778-9fe2cb33d767">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <Bounds x="2260" y="611" width="40" height="40" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        <BPMNLabel id="DiagramElement_d9cb907f-06d0-4704-bd1d-ca99011a60fa" labelStyle="Style_7f2c9f22-a166-41a1-b0d5-35817e1b3ee3">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNShape>
      <BPMNShape id="DiagramElement_3eb8f55c-a158-4a61-afab-303af8ec171f" bpmnElement="Id_a1873359-1dbf-4cc1-9ab3-476f78be24d9">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <Bounds x="2841" y="256" width="30" height="30" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        <BPMNLabel id="DiagramElement_37d82ddd-d3d6-4597-944b-24633c3601e2" labelStyle="Style_0c0e4684-3d6b-4dce-afeb-08cc57941ef0">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNShape>
      <BPMNShape id="DiagramElement_cbddd47a-96c0-47a3-a33a-1eec9b666cf1" bpmnElement="Id_6b2100fd-86df-477a-9969-a643f1f2afe1">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <Bounds x="1094" y="258" width="90" height="61" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        <BPMNLabel id="DiagramElement_0b37f1d6-fc81-4d98-ac01-b30ceb0c2a0d" labelStyle="Style_1152afa7-207c-4182-b6f3-f345579da624">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNShape>
      <BPMNShape id="DiagramElement_d9e26a49-b958-43e0-a87e-c74042fae6eb" bpmnElement="Id_db710b8c-3d8b-4114-9ba8-59151857e4a1">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <Bounds x="2316" y="352" width="40" height="40" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        <BPMNLabel id="DiagramElement_93cc41db-995b-4253-8fe3-fdea2392b923" labelStyle="Style_8a449141-dc2f-4870-a8d0-8896624bccbb">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNShape>
      <BPMNEdge id="DiagramElement_7a7a3931-19b2-4d55-ae34-3509c1572089" bpmnElement="Id_2821d6b9-ce16-48bf-ab9f-39c81f86f824">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="2753" y="352" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="2753" y="300" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <BPMNLabel id="DiagramElement_c365fcc9-bbfc-46d8-be45-027f2e65111e" labelStyle="Style_aab4900c-87d6-45e4-8039-13f734864b65">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNEdge>
      <BPMNEdge id="DiagramElement_332e30a7-29e4-4655-84aa-6898b9098f52" bpmnElement="Id_3b9a47a8-2e4e-4597-8a65-6bb4eb8c77af">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="146" y="199" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="146" y="256" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <BPMNLabel id="DiagramElement_e76e8823-56db-4f86-bd29-cd936a86c203" labelStyle="Style_d423c956-7dc0-48fb-b882-b5d43a45713e">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNEdge>
      <BPMNEdge id="DiagramElement_ae1092cb-3454-4e76-9567-cf55c5d6ff09" bpmnElement="Id_1de20c8f-001a-4795-b3dd-f5d14f5661d7">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="1184" y="288" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="1204" y="288" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="1204" y="289" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="1222" y="289" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <BPMNLabel id="DiagramElement_ad6f34f5-f783-4269-a2cb-026b569f8de6" labelStyle="Style_78c208cf-8607-4b05-9e1f-5a4eed1723ff">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNEdge>
      <BPMNEdge id="DiagramElement_0f313796-c32b-4b43-b613-fb9c6a7adad7" bpmnElement="Id_ed43720a-ce88-4b80-aa6c-7f4bf524ca97">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="1701" y="372" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="1803" y="372" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <BPMNLabel id="DiagramElement_2c3ca6c8-45e1-44e8-bce9-a5d7bdc07418" labelStyle="Style_59d1c9ce-cb7c-4e54-b9ba-16b394ea7642">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNEdge>
      <BPMNEdge id="DiagramElement_9201a016-d227-463b-b7e3-43f1dfb660ee" bpmnElement="Id_9ec2b2e8-8e68-4417-b916-24f5ba55b237">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="1593" y="289" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="1636" y="289" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <BPMNLabel id="DiagramElement_56710989-9ae1-4721-98bd-4fc75af53198" labelStyle="Style_675431e2-c0e3-4167-98bc-456c6ca7141f">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNEdge>
      <BPMNEdge id="DiagramElement_ca91f2e6-2e78-4e06-aa17-6d233e662eab" bpmnElement="Id_05c58a81-e6d1-4269-8b4b-861b38af42df">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="193" y="288" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="250" y="288" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <BPMNLabel id="DiagramElement_18370cf3-c598-40d0-af66-9c1d8e083ddc" labelStyle="Style_10e77ba5-8e65-4696-86dc-7657c01d2386">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNEdge>
      <BPMNEdge id="DiagramElement_38dd3195-5b60-40e2-94f4-cbd8da0de295" bpmnElement="Id_d88f6a7e-75d3-4340-8f2d-d929504df02d">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="2971" y="489" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="3389" y="489" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="3389" y="387" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <BPMNLabel id="DiagramElement_40d0d574-3127-4686-afe1-b8c2c33e1661" labelStyle="Style_8d44cab8-fb4f-407a-87db-5d0f30208242">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="3180" y="489" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNEdge>
      <BPMNEdge id="DiagramElement_4eb265f3-4966-4ace-ba04-bf0e76d60d86" bpmnElement="Id_659f9001-da96-4c3c-8d99-198a28211c6c">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="146" y="107" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="146" y="159" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <BPMNLabel id="DiagramElement_997f74bb-b84e-495f-a864-95dd71277cf3" labelStyle="Style_a16a3124-99c3-4b77-93d2-d2f2d4d2e11f">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNEdge>
      <BPMNEdge id="DiagramElement_910c7185-b73e-4f0d-94de-36ef6fcfd278" bpmnElement="Id_2464a6b3-4f00-4a6b-bbba-90267a86a8a6">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="2675" y="372" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="2733" y="372" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <BPMNLabel id="DiagramElement_80fef08c-0aa7-47da-9019-3f59f553cc32" labelStyle="Style_47686099-0bfd-4413-b739-a0463d9effc6">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNEdge>
      <BPMNEdge id="DiagramElement_b28322d3-9cb1-491a-a086-8a74c5d0b608" bpmnElement="Id_636e297c-bba3-4f3d-847f-2834924e9314">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="294" y="159" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="294" y="115.75" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="2957" y="115.75" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="2957" y="352" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <BPMNLabel id="DiagramElement_82041235-bc79-4364-9c09-66852c99ab41" labelStyle="Style_078df4b8-0cc9-41dc-b05a-d79158ee455a">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNEdge>
      <BPMNEdge id="DiagramElement_64661285-c77b-48bf-859f-949d1d140f33" bpmnElement="Id_3cc575b4-b10e-4bbb-aae7-8499f149a56e">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="166" y="179" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="274" y="179" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <BPMNLabel id="DiagramElement_e68887a6-520b-475a-b634-0df28572b219" labelStyle="Style_8de1f507-8f8a-4342-9df7-3e2e67bd16a8">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNEdge>
      <BPMNEdge id="DiagramElement_aedf9d78-60d5-4c8e-9800-50292f72ec05" bpmnElement="Id_66897dac-2f1d-42cd-add4-3fc09700b0e2">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="1056" y="288" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="1094" y="288" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <BPMNLabel id="DiagramElement_70b63ccb-73cd-418d-af3b-8b37bc4bc98e" labelStyle="Style_c2531e2c-5212-4fba-839e-582df0eb1cac">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNEdge>
      <BPMNEdge id="DiagramElement_7bf2b4c9-d195-4244-a0a4-8778feacabb9" bpmnElement="Id_dcf62cf4-18ef-460c-8dca-c9557b94a3b9">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="314" y="179" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="371" y="179" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <BPMNLabel id="DiagramElement_67cef437-46d5-4a20-a6b6-1798b8eba7fd" labelStyle="Style_bb1d6cd4-3df7-45a5-9e4e-fdfa09f06455">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNEdge>
      <BPMNEdge id="DiagramElement_cc9fa9c5-8b9a-4e38-9cac-c8967cc2f4c5" bpmnElement="Id_4dcc11fb-b301-4579-a6c0-c2d886cd5ebe">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="1681" y="321" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="1681" y="352" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <BPMNLabel id="DiagramElement_53609a1a-cff7-40f7-bb2b-0dba090568fe" labelStyle="Style_bc2a13f9-48a6-4d1a-9ac3-6da8e8e633e6">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNEdge>
      <BPMNEdge id="DiagramElement_5fefddc5-f816-47ca-a192-85c7f4b57aeb" bpmnElement="Id_34ed5a7c-6e2a-4e2a-9e84-3aae51d5b5f6">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="342" y="288" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="457" y="288" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <BPMNLabel id="DiagramElement_9a81d279-2dbc-4a74-a9ca-feea72bae146" labelStyle="Style_e8887a5f-32ec-4e8a-8ecc-39f9ad94a54f">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNEdge>
      <BPMNEdge id="DiagramElement_17c096c3-e2c5-40a1-9861-ad7d51bcb6a4" bpmnElement="Id_fed77f5a-b95e-4cd0-912f-c11bd659d7d5">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="2189" y="372" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="2316" y="372" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <BPMNLabel id="DiagramElement_899850a1-c2c6-42e7-9e5a-85f2cf0bb50c" labelStyle="Style_bc323e1b-6b08-4d18-a0cf-82da6834f718">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNEdge>
      <BPMNEdge id="DiagramElement_affff283-aa29-438b-84ed-c3e8feec20af" bpmnElement="Id_bd4effe5-6d2e-408f-9ee3-dfc632e878e7">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="1696" y="160" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="1803" y="160" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <BPMNLabel id="DiagramElement_59f10b8b-c45c-4e83-9c67-096ee9345eb7" labelStyle="Style_b57e63c4-25d9-4f7b-b484-99a67d2f07ab">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNEdge>
      <BPMNEdge id="DiagramElement_669e3491-f2ca-494c-ac59-605261116bb3" bpmnElement="Id_7689ade7-cc94-4fc3-ad0e-312c47095962">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="2169" y="392" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="2169" y="600" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <BPMNLabel id="DiagramElement_1dd48286-145e-4cc3-b14e-52be20d6f8cf" labelStyle="Style_a99157a5-6e22-498d-9fb0-07f99eca3440">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNEdge>
      <BPMNEdge id="DiagramElement_53b6ab5f-56d1-40da-8f38-ca5605dbc82c" bpmnElement="Id_02b4cb87-b271-4bc2-91ed-87cd9c053fee">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="1661" y="372" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="1012" y="372" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="1012" y="319" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <BPMNLabel id="DiagramElement_1cf4c2f5-b430-4c29-a1c6-65d5dd6dca7d" labelStyle="Style_21432399-e861-4026-b57c-f496a7f96132">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNEdge>
      <BPMNEdge id="DiagramElement_6f75ad03-e729-4ee4-a64b-5097c164df2c" bpmnElement="Id_9e17c1e9-35ef-442d-8d37-aac39fd301d9">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="1573" y="269" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="1573" y="160" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="1666" y="160" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <BPMNLabel id="DiagramElement_30420150-9cb2-4842-b070-a6ef83a3e33e" labelStyle="Style_7acf6884-892e-401a-9ee5-504c07bc6669">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNEdge>
      <BPMNEdge id="DiagramElement_69b41db8-8cfe-4511-b172-a9f5398cf1b3" bpmnElement="Id_da2a5f9c-b0bb-4af1-b8c1-3cd4a754f8c1">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="1262" y="289" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="1312" y="289" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <BPMNLabel id="DiagramElement_78588235-295d-4574-800c-cbef2831b1e6" labelStyle="Style_e91f83fd-a469-4b16-88c6-52742a344ae0">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNEdge>
      <BPMNEdge id="DiagramElement_5828049e-85c4-44e5-a2b3-c298f5480cc6" bpmnElement="Id_e0962aaf-8b91-4da2-b762-380bc21a99e2">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="2977" y="372" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="3019" y="372" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <BPMNLabel id="DiagramElement_de4e1170-d4e0-44a3-a01c-dbe5e953fbb5" labelStyle="Style_fe9ba5de-5a57-456f-a4ec-4007bb546cf5">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNEdge>
      <BPMNEdge id="DiagramElement_6ae3eec6-61bd-4c4d-ba07-30d1771b07a0" bpmnElement="Id_93c88531-112c-447b-8439-fa831259dc09">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="549" y="288" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="743" y="288" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <BPMNLabel id="DiagramElement_35ab7ca8-d496-466e-95c2-b27142ba143c" labelStyle="Style_a220d343-99a8-4649-9d37-cb5b86079e9b">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNEdge>
      <BPMNEdge id="DiagramElement_9fabcb8d-ad3d-4023-bd87-6fb74ca824ca" bpmnElement="Id_42eb5e8e-7ef9-4a15-b5c9-68ca5ef81760">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="783" y="288" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="844" y="288" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <BPMNLabel id="DiagramElement_6c0c708c-2b32-44b0-b85d-ad5a329e66f5" labelStyle="Style_f04fa350-e948-4159-9983-8880601d1666">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNEdge>
      <BPMNEdge id="DiagramElement_99543ee6-6036-4515-8b0d-9935d2c0fac9" bpmnElement="Id_13a6dbf8-d524-4328-b500-a28f9a469fbf">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="2773" y="372" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="2829" y="372" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <BPMNLabel id="DiagramElement_c14b0fb7-de38-4887-914a-239957fa283e" labelStyle="Style_8761bb27-c656-464d-a9ec-9fb72a41d96f">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNEdge>
      <BPMNEdge id="DiagramElement_2e8d1ec0-bca3-43f6-ade1-b9c6dc576a02" bpmnElement="Id_d405f33d-fa81-497d-ada4-9c7d7ae5c4a9">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="2450" y="392" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="2450" y="489" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="2941" y="489" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <BPMNLabel id="DiagramElement_bc046c1b-4ca7-47db-afa7-71b38f9d5457" labelStyle="Style_4540d70f-0404-4e2f-b33f-9b587b3c8c3c">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="2450" y="440" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNEdge>
      <BPMNEdge id="DiagramElement_4ec1ba5d-2d91-4e26-aaee-c5e8c0935857" bpmnElement="Id_4ff0b090-e344-4ea6-b627-b3b738ce2d15">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="2548" y="372" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="2585" y="372" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <BPMNLabel id="DiagramElement_60ef1d26-75d8-4520-b5c6-2801793a488e" labelStyle="Style_e230b1e9-7d38-4764-8974-f61f471ff8e6">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNEdge>
      <BPMNEdge id="DiagramElement_44759bb8-6e1e-4f45-9ca5-441ccea5b134" bpmnElement="Id_46f8181f-7d1d-4cb2-a3ec-75c226a22a53">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="763" y="268" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="763" y="230" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="503" y="230" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="503" y="256" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <BPMNLabel id="DiagramElement_22631330-f8e7-455f-ad20-328fd874312a" labelStyle="Style_061d77dc-7577-445f-80a9-4dffeebf5089">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNEdge>
      <BPMNEdge id="DiagramElement_fda791ab-5296-41df-8681-dce953229040" bpmnElement="Id_9bd3ea87-61ec-4342-907b-cb35495c2095">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="2101" y="372" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="2149" y="372" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <BPMNLabel id="DiagramElement_1d996364-a32e-448c-bf03-06518a90fb4e" labelStyle="Style_57e1c1e8-c2f4-41ad-8acd-201468c8c0c8">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNEdge>
      <BPMNEdge id="DiagramElement_a6d55529-6389-4157-a38e-fb876d2283db" bpmnElement="Id_c5bdd495-300c-4586-9090-39596edaf215">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="1891" y="372" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="2012" y="372" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <BPMNLabel id="DiagramElement_595f65db-ef5d-4abb-885a-f86e29b16206" labelStyle="Style_46ed293f-58a0-4f17-ad4c-872c457a18b7">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNEdge>
      <BPMNEdge id="DiagramElement_1bd3c3dc-84b8-411f-b366-9d1de84cb990" bpmnElement="Id_3d6e558e-f36f-4626-aea9-09793c0cab48">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="1681" y="392" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="1681" y="497" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="503" y="497" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="503" y="320" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <BPMNLabel id="DiagramElement_f6acaaaa-16d0-4a0b-ba2a-8180f314e31e" labelStyle="Style_66a8e46d-5b15-4f32-a567-22394b7964ae">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNEdge>
      <BPMNEdge id="DiagramElement_db8f957d-6545-4d9b-8133-caac7f28476d" bpmnElement="Id_a3a67b57-aabb-4a30-afd6-2d1648d0b7f2">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="1242" y="269" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="1242" y="216" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="1012" y="216" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="1012" y="258" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <BPMNLabel id="DiagramElement_7725b7ca-bfaa-4e44-9b01-e779d0654596" labelStyle="Style_12ee8d2a-2123-4a54-86a6-54e3425bd5e6">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNEdge>
      <BPMNEdge id="DiagramElement_0b7e9091-7c89-452d-b435-069e7c48f3f8" bpmnElement="Id_053c3c5b-ff3e-4a74-b4df-965cdabd231d">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="2169" y="352" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="2169" y="271" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="2707" y="271" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <BPMNLabel id="DiagramElement_0bb91124-5515-4396-b0b9-374591e4212e" labelStyle="Style_052b8b5b-1fc9-4b49-90bc-266b4a96f338">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNEdge>
      <BPMNEdge id="DiagramElement_a6aa8e21-f3a0-4715-b4b9-fa60f44c8ba9" bpmnElement="Id_42871ab6-1678-4fee-909b-35bfcce8b13a">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="3332" y="372" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="3374" y="372" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <BPMNLabel id="DiagramElement_f8037af3-dc8e-4506-b9b1-c2505a1aaee1" labelStyle="Style_37e754f0-5bb2-44c4-950f-ea87609ce805">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="3352" y="372" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNEdge>
      <BPMNEdge id="DiagramElement_7d1be38e-8d7c-4290-8fd6-242ba45be6d5" bpmnElement="Id_57e4d9e3-1d10-4166-9c98-df8a61c56f3e">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="936" y="288" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="968" y="288" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <BPMNLabel id="DiagramElement_8c7cd4a9-48ff-4bc6-996f-3071046098eb" labelStyle="Style_9b589416-ce35-477f-9644-41ebec0832b7">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNEdge>
      <BPMNEdge id="DiagramElement_68221be6-2ba4-4554-a380-a8dda3cfbe0a" bpmnElement="Id_509a13e8-1849-4692-a145-d8beb478d691">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="401" y="179" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="461" y="179" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <BPMNLabel id="DiagramElement_d778ec63-8072-485a-86fa-f33511d7d833" labelStyle="Style_9b7f66b9-ddb3-44af-8da9-5315a555562f">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNEdge>
      <BPMNEdge id="DiagramElement_01e75a2b-5a4a-44da-9a14-8f35cc96f0a8" bpmnElement="Id_4bcdce87-7833-45e8-9be9-5b1f02d2e8a9">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="551" y="179" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="637" y="179" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <BPMNLabel id="DiagramElement_3f8b9a2d-7c63-447a-9484-ab4ddc2f38eb" labelStyle="Style_d6945b6e-84e7-48ef-a634-ecbb1d53c5a9">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNEdge>
      <BPMNEdge id="DiagramElement_7c4b0ba0-1fd6-4a77-af93-aa8910b74373" bpmnElement="Id_3c333b3a-dc4c-40aa-bffd-dea1a74ddd68">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="1701" y="372" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="1738" y="372" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="1738" y="494" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="1831" y="494" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <BPMNLabel id="DiagramElement_0c7ff73c-e9f8-4f32-8511-576a93f2afbb" labelStyle="Style_593444fe-3368-46c3-9ee2-be41a7718522">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNEdge>
      <BPMNEdge id="DiagramElement_f469361f-8eb8-45e0-9189-2acb2016fb30" bpmnElement="Id_8f05a6fc-c336-421f-9302-5f74e1d76d2d">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="1891" y="160" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="1923" y="160" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <BPMNLabel id="DiagramElement_72c7042b-1812-4df5-80a9-08ff4a93d58c" labelStyle="Style_21ddf63c-73a2-4748-b089-aa6fa86bf094">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNEdge>
      <BPMNEdge id="DiagramElement_cf4a627e-3026-4f3a-9be7-0c3e019fdbc7" bpmnElement="Id_1486070d-d415-47ad-9652-af3dc656429a">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="2528" y="392" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="2528" y="452" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="2849" y="452" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="2849" y="392" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <BPMNLabel id="DiagramElement_29762884-8c28-41d0-ba6f-6f057be352c3" labelStyle="Style_db85211f-9e3c-439a-bfd8-03140b53aaa0">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNEdge>
      <BPMNEdge id="DiagramElement_81dc9c6b-2f64-4cd5-a4dd-88d8a68d16e3" bpmnElement="Id_070f6d67-7c50-4c02-9ee6-48c7d087fe99">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="2869" y="372" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="2937" y="372" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <BPMNLabel id="DiagramElement_476d272a-3352-4a8a-97fe-9e75637989fd" labelStyle="Style_1b28b64a-7703-43e8-b29c-32a3f61857f7">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNEdge>
      <BPMNEdge id="DiagramElement_dacbd286-0ffe-43f4-8911-fbce36b1156b" bpmnElement="Id_d121eb37-6c0a-4d9f-9665-404dc5f93c7d">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="3109" y="372" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="3125" y="372" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <BPMNLabel id="DiagramElement_17529896-cbfd-44b0-a46f-8e11b75d0436" labelStyle="Style_b09a2d70-794f-4cea-962c-21eea2a9e4a0">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNEdge>
      <BPMNEdge id="DiagramElement_921031d8-370f-4a5d-afdd-0062dc618fb6" bpmnElement="Id_1f85f817-cd7d-4518-95d4-07bf2b1cf9ca">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="3215" y="372" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="3242" y="372" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <BPMNLabel id="DiagramElement_d7c045f7-42e4-49cd-af0d-4033fff0580e" labelStyle="Style_14c5407f-144a-44cc-b58a-d1db2e8eb8f7">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="3228" y="372" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNEdge>
      <BPMNEdge id="DiagramElement_311c6171-9773-4a0f-bcb1-4ee32794c590" bpmnElement="Id_dc868fd6-2574-44eb-bbb7-b5f6eea21964">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="2470" y="372" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="2508" y="372" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <BPMNLabel id="DiagramElement_7975783c-4313-4e4e-8a1d-1cb445ee3cac" labelStyle="Style_a09e594d-8676-4437-aa2d-9aeb4850ad4d">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNEdge>
      <BPMNEdge id="DiagramElement_194167d1-b5eb-4ad4-bce6-f120095cef3e" bpmnElement="Id_73d1b55f-8f37-4121-b362-f7b4384c23d0">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="1402" y="289" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="1428" y="289" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <BPMNLabel id="DiagramElement_f604a91c-62f8-4135-ab47-ad6847cc5e73" labelStyle="Style_35b64f7e-628e-4a0a-8540-55f6386a7b96">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNEdge>
      <BPMNEdge id="DiagramElement_90ab62a5-8918-4b71-a755-8d67785ca321" bpmnElement="Id_5d75dea1-c47a-46f3-8408-c6e40c95d661">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="1518" y="289" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="1553" y="289" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <BPMNLabel id="DiagramElement_82830a42-e6b6-40d4-9efa-a90949c39973" labelStyle="Style_543eda0f-76e6-4adc-a057-a9d09800b744">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNEdge>
      <BPMNEdge id="DiagramElement_2d3ff629-e005-4557-83dd-df80135eefff" bpmnElement="Id_a4d7c82b-340f-4213-96f7-3f1755a0fd99">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="2215" y="631" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="2260" y="631" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <BPMNLabel id="DiagramElement_8ea6aba5-5985-4a49-b0e2-912764c356c3" labelStyle="Style_092ebdd4-e2cf-44bb-ad03-7a83446439d5">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNEdge>
      <BPMNEdge id="DiagramElement_06bc5ee8-f33a-4e78-baa9-9fd0aaacbc50" bpmnElement="Id_1459714a-ebae-41a4-aa05-6b945ee1898a">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="2300" y="631" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="2336" y="631" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="2336" y="392" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <BPMNLabel id="DiagramElement_3b24d646-3711-4c9d-acaf-a4f6b9abe789" labelStyle="Style_1f935ca3-7a4b-4d48-b16c-b6d9f7241967">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNEdge>
      <BPMNEdge id="DiagramElement_f703dd21-6737-479c-97f1-4078dc334329" bpmnElement="Id_0ab79072-5200-4991-9f68-2566f1a167f7">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="2280" y="611" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="2280" y="271" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="2707" y="271" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <BPMNLabel id="DiagramElement_818e8cbd-f455-42b2-be02-90dc125d6ebc" labelStyle="Style_06a31a68-c4ca-424f-a2f8-1e60de747543">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNEdge>
      <BPMNEdge id="DiagramElement_881c59fb-6216-491b-9baf-62755587ef14" bpmnElement="Id_eb3f7cbd-a34b-4b31-9423-b683d5de601e">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="2799" y="271" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="2841" y="271" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <BPMNLabel id="DiagramElement_e0a91fbf-2172-408e-954a-4fa8fdd539d3" labelStyle="Style_b0a95171-026a-4ce1-9fc0-a4af8a7122d1">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNEdge>
      <BPMNEdge id="DiagramElement_cf7a85bb-8459-4267-8b4e-0c4d62af3471" bpmnElement="Id_a2d56ed9-2eb0-4a9a-97b9-f30dd59657d2">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="2356" y="372" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="2430" y="372" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <BPMNLabel id="DiagramElement_2b0f3cdc-88b4-407a-ae6e-0f2a7ac5d91f" labelStyle="Style_34fea871-2d2a-4553-8aff-9e6d19c61cb0">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNEdge>
    </BPMNPlane>
    <BPMNLabelStyle id="Style_7a9590dd-77f0-4796-b3cc-7fb37c652aa0">
      <Font name="Segoe UI" size="10" isBold="true" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_ad09e303-fc76-41a0-94e7-d44f516f3b88">
      <Font name="Segoe UI" size="10" isBold="true" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_67f78ffe-95ea-4f73-9f08-c30d7a9248f0">
      <Font name="Segoe UI" size="10" isBold="true" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_d3f9304e-90ff-49a1-9984-9688962aad47">
      <Font name="Segoe UI" size="10" isBold="true" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_509b4b40-32f3-4ada-889e-d124932c134b">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_d0634995-5cff-488f-a31a-556bd4c5fc7a">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_6d02a2f1-f448-4ae2-91e7-1973ce0312b2">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_59f6864c-f1df-411d-b094-cbfd5bbcfba2">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_e9ef4fa1-b116-4925-bc65-432d7c5260e4">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_9fb761a2-0f4d-4acf-9e24-cae081379a4c">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_747bb493-ce98-4c07-ac23-12bd504f87f1">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_581cbe66-b6f0-487e-928c-aedb81af4c03">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_b3b2e651-4c1c-4d5b-8a0e-d973d2abb3e3">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_65a8e846-10ec-44e9-a1e3-e2f9219c5000">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_fab1b47b-7ed3-4e23-a4ee-f11c03ed75b0">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_71d95876-5f10-496f-a9c6-1405e4382cce">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_d0de6f16-a89e-45e9-ae36-960d04648dd1">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_ed040bc9-3e3f-4a7d-8328-b0bd4576d202">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_2e0ec276-b436-420c-9db4-09d726b47ee0">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_fe23c401-a412-4669-9262-a8a35b70aa0b">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_556cf876-da28-41be-83d8-1ddd9f0e3ef7">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_4927733e-877f-4815-bb54-473be5c47d59">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_1ac9029a-3ccc-43cd-a3d4-e6fd23561dc8">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_8c1339d3-c693-4a0e-a198-f03481d10349">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_8b384e2c-0a1d-4942-a822-46bac38fcd65">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_7562e26f-99f9-46e6-99e5-e245314af88f">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_443e5d5b-fecc-4809-8ed9-2fbac34ef5ce">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_4a3804fa-8737-4e71-b96b-2bdfd3552124">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_6648017a-28b0-4b86-aceb-27bca020e2cd">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_156e1f50-eceb-480b-8938-8fa4c0f51520">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_06ecbf2e-eeaf-494f-b3a8-cb4c3f8ceed6">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_4dfcbed6-f634-4209-82e4-4dbdb14e17b0">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_02cffa6f-e57f-47eb-952b-611972b59eb7">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_724aafdd-d4a9-486f-8b32-7746f7404469">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_064b5bcf-0eaf-4898-8ae5-695b68c85f78">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_c5784047-3072-44e6-b0a1-9810c4a059b0">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_158749ad-34ab-4ceb-b040-c431cf2ed034">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_5a295b51-496c-4313-99f2-cad8a327bf22">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_8108f5c8-5158-4c13-a2c6-6f9edebbb363">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_eb5ec7e0-38be-4318-a724-dd9996d217e5">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_743a9769-5a55-457e-a24f-9d15a17ef968">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_5905725f-db89-4a04-80e9-6f2d53738990">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_7f2c9f22-a166-41a1-b0d5-35817e1b3ee3">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_0c0e4684-3d6b-4dce-afeb-08cc57941ef0">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_1152afa7-207c-4182-b6f3-f345579da624">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_8a449141-dc2f-4870-a8d0-8896624bccbb">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_aab4900c-87d6-45e4-8039-13f734864b65">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_d423c956-7dc0-48fb-b882-b5d43a45713e">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_78c208cf-8607-4b05-9e1f-5a4eed1723ff">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_59d1c9ce-cb7c-4e54-b9ba-16b394ea7642">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_675431e2-c0e3-4167-98bc-456c6ca7141f">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_10e77ba5-8e65-4696-86dc-7657c01d2386">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_8d44cab8-fb4f-407a-87db-5d0f30208242">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_a16a3124-99c3-4b77-93d2-d2f2d4d2e11f">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_47686099-0bfd-4413-b739-a0463d9effc6">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_078df4b8-0cc9-41dc-b05a-d79158ee455a">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_8de1f507-8f8a-4342-9df7-3e2e67bd16a8">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_c2531e2c-5212-4fba-839e-582df0eb1cac">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_bb1d6cd4-3df7-45a5-9e4e-fdfa09f06455">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_bc2a13f9-48a6-4d1a-9ac3-6da8e8e633e6">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_e8887a5f-32ec-4e8a-8ecc-39f9ad94a54f">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_bc323e1b-6b08-4d18-a0cf-82da6834f718">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_b57e63c4-25d9-4f7b-b484-99a67d2f07ab">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_a99157a5-6e22-498d-9fb0-07f99eca3440">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_21432399-e861-4026-b57c-f496a7f96132">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_7acf6884-892e-401a-9ee5-504c07bc6669">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_e91f83fd-a469-4b16-88c6-52742a344ae0">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_fe9ba5de-5a57-456f-a4ec-4007bb546cf5">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_a220d343-99a8-4649-9d37-cb5b86079e9b">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_f04fa350-e948-4159-9983-8880601d1666">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_8761bb27-c656-464d-a9ec-9fb72a41d96f">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_4540d70f-0404-4e2f-b33f-9b587b3c8c3c">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_e230b1e9-7d38-4764-8974-f61f471ff8e6">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_061d77dc-7577-445f-80a9-4dffeebf5089">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_57e1c1e8-c2f4-41ad-8acd-201468c8c0c8">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_46ed293f-58a0-4f17-ad4c-872c457a18b7">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_66a8e46d-5b15-4f32-a567-22394b7964ae">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_12ee8d2a-2123-4a54-86a6-54e3425bd5e6">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_052b8b5b-1fc9-4b49-90bc-266b4a96f338">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_37e754f0-5bb2-44c4-950f-ea87609ce805">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_9b589416-ce35-477f-9644-41ebec0832b7">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_9b7f66b9-ddb3-44af-8da9-5315a555562f">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_d6945b6e-84e7-48ef-a634-ecbb1d53c5a9">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_593444fe-3368-46c3-9ee2-be41a7718522">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_21ddf63c-73a2-4748-b089-aa6fa86bf094">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_db85211f-9e3c-439a-bfd8-03140b53aaa0">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_1b28b64a-7703-43e8-b29c-32a3f61857f7">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_b09a2d70-794f-4cea-962c-21eea2a9e4a0">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_14c5407f-144a-44cc-b58a-d1db2e8eb8f7">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_a09e594d-8676-4437-aa2d-9aeb4850ad4d">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_35b64f7e-628e-4a0a-8540-55f6386a7b96">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_543eda0f-76e6-4adc-a057-a9d09800b744">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_092ebdd4-e2cf-44bb-ad03-7a83446439d5">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_1f935ca3-7a4b-4d48-b16c-b6d9f7241967">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_06a31a68-c4ca-424f-a2f8-1e60de747543">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_b0a95171-026a-4ce1-9fc0-a4af8a7122d1">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_34fea871-2d2a-4553-8aff-9e6d19c61cb0">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
  </BPMNDiagram>
</definitions>'
]

{ #category : #'as yet unclassified' }
BPMN20SampleBizagi class >> vehicleInsurancePolicyUnderwriting_Inspection [
	^ '<?xml version="1.0"?>
<definitions xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" id="_2015032605195" targetNamespace="http://www.bizagi.com/definitions/_2015032605195" xmlns="http://www.omg.org/spec/BPMN/20100524/MODEL">
  <resource id="Main_Agent" name="Main Agent">
    <documentation>Agent with the capacity to approve or reject the vehicle for different reasons, someone who depends directly on the insurance company. </documentation>
  </resource>
  <resource id="Inspection_Outsourcing_or_Workshop" name="Inspection Outsourcing or Workshop">
    <documentation>Are official workshops of the insurance company that are in charge of performing inspections on the vehicle to be insured.</documentation>
  </resource>
  <resource id="Agent_or_Intermediary" name="Agent or Intermediary">
    <documentation>Is the individual or company that, being connected to an insurance company by means of a contract of insurance agency, is dedicated to the negotiation or production of insurance and to the conservation of the subsequent accounts receivable, by means of necessary commercial and administrative tasks for obtaining insurance contracts that are part of it and their current maintenance.</documentation>
  </resource>
  <process id="Id_bf80b682-b64c-4453-8c58-b7e3c0159385" name="Proceso principal">
    <documentation />
    <laneSet id="Id_ff9d686b-f561-4e63-8454-4ce2d3cb96d4" />
  </process>
  <process id="Id_5235e604-469b-425f-b5a5-06df8a413956" name="Inspection">
    <documentation />
    <laneSet id="Id_727db6b0-94c6-4188-861d-7e4f0225a419">
      <lane id="Id_a0ba8f53-b3bd-40b9-8600-f065131fde59" name="Inspection Outsourcing /Workshpo">
        <documentation />
        <childLaneSet id="Id_53a12dec-003f-4375-98e5-bfd5b3033f07" />
      </lane>
      <lane id="Id_b3d7da62-b8a1-4021-a74e-6bc9390537df" name="Main Agent">
        <documentation />
        <childLaneSet id="Id_0bbbc46b-f5a3-4e57-a99d-1519ce708fd3" />
      </lane>
    </laneSet>
    <startEvent id="Id_a7222137-8438-4864-a8d7-daf619bdbf60" name="Inicio">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="#E6FF97" />
            <bizagi:BizagiProperty name="borderColor" value="#62A716" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <outgoing>Id_7d752b4b-6b8f-4a64-95ee-e24559b7bbb9</outgoing>
    </startEvent>
    <task id="Id_42d529aa-c902-4e11-994c-c8946701abef" name="Enter the results of the Inspection">
      <documentation>&lt;p&gt;&lt;span style="font-family:Segoe UI;font-size:8pt;"&gt;In this activity, the final result of the inspection should be recorded. &lt;/span&gt;&lt;/p&gt;</documentation>
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="#ECEFFF" />
            <bizagi:BizagiProperty name="borderColor" value="#03689A" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <incoming>Id_7d752b4b-6b8f-4a64-95ee-e24559b7bbb9</incoming>
      <outgoing>Id_2456e6da-6e7a-4f15-934c-a080ea0c68c5</outgoing>
      <resourceRole id="Id_bd49d37d-86fe-46ca-ae17-74c1b7e90411">
        <q1:resourceRef xmlns="" xmlns:q1="http://www.omg.org/spec/BPMN/20100524/MODEL">Inspection_Outsourcing_or_Workshop</q1:resourceRef>
      </resourceRole>
    </task>
    <task id="Id_414b366f-5673-4cf8-b605-82369466c305" name="Consult the results of the Inspection">
      <documentation>&lt;p&gt;&lt;span style="font-family:Segoe UI;font-size:8pt;"&gt;Here a consultation is made so that a decision of the result of the inspection should be made by an expert assigned by the insurance agency. When the final result of the inspection is not clear for the entity that performed the inspection, a consultation can be made to the experts assigned by the insurance agency, who will decide what to do with the vehicle, whether to re-quote, re-process the risks, both, accept or reject the vehicle.&lt;/span&gt;&lt;/p&gt;</documentation>
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="#ECEFFF" />
            <bizagi:BizagiProperty name="borderColor" value="#03689A" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <incoming>Id_5706bf43-d58f-4d4a-a181-816f64663f46</incoming>
      <outgoing>Id_8a130ea3-08a1-42d9-8622-0d7629a6bdeb</outgoing>
      <resourceRole id="Id_d0c627f4-91a0-4c81-b833-0f3f35d40a73">
        <q2:resourceRef xmlns="" xmlns:q2="http://www.omg.org/spec/BPMN/20100524/MODEL">Main_Agent</q2:resourceRef>
      </resourceRole>
    </task>
    <serviceTask id="Id_ae25de19-245e-4906-9f73-1e64fdb93086" name="Re-process Risks">
      <documentation>Send the details of the vehicle and the policy holder, return a result of negative or positive risk and, in the case of negative, a reason for rejection. 
</documentation>
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="#ECEFFF" />
            <bizagi:BizagiProperty name="borderColor" value="#03689A" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <incoming>Id_0ae1fc7a-6c72-46fb-9f84-64fe04a548f1</incoming>
      <outgoing>Id_bf1e2d57-faed-44b9-9734-9cd9516ea280</outgoing>
    </serviceTask>
    <serviceTask id="Id_a538d333-7fc4-45ab-9e5e-cccc110b4276" name="Re-quote">
      <documentation>In this activity, the insurance is re-quoted with the information obtained from the vehicle inspection, whereby the necessary information to make the quotation, (details of vehicle and insured, features of the vehicle, protection, deductibles and selected product) is sent to the system of the insurance company that prepares the quotation.  This interface returns the amount of the premium to be paid, as well as other relevant data.</documentation>
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="#ECEFFF" />
            <bizagi:BizagiProperty name="borderColor" value="#03689A" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <incoming>Id_4a03002c-0f30-49d6-87b1-e4b410652d22</incoming>
      <outgoing>Id_451eecf2-c47c-48d5-afad-22d6e5163173</outgoing>
    </serviceTask>
    <task id="Id_68248f32-191a-41dc-9cf7-8f9adac5a443" name="Verify Quotation Results">
      <documentation>&lt;p&gt;&lt;span style="font-family:Segoe UI;font-size:8pt;"&gt;When it is necessary to re-quote as a result of the inspection, the agent who is making the business directly with the customer should be consulted so that he, together with the customer, can decide if the new amount for the premium, is acceptable to them both.  Should the amount of the premium have increased, the customer and agent should be consulted to check that their expectations are satisfied. The re-quotation can be due to differences in the original value of the vehicle and the value following inspection, as well as accessories that were not mentioned in the original quotation.&lt;/span&gt;&lt;/p&gt;</documentation>
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="#ECEFFF" />
            <bizagi:BizagiProperty name="borderColor" value="#03689A" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <incoming>Id_464e5b63-63f7-4e38-80cb-e722487b9686</incoming>
      <incoming>Id_f5cde2f8-386d-49d4-9eb2-ea7e1b813413</incoming>
      <incoming>Id_679f0e6a-6d2e-4b70-805e-0a421a5bac2b</incoming>
      <outgoing>Id_2b7d862b-85f4-4854-8920-6654a93b5586</outgoing>
      <resourceRole id="Id_7e166103-89a3-4f2b-be89-eff96c4abb51">
        <q3:resourceRef xmlns="" xmlns:q3="http://www.omg.org/spec/BPMN/20100524/MODEL">Inspection_Outsourcing_or_Workshop</q3:resourceRef>
      </resourceRole>
    </task>
    <task id="Id_8a4799cc-ae7a-4e29-8db0-527c4eadb042" name="Verify Risk Analysis Results">
      <documentation>&lt;p&gt;&lt;span style="font-family:Segoe UI;font-size:8pt;"&gt;When the final results of the inspection requires a re-process of risks, the results of the risk analysis can be consulted, in this case an activity is generated whereby the vehicle can be authorized or rejected. There may be a level of risk that does not prevent the vehicle being insured, but nonetheless requires an analysis by the insurance experts.&lt;/span&gt;&lt;/p&gt;</documentation>
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="#ECEFFF" />
            <bizagi:BizagiProperty name="borderColor" value="#03689A" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <incoming>Id_979ac26a-df71-4944-ac78-2a919d247cdf</incoming>
      <outgoing>Id_0d8e3c5a-4655-42e5-bf78-a8512a4ef7c5</outgoing>
      <resourceRole id="Id_daebe835-a5e2-48f1-88fb-2cd5547f3c4b">
        <q4:resourceRef xmlns="" xmlns:q4="http://www.omg.org/spec/BPMN/20100524/MODEL">Main_Agent</q4:resourceRef>
      </resourceRole>
    </task>
    <exclusiveGateway id="Id_c0d47974-8d9e-4c49-a310-b9edb204a64d" name="Verification Required?" gatewayDirection="Diverging" default="Id_bd3e1b09-4c5c-4ee0-a57c-1feffa2111d7">
      <documentation>This exclusive gateway determines whether the result of the inspection should be reviewed by a higher authority to determine what action is to be taken. If a review is required, an activity is generated for the main agent. If a review is not required, it continues with the decision that evaluated the action to be taken as a result of the inspection.
</documentation>
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="#FFFFCC" />
            <bizagi:BizagiProperty name="borderColor" value="#A6A61D" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <incoming>Id_2456e6da-6e7a-4f15-934c-a080ea0c68c5</incoming>
      <outgoing>Id_bd3e1b09-4c5c-4ee0-a57c-1feffa2111d7</outgoing>
      <outgoing>Id_5706bf43-d58f-4d4a-a181-816f64663f46</outgoing>
    </exclusiveGateway>
    <exclusiveGateway id="Id_d11615b4-9e3e-413d-8c93-65913c3e4ef1" name="Risks Approved and Re-quotation" gatewayDirection="Diverging" default="Id_2bfa6f6e-eb3c-4e06-9e51-fa32fea3348a">
      <documentation>&lt;p&gt;&lt;span style="font-family:Segoe UI;font-size:8pt;"&gt;This exclusive gateway determines the path taken by the process once Verification of the Risk Analysis result has been performed. In this case, the process can take one of the two following paths:   &lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style="font-family:Segoe UI;font-size:8pt;"&gt;-&lt;/span&gt;&lt;span style="font-family:Segoe UI;font-size:8pt;"&gt;To go to the Accept or Reject Quotation activity: In the case of Risks Approved and a re-quotation made, the process continues with the Accept or Reject Quotation activity where the user can verify the result of the re-quotation.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style="font-family:Segoe UI;font-size:8pt;"&gt;-&lt;/span&gt;&lt;span style="font-family:Segoe UI;font-size:8pt;"&gt;- End of the inspection sub-process in the following cases: &lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style="font-family:Segoe UI;font-size:8pt;"&gt;1.&lt;/span&gt;&lt;span style="font-family:Segoe UI;font-size:8pt;"&gt;In case of rejection, the inspection sub-process is closed, the rejection is notified and the case is finalized in the parent process. &lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style="font-family:Segoe UI;font-size:8pt;"&gt;2.&lt;/span&gt;&lt;span style="font-family:Segoe UI;font-size:8pt;"&gt;In the case of approval of the risks and that it was not re-quoted, the inspection sub-process is finalized and continues with the policy issue in the parent process.&lt;/span&gt;&lt;/p&gt;</documentation>
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="#FFFFCC" />
            <bizagi:BizagiProperty name="borderColor" value="#A6A61D" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <incoming>Id_0d8e3c5a-4655-42e5-bf78-a8512a4ef7c5</incoming>
      <outgoing>Id_2bfa6f6e-eb3c-4e06-9e51-fa32fea3348a</outgoing>
      <outgoing>Id_679f0e6a-6d2e-4b70-805e-0a421a5bac2b</outgoing>
    </exclusiveGateway>
    <exclusiveGateway id="Id_2a5dd387-24dd-4a0b-80aa-036813d85f30" name="Re-process Risks?" gatewayDirection="Diverging">
      <documentation>This exclusive gateway determines if it is required to re-process the risk analysis depending on the result of the inspection. 
This exclusive gateway determines if it is required to re-process the risk analysis depending on the result of the inspection.  
-	If the process requires the risk analysis to be re-processed, a risk analysis is performed by means of the interface, with the new information of the vehicle.    
-	If it is not necessary to re-process the risks, it will go to the Accept or Reject Quotation activity where the user can verify the result of the re-quotation.
 </documentation>
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="#FFFFCC" />
            <bizagi:BizagiProperty name="borderColor" value="#A6A61D" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <incoming>Id_e92b781e-6e5b-4bba-9232-15538c3eadcd</incoming>
      <outgoing>Id_464e5b63-63f7-4e38-80cb-e722487b9686</outgoing>
      <outgoing>Id_0ae1fc7a-6c72-46fb-9f84-64fe04a548f1</outgoing>
    </exclusiveGateway>
    <exclusiveGateway id="Id_caa2aab0-aa1a-4581-8026-87857f9d9ff9" name="Result?" gatewayDirection="Diverging">
      <documentation>This exclusive gateway determines the path taken depending on the result produced by the Risk Verification interface. The process can take one of the three following paths:
-	Risks Approved and quotation made, continue the process with the Accept or Reject Quotation activity where the user can verify the result of the re-quotation. 
-	End the Parent sub-process when: 
1.	Risks rejected, the inspection sub-process is finalized and it continues with the parent process, where notification is sent and the process ends. 
2.	Risks Approved without re-quotation, the inspection sub-process is finalized and the process continues with the policy issue in the parent process. 
-	Approval required for risks whereby an approval task is generated for the main agent who should analyze the situation and decide whether the risks are approved or rejected.
</documentation>
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="#FFFFCC" />
            <bizagi:BizagiProperty name="borderColor" value="#A6A61D" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <incoming>Id_bf1e2d57-faed-44b9-9734-9cd9516ea280</incoming>
      <outgoing>Id_979ac26a-df71-4944-ac78-2a919d247cdf</outgoing>
      <outgoing>Id_236703d9-de54-41b1-8be7-c382dff6b255</outgoing>
      <outgoing>Id_f5cde2f8-386d-49d4-9eb2-ea7e1b813413</outgoing>
    </exclusiveGateway>
    <exclusiveGateway id="Id_ffbb86c4-5900-4d79-aa05-e1253e351b84" name="Results of the Inspection" gatewayDirection="Diverging">
      <documentation>This exclusive gateway determines the path taken depending on the result produced by the Inspection. 
The process can take one of the three following paths: 
-	End the sub-process when:  
1.	Inspection Approved, the inspection sub-process is finalized to continue with the policy issue in the parent process.  
2.	Inspection Rejected, the inspection sub-process is finalized to continue with the notification and closure of the case within the parent process.  
-	Re-process Risks, whereby a risk analysis is performed by means of the interface with the new information of the vehicle.    
-	Re-quote, whereby a new quotation is made with the new information about the vehicle.  
</documentation>
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="#FFFFCC" />
            <bizagi:BizagiProperty name="borderColor" value="#A6A61D" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <incoming>Id_70e41eba-3fae-4ab8-b443-31e1fcddb854</incoming>
      <outgoing>Id_47b5f251-805b-4383-874c-293165584837</outgoing>
      <outgoing>Id_d83ac65d-52fb-4fd3-a744-f181b4d089cd</outgoing>
      <outgoing>Id_4a03002c-0f30-49d6-87b1-e4b410652d22</outgoing>
    </exclusiveGateway>
    <endEvent id="Id_b470f38b-fcc0-4b7b-a32d-ad094456f946" name="">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="#EEAAAA" />
            <bizagi:BizagiProperty name="borderColor" value="#990000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <incoming>Id_d83ac65d-52fb-4fd3-a744-f181b4d089cd</incoming>
    </endEvent>
    <endEvent id="Id_bcf64d8e-e9f6-4189-ad79-d1adb6bece33" name="">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="#EEAAAA" />
            <bizagi:BizagiProperty name="borderColor" value="#990000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <incoming>Id_236703d9-de54-41b1-8be7-c382dff6b255</incoming>
    </endEvent>
    <endEvent id="Id_90417e43-ebe1-4eec-be76-b337f60de630" name="">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="#EEAAAA" />
            <bizagi:BizagiProperty name="borderColor" value="#990000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <incoming>Id_2b7d862b-85f4-4854-8920-6654a93b5586</incoming>
      <incoming>Id_2bfa6f6e-eb3c-4e06-9e51-fa32fea3348a</incoming>
    </endEvent>
    <exclusiveGateway id="Id_ca4b0f12-7557-444b-8c94-793aa651d068" name="Exclusive Convergence Gateway  1" gatewayDirection="Converging">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="#FFFFCC" />
            <bizagi:BizagiProperty name="borderColor" value="#A6A61D" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <incoming>Id_8a130ea3-08a1-42d9-8622-0d7629a6bdeb</incoming>
      <incoming>Id_bd3e1b09-4c5c-4ee0-a57c-1feffa2111d7</incoming>
      <outgoing>Id_70e41eba-3fae-4ab8-b443-31e1fcddb854</outgoing>
    </exclusiveGateway>
    <exclusiveGateway id="Id_05705bda-7c26-4b4a-a302-9b2b0a1a9ae8" name="Exclusive Convergence Gatewa 2" gatewayDirection="Converging">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="#FFFFCC" />
            <bizagi:BizagiProperty name="borderColor" value="#A6A61D" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <incoming>Id_47b5f251-805b-4383-874c-293165584837</incoming>
      <incoming>Id_451eecf2-c47c-48d5-afad-22d6e5163173</incoming>
      <outgoing>Id_e92b781e-6e5b-4bba-9232-15538c3eadcd</outgoing>
    </exclusiveGateway>
    <sequenceFlow id="Id_2b7d862b-85f4-4854-8920-6654a93b5586" name="" sourceRef="Id_68248f32-191a-41dc-9cf7-8f9adac5a443" targetRef="Id_90417e43-ebe1-4eec-be76-b337f60de630">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="White" />
            <bizagi:BizagiProperty name="borderColor" value="#000000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
    </sequenceFlow>
    <sequenceFlow id="Id_47b5f251-805b-4383-874c-293165584837" name="Only Risk" sourceRef="Id_ffbb86c4-5900-4d79-aa05-e1253e351b84" targetRef="Id_05705bda-7c26-4b4a-a302-9b2b0a1a9ae8">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="White" />
            <bizagi:BizagiProperty name="borderColor" value="#000000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <conditionExpression id="Expression_1021b984-2843-4b8e-83d6-305d8f3f063f">If the process requires only the risk analysis to be re-processed.</conditionExpression>
    </sequenceFlow>
    <sequenceFlow id="Id_979ac26a-df71-4944-ac78-2a919d247cdf" name="Risk &#xA;Approval &#xA;Required" sourceRef="Id_caa2aab0-aa1a-4581-8026-87857f9d9ff9" targetRef="Id_8a4799cc-ae7a-4e29-8db0-527c4eadb042">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="White" />
            <bizagi:BizagiProperty name="borderColor" value="#000000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <conditionExpression id="Expression_7d9ce3f8-cfbe-4607-a4fa-9ff547293a27">Approval required for risks </conditionExpression>
    </sequenceFlow>
    <sequenceFlow id="Id_236703d9-de54-41b1-8be7-c382dff6b255" name="Risks Approved or Rejected" sourceRef="Id_caa2aab0-aa1a-4581-8026-87857f9d9ff9" targetRef="Id_bcf64d8e-e9f6-4189-ad79-d1adb6bece33">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="White" />
            <bizagi:BizagiProperty name="borderColor" value="#000000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <conditionExpression id="Expression_733ffab1-d1a5-412b-8cde-ab891d3e41e2">If the risks was approved or rejected</conditionExpression>
    </sequenceFlow>
    <sequenceFlow id="Id_d83ac65d-52fb-4fd3-a744-f181b4d089cd" name="Approved or Rejected" sourceRef="Id_ffbb86c4-5900-4d79-aa05-e1253e351b84" targetRef="Id_b470f38b-fcc0-4b7b-a32d-ad094456f946">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="White" />
            <bizagi:BizagiProperty name="borderColor" value="#000000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <conditionExpression id="Expression_db0adea8-f20a-4340-b4b2-888659d3b573"> If the inspection was approved or rejected</conditionExpression>
    </sequenceFlow>
    <sequenceFlow id="Id_8a130ea3-08a1-42d9-8622-0d7629a6bdeb" name="" sourceRef="Id_414b366f-5673-4cf8-b605-82369466c305" targetRef="Id_ca4b0f12-7557-444b-8c94-793aa651d068">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="White" />
            <bizagi:BizagiProperty name="borderColor" value="#000000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
    </sequenceFlow>
    <sequenceFlow id="Id_464e5b63-63f7-4e38-80cb-e722487b9686" name="No" sourceRef="Id_2a5dd387-24dd-4a0b-80aa-036813d85f30" targetRef="Id_68248f32-191a-41dc-9cf7-8f9adac5a443">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="White" />
            <bizagi:BizagiProperty name="borderColor" value="#000000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <conditionExpression id="Expression_39c30898-ba05-41ea-87f2-beefb2685d4b">If it is not necessary to re-process the risks</conditionExpression>
    </sequenceFlow>
    <sequenceFlow id="Id_2bfa6f6e-eb3c-4e06-9e51-fa32fea3348a" name="No" sourceRef="Id_d11615b4-9e3e-413d-8c93-65913c3e4ef1" targetRef="Id_90417e43-ebe1-4eec-be76-b337f60de630">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="White" />
            <bizagi:BizagiProperty name="borderColor" value="#000000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
    </sequenceFlow>
    <sequenceFlow id="Id_f5cde2f8-386d-49d4-9eb2-ea7e1b813413" name="&#xA;&#xA;Risks Approved &#xA;and a re-quotation made" sourceRef="Id_caa2aab0-aa1a-4581-8026-87857f9d9ff9" targetRef="Id_68248f32-191a-41dc-9cf7-8f9adac5a443">
      <documentation>&lt;p&gt;&amp;nbsp;&lt;/p&gt;</documentation>
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="White" />
            <bizagi:BizagiProperty name="borderColor" value="#000000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <conditionExpression id="Expression_514ee2c8-2d40-477e-ac2a-ab63a634ab61">Risks Approved and quotation made</conditionExpression>
    </sequenceFlow>
    <sequenceFlow id="Id_4a03002c-0f30-49d6-87b1-e4b410652d22" name="New Quote /&#xA; Risks and&#xA; New Quote" sourceRef="Id_ffbb86c4-5900-4d79-aa05-e1253e351b84" targetRef="Id_a538d333-7fc4-45ab-9e5e-cccc110b4276">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="White" />
            <bizagi:BizagiProperty name="borderColor" value="#000000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <conditionExpression id="Expression_12017db7-a9fb-4cea-bc92-d7f7bc38ec82">If the process requires the risk analysis to be re-processed or Re-quote.</conditionExpression>
    </sequenceFlow>
    <sequenceFlow id="Id_451eecf2-c47c-48d5-afad-22d6e5163173" name="" sourceRef="Id_a538d333-7fc4-45ab-9e5e-cccc110b4276" targetRef="Id_05705bda-7c26-4b4a-a302-9b2b0a1a9ae8">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="White" />
            <bizagi:BizagiProperty name="borderColor" value="#000000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
    </sequenceFlow>
    <sequenceFlow id="Id_0d8e3c5a-4655-42e5-bf78-a8512a4ef7c5" name="" sourceRef="Id_8a4799cc-ae7a-4e29-8db0-527c4eadb042" targetRef="Id_d11615b4-9e3e-413d-8c93-65913c3e4ef1">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="White" />
            <bizagi:BizagiProperty name="borderColor" value="#000000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
    </sequenceFlow>
    <sequenceFlow id="Id_2456e6da-6e7a-4f15-934c-a080ea0c68c5" name="" sourceRef="Id_42d529aa-c902-4e11-994c-c8946701abef" targetRef="Id_c0d47974-8d9e-4c49-a310-b9edb204a64d">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="White" />
            <bizagi:BizagiProperty name="borderColor" value="#000000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
    </sequenceFlow>
    <sequenceFlow id="Id_bf1e2d57-faed-44b9-9734-9cd9516ea280" name="" sourceRef="Id_ae25de19-245e-4906-9f73-1e64fdb93086" targetRef="Id_caa2aab0-aa1a-4581-8026-87857f9d9ff9">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="White" />
            <bizagi:BizagiProperty name="borderColor" value="#000000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
    </sequenceFlow>
    <sequenceFlow id="Id_0ae1fc7a-6c72-46fb-9f84-64fe04a548f1" name="Yes" sourceRef="Id_2a5dd387-24dd-4a0b-80aa-036813d85f30" targetRef="Id_ae25de19-245e-4906-9f73-1e64fdb93086">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="White" />
            <bizagi:BizagiProperty name="borderColor" value="#000000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <conditionExpression id="Expression_c5fef9ac-20bd-47d2-98c8-1d7b323d55e2">If the process requires the risk analysis to be re-processed.</conditionExpression>
    </sequenceFlow>
    <sequenceFlow id="Id_bd3e1b09-4c5c-4ee0-a57c-1feffa2111d7" name="No" sourceRef="Id_c0d47974-8d9e-4c49-a310-b9edb204a64d" targetRef="Id_ca4b0f12-7557-444b-8c94-793aa651d068">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="White" />
            <bizagi:BizagiProperty name="borderColor" value="#000000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
    </sequenceFlow>
    <sequenceFlow id="Id_5706bf43-d58f-4d4a-a181-816f64663f46" name="Yes" sourceRef="Id_c0d47974-8d9e-4c49-a310-b9edb204a64d" targetRef="Id_414b366f-5673-4cf8-b605-82369466c305">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="White" />
            <bizagi:BizagiProperty name="borderColor" value="#000000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <conditionExpression id="Expression_374b5146-f13e-4ef4-a21a-b6022488b175">Verify if the result of the inspection should be reviewed by a higher authority.</conditionExpression>
    </sequenceFlow>
    <sequenceFlow id="Id_679f0e6a-6d2e-4b70-805e-0a421a5bac2b" name="Yes" sourceRef="Id_d11615b4-9e3e-413d-8c93-65913c3e4ef1" targetRef="Id_68248f32-191a-41dc-9cf7-8f9adac5a443">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="White" />
            <bizagi:BizagiProperty name="borderColor" value="#000000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <conditionExpression id="Expression_46842500-eab6-4932-b324-b30a6b4b2885">Riesgos aprobados y se re cotizó.</conditionExpression>
    </sequenceFlow>
    <sequenceFlow id="Id_7d752b4b-6b8f-4a64-95ee-e24559b7bbb9" name="" sourceRef="Id_a7222137-8438-4864-a8d7-daf619bdbf60" targetRef="Id_42d529aa-c902-4e11-994c-c8946701abef">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="White" />
            <bizagi:BizagiProperty name="borderColor" value="#000000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
    </sequenceFlow>
    <sequenceFlow id="Id_70e41eba-3fae-4ab8-b443-31e1fcddb854" name="" sourceRef="Id_ca4b0f12-7557-444b-8c94-793aa651d068" targetRef="Id_ffbb86c4-5900-4d79-aa05-e1253e351b84">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="White" />
            <bizagi:BizagiProperty name="borderColor" value="#000000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <conditionExpression id="Expression_20b57a51-369c-406d-a501-dffbd252ebbc" />
    </sequenceFlow>
    <sequenceFlow id="Id_e92b781e-6e5b-4bba-9232-15538c3eadcd" name="" sourceRef="Id_05705bda-7c26-4b4a-a302-9b2b0a1a9ae8" targetRef="Id_2a5dd387-24dd-4a0b-80aa-036813d85f30">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="White" />
            <bizagi:BizagiProperty name="borderColor" value="#000000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
      <conditionExpression id="Expression_7cb862d1-c86d-45b6-bde4-504f48012269" />
    </sequenceFlow>
  </process>
  <collaboration id="Id_82fae773-3b6b-4c0f-be18-eaff5bec4dd6" name="Inspection">
    <documentation />
    <participant id="Id_78879a1f-0079-4715-8ee5-6f3c97727f3a" name="Proceso principal" processRef="Id_bf80b682-b64c-4453-8c58-b7e3c0159385">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="#FFFFFF" />
            <bizagi:BizagiProperty name="borderColor" value="#000000" />
            <bizagi:BizagiProperty name="isMainParticipant" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
    </participant>
    <participant id="Id_548e73dc-9c29-4170-85c8-c6736c091264" name="Inspection" processRef="Id_5235e604-469b-425f-b5a5-06df8a413956">
      <documentation />
      <extensionElements>
        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">
          <bizagi:BizagiProperties>
            <bizagi:BizagiProperty name="bgColor" value="#FFFFFF" />
            <bizagi:BizagiProperty name="borderColor" value="#000000" />
          </bizagi:BizagiProperties>
        </bizagi:BizagiExtensions>
      </extensionElements>
    </participant>
  </collaboration>
  <BPMNDiagram id="Diagram_ebe7e0d3-9d28-485f-a763-01f335d35100" xmlns="http://www.omg.org/spec/BPMN/20100524/DI">
    <BPMNPlane id="DiagramElement_f9c938e2-c568-4182-9462-1d6526d2edf7" bpmnElement="Id_82fae773-3b6b-4c0f-be18-eaff5bec4dd6">
      <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
      <BPMNShape id="DiagramElement_83d61672-5623-49bd-a92b-aa93f8179ad6" bpmnElement="Id_78879a1f-0079-4715-8ee5-6f3c97727f3a" isHorizontal="true">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <Bounds x="0" y="0" width="700" height="350" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        <BPMNLabel id="DiagramElement_2052e060-d173-4d9c-a238-cefabf57ccfb" labelStyle="Style_f1d2024b-142e-4dd3-87b0-9fae0992f69d">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNShape>
      <BPMNShape id="DiagramElement_7586a739-993d-434b-a431-90d6dd38a648" bpmnElement="Id_548e73dc-9c29-4170-85c8-c6736c091264" isHorizontal="true">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <Bounds x="0" y="0" width="1582" height="418.12677001953125" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        <BPMNLabel id="DiagramElement_25be8e04-843b-44ed-8349-8a695ba0173d" labelStyle="Style_c14c423b-7925-462c-bc95-55f583fad065">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNShape>
      <BPMNShape id="DiagramElement_ba381fe9-73db-4844-85c0-8ecbef7e901c" bpmnElement="Id_a0ba8f53-b3bd-40b9-8600-f065131fde59" isHorizontal="true">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <Bounds x="50" y="0" width="1532" height="221.12677001953125" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        <BPMNLabel id="DiagramElement_fbfd1ffa-32ee-41c3-a3a7-f0bac5448ff4" labelStyle="Style_cdea16e6-cfbf-405b-8afe-a88ca041833f">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNShape>
      <BPMNShape id="DiagramElement_f8ffd154-d8e4-4a53-92c8-ceb546b94751" bpmnElement="Id_b3d7da62-b8a1-4021-a74e-6bc9390537df" isHorizontal="true">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <Bounds x="50" y="221.12677001953125" width="1532" height="197" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        <BPMNLabel id="DiagramElement_dbff9e4f-c398-4058-97ce-42c084ce7a51" labelStyle="Style_c80ad1f9-c429-47ea-8e56-a199c17a9dde">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNShape>
      <BPMNShape id="DiagramElement_620ba32a-29b5-42d1-a1ed-a71729d662de" bpmnElement="Id_a7222137-8438-4864-a8d7-daf619bdbf60">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <Bounds x="140" y="85" width="30" height="30" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        <BPMNLabel id="DiagramElement_86a98542-f9ca-4454-8124-c3598a6b507e" labelStyle="Style_01782914-623b-47af-b44b-10a372ad9b3c">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNShape>
      <BPMNShape id="DiagramElement_e2022d04-c8f3-4381-adc3-b35904fb5e1f" bpmnElement="Id_42d529aa-c902-4e11-994c-c8946701abef">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <Bounds x="200" y="71" width="93" height="58" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        <BPMNLabel id="DiagramElement_d25e2bd2-80ea-45fe-8a69-5e2ebda2e213" labelStyle="Style_2aac00eb-3324-44ac-8dd5-2d9ca9a1d828">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNShape>
      <BPMNShape id="DiagramElement_161badb8-980a-41eb-b1b2-2bada50da9b0" bpmnElement="Id_414b366f-5673-4cf8-b605-82369466c305">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <Bounds x="317" y="280" width="86" height="60" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        <BPMNLabel id="DiagramElement_3e0e9a4e-fd66-4651-9896-6bb0bc9bdea2" labelStyle="Style_54e36bb3-cf81-47cd-b885-551908cc3644">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNShape>
      <BPMNShape id="DiagramElement_2e74b4c5-2c0b-42fa-8607-272eae51191d" bpmnElement="Id_ae25de19-245e-4906-9f73-1e64fdb93086">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <Bounds x="895" y="238.12677001953125" width="90" height="60" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        <BPMNLabel id="DiagramElement_a0ea266b-f317-4275-906c-8a16223914ef" labelStyle="Style_2efd5819-4f2a-441d-b1f7-d389408f30f4">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNShape>
      <BPMNShape id="DiagramElement_c052948f-661f-46c5-a619-6241fb93785a" bpmnElement="Id_a538d333-7fc4-45ab-9e5e-cccc110b4276">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <Bounds x="680" y="70" width="88" height="60" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        <BPMNLabel id="DiagramElement_6a060fd5-f336-42a9-a330-24f4a380a2a5" labelStyle="Style_6f7620f8-861f-4481-a0b0-dd2cf699e729">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNShape>
      <BPMNShape id="DiagramElement_70243511-f776-4e84-8f2c-71869143889d" bpmnElement="Id_68248f32-191a-41dc-9cf7-8f9adac5a443">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <Bounds x="1315" y="70.5" width="90" height="59" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        <BPMNLabel id="DiagramElement_6f2c8c2f-3ecf-4250-8dbb-cf72e076d854" labelStyle="Style_50f72776-53aa-4f83-acc4-30d42e3b5b2d">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNShape>
      <BPMNShape id="DiagramElement_3a0cd12f-80c0-4543-b07b-4ccefa4aa755" bpmnElement="Id_8a4799cc-ae7a-4e29-8db0-527c4eadb042">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <Bounds x="1197" y="237.12677001953125" width="89" height="62" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        <BPMNLabel id="DiagramElement_aba8776e-b916-4bae-93d4-95a450dd1a6b" labelStyle="Style_7ec94a88-cbbd-4593-9620-c238c292d7ae">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNShape>
      <BPMNShape id="DiagramElement_1e7f21c7-d6d1-4559-a867-51ad0c54bc16" bpmnElement="Id_c0d47974-8d9e-4c49-a310-b9edb204a64d">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <Bounds x="340" y="80" width="40" height="40" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        <BPMNLabel id="DiagramElement_ad02290a-aaab-41f3-b277-7f2ecb9acfe4" labelStyle="Style_3abe98ae-8aef-4199-83a8-bb8c8b6c84a6">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNShape>
      <BPMNShape id="DiagramElement_2fb888b0-5229-4089-a9d7-ff7398466297" bpmnElement="Id_d11615b4-9e3e-413d-8c93-65913c3e4ef1">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <Bounds x="1340" y="248.12677001953125" width="40" height="40" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        <BPMNLabel id="DiagramElement_cf0489a2-2dc2-403a-aacc-9dc020bb2d68" labelStyle="Style_f9f05dfa-93a1-4ea5-bd4b-639f989c535a">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNShape>
      <BPMNShape id="DiagramElement_2e77ec8e-027d-4937-af69-57b27d974297" bpmnElement="Id_2a5dd387-24dd-4a0b-80aa-036813d85f30">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <Bounds x="920" y="80" width="40" height="40" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        <BPMNLabel id="DiagramElement_6bf35f0c-0411-4bc6-8b9f-9616b6d28509" labelStyle="Style_ccbef454-60a7-4f4a-b306-582634f03d8e">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNShape>
      <BPMNShape id="DiagramElement_83f11927-5c43-400c-baef-182b39719b13" bpmnElement="Id_caa2aab0-aa1a-4581-8026-87857f9d9ff9">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <Bounds x="1060" y="248.12677001953125" width="40" height="40" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        <BPMNLabel id="DiagramElement_e06a1b01-054f-41e2-b4bc-ad2ec53624a0" labelStyle="Style_42841fb3-12f4-4d93-aed0-da447beb9b81">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNShape>
      <BPMNShape id="DiagramElement_ac880f70-a3cb-4739-82d9-543f3b16936a" bpmnElement="Id_ffbb86c4-5900-4d79-aa05-e1253e351b84">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <Bounds x="520" y="80" width="40" height="40" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        <BPMNLabel id="DiagramElement_4044d81b-ea57-4ebb-a53e-922fedca04bc" labelStyle="Style_1f750541-f3b3-4674-bd4f-3b735830b540">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNShape>
      <BPMNShape id="DiagramElement_1cdfd7c1-60c6-4130-918f-236f60daced3" bpmnElement="Id_b470f38b-fcc0-4b7b-a32d-ad094456f946">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <Bounds x="720" y="277.12677001953125" width="30" height="30" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
      </BPMNShape>
      <BPMNShape id="DiagramElement_1c3790e0-5b58-4f01-88df-22973cffd286" bpmnElement="Id_bcf64d8e-e9f6-4189-ad79-d1adb6bece33">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <Bounds x="1181" y="356.12677001953125" width="30" height="30" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
      </BPMNShape>
      <BPMNShape id="DiagramElement_6b63c3cc-394f-44a4-89b0-78f6375ad228" bpmnElement="Id_90417e43-ebe1-4eec-be76-b337f60de630">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <Bounds x="1480" y="253.12677001953125" width="30" height="30" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
      </BPMNShape>
      <BPMNShape id="DiagramElement_dbe1afbf-ca70-41bf-ab75-93e694b67e86" bpmnElement="Id_ca4b0f12-7557-444b-8c94-793aa651d068">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <Bounds x="460" y="80" width="40" height="40" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        <BPMNLabel id="DiagramElement_ad7b4a06-6bb2-4da8-9fc9-6f5f6a447783" labelStyle="Style_05639f85-1a6e-49dd-b007-53b47580b5eb">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNShape>
      <BPMNShape id="DiagramElement_69ac908d-3a5f-439d-bcaa-b814799c31f3" bpmnElement="Id_05705bda-7c26-4b4a-a302-9b2b0a1a9ae8">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <Bounds x="820" y="80" width="40" height="40" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        <BPMNLabel id="DiagramElement_049e2408-70ff-4efc-a188-69f8ac940758" labelStyle="Style_9ada0245-851a-4583-be22-01a4936c9239">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNShape>
      <BPMNEdge id="DiagramElement_93f2b9ff-2754-4942-bf75-459292a7f1c2" bpmnElement="Id_2b7d862b-85f4-4854-8920-6654a93b5586">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="1405" y="99" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="1495" y="99" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="1495" y="253" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <BPMNLabel id="DiagramElement_de5e0a5e-20eb-4d22-b2fe-e5db6c94ccd7" labelStyle="Style_2c78cc34-9b1f-4f60-ab20-b7f8b5a26788">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNEdge>
      <BPMNEdge id="DiagramElement_34dd5a37-7a20-48a2-a34d-77777428b958" bpmnElement="Id_47b5f251-805b-4383-874c-293165584837">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="540" y="80" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="540" y="36" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="840" y="36" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="840" y="80" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <BPMNLabel id="DiagramElement_a7ef1f55-7c8c-4f0b-9d00-f376d776bd0e" labelStyle="Style_68ccfa2c-94de-4624-9c6d-90577b7280ac">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNEdge>
      <BPMNEdge id="DiagramElement_657af60e-b5c6-4636-ae86-85101cb71ed9" bpmnElement="Id_979ac26a-df71-4944-ac78-2a919d247cdf">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="1100" y="268" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="1197" y="268" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <BPMNLabel id="DiagramElement_b8b87a62-f6bb-4f9f-b358-a1cbfe73ca0f" labelStyle="Style_a40f183a-5316-488b-82a1-c1c8fa4539ff">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="1132" y="269" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNEdge>
      <BPMNEdge id="DiagramElement_887bb445-3624-4cec-a493-1dab784650ee" bpmnElement="Id_236703d9-de54-41b1-8be7-c382dff6b255">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="1080" y="288" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="1080" y="371" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="1181" y="371" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <BPMNLabel id="DiagramElement_bc92336c-4815-44a7-b35f-5bfedc7bd84a" labelStyle="Style_ee7b598c-d4ce-4421-b5d2-91e55b7123b6">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNEdge>
      <BPMNEdge id="DiagramElement_dba19b64-04db-4bf2-a774-f241dde201d0" bpmnElement="Id_d83ac65d-52fb-4fd3-a744-f181b4d089cd">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="540" y="120" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="540" y="292" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="720" y="292" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <BPMNLabel id="DiagramElement_98039512-73d4-4e44-8e97-229575e4b260" labelStyle="Style_c0a35be8-acab-46f2-9279-b0f1727085c2">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNEdge>
      <BPMNEdge id="DiagramElement_b2263863-7f8f-46f4-83f1-b98348811f15" bpmnElement="Id_8a130ea3-08a1-42d9-8622-0d7629a6bdeb">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="403" y="310" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="480" y="310" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="480" y="120" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <BPMNLabel id="DiagramElement_831587f4-2b58-4f82-8dc9-9563ee9c8bc4" labelStyle="Style_1d19139a-3448-4e39-b0e9-5c706ddb5136">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNEdge>
      <BPMNEdge id="DiagramElement_5d4a3242-0b26-445c-b4a5-f7adaca693b6" bpmnElement="Id_464e5b63-63f7-4e38-80cb-e722487b9686">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="960" y="100" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="1148.5" y="100" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="1148.5" y="99" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="1315" y="99" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <BPMNLabel id="DiagramElement_f6da2a5f-10ca-4de7-ac56-59ef7b2b4dd4" labelStyle="Style_4e2bf64d-0a2f-492b-98b3-3fb470be53aa">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNEdge>
      <BPMNEdge id="DiagramElement_281bd167-413c-4139-b2f5-d0a96c9b9093" bpmnElement="Id_2bfa6f6e-eb3c-4e06-9e51-fa32fea3348a">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="1380" y="268" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="1480" y="268" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <BPMNLabel id="DiagramElement_fcc1ec13-5561-42a1-af3d-6bbaa0ff83f9" labelStyle="Style_5e5e53bb-8cd6-46ef-9184-fdd2e20e0580">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNEdge>
      <BPMNEdge id="DiagramElement_8183110b-7c47-4c35-aa0a-14962d0ac282" bpmnElement="Id_f5cde2f8-386d-49d4-9eb2-ea7e1b813413">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="1080" y="248" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="1080" y="99" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="1315" y="99" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <BPMNLabel id="DiagramElement_6100b928-ad12-4845-83a5-4723702cfbef" labelStyle="Style_e4eb0795-0e5b-4d76-856c-c0d9ab86bf6a">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNEdge>
      <BPMNEdge id="DiagramElement_c862dc70-9a0b-4a2c-9c37-f16da3b67ca7" bpmnElement="Id_4a03002c-0f30-49d6-87b1-e4b410652d22">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="560" y="100" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="680" y="100" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <BPMNLabel id="DiagramElement_40426e1c-7bed-4a1f-b866-0c47f81761dc" labelStyle="Style_ee043735-51b7-4f92-981e-1a32300301ca">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNEdge>
      <BPMNEdge id="DiagramElement_1af990e2-9ddb-4a39-b8d2-ed5df168ae42" bpmnElement="Id_451eecf2-c47c-48d5-afad-22d6e5163173">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="768" y="100" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="820" y="100" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <BPMNLabel id="DiagramElement_2d9c0f6d-8c31-4e7a-89ce-e45f74cc92d9" labelStyle="Style_7651e889-c422-4bcf-a55c-15e13e626f65">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNEdge>
      <BPMNEdge id="DiagramElement_1b12b783-1a8d-4e3f-9038-cad55ba0f67b" bpmnElement="Id_0d8e3c5a-4655-42e5-bf78-a8512a4ef7c5">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="1286" y="268" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="1340" y="268" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <BPMNLabel id="DiagramElement_91302d0d-fd06-46fb-aed7-88861a9c578d" labelStyle="Style_cc3c6235-d309-4d03-adc3-5958482be6a1">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="1312" y="268" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNEdge>
      <BPMNEdge id="DiagramElement_c04ecca9-0bd1-4a2a-9829-fadd48d2d339" bpmnElement="Id_2456e6da-6e7a-4f15-934c-a080ea0c68c5">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="293" y="100" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="340" y="100" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <BPMNLabel id="DiagramElement_ab801f54-d75b-44f1-a97b-d8daaa7c446b" labelStyle="Style_59852093-c941-401b-842e-faedaa41a42e">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNEdge>
      <BPMNEdge id="DiagramElement_bfa8667d-b957-45ef-9212-3e915e9359a9" bpmnElement="Id_bf1e2d57-faed-44b9-9734-9cd9516ea280">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="985" y="268" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="1060" y="268" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <BPMNLabel id="DiagramElement_ee535acf-dd13-4c7a-b3f6-8fc8f6f54215" labelStyle="Style_baa31932-0609-4c1a-8cb1-1b7b45ca4dca">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNEdge>
      <BPMNEdge id="DiagramElement_e4c8cfe1-1806-4d5d-8c01-5b87a6162926" bpmnElement="Id_0ae1fc7a-6c72-46fb-9f84-64fe04a548f1">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="940" y="120" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="940" y="238" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <BPMNLabel id="DiagramElement_8d2821ec-f456-4443-b0a5-a78df96bd898" labelStyle="Style_9ddac541-4505-431a-ae99-50eda2c9a91e">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNEdge>
      <BPMNEdge id="DiagramElement_4f179eb9-af2e-4822-ba9f-7db730778f70" bpmnElement="Id_bd3e1b09-4c5c-4ee0-a57c-1feffa2111d7">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="380" y="100" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="460" y="100" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <BPMNLabel id="DiagramElement_8188bfa2-6e74-458b-b9b5-48e157fab438" labelStyle="Style_a093f486-4832-43b4-baef-454a013079d1">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNEdge>
      <BPMNEdge id="DiagramElement_09b0d870-f7af-41ea-93cb-1e092932d503" bpmnElement="Id_5706bf43-d58f-4d4a-a181-816f64663f46">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="360" y="120" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="360" y="280" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <BPMNLabel id="DiagramElement_6a6b4f83-acd0-4d4c-8b66-cece667101ff" labelStyle="Style_ee0eb56f-12dc-4c8d-b705-eedc9efc10ae">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNEdge>
      <BPMNEdge id="DiagramElement_4ed265fb-7795-434d-96ee-81c8992e975d" bpmnElement="Id_679f0e6a-6d2e-4b70-805e-0a421a5bac2b">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="1360" y="248" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="1360" y="129" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <BPMNLabel id="DiagramElement_739247c8-ce75-449c-bef6-ea73994b3daf" labelStyle="Style_8512f1c2-2e5f-45b4-a6ac-8a46f3ad7c7b">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNEdge>
      <BPMNEdge id="DiagramElement_939f794c-ff99-4dee-9e65-75e485ca07a1" bpmnElement="Id_7d752b4b-6b8f-4a64-95ee-e24559b7bbb9">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="170" y="100" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="200" y="100" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <BPMNLabel id="DiagramElement_58aade0b-7e60-4a4e-99d8-f4a5addde8c7" labelStyle="Style_1a1ee406-a1f0-4b36-8209-6f0dc22ece03">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNEdge>
      <BPMNEdge id="DiagramElement_2317f529-f132-40aa-af33-0d87350423c5" bpmnElement="Id_70e41eba-3fae-4ab8-b443-31e1fcddb854">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="500" y="100" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="520" y="100" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <BPMNLabel id="DiagramElement_d452ebd3-3a61-4758-814c-9076476c8941" labelStyle="Style_ad70ea07-5cc1-4c0d-a53b-7933b76bca9b">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNEdge>
      <BPMNEdge id="DiagramElement_bfac9302-6b7e-43c3-976f-d87f8ab8969e" bpmnElement="Id_e92b781e-6e5b-4bba-9232-15538c3eadcd">
        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="860" y="100" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <waypoint x="920" y="100" xmlns="http://www.omg.org/spec/DD/20100524/DI" />
        <BPMNLabel id="DiagramElement_5212c046-0157-4483-b252-c1918756e8d5" labelStyle="Style_4936d066-94b3-4fbb-81f8-d82e805d4388">
          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />
          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
        </BPMNLabel>
      </BPMNEdge>
    </BPMNPlane>
    <BPMNLabelStyle id="Style_f1d2024b-142e-4dd3-87b0-9fae0992f69d">
      <Font name="Segoe UI" size="10" isBold="true" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_c14c423b-7925-462c-bc95-55f583fad065">
      <Font name="Segoe UI" size="10" isBold="true" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_cdea16e6-cfbf-405b-8afe-a88ca041833f">
      <Font name="Segoe UI" size="10" isBold="true" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_c80ad1f9-c429-47ea-8e56-a199c17a9dde">
      <Font name="Segoe UI" size="10" isBold="true" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_01782914-623b-47af-b44b-10a372ad9b3c">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_2aac00eb-3324-44ac-8dd5-2d9ca9a1d828">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_54e36bb3-cf81-47cd-b885-551908cc3644">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_2efd5819-4f2a-441d-b1f7-d389408f30f4">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_6f7620f8-861f-4481-a0b0-dd2cf699e729">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_50f72776-53aa-4f83-acc4-30d42e3b5b2d">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_7ec94a88-cbbd-4593-9620-c238c292d7ae">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_3abe98ae-8aef-4199-83a8-bb8c8b6c84a6">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_f9f05dfa-93a1-4ea5-bd4b-639f989c535a">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_ccbef454-60a7-4f4a-b306-582634f03d8e">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_42841fb3-12f4-4d93-aed0-da447beb9b81">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_1f750541-f3b3-4674-bd4f-3b735830b540">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_05639f85-1a6e-49dd-b007-53b47580b5eb">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_9ada0245-851a-4583-be22-01a4936c9239">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_2c78cc34-9b1f-4f60-ab20-b7f8b5a26788">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_68ccfa2c-94de-4624-9c6d-90577b7280ac">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_a40f183a-5316-488b-82a1-c1c8fa4539ff">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_ee7b598c-d4ce-4421-b5d2-91e55b7123b6">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_c0a35be8-acab-46f2-9279-b0f1727085c2">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_1d19139a-3448-4e39-b0e9-5c706ddb5136">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_4e2bf64d-0a2f-492b-98b3-3fb470be53aa">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_5e5e53bb-8cd6-46ef-9184-fdd2e20e0580">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_e4eb0795-0e5b-4d76-856c-c0d9ab86bf6a">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_ee043735-51b7-4f92-981e-1a32300301ca">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_7651e889-c422-4bcf-a55c-15e13e626f65">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_cc3c6235-d309-4d03-adc3-5958482be6a1">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_59852093-c941-401b-842e-faedaa41a42e">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_baa31932-0609-4c1a-8cb1-1b7b45ca4dca">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_9ddac541-4505-431a-ae99-50eda2c9a91e">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_a093f486-4832-43b4-baef-454a013079d1">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_ee0eb56f-12dc-4c8d-b705-eedc9efc10ae">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_8512f1c2-2e5f-45b4-a6ac-8a46f3ad7c7b">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_1a1ee406-a1f0-4b36-8209-6f0dc22ece03">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_ad70ea07-5cc1-4c0d-a53b-7933b76bca9b">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
    <BPMNLabelStyle id="Style_4936d066-94b3-4fbb-81f8-d82e805d4388">
      <Font name="Segoe UI" size="8" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
  </BPMNDiagram>
</definitions>'
]
