"
A BPSimImplementerGuidev1_0_2Test is .

"
Class {
	#name : #'BPSimImplementerGuidev1_0_2Test',
	#superclass : #TestCase,
	#category : #'A4BP-SimEngine-core-Tests'
}

{ #category : #examples }
BPSimImplementerGuidev1_0_2Test class >> carRepairProcessV1_0_bpmn [
	^ '<?xml version="1.0" encoding="ISO-8859-1" standalone="yes"?>
<semantic:definitions id="_1364754596385" name="Car Repair Process v0.20" targetNamespace="http://www.trisotech.com/definitions/_1364754596385" xmlns:dc="http://www.omg.org/spec/DD/20100524/DC" xmlns:bpsim="http://www.bpsim.org/schemas/1.0" xmlns:di="http://www.omg.org/spec/DD/20100524/DI" xmlns:semantic="http://www.omg.org/spec/BPMN/20100524/MODEL" xmlns:bpmndi="http://www.omg.org/spec/BPMN/20100524/DI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <semantic:process isExecutable="false" id="_6">
        <semantic:dataObject isCollection="false" id="DF1364754596565"/>
        <semantic:dataObject isCollection="false" id="DF1364754596566"/>
        <semantic:startEvent name="Customer Arrives" id="_51BDA265-2FF5-40CB-B68D-1FBF9DAAA74C">
            <semantic:outgoing>_896FB358-BF3A-4609-8E83-8405D72DEA9B</semantic:outgoing>
        </semantic:startEvent>
        <semantic:task completionQuantity="1" isForCompensation="false" startQuantity="1" name="Make Estimate" id="_BA2B78BE-06A0-46C8-9BA2-D9EC923FDEAA">
            <semantic:incoming>_896FB358-BF3A-4609-8E83-8405D72DEA9B</semantic:incoming>
            <semantic:outgoing>_222A5787-C138-497B-8638-02121C5E0477</semantic:outgoing>
            <semantic:ioSpecification>
                <semantic:dataInput id="Din1364754596628"/>
                <semantic:dataOutput id="Dout1364754596626"/>
                <semantic:inputSet>
                    <semantic:dataInputRefs>Din1364754596628</semantic:dataInputRefs>
                </semantic:inputSet>
                <semantic:outputSet>
                    <semantic:dataOutputRefs>Dout1364754596626</semantic:dataOutputRefs>
                </semantic:outputSet>
            </semantic:ioSpecification>
            <semantic:dataInputAssociation id="_9EB2F46F-FA87-4DB3-9EA5-4CBA7FC355B2">
                <semantic:sourceRef>_6F155721-2EB2-4570-BFE0-E39C0B3EAD82</semantic:sourceRef>
                <semantic:targetRef>Din1364754596628</semantic:targetRef>
            </semantic:dataInputAssociation>
            <semantic:dataOutputAssociation id="_D5635CA0-2E65-458D-A25B-B7EAC7E888E2">
                <semantic:sourceRef>Dout1364754596626</semantic:sourceRef>
                <semantic:targetRef>_44E5E2EF-2B2F-4689-8531-4D451808B0A6</semantic:targetRef>
            </semantic:dataOutputAssociation>
        </semantic:task>
        <semantic:task completionQuantity="1" isForCompensation="false" startQuantity="1" name="Verify if Estimate Accepted" id="_D4804AD8-3EE4-47F1-942C-D9EAEA2811F0">
            <semantic:incoming>_222A5787-C138-497B-8638-02121C5E0477</semantic:incoming>
            <semantic:outgoing>_1F31B20E-FE41-440D-9D44-E7437D1639C6</semantic:outgoing>
            <semantic:ioSpecification>
                <semantic:dataInput id="Din1364754596627"/>
                <semantic:inputSet>
                    <semantic:dataInputRefs>Din1364754596627</semantic:dataInputRefs>
                </semantic:inputSet>
                <semantic:outputSet/>
            </semantic:ioSpecification>
            <semantic:dataInputAssociation id="_C2B6A48C-B636-4186-955B-9C73CD3FA580">
                <semantic:sourceRef>_44E5E2EF-2B2F-4689-8531-4D451808B0A6</semantic:sourceRef>
                <semantic:targetRef>Din1364754596627</semantic:targetRef>
            </semantic:dataInputAssociation>
        </semantic:task>
        <semantic:exclusiveGateway gatewayDirection="Unspecified" name="Accepted?" id="_F7498C3B-5925-415A-80D7-D16758B353C9">
            <semantic:incoming>_1F31B20E-FE41-440D-9D44-E7437D1639C6</semantic:incoming>
            <semantic:outgoing>_3654E294-536A-4CD2-9950-11F02657EE60</semantic:outgoing>
            <semantic:outgoing>_3B161ED4-4C10-4349-9A2D-B4E002D5EC0E</semantic:outgoing>
        </semantic:exclusiveGateway>
        <semantic:endEvent name="Initial Estimate Not Accepted" id="_87E52808-857B-45B0-93E8-F6D7AC0B4B3E">
            <semantic:incoming>_3654E294-536A-4CD2-9950-11F02657EE60</semantic:incoming>
        </semantic:endEvent>
        <semantic:subProcess triggeredByEvent="false" completionQuantity="1" isForCompensation="false" startQuantity="1" name="Repair Car" id="_EBE375AE-E49A-47F7-8E04-DA6A1532ECC2">
            <semantic:incoming>_3B161ED4-4C10-4349-9A2D-B4E002D5EC0E</semantic:incoming>
            <semantic:outgoing>_0884CEBC-44CE-4BE2-958F-8941946BDA64</semantic:outgoing>
            <semantic:startEvent name="Start Repairs" id="_FA77D7D8-9C02-4006-942A-B003AEDA5E3C">
                <semantic:outgoing>_77A40DB9-8B5A-4E50-9138-ADCA63E4A219</semantic:outgoing>
            </semantic:startEvent>
            <semantic:exclusiveGateway gatewayDirection="Unspecified" name="" id="_7D509478-6734-4004-B618-32339FA33D31">
                <semantic:incoming>_77A40DB9-8B5A-4E50-9138-ADCA63E4A219</semantic:incoming>
                <semantic:incoming>_9C46FDB0-2EBD-4B2F-A72A-0189A4D76A73</semantic:incoming>
                <semantic:outgoing>_E2740126-A38E-40E2-9FA9-554778B51381</semantic:outgoing>
            </semantic:exclusiveGateway>
            <semantic:subProcess triggeredByEvent="true" completionQuantity="1" isForCompensation="false" startQuantity="1" name="" id="_AF4F8D5E-E399-4ED8-992F-9AA653C17D6E">
                <semantic:startEvent isInterrupting="false" name="Customer Requests Additional  Repairs" id="_25E36E2C-9196-4170-8BA3-52DDF55D177E">
                    <semantic:outgoing>_62BD6E5E-B5C0-4719-86CE-D5E30A1D128F</semantic:outgoing>
                    <semantic:signalEventDefinition/>
                </semantic:startEvent>
                <semantic:task completionQuantity="1" isForCompensation="false" startQuantity="1" name="Add Additional Issue to List" id="_D226B9E0-0194-481E-AAEC-32473D45FEEF">
                    <semantic:incoming>_62BD6E5E-B5C0-4719-86CE-D5E30A1D128F</semantic:incoming>
                    <semantic:outgoing>_24A3FEEC-8DE6-42DC-9B85-D076EB8909A4</semantic:outgoing>
                    <semantic:ioSpecification>
                        <semantic:dataOutput id="Dout1364754596601"/>
                        <semantic:inputSet/>
                        <semantic:outputSet>
                            <semantic:dataOutputRefs>Dout1364754596601</semantic:dataOutputRefs>
                        </semantic:outputSet>
                    </semantic:ioSpecification>
                    <semantic:dataOutputAssociation id="_94CD5662-8EB9-4B23-A486-8B6970314AD7">
                        <semantic:sourceRef>Dout1364754596601</semantic:sourceRef>
                        <semantic:targetRef>_C96534C9-934E-415D-8903-28DA8712B25E</semantic:targetRef>
                    </semantic:dataOutputAssociation>
                </semantic:task>
                <semantic:endEvent name="Issue List Amended By Customer" id="_4C551546-C127-4CD9-9106-78A3FC8978A6">
                    <semantic:incoming>_24A3FEEC-8DE6-42DC-9B85-D076EB8909A4</semantic:incoming>
                </semantic:endEvent>
                <semantic:dataObjectReference dataObjectRef="DF1364754596565" name="Itemized  Issues" id="_C96534C9-934E-415D-8903-28DA8712B25E">
                    <semantic:dataState name="Amended"/>
                </semantic:dataObjectReference>
                <semantic:sequenceFlow sourceRef="_25E36E2C-9196-4170-8BA3-52DDF55D177E" targetRef="_D226B9E0-0194-481E-AAEC-32473D45FEEF" name="" id="_62BD6E5E-B5C0-4719-86CE-D5E30A1D128F"/>
                <semantic:sequenceFlow sourceRef="_D226B9E0-0194-481E-AAEC-32473D45FEEF" targetRef="_4C551546-C127-4CD9-9106-78A3FC8978A6" name="" id="_24A3FEEC-8DE6-42DC-9B85-D076EB8909A4"/>
            </semantic:subProcess>
            <semantic:task completionQuantity="1" isForCompensation="false" startQuantity="1" name="Take Apart for Issue" id="_91C1F9A1-0EB9-4FD4-A2A7-99C2E8C34854">
                <semantic:incoming>_E2740126-A38E-40E2-9FA9-554778B51381</semantic:incoming>
                <semantic:outgoing>_F165F4A8-69B1-4B19-A1A4-470BDE12FA77</semantic:outgoing>
            </semantic:task>
            <semantic:task completionQuantity="1" isForCompensation="false" startQuantity="1" name="Inspect for Issue" id="_A9E2794B-4C41-429B-9C04-46C5B8741DDC">
                <semantic:incoming>_F165F4A8-69B1-4B19-A1A4-470BDE12FA77</semantic:incoming>
                <semantic:outgoing>_FE1BBBD3-1730-4BC0-895D-76106317615D</semantic:outgoing>
            </semantic:task>
            <semantic:exclusiveGateway gatewayDirection="Unspecified" name="" id="_EA5D13A2-32CB-4F3D-80EF-F0886538C228">
                <semantic:incoming>_FE1BBBD3-1730-4BC0-895D-76106317615D</semantic:incoming>
                <semantic:incoming>_F298A83E-5AD6-4BB6-95AF-E5B0A26A51FC</semantic:incoming>
                <semantic:outgoing>_53EFF0AE-C44D-4EA4-A3AF-FA7E52B4CE52</semantic:outgoing>
            </semantic:exclusiveGateway>
            <semantic:task completionQuantity="1" isForCompensation="false" startQuantity="1" name="Handle New Found Issue" id="_8040CF1A-3CAA-4A98-8E94-DD405EF233E9">
                <semantic:incoming>_BEFA7BF4-D1C2-47CB-B0CD-EF87E541B1BC</semantic:incoming>
                <semantic:outgoing>_F298A83E-5AD6-4BB6-95AF-E5B0A26A51FC</semantic:outgoing>
            </semantic:task>
            <semantic:exclusiveGateway gatewayDirection="Unspecified" name="" id="_5C0BF369-3360-43C3-9792-3E6492BA7291">
                <semantic:incoming>_53EFF0AE-C44D-4EA4-A3AF-FA7E52B4CE52</semantic:incoming>
                <semantic:outgoing>_751A4C0A-FC0F-441E-A587-4016BE8101B3</semantic:outgoing>
                <semantic:outgoing>_BEFA7BF4-D1C2-47CB-B0CD-EF87E541B1BC</semantic:outgoing>
            </semantic:exclusiveGateway>
            <semantic:subProcess triggeredByEvent="true" completionQuantity="1" isForCompensation="false" startQuantity="1" name="" id="_C89D1737-9813-44C2-A5D5-87649AE7AEC6">
                <semantic:startEvent isInterrupting="true" name="Repairs Aborted" id="_F9A272EE-D325-44CF-AFFC-4A615D2C9971">
                    <semantic:outgoing>_CF5A1710-35F8-48B6-85FD-A90C99FEC5B3</semantic:outgoing>
                    <semantic:signalEventDefinition/>
                </semantic:startEvent>
                <semantic:task completionQuantity="1" isForCompensation="false" startQuantity="1" name="Prepare Car for remittance" id="_52CCF00D-C0E3-4931-8D4E-6C989E317A07">
                    <semantic:incoming>_CF5A1710-35F8-48B6-85FD-A90C99FEC5B3</semantic:incoming>
                    <semantic:outgoing>_19517CEB-6A0E-4B88-8911-FEEEFE3B55CE</semantic:outgoing>
                    <semantic:ioSpecification>
                        <semantic:dataOutput id="Dout1364754596612"/>
                        <semantic:inputSet/>
                        <semantic:outputSet>
                            <semantic:dataOutputRefs>Dout1364754596612</semantic:dataOutputRefs>
                        </semantic:outputSet>
                    </semantic:ioSpecification>
                    <semantic:dataOutputAssociation id="_9DBCFE15-F025-4A3B-A3F7-41BFCFA182D1">
                        <semantic:sourceRef>Dout1364754596612</semantic:sourceRef>
                        <semantic:targetRef>_4134CEB9-F012-4F9E-9EF3-932E18E731E5</semantic:targetRef>
                    </semantic:dataOutputAssociation>
                </semantic:task>
                <semantic:endEvent name="Repairs Aborted" id="_2BBAB508-4026-40F7-8FC3-23E68E77EE46">
                    <semantic:incoming>_19517CEB-6A0E-4B88-8911-FEEEFE3B55CE</semantic:incoming>
                    <semantic:terminateEventDefinition/>
                </semantic:endEvent>
                <semantic:dataObjectReference dataObjectRef="DF1364754596565" name="Itemized  Issues" id="_4134CEB9-F012-4F9E-9EF3-932E18E731E5">
                    <semantic:dataState name="Completed Items"/>
                </semantic:dataObjectReference>
                <semantic:sequenceFlow sourceRef="_F9A272EE-D325-44CF-AFFC-4A615D2C9971" targetRef="_52CCF00D-C0E3-4931-8D4E-6C989E317A07" name="" id="_CF5A1710-35F8-48B6-85FD-A90C99FEC5B3"/>
                <semantic:sequenceFlow sourceRef="_52CCF00D-C0E3-4931-8D4E-6C989E317A07" targetRef="_2BBAB508-4026-40F7-8FC3-23E68E77EE46" name="" id="_19517CEB-6A0E-4B88-8911-FEEEFE3B55CE"/>
            </semantic:subProcess>
            <semantic:task completionQuantity="1" isForCompensation="false" startQuantity="1" name="Repair Issue" id="_071B5D0A-5225-4E55-9105-8D15169DAC96">
                <semantic:incoming>_751A4C0A-FC0F-441E-A587-4016BE8101B3</semantic:incoming>
                <semantic:outgoing>_7BCC27D0-D619-4895-92F5-4516D9583479</semantic:outgoing>
            </semantic:task>
            <semantic:task completionQuantity="1" isForCompensation="false" startQuantity="1" name="Verify if more Issues on Itemized List" id="_2A752317-508C-4BB1-9AE7-49FBC7391B2B">
                <semantic:incoming>_7BCC27D0-D619-4895-92F5-4516D9583479</semantic:incoming>
                <semantic:outgoing>_8C74C362-DDEF-48B9-AED2-E4034E917A40</semantic:outgoing>
                <semantic:ioSpecification>
                    <semantic:dataInput id="Din1364754596619"/>
                    <semantic:inputSet>
                        <semantic:dataInputRefs>Din1364754596619</semantic:dataInputRefs>
                    </semantic:inputSet>
                    <semantic:outputSet/>
                </semantic:ioSpecification>
                <semantic:dataInputAssociation id="_7586D519-92CA-4824-93B9-59E925689D65">
                    <semantic:sourceRef>_A5699C3D-74E0-497C-8B62-607B9909A0C9</semantic:sourceRef>
                    <semantic:targetRef>Din1364754596619</semantic:targetRef>
                </semantic:dataInputAssociation>
            </semantic:task>
            <semantic:exclusiveGateway gatewayDirection="Unspecified" name="Have further issues?" id="_B78F09D7-A493-4FDC-B20C-B251C7405D95">
                <semantic:incoming>_8C74C362-DDEF-48B9-AED2-E4034E917A40</semantic:incoming>
                <semantic:outgoing>_9C46FDB0-2EBD-4B2F-A72A-0189A4D76A73</semantic:outgoing>
                <semantic:outgoing>_4799D2B0-A204-4A08-94ED-796C25D9AE57</semantic:outgoing>
            </semantic:exclusiveGateway>
            <semantic:task completionQuantity="1" isForCompensation="false" startQuantity="1" name="Prepare Car for Remittance" id="_DFFBC045-8147-468B-BC85-DAF1134E19CF">
                <semantic:incoming>_4799D2B0-A204-4A08-94ED-796C25D9AE57</semantic:incoming>
                <semantic:outgoing>_56B35746-D946-481B-95EF-27D2CB8F4D29</semantic:outgoing>
            </semantic:task>
            <semantic:endEvent name="Repairs Completed" id="_B67579E4-E038-4D9D-AA46-A3F9628CADA1">
                <semantic:incoming>_56B35746-D946-481B-95EF-27D2CB8F4D29</semantic:incoming>
            </semantic:endEvent>
            <semantic:dataObjectReference dataObjectRef="DF1364754596565" name="Itemized  Issues" id="_A5699C3D-74E0-497C-8B62-607B9909A0C9">
                <semantic:dataState name="Accepted"/>
            </semantic:dataObjectReference>
            <semantic:sequenceFlow sourceRef="_FA77D7D8-9C02-4006-942A-B003AEDA5E3C" targetRef="_7D509478-6734-4004-B618-32339FA33D31" name="" id="_77A40DB9-8B5A-4E50-9138-ADCA63E4A219"/>
            <semantic:sequenceFlow sourceRef="_7D509478-6734-4004-B618-32339FA33D31" targetRef="_91C1F9A1-0EB9-4FD4-A2A7-99C2E8C34854" name="" id="_E2740126-A38E-40E2-9FA9-554778B51381"/>
            <semantic:sequenceFlow sourceRef="_B78F09D7-A493-4FDC-B20C-B251C7405D95" targetRef="_7D509478-6734-4004-B618-32339FA33D31" name="More Issues to Repair" id="_9C46FDB0-2EBD-4B2F-A72A-0189A4D76A73"/>
            <semantic:sequenceFlow sourceRef="_B78F09D7-A493-4FDC-B20C-B251C7405D95" targetRef="_DFFBC045-8147-468B-BC85-DAF1134E19CF" name="No More Issues to Repair" id="_4799D2B0-A204-4A08-94ED-796C25D9AE57"/>
            <semantic:sequenceFlow sourceRef="_91C1F9A1-0EB9-4FD4-A2A7-99C2E8C34854" targetRef="_A9E2794B-4C41-429B-9C04-46C5B8741DDC" name="" id="_F165F4A8-69B1-4B19-A1A4-470BDE12FA77"/>
            <semantic:sequenceFlow sourceRef="_EA5D13A2-32CB-4F3D-80EF-F0886538C228" targetRef="_5C0BF369-3360-43C3-9792-3E6492BA7291" name="" id="_53EFF0AE-C44D-4EA4-A3AF-FA7E52B4CE52"/>
            <semantic:sequenceFlow sourceRef="_5C0BF369-3360-43C3-9792-3E6492BA7291" targetRef="_071B5D0A-5225-4E55-9105-8D15169DAC96" name="No Added  Issue Found" id="_751A4C0A-FC0F-441E-A587-4016BE8101B3"/>
            <semantic:sequenceFlow sourceRef="_5C0BF369-3360-43C3-9792-3E6492BA7291" targetRef="_8040CF1A-3CAA-4A98-8E94-DD405EF233E9" name="New Issue  Found" id="_BEFA7BF4-D1C2-47CB-B0CD-EF87E541B1BC"/>
            <semantic:sequenceFlow sourceRef="_A9E2794B-4C41-429B-9C04-46C5B8741DDC" targetRef="_EA5D13A2-32CB-4F3D-80EF-F0886538C228" name="" id="_FE1BBBD3-1730-4BC0-895D-76106317615D"/>
            <semantic:sequenceFlow sourceRef="_8040CF1A-3CAA-4A98-8E94-DD405EF233E9" targetRef="_EA5D13A2-32CB-4F3D-80EF-F0886538C228" name="" id="_F298A83E-5AD6-4BB6-95AF-E5B0A26A51FC"/>
            <semantic:sequenceFlow sourceRef="_071B5D0A-5225-4E55-9105-8D15169DAC96" targetRef="_2A752317-508C-4BB1-9AE7-49FBC7391B2B" name="" id="_7BCC27D0-D619-4895-92F5-4516D9583479"/>
            <semantic:sequenceFlow sourceRef="_2A752317-508C-4BB1-9AE7-49FBC7391B2B" targetRef="_B78F09D7-A493-4FDC-B20C-B251C7405D95" name="" id="_8C74C362-DDEF-48B9-AED2-E4034E917A40"/>
            <semantic:sequenceFlow sourceRef="_DFFBC045-8147-468B-BC85-DAF1134E19CF" targetRef="_B67579E4-E038-4D9D-AA46-A3F9628CADA1" name="" id="_56B35746-D946-481B-95EF-27D2CB8F4D29"/>
        </semantic:subProcess>
        <semantic:task completionQuantity="1" isForCompensation="false" startQuantity="1" name="Prepare Invoice" id="_956694A6-DFD0-4422-800E-A7DF51A627C0">
            <semantic:incoming>_0884CEBC-44CE-4BE2-958F-8941946BDA64</semantic:incoming>
            <semantic:outgoing>_79CF3D66-DDC0-4E70-A721-206B98C9106D</semantic:outgoing>
        </semantic:task>
        <semantic:task completionQuantity="1" isForCompensation="false" startQuantity="1" name="Remit Car" id="_78172A06-7EC8-47CC-B49B-01EAD0676195">
            <semantic:incoming>_CB71865E-954A-4D3D-874F-8DB33A5B391B</semantic:incoming>
            <semantic:outgoing>_9088D441-44C5-462B-8695-47D60A7BC451</semantic:outgoing>
        </semantic:task>
        <semantic:endEvent name="Customer Leaves Shop" id="_4CFC937C-2E42-4671-859E-42E710931963">
            <semantic:incoming>_9088D441-44C5-462B-8695-47D60A7BC451</semantic:incoming>
        </semantic:endEvent>
        <semantic:task completionQuantity="1" isForCompensation="false" startQuantity="1" name="Accept Payment" id="_12A4A22E-9449-4E50-BDFC-AC00C8DE8660">
            <semantic:incoming>_79CF3D66-DDC0-4E70-A721-206B98C9106D</semantic:incoming>
            <semantic:outgoing>_CB71865E-954A-4D3D-874F-8DB33A5B391B</semantic:outgoing>
        </semantic:task>
        <semantic:dataObjectReference dataObjectRef="DF1364754596565" name="Itemized  Issues" id="_44E5E2EF-2B2F-4689-8531-4D451808B0A6">
            <semantic:dataState name="Estimated"/>
        </semantic:dataObjectReference>
        <semantic:dataObjectReference dataObjectRef="DF1364754596566" name="Reported Issues" id="_6F155721-2EB2-4570-BFE0-E39C0B3EAD82"/>
        <semantic:sequenceFlow sourceRef="_51BDA265-2FF5-40CB-B68D-1FBF9DAAA74C" targetRef="_BA2B78BE-06A0-46C8-9BA2-D9EC923FDEAA" name="" id="_896FB358-BF3A-4609-8E83-8405D72DEA9B"/>
        <semantic:sequenceFlow sourceRef="_BA2B78BE-06A0-46C8-9BA2-D9EC923FDEAA" targetRef="_D4804AD8-3EE4-47F1-942C-D9EAEA2811F0" name="" id="_222A5787-C138-497B-8638-02121C5E0477"/>
        <semantic:sequenceFlow sourceRef="_D4804AD8-3EE4-47F1-942C-D9EAEA2811F0" targetRef="_F7498C3B-5925-415A-80D7-D16758B353C9" name="" id="_1F31B20E-FE41-440D-9D44-E7437D1639C6"/>
        <semantic:sequenceFlow sourceRef="_F7498C3B-5925-415A-80D7-D16758B353C9" targetRef="_87E52808-857B-45B0-93E8-F6D7AC0B4B3E" name="Initial Estimate Not Accepted" id="_3654E294-536A-4CD2-9950-11F02657EE60"/>
        <semantic:sequenceFlow sourceRef="_F7498C3B-5925-415A-80D7-D16758B353C9" targetRef="_EBE375AE-E49A-47F7-8E04-DA6A1532ECC2" name="Initial Estimate Accepted" id="_3B161ED4-4C10-4349-9A2D-B4E002D5EC0E"/>
        <semantic:sequenceFlow sourceRef="_78172A06-7EC8-47CC-B49B-01EAD0676195" targetRef="_4CFC937C-2E42-4671-859E-42E710931963" name="" id="_9088D441-44C5-462B-8695-47D60A7BC451"/>
        <semantic:sequenceFlow sourceRef="_EBE375AE-E49A-47F7-8E04-DA6A1532ECC2" targetRef="_956694A6-DFD0-4422-800E-A7DF51A627C0" name="" id="_0884CEBC-44CE-4BE2-958F-8941946BDA64"/>
        <semantic:sequenceFlow sourceRef="_956694A6-DFD0-4422-800E-A7DF51A627C0" targetRef="_12A4A22E-9449-4E50-BDFC-AC00C8DE8660" name="" id="_79CF3D66-DDC0-4E70-A721-206B98C9106D"/>
        <semantic:sequenceFlow sourceRef="_12A4A22E-9449-4E50-BDFC-AC00C8DE8660" targetRef="_78172A06-7EC8-47CC-B49B-01EAD0676195" name="" id="_CB71865E-954A-4D3D-874F-8DB33A5B391B"/>
    </semantic:process>
    <bpmndi:BPMNDiagram documentation="" id="Trisotech_Visio-_6" name="Car Repair" resolution="96.00000267028808">
        <bpmndi:BPMNPlane bpmnElement="_6">
            <bpmndi:BPMNShape bpmnElement="_51BDA265-2FF5-40CB-B68D-1FBF9DAAA74C" id="S1364754596588__51BDA265-2FF5-40CB-B68D-1FBF9DAAA74C">
                <dc:Bounds height="30.0" width="30.0" x="101.0" y="426.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_BA2B78BE-06A0-46C8-9BA2-D9EC923FDEAA" id="S1364754596589__BA2B78BE-06A0-46C8-9BA2-D9EC923FDEAA">
                <dc:Bounds height="68.0" width="83.0" x="167.0" y="407.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_D4804AD8-3EE4-47F1-942C-D9EAEA2811F0" id="S1364754596590__D4804AD8-3EE4-47F1-942C-D9EAEA2811F0">
                <dc:Bounds height="68.0" width="83.0" x="287.0" y="407.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_F7498C3B-5925-415A-80D7-D16758B353C9" isMarkerVisible="true" id="S1364754596591__F7498C3B-5925-415A-80D7-D16758B353C9">
                <dc:Bounds height="42.0" width="42.0" x="407.0" y="420.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_87E52808-857B-45B0-93E8-F6D7AC0B4B3E" id="S1364754596592__87E52808-857B-45B0-93E8-F6D7AC0B4B3E">
                <dc:Bounds height="32.0" width="32.0" x="462.0" y="548.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_EBE375AE-E49A-47F7-8E04-DA6A1532ECC2" isExpanded="true" id="S1364754596593__EBE375AE-E49A-47F7-8E04-DA6A1532ECC2">
                <dc:Bounds height="720.0" width="1327.0" x="627.0" y="24.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_FA77D7D8-9C02-4006-942A-B003AEDA5E3C" id="S1364754596594__FA77D7D8-9C02-4006-942A-B003AEDA5E3C">
                <dc:Bounds height="30.0" width="30.0" x="667.0" y="268.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_7D509478-6734-4004-B618-32339FA33D31" isMarkerVisible="true" id="S1364754596595__7D509478-6734-4004-B618-32339FA33D31">
                <dc:Bounds height="42.0" width="42.0" x="734.0" y="263.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_AF4F8D5E-E399-4ED8-992F-9AA653C17D6E" isExpanded="true" id="S1364754596596__AF4F8D5E-E399-4ED8-992F-9AA653C17D6E">
                <dc:Bounds height="226.0" width="426.0" x="801.0" y="480.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_25E36E2C-9196-4170-8BA3-52DDF55D177E" id="S1364754596597__25E36E2C-9196-4170-8BA3-52DDF55D177E">
                <dc:Bounds height="30.0" width="30.0" x="843.0" y="602.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_D226B9E0-0194-481E-AAEC-32473D45FEEF" id="S1364754596598__D226B9E0-0194-481E-AAEC-32473D45FEEF">
                <dc:Bounds height="68.0" width="83.0" x="938.0" y="584.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_4C551546-C127-4CD9-9106-78A3FC8978A6" id="S1364754596599__4C551546-C127-4CD9-9106-78A3FC8978A6">
                <dc:Bounds height="32.0" width="32.0" x="1115.0" y="601.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_C96534C9-934E-415D-8903-28DA8712B25E" id="S1364754596600__C96534C9-934E-415D-8903-28DA8712B25E">
                <dc:Bounds height="38.0" width="30.0" x="1018.0" y="489.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_91C1F9A1-0EB9-4FD4-A2A7-99C2E8C34854" id="S1364754596602__91C1F9A1-0EB9-4FD4-A2A7-99C2E8C34854">
                <dc:Bounds height="68.0" width="83.0" x="811.0" y="250.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_A9E2794B-4C41-429B-9C04-46C5B8741DDC" id="S1364754596603__A9E2794B-4C41-429B-9C04-46C5B8741DDC">
                <dc:Bounds height="68.0" width="83.0" x="930.0" y="250.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_EA5D13A2-32CB-4F3D-80EF-F0886538C228" isMarkerVisible="true" id="S1364754596604__EA5D13A2-32CB-4F3D-80EF-F0886538C228">
                <dc:Bounds height="42.0" width="42.0" x="1050.0" y="263.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_8040CF1A-3CAA-4A98-8E94-DD405EF233E9" id="S1364754596605__8040CF1A-3CAA-4A98-8E94-DD405EF233E9">
                <dc:Bounds height="68.0" width="83.0" x="1108.0" y="144.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_5C0BF369-3360-43C3-9792-3E6492BA7291" isMarkerVisible="true" id="S1364754596606__5C0BF369-3360-43C3-9792-3E6492BA7291">
                <dc:Bounds height="42.0" width="42.0" x="1208.0" y="263.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_C89D1737-9813-44C2-A5D5-87649AE7AEC6" isExpanded="true" id="S1364754596607__C89D1737-9813-44C2-A5D5-87649AE7AEC6">
                <dc:Bounds height="228.0" width="451.0" x="1339.0" y="478.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_F9A272EE-D325-44CF-AFFC-4A615D2C9971" id="S1364754596608__F9A272EE-D325-44CF-AFFC-4A615D2C9971">
                <dc:Bounds height="30.0" width="30.0" x="1396.0" y="602.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_52CCF00D-C0E3-4931-8D4E-6C989E317A07" id="S1364754596609__52CCF00D-C0E3-4931-8D4E-6C989E317A07">
                <dc:Bounds height="68.0" width="83.0" x="1474.0" y="583.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_2BBAB508-4026-40F7-8FC3-23E68E77EE46" id="S1364754596610__2BBAB508-4026-40F7-8FC3-23E68E77EE46">
                <dc:Bounds height="32.0" width="32.0" x="1687.0" y="601.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_4134CEB9-F012-4F9E-9EF3-932E18E731E5" id="S1364754596611__4134CEB9-F012-4F9E-9EF3-932E18E731E5">
                <dc:Bounds height="38.0" width="30.0" x="1546.0" y="487.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_071B5D0A-5225-4E55-9105-8D15169DAC96" id="S1364754596613__071B5D0A-5225-4E55-9105-8D15169DAC96">
                <dc:Bounds height="68.0" width="83.0" x="1359.0" y="250.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_2A752317-508C-4BB1-9AE7-49FBC7391B2B" id="S1364754596614__2A752317-508C-4BB1-9AE7-49FBC7391B2B">
                <dc:Bounds height="68.0" width="83.0" x="1489.0" y="250.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_B78F09D7-A493-4FDC-B20C-B251C7405D95" isMarkerVisible="true" id="S1364754596615__B78F09D7-A493-4FDC-B20C-B251C7405D95">
                <dc:Bounds height="42.0" width="42.0" x="1620.0" y="263.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_DFFBC045-8147-468B-BC85-DAF1134E19CF" id="S1364754596616__DFFBC045-8147-468B-BC85-DAF1134E19CF">
                <dc:Bounds height="68.0" width="83.0" x="1744.0" y="250.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_B67579E4-E038-4D9D-AA46-A3F9628CADA1" id="S1364754596617__B67579E4-E038-4D9D-AA46-A3F9628CADA1">
                <dc:Bounds height="32.0" width="32.0" x="1880.0" y="268.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_A5699C3D-74E0-497C-8B62-607B9909A0C9" id="S1364754596618__A5699C3D-74E0-497C-8B62-607B9909A0C9">
                <dc:Bounds height="38.0" width="30.0" x="1489.0" y="144.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_956694A6-DFD0-4422-800E-A7DF51A627C0" id="S1364754596620__956694A6-DFD0-4422-800E-A7DF51A627C0">
                <dc:Bounds height="68.0" width="83.0" x="2018.0" y="250.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_78172A06-7EC8-47CC-B49B-01EAD0676195" id="S1364754596621__78172A06-7EC8-47CC-B49B-01EAD0676195">
                <dc:Bounds height="68.0" width="83.0" x="2241.0" y="250.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_4CFC937C-2E42-4671-859E-42E710931963" id="S1364754596622__4CFC937C-2E42-4671-859E-42E710931963">
                <dc:Bounds height="32.0" width="32.0" x="2368.0" y="268.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_12A4A22E-9449-4E50-BDFC-AC00C8DE8660" id="S1364754596623__12A4A22E-9449-4E50-BDFC-AC00C8DE8660">
                <dc:Bounds height="68.0" width="83.0" x="2134.0" y="250.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_44E5E2EF-2B2F-4689-8531-4D451808B0A6" id="S1364754596624__44E5E2EF-2B2F-4689-8531-4D451808B0A6">
                <dc:Bounds height="38.0" width="30.0" x="254.0" y="545.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_6F155721-2EB2-4570-BFE0-E39C0B3EAD82" id="S1364754596625__6F155721-2EB2-4570-BFE0-E39C0B3EAD82">
                <dc:Bounds height="38.0" width="30.0" x="143.0" y="320.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNEdge bpmnElement="_E2740126-A38E-40E2-9FA9-554778B51381" id="E1364754596630__E2740126-A38E-40E2-9FA9-554778B51381">
                <di:waypoint x="775.0" y="284.0"/>
                <di:waypoint x="789.0" y="284.0"/>
                <di:waypoint x="811.0" y="284.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_79CF3D66-DDC0-4E70-A721-206B98C9106D" id="E1364754596631__79CF3D66-DDC0-4E70-A721-206B98C9106D">
                <di:waypoint x="2101.0" y="284.0"/>
                <di:waypoint x="2134.0" y="284.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_7BCC27D0-D619-4895-92F5-4516D9583479" id="E1364754596632__7BCC27D0-D619-4895-92F5-4516D9583479">
                <di:waypoint x="1442.0" y="272.0"/>
                <di:waypoint x="1456.0" y="272.0"/>
                <di:waypoint x="1489.0" y="272.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_F165F4A8-69B1-4B19-A1A4-470BDE12FA77" id="E1364754596633__F165F4A8-69B1-4B19-A1A4-470BDE12FA77">
                <di:waypoint x="894.0" y="284.0"/>
                <di:waypoint x="930.0" y="284.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_24A3FEEC-8DE6-42DC-9B85-D076EB8909A4" id="E1364754596634__24A3FEEC-8DE6-42DC-9B85-D076EB8909A4">
                <di:waypoint x="1021.0" y="618.0"/>
                <di:waypoint x="1035.0" y="618.0"/>
                <di:waypoint x="1115.0" y="618.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_BEFA7BF4-D1C2-47CB-B0CD-EF87E541B1BC" id="E1364754596635__BEFA7BF4-D1C2-47CB-B0CD-EF87E541B1BC">
                <di:waypoint x="1229.0" y="263.0"/>
                <di:waypoint x="1229.0" y="178.0"/>
                <di:waypoint x="1192.0" y="178.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_D5635CA0-2E65-458D-A25B-B7EAC7E888E2" sourceElement="S1364754596589__BA2B78BE-06A0-46C8-9BA2-D9EC923FDEAA" id="E1364754596636__D5635CA0-2E65-458D-A25B-B7EAC7E888E2">
                <di:waypoint x="209.0" y="475.0"/>
                <di:waypoint x="209.0" y="564.0"/>
                <di:waypoint x="254.0" y="564.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_FE1BBBD3-1730-4BC0-895D-76106317615D" id="E1364754596637__FE1BBBD3-1730-4BC0-895D-76106317615D">
                <di:waypoint x="1014.0" y="284.0"/>
                <di:waypoint x="1028.0" y="284.0"/>
                <di:waypoint x="1050.0" y="284.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_1F31B20E-FE41-440D-9D44-E7437D1639C6" id="E1364754596638__1F31B20E-FE41-440D-9D44-E7437D1639C6">
                <di:waypoint x="371.0" y="441.0"/>
                <di:waypoint x="385.0" y="441.0"/>
                <di:waypoint x="407.0" y="441.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_896FB358-BF3A-4609-8E83-8405D72DEA9B" id="E1364754596639__896FB358-BF3A-4609-8E83-8405D72DEA9B">
                <di:waypoint x="131.0" y="441.0"/>
                <di:waypoint x="145.0" y="441.0"/>
                <di:waypoint x="167.0" y="441.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_222A5787-C138-497B-8638-02121C5E0477" id="E1364754596640__222A5787-C138-497B-8638-02121C5E0477">
                <di:waypoint x="251.0" y="441.0"/>
                <di:waypoint x="287.0" y="441.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_0884CEBC-44CE-4BE2-958F-8941946BDA64" id="E1364754596641__0884CEBC-44CE-4BE2-958F-8941946BDA64">
                <di:waypoint x="1954.0" y="283.0"/>
                <di:waypoint x="1968.0" y="283.0"/>
                <di:waypoint x="2018.0" y="284.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_7586D519-92CA-4824-93B9-59E925689D65" targetElement="S1364754596614__2A752317-508C-4BB1-9AE7-49FBC7391B2B" id="E1364754596642__7586D519-92CA-4824-93B9-59E925689D65">
                <di:waypoint x="1519.0" y="163.0"/>
                <di:waypoint x="1544.0" y="163.0"/>
                <di:waypoint x="1544.0" y="250.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_751A4C0A-FC0F-441E-A587-4016BE8101B3" id="E1364754596643__751A4C0A-FC0F-441E-A587-4016BE8101B3">
                <di:waypoint x="1249.0" y="284.0"/>
                <di:waypoint x="1359.0" y="284.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_9C46FDB0-2EBD-4B2F-A72A-0189A4D76A73" id="E1364754596644__9C46FDB0-2EBD-4B2F-A72A-0189A4D76A73">
                <di:waypoint x="1640.0" y="304.0"/>
                <di:waypoint x="1640.0" y="343.0"/>
                <di:waypoint x="754.0" y="343.0"/>
                <di:waypoint x="755.0" y="304.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_F298A83E-5AD6-4BB6-95AF-E5B0A26A51FC" id="E1364754596645__F298A83E-5AD6-4BB6-95AF-E5B0A26A51FC">
                <di:waypoint x="1108.0" y="178.0"/>
                <di:waypoint x="1070.0" y="178.0"/>
                <di:waypoint x="1070.0" y="263.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_C2B6A48C-B636-4186-955B-9C73CD3FA580" targetElement="S1364754596590__D4804AD8-3EE4-47F1-942C-D9EAEA2811F0" id="E1364754596646__C2B6A48C-B636-4186-955B-9C73CD3FA580">
                <di:waypoint x="285.0" y="564.0"/>
                <di:waypoint x="329.0" y="564.0"/>
                <di:waypoint x="329.0" y="475.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_3B161ED4-4C10-4349-9A2D-B4E002D5EC0E" id="E1364754596647__3B161ED4-4C10-4349-9A2D-B4E002D5EC0E">
                <di:waypoint x="427.0" y="420.0"/>
                <di:waypoint x="427.0" y="283.0"/>
                <di:waypoint x="627.0" y="283.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_3654E294-536A-4CD2-9950-11F02657EE60" id="E1364754596648__3654E294-536A-4CD2-9950-11F02657EE60">
                <di:waypoint x="427.0" y="462.0"/>
                <di:waypoint x="427.0" y="564.0"/>
                <di:waypoint x="462.0" y="564.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_9EB2F46F-FA87-4DB3-9EA5-4CBA7FC355B2" targetElement="S1364754596589__BA2B78BE-06A0-46C8-9BA2-D9EC923FDEAA" id="E1364754596649__9EB2F46F-FA87-4DB3-9EA5-4CBA7FC355B2">
                <di:waypoint x="174.0" y="339.0"/>
                <di:waypoint x="209.0" y="339.0"/>
                <di:waypoint x="209.0" y="407.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_9DBCFE15-F025-4A3B-A3F7-41BFCFA182D1" sourceElement="S1364754596609__52CCF00D-C0E3-4931-8D4E-6C989E317A07" id="E1364754596650__9DBCFE15-F025-4A3B-A3F7-41BFCFA182D1">
                <di:waypoint x="1490.0" y="583.0"/>
                <di:waypoint x="1490.0" y="506.0"/>
                <di:waypoint x="1546.0" y="506.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_56B35746-D946-481B-95EF-27D2CB8F4D29" id="E1364754596651__56B35746-D946-481B-95EF-27D2CB8F4D29">
                <di:waypoint x="1827.0" y="284.0"/>
                <di:waypoint x="1841.0" y="284.0"/>
                <di:waypoint x="1880.0" y="284.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_CB71865E-954A-4D3D-874F-8DB33A5B391B" id="E1364754596652__CB71865E-954A-4D3D-874F-8DB33A5B391B">
                <di:waypoint x="2217.0" y="284.0"/>
                <di:waypoint x="2241.0" y="284.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_4799D2B0-A204-4A08-94ED-796C25D9AE57" id="E1364754596653__4799D2B0-A204-4A08-94ED-796C25D9AE57">
                <di:waypoint x="1661.0" y="284.0"/>
                <di:waypoint x="1675.0" y="284.0"/>
                <di:waypoint x="1744.0" y="284.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_77A40DB9-8B5A-4E50-9138-ADCA63E4A219" id="E1364754596654__77A40DB9-8B5A-4E50-9138-ADCA63E4A219">
                <di:waypoint x="698.0" y="284.0"/>
                <di:waypoint x="734.0" y="284.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_62BD6E5E-B5C0-4719-86CE-D5E30A1D128F" id="E1364754596655__62BD6E5E-B5C0-4719-86CE-D5E30A1D128F">
                <di:waypoint x="873.0" y="618.0"/>
                <di:waypoint x="887.0" y="618.0"/>
                <di:waypoint x="938.0" y="618.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_53EFF0AE-C44D-4EA4-A3AF-FA7E52B4CE52" id="E1364754596656__53EFF0AE-C44D-4EA4-A3AF-FA7E52B4CE52">
                <di:waypoint x="1091.0" y="284.0"/>
                <di:waypoint x="1208.0" y="284.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_94CD5662-8EB9-4B23-A486-8B6970314AD7" sourceElement="S1364754596598__D226B9E0-0194-481E-AAEC-32473D45FEEF" id="E1364754596657__94CD5662-8EB9-4B23-A486-8B6970314AD7">
                <di:waypoint x="954.0" y="584.0"/>
                <di:waypoint x="954.0" y="509.0"/>
                <di:waypoint x="1018.0" y="508.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_8C74C362-DDEF-48B9-AED2-E4034E917A40" id="E1364754596658__8C74C362-DDEF-48B9-AED2-E4034E917A40">
                <di:waypoint x="1572.0" y="284.0"/>
                <di:waypoint x="1586.0" y="284.0"/>
                <di:waypoint x="1620.0" y="284.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_CF5A1710-35F8-48B6-85FD-A90C99FEC5B3" id="E1364754596659__CF5A1710-35F8-48B6-85FD-A90C99FEC5B3">
                <di:waypoint x="1426.0" y="617.0"/>
                <di:waypoint x="1440.0" y="617.0"/>
                <di:waypoint x="1474.0" y="617.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_9088D441-44C5-462B-8695-47D60A7BC451" id="E1364754596660__9088D441-44C5-462B-8695-47D60A7BC451">
                <di:waypoint x="2324.0" y="284.0"/>
                <di:waypoint x="2338.0" y="284.0"/>
                <di:waypoint x="2368.0" y="284.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_19517CEB-6A0E-4B88-8911-FEEEFE3B55CE" id="E1364754596661__19517CEB-6A0E-4B88-8911-FEEEFE3B55CE">
                <di:waypoint x="1557.0" y="617.0"/>
                <di:waypoint x="1571.0" y="617.0"/>
                <di:waypoint x="1687.0" y="617.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNEdge>
        </bpmndi:BPMNPlane>
    </bpmndi:BPMNDiagram>
    <semantic:relationship type="BPSimData">
        <semantic:extensionElements>
            <bpsim:BPSimData>
                <bpsim:Scenario author="Tim Stephenson" created="2013-03-06T21:00:00" id="S1" modified="2013-03-06T21:00:00" name="Scenario 1: Main flow without sub-processes">
                    <bpsim:ScenarioParameters replication="3">
                        <bpsim:Duration>
                            <bpsim:DurationParameter value="PT60H"/>
                        </bpsim:Duration>
                    </bpsim:ScenarioParameters>
                    <bpsim:ElementParameters elementRef="_6">
                        <bpsim:ControlParameters>
                            <bpsim:TriggerCount>
                                <bpsim:ResultRequest>count</bpsim:ResultRequest>
                            </bpsim:TriggerCount>
                        </bpsim:ControlParameters>
                    </bpsim:ElementParameters>
                    <bpsim:ElementParameters elementRef="_51BDA265-2FF5-40CB-B68D-1FBF9DAAA74C">
                        <bpsim:ControlParameters>
                            <bpsim:InterTriggerTimer>
                                <bpsim:DurationParameter value="PT24M"/>
                            </bpsim:InterTriggerTimer>
                            <bpsim:TriggerCount>
                                <bpsim:ResultRequest>count</bpsim:ResultRequest>
                            </bpsim:TriggerCount>
                        </bpsim:ControlParameters>
                        <bpsim:PropertyParameters>
                            <bpsim:Property name="noOfIssues">
                                <bpsim:TruncatedNormalDistribution max="1000" mean="2" min="1" standardDeviation="1"/>
                            </bpsim:Property>
                        </bpsim:PropertyParameters>
                    </bpsim:ElementParameters>
                    <bpsim:ElementParameters elementRef="_071B5D0A-5225-4E55-9105-8D15169DAC96">
                        <bpsim:ControlParameters>
                            <bpsim:TriggerCount>
                                <bpsim:ResultRequest>count</bpsim:ResultRequest>
                            </bpsim:TriggerCount>
                        </bpsim:ControlParameters>
                        <bpsim:PropertyParameters>
                            <bpsim:Property name="noOfIssues">
                                <bpsim:ExpressionParameter value="getProperty(''noOfIssues'') -1"/>
                            </bpsim:Property>
                        </bpsim:PropertyParameters>
                    </bpsim:ElementParameters>
                    <bpsim:ElementParameters elementRef="_8040CF1A-3CAA-4A98-8E94-DD405EF233E9">
                        <bpsim:PropertyParameters>
                            <bpsim:Property name="noOfIssues">
                                <bpsim:ExpressionParameter value="getProperty(''noOfIssues'') + 1"/>
                            </bpsim:Property>
                        </bpsim:PropertyParameters>
                    </bpsim:ElementParameters>
                    <bpsim:ElementParameters elementRef="_9C46FDB0-2EBD-4B2F-A72A-0189A4D76A73">
                        <bpsim:ControlParameters>
                            <bpsim:Condition>
                                <bpsim:ExpressionParameter value="getProperty(''noOfIssues'') != 0"/>
                            </bpsim:Condition>
                        </bpsim:ControlParameters>
                    </bpsim:ElementParameters>
                    <bpsim:ElementParameters elementRef="_4799D2B0-A204-4A08-94ED-796C25D9AE57">
                        <bpsim:ControlParameters>
                            <bpsim:Condition>
                                <bpsim:ExpressionParameter value="getProperty(''noOfIssues'') = 0"/>
                            </bpsim:Condition>
                        </bpsim:ControlParameters>
                    </bpsim:ElementParameters>
                    <bpsim:ElementParameters elementRef="_BEFA7BF4-D1C2-47CB-B0CD-EF87E541B1BC">
                        <bpsim:ControlParameters>
                            <bpsim:Probability>
                                <bpsim:FloatingParameter value="0.25"/>
                            </bpsim:Probability>
                        </bpsim:ControlParameters>
                    </bpsim:ElementParameters>
                    <bpsim:ElementParameters elementRef="_751A4C0A-FC0F-441E-A587-4016BE8101B3">
                        <bpsim:ControlParameters>
                            <bpsim:Probability>
                                <bpsim:FloatingParameter value="0.75"/>
                            </bpsim:Probability>
                        </bpsim:ControlParameters>
                    </bpsim:ElementParameters>
                    <bpsim:ElementParameters elementRef="_3B161ED4-4C10-4349-9A2D-B4E002D5EC0E">
                        <bpsim:ControlParameters>
                            <bpsim:Probability>
                                <bpsim:FloatingParameter value="0.66"/>
                            </bpsim:Probability>
                        </bpsim:ControlParameters>
                    </bpsim:ElementParameters>
                    <bpsim:ElementParameters elementRef="_3654E294-536A-4CD2-9950-11F02657EE60">
                        <bpsim:ControlParameters>
                            <bpsim:Probability>
                                <bpsim:FloatingParameter value="0.33"/>
                            </bpsim:Probability>
                        </bpsim:ControlParameters>
                    </bpsim:ElementParameters>
                    <bpsim:ElementParameters elementRef="_87E52808-857B-45B0-93E8-F6D7AC0B4B3E">
                        <bpsim:ControlParameters>
                            <bpsim:TriggerCount>
                                <bpsim:ResultRequest>count</bpsim:ResultRequest>
                            </bpsim:TriggerCount>
                        </bpsim:ControlParameters>
                    </bpsim:ElementParameters>
                    <bpsim:ElementParameters elementRef="_FA77D7D8-9C02-4006-942A-B003AEDA5E3C">
                        <bpsim:ControlParameters>
                            <bpsim:TriggerCount>
                                <bpsim:ResultRequest>count</bpsim:ResultRequest>
                            </bpsim:TriggerCount>
                        </bpsim:ControlParameters>
                    </bpsim:ElementParameters>
                    <bpsim:ElementParameters elementRef="_B67579E4-E038-4D9D-AA46-A3F9628CADA1">
                        <bpsim:ControlParameters>
                            <bpsim:TriggerCount>
                                <bpsim:ResultRequest>count</bpsim:ResultRequest>
                            </bpsim:TriggerCount>
                        </bpsim:ControlParameters>
                    </bpsim:ElementParameters>
                    <bpsim:ElementParameters elementRef="_4CFC937C-2E42-4671-859E-42E710931963">
                        <bpsim:ControlParameters>
                            <bpsim:TriggerCount>
                                <bpsim:ResultRequest>count</bpsim:ResultRequest>
                            </bpsim:TriggerCount>
                        </bpsim:ControlParameters>
                    </bpsim:ElementParameters>
                </bpsim:Scenario>
                <bpsim:Scenario id="S2" inherits="S1" name="Scenario 2: Main and Secondary paths">
                    <bpsim:ElementParameters elementRef="_2BBAB508-4026-40F7-8FC3-23E68E77EE46">
                        <bpsim:ControlParameters>
                            <bpsim:TriggerCount>
                                <bpsim:ResultRequest>count</bpsim:ResultRequest>
                            </bpsim:TriggerCount>
                        </bpsim:ControlParameters>
                    </bpsim:ElementParameters>
                    <bpsim:ElementParameters elementRef="_F9A272EE-D325-44CF-AFFC-4A615D2C9971">
                        <bpsim:ControlParameters>
                            <bpsim:Probability>
                                <bpsim:FloatingParameter value="0.05"/>
                            </bpsim:Probability>
                            <bpsim:InterTriggerTimer>
                                <bpsim:DurationParameter value="PT0M"/>
                            </bpsim:InterTriggerTimer>
                            <bpsim:TriggerCount>
                                <bpsim:ResultRequest>count</bpsim:ResultRequest>
                                <bpsim:NumericParameter value="1"/>
                            </bpsim:TriggerCount>
                        </bpsim:ControlParameters>
                    </bpsim:ElementParameters>
                </bpsim:Scenario>
            </bpsim:BPSimData>
        </semantic:extensionElements>
        <semantic:source>_1364754596385</semantic:source>
        <semantic:target>_1364754596385</semantic:target>
    </semantic:relationship>
</semantic:definitions>
	'
]

{ #category : #examples }
BPSimImplementerGuidev1_0_2Test class >> loanProcessV1_0_bpmn [
	^ '<?xml version="1.0" encoding="ISO-8859-1" standalone="yes"?>
<semantic:definitions id="_1364754643385" name="Loan Process v0.20" targetNamespace="http://www.trisotech.com/definitions/_1364754643385" xmlns:dc="http://www.omg.org/spec/DD/20100524/DC" xmlns:bpsim="http://www.bpsim.org/schemas/1.0" xmlns:di="http://www.omg.org/spec/DD/20100524/DI" xmlns:semantic="http://www.omg.org/spec/BPMN/20100524/MODEL" xmlns:bpmndi="http://www.omg.org/spec/BPMN/20100524/DI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <semantic:message id="_1364754643401"/>
    <semantic:message id="_1364754643403"/>
    <semantic:message id="_1364754643417"/>
    <semantic:message id="_1364754643422"/>
    <semantic:message id="_1364754643428"/>
    <semantic:process isExecutable="false" id="_6">
        <semantic:laneSet id="ls_1364754643532">
            <semantic:lane name="Loan officer" id="_81354509-EC39-44E5-A266-4286CBB1EFAC">
                <semantic:flowNodeRef>_4E504F9B-2618-424F-ABAA-C4D4CC2D75E0</semantic:flowNodeRef>
                <semantic:flowNodeRef>_8576B2C5-068B-4A21-A035-A3F55CA7AA70</semantic:flowNodeRef>
                <semantic:flowNodeRef>_0CA1F609-5DFA-43E2-96DE-6CBD97BFAC5A</semantic:flowNodeRef>
                <semantic:flowNodeRef>_C94EFA57-E605-4564-BFC4-22A84C660A6A</semantic:flowNodeRef>
                <semantic:flowNodeRef>_D94158CC-F5C2-46A2-96A2-CD8B02AF14B4</semantic:flowNodeRef>
                <semantic:flowNodeRef>_DA142784-0125-46E0-A3CA-004302BD5E21</semantic:flowNodeRef>
                <semantic:flowNodeRef>_A2A06973-DC30-4BCF-BF0F-1FD60D68E1EB</semantic:flowNodeRef>
                <semantic:flowNodeRef>_63474DBF-E8E4-4C29-AD38-E46DE50EE080</semantic:flowNodeRef>
                <semantic:flowNodeRef>_BAE2D4BB-902F-4C3C-AF76-A0CABBA9A7AE</semantic:flowNodeRef>
                <semantic:flowNodeRef>_6E1A332C-9187-4C4A-BD0F-27167F940786</semantic:flowNodeRef>
                <semantic:flowNodeRef>_2017EC19-4BD5-40D7-9014-E7D337A68E01</semantic:flowNodeRef>
                <semantic:flowNodeRef>_65F6E8B9-FDD3-4770-B12B-87862F37BDF6</semantic:flowNodeRef>
                <semantic:flowNodeRef>_D6383F72-7F7A-48F8-A742-A26F36A8DC10</semantic:flowNodeRef>
                <semantic:flowNodeRef>_F366069F-C180-4D69-B2BF-4124649EC36F</semantic:flowNodeRef>
                <semantic:flowNodeRef>_C77E51FD-9C1B-40F7-9273-100E47069B11</semantic:flowNodeRef>
            </semantic:lane>
            <semantic:lane name="Title Researcher" id="_B634801B-C2C5-4C55-A4AD-17882B1E87F2">
                <semantic:flowNodeRef>_4A0E10F8-6AC7-4AF0-AFD3-5E0CB00BD316</semantic:flowNodeRef>
                <semantic:flowNodeRef>_ACDC390F-49FD-43A3-ACD6-1EBB8074801D</semantic:flowNodeRef>
            </semantic:lane>
            <semantic:lane name="Loan Underwriter" id="_357D85DD-EB4D-4D21-AAD7-D9895DA1633B">
                <semantic:flowNodeRef>_3330ACC4-BCD9-422A-ADCD-7DDF06A2042D</semantic:flowNodeRef>
                <semantic:flowNodeRef>_32AE6A44-B449-40FE-9055-69819469BF98</semantic:flowNodeRef>
                <semantic:flowNodeRef>_57EE71B2-5287-46A2-9B24-83A68131714C</semantic:flowNodeRef>
            </semantic:lane>
        </semantic:laneSet>
        <semantic:dataObject isCollection="false" id="DF1364754643533"/>
        <semantic:startEvent name="Receive  Loan  Application" id="_4E504F9B-2618-424F-ABAA-C4D4CC2D75E0">
            <semantic:outgoing>_72A5DDBE-554D-4014-BE8C-FB2E7642F4C3</semantic:outgoing>
            <semantic:dataOutput id="Dout1364754643587"/>
            <semantic:dataOutputAssociation id="_5D0B2CCB-8CD7-4D85-B56B-2095BDBF6240">
                <semantic:sourceRef>Dout1364754643587</semantic:sourceRef>
                <semantic:targetRef>_F36BDDC0-AD29-47B6-8102-9BF334EFB012</semantic:targetRef>
            </semantic:dataOutputAssociation>
            <semantic:outputSet>
                <semantic:dataOutputRefs>Dout1364754643587</semantic:dataOutputRefs>
            </semantic:outputSet>
            <semantic:messageEventDefinition messageRef="_1364754643401"/>
        </semantic:startEvent>
        <semantic:intermediateThrowEvent name="Request Credit Report" id="_8576B2C5-068B-4A21-A035-A3F55CA7AA70">
            <semantic:incoming>_F39FB372-FB0E-475E-8174-D9F6C1EFABA9</semantic:incoming>
            <semantic:outgoing>_2DC8CE0B-492C-4326-A36C-FA37E695F6B8</semantic:outgoing>
            <semantic:messageEventDefinition messageRef="_1364754643403"/>
        </semantic:intermediateThrowEvent>
        <semantic:userTask implementation="##WebService" completionQuantity="1" isForCompensation="false" startQuantity="1" name="Verify Employment" id="_0CA1F609-5DFA-43E2-96DE-6CBD97BFAC5A">
            <semantic:incoming>_4300C232-1B1B-4D7D-9056-A153E31A2A5E</semantic:incoming>
            <semantic:outgoing>_8663B922-4BE9-4192-8BC8-0578B127A8F1</semantic:outgoing>
        </semantic:userTask>
        <semantic:userTask implementation="##WebService" completionQuantity="1" isForCompensation="false" startQuantity="1" name="Review Loan Application" id="_C94EFA57-E605-4564-BFC4-22A84C660A6A">
            <semantic:incoming>_B9562572-75E4-4143-BC81-4D79CEDB65D6</semantic:incoming>
            <semantic:outgoing>_A80D6FF4-D222-4AAF-9161-8FB83F91AEED</semantic:outgoing>
        </semantic:userTask>
        <semantic:parallelGateway gatewayDirection="Unspecified" name="" id="_D94158CC-F5C2-46A2-96A2-CD8B02AF14B4">
            <semantic:incoming>_0E7BF85E-0000-43F9-B735-3BF726227B81</semantic:incoming>
            <semantic:outgoing>_4300C232-1B1B-4D7D-9056-A153E31A2A5E</semantic:outgoing>
            <semantic:outgoing>_F39FB372-FB0E-475E-8174-D9F6C1EFABA9</semantic:outgoing>
            <semantic:outgoing>_880E2204-2897-40BA-9C2F-B81F9580EF75</semantic:outgoing>
        </semantic:parallelGateway>
        <semantic:sendTask implementation="##WebService" messageRef="_1364754643417" completionQuantity="1" isForCompensation="false" startQuantity="1" name="Send Approval Letter" id="_DA142784-0125-46E0-A3CA-004302BD5E21">
            <semantic:incoming>_3D6F2455-BFFB-44BB-A052-892FB15FEEB4</semantic:incoming>
            <semantic:outgoing>_906AE477-1AA9-443C-AFFD-C0F2AAE20D83</semantic:outgoing>
        </semantic:sendTask>
        <semantic:endEvent name="Loan Request Rejected" id="_A2A06973-DC30-4BCF-BF0F-1FD60D68E1EB">
            <semantic:incoming>_0AEB1821-0E16-4CC8-BC7C-9AF71C35F88F</semantic:incoming>
        </semantic:endEvent>
        <semantic:exclusiveGateway gatewayDirection="Unspecified" name="Approved?" id="_63474DBF-E8E4-4C29-AD38-E46DE50EE080">
            <semantic:incoming>_A80D6FF4-D222-4AAF-9161-8FB83F91AEED</semantic:incoming>
            <semantic:outgoing>_93351D59-990B-46B0-80AB-FEEF088E9D7B</semantic:outgoing>
            <semantic:outgoing>_3D6F2455-BFFB-44BB-A052-892FB15FEEB4</semantic:outgoing>
        </semantic:exclusiveGateway>
        <semantic:intermediateCatchEvent parallelMultiple="false" name="Receive  Credit  Report" id="_BAE2D4BB-902F-4C3C-AF76-A0CABBA9A7AE">
            <semantic:incoming>_2DC8CE0B-492C-4326-A36C-FA37E695F6B8</semantic:incoming>
            <semantic:outgoing>_D8676C4E-977F-4441-B9AA-9E0F82898D34</semantic:outgoing>
            <semantic:messageEventDefinition messageRef="_1364754643422"/>
        </semantic:intermediateCatchEvent>
        <semantic:endEvent name="Loan Request Approved" id="_6E1A332C-9187-4C4A-BD0F-27167F940786">
            <semantic:incoming>_DEAA6495-03EC-479A-BAED-836083B9B19F</semantic:incoming>
        </semantic:endEvent>
        <semantic:userTask implementation="##WebService" completionQuantity="1" isForCompensation="false" startQuantity="1" name="Record Loan Application" id="_2017EC19-4BD5-40D7-9014-E7D337A68E01">
            <semantic:incoming>_72A5DDBE-554D-4014-BE8C-FB2E7642F4C3</semantic:incoming>
            <semantic:outgoing>_0E7BF85E-0000-43F9-B735-3BF726227B81</semantic:outgoing>
            <semantic:ioSpecification>
                <semantic:dataInput id="Din1364754643584"/>
                <semantic:inputSet>
                    <semantic:dataInputRefs>Din1364754643584</semantic:dataInputRefs>
                </semantic:inputSet>
                <semantic:outputSet/>
            </semantic:ioSpecification>
            <semantic:dataInputAssociation id="_8BF5972D-13A9-4941-A60A-F338F0347B05">
                <semantic:sourceRef>_F36BDDC0-AD29-47B6-8102-9BF334EFB012</semantic:sourceRef>
                <semantic:targetRef>Din1364754643584</semantic:targetRef>
            </semantic:dataInputAssociation>
        </semantic:userTask>
        <semantic:userTask implementation="##WebService" completionQuantity="1" isForCompensation="false" startQuantity="1" name="Close-Out Rejection" id="_65F6E8B9-FDD3-4770-B12B-87862F37BDF6">
            <semantic:incoming>_07B03EA5-891A-4BF5-8779-1A6912D3B183</semantic:incoming>
            <semantic:outgoing>_0AEB1821-0E16-4CC8-BC7C-9AF71C35F88F</semantic:outgoing>
            <semantic:ioSpecification>
                <semantic:dataOutput id="Dout1364754643585"/>
                <semantic:inputSet/>
                <semantic:outputSet>
                    <semantic:dataOutputRefs>Dout1364754643585</semantic:dataOutputRefs>
                </semantic:outputSet>
            </semantic:ioSpecification>
            <semantic:dataOutputAssociation id="_346DBF5F-09DC-4A36-95E4-5019CA5D6457">
                <semantic:sourceRef>Dout1364754643585</semantic:sourceRef>
                <semantic:targetRef>_676BDDAC-A319-426B-96DF-E1F1EEF38EFB</semantic:targetRef>
            </semantic:dataOutputAssociation>
        </semantic:userTask>
        <semantic:sendTask implementation="##WebService" messageRef="_1364754643428" completionQuantity="1" isForCompensation="false" startQuantity="1" name="Send Rejection Letter" id="_D6383F72-7F7A-48F8-A742-A26F36A8DC10">
            <semantic:incoming>_93351D59-990B-46B0-80AB-FEEF088E9D7B</semantic:incoming>
            <semantic:outgoing>_07B03EA5-891A-4BF5-8779-1A6912D3B183</semantic:outgoing>
        </semantic:sendTask>
        <semantic:userTask implementation="##WebService" completionQuantity="1" isForCompensation="false" startQuantity="1" name="Close-out Approval" id="_F366069F-C180-4D69-B2BF-4124649EC36F">
            <semantic:incoming>_BCC30BA7-C001-4D9D-B69C-2D99DA0706C5</semantic:incoming>
            <semantic:outgoing>_DEAA6495-03EC-479A-BAED-836083B9B19F</semantic:outgoing>
            <semantic:ioSpecification>
                <semantic:dataOutput id="Dout1364754643586"/>
                <semantic:inputSet/>
                <semantic:outputSet>
                    <semantic:dataOutputRefs>Dout1364754643586</semantic:dataOutputRefs>
                </semantic:outputSet>
            </semantic:ioSpecification>
            <semantic:dataOutputAssociation id="_95613936-EA5E-432B-8F84-5D29E58EA82F">
                <semantic:sourceRef>Dout1364754643586</semantic:sourceRef>
                <semantic:targetRef>_A383CA8A-59EA-4E2E-8A40-38363ACF6547</semantic:targetRef>
            </semantic:dataOutputAssociation>
        </semantic:userTask>
        <semantic:parallelGateway gatewayDirection="Unspecified" name="" id="_C77E51FD-9C1B-40F7-9273-100E47069B11">
            <semantic:incoming>_D8676C4E-977F-4441-B9AA-9E0F82898D34</semantic:incoming>
            <semantic:incoming>_8663B922-4BE9-4192-8BC8-0578B127A8F1</semantic:incoming>
            <semantic:incoming>_78F951B5-7470-4538-AA6C-CD08E4D422C6</semantic:incoming>
            <semantic:outgoing>_B9562572-75E4-4143-BC81-4D79CEDB65D6</semantic:outgoing>
        </semantic:parallelGateway>
        <semantic:manualTask completionQuantity="1" isForCompensation="false" startQuantity="1" name="Perform Title Search" id="_4A0E10F8-6AC7-4AF0-AFD3-5E0CB00BD316">
            <semantic:incoming>_880E2204-2897-40BA-9C2F-B81F9580EF75</semantic:incoming>
            <semantic:outgoing>_60D986A6-6530-4D75-9648-AF5AFB1CA9A6</semantic:outgoing>
        </semantic:manualTask>
        <semantic:userTask implementation="##WebService" completionQuantity="1" isForCompensation="false" startQuantity="1" name="Review Title Report" id="_ACDC390F-49FD-43A3-ACD6-1EBB8074801D">
            <semantic:incoming>_60D986A6-6530-4D75-9648-AF5AFB1CA9A6</semantic:incoming>
            <semantic:outgoing>_78F951B5-7470-4538-AA6C-CD08E4D422C6</semantic:outgoing>
        </semantic:userTask>
        <semantic:scriptTask completionQuantity="1" isForCompensation="false" startQuantity="1" name="Set with Default Terms" id="_3330ACC4-BCD9-422A-ADCD-7DDF06A2042D">
            <semantic:incoming>_F36A03D5-2835-4BEB-9835-612961CB01B0</semantic:incoming>
            <semantic:outgoing>_81B53174-A333-4892-8A4E-0654D0DC9059</semantic:outgoing>
            <semantic:script/>
        </semantic:scriptTask>
        <semantic:exclusiveGateway gatewayDirection="Unspecified" name="" id="_32AE6A44-B449-40FE-9055-69819469BF98">
            <semantic:incoming>_F8D6251D-FEDF-40FE-9541-89714A5F81D8</semantic:incoming>
            <semantic:incoming>_81B53174-A333-4892-8A4E-0654D0DC9059</semantic:incoming>
            <semantic:outgoing>_BCC30BA7-C001-4D9D-B69C-2D99DA0706C5</semantic:outgoing>
        </semantic:exclusiveGateway>
        <semantic:userTask implementation="##WebService" completionQuantity="1" isForCompensation="false" startQuantity="1" name="Underwrite Loan with Terms" id="_57EE71B2-5287-46A2-9B24-83A68131714C">
            <semantic:incoming>_906AE477-1AA9-443C-AFFD-C0F2AAE20D83</semantic:incoming>
            <semantic:outgoing>_F8D6251D-FEDF-40FE-9541-89714A5F81D8</semantic:outgoing>
        </semantic:userTask>
        <semantic:boundaryEvent attachedToRef="_57EE71B2-5287-46A2-9B24-83A68131714C" cancelActivity="true" parallelMultiple="false" name="1 Hour Time Limit" id="_542AE8E6-9CEA-43E3-8177-C685A9F430FE">
            <semantic:outgoing>_F36A03D5-2835-4BEB-9835-612961CB01B0</semantic:outgoing>
            <semantic:timerEventDefinition>
                <semantic:timeDate/>
            </semantic:timerEventDefinition>
        </semantic:boundaryEvent>
        <semantic:dataObjectReference dataObjectRef="DF1364754643533" name="Loan Application" id="_A383CA8A-59EA-4E2E-8A40-38363ACF6547">
            <semantic:dataState name="Approved"/>
        </semantic:dataObjectReference>
        <semantic:dataObjectReference dataObjectRef="DF1364754643533" name="Loan Application" id="_F36BDDC0-AD29-47B6-8102-9BF334EFB012">
            <semantic:dataState name="Initial"/>
        </semantic:dataObjectReference>
        <semantic:dataObjectReference dataObjectRef="DF1364754643533" name="Loan Application" id="_676BDDAC-A319-426B-96DF-E1F1EEF38EFB">
            <semantic:dataState name="Rejected"/>
        </semantic:dataObjectReference>
        <semantic:sequenceFlow sourceRef="_4E504F9B-2618-424F-ABAA-C4D4CC2D75E0" targetRef="_2017EC19-4BD5-40D7-9014-E7D337A68E01" name="" id="_72A5DDBE-554D-4014-BE8C-FB2E7642F4C3"/>
        <semantic:sequenceFlow sourceRef="_2017EC19-4BD5-40D7-9014-E7D337A68E01" targetRef="_D94158CC-F5C2-46A2-96A2-CD8B02AF14B4" name="" id="_0E7BF85E-0000-43F9-B735-3BF726227B81"/>
        <semantic:sequenceFlow sourceRef="_D94158CC-F5C2-46A2-96A2-CD8B02AF14B4" targetRef="_0CA1F609-5DFA-43E2-96DE-6CBD97BFAC5A" name="" id="_4300C232-1B1B-4D7D-9056-A153E31A2A5E"/>
        <semantic:sequenceFlow sourceRef="_D94158CC-F5C2-46A2-96A2-CD8B02AF14B4" targetRef="_8576B2C5-068B-4A21-A035-A3F55CA7AA70" name="" id="_F39FB372-FB0E-475E-8174-D9F6C1EFABA9"/>
        <semantic:sequenceFlow sourceRef="_8576B2C5-068B-4A21-A035-A3F55CA7AA70" targetRef="_BAE2D4BB-902F-4C3C-AF76-A0CABBA9A7AE" name="" id="_2DC8CE0B-492C-4326-A36C-FA37E695F6B8"/>
        <semantic:sequenceFlow sourceRef="_BAE2D4BB-902F-4C3C-AF76-A0CABBA9A7AE" targetRef="_C77E51FD-9C1B-40F7-9273-100E47069B11" name="" id="_D8676C4E-977F-4441-B9AA-9E0F82898D34"/>
        <semantic:sequenceFlow sourceRef="_0CA1F609-5DFA-43E2-96DE-6CBD97BFAC5A" targetRef="_C77E51FD-9C1B-40F7-9273-100E47069B11" name="" id="_8663B922-4BE9-4192-8BC8-0578B127A8F1"/>
        <semantic:sequenceFlow sourceRef="_D94158CC-F5C2-46A2-96A2-CD8B02AF14B4" targetRef="_4A0E10F8-6AC7-4AF0-AFD3-5E0CB00BD316" name="" id="_880E2204-2897-40BA-9C2F-B81F9580EF75"/>
        <semantic:sequenceFlow sourceRef="_4A0E10F8-6AC7-4AF0-AFD3-5E0CB00BD316" targetRef="_ACDC390F-49FD-43A3-ACD6-1EBB8074801D" name="" id="_60D986A6-6530-4D75-9648-AF5AFB1CA9A6"/>
        <semantic:sequenceFlow sourceRef="_ACDC390F-49FD-43A3-ACD6-1EBB8074801D" targetRef="_C77E51FD-9C1B-40F7-9273-100E47069B11" name="" id="_78F951B5-7470-4538-AA6C-CD08E4D422C6"/>
        <semantic:sequenceFlow sourceRef="_C77E51FD-9C1B-40F7-9273-100E47069B11" targetRef="_C94EFA57-E605-4564-BFC4-22A84C660A6A" name="" id="_B9562572-75E4-4143-BC81-4D79CEDB65D6"/>
        <semantic:sequenceFlow sourceRef="_C94EFA57-E605-4564-BFC4-22A84C660A6A" targetRef="_63474DBF-E8E4-4C29-AD38-E46DE50EE080" name="" id="_A80D6FF4-D222-4AAF-9161-8FB83F91AEED"/>
        <semantic:sequenceFlow sourceRef="_63474DBF-E8E4-4C29-AD38-E46DE50EE080" targetRef="_D6383F72-7F7A-48F8-A742-A26F36A8DC10" name="No" id="_93351D59-990B-46B0-80AB-FEEF088E9D7B"/>
        <semantic:sequenceFlow sourceRef="_D6383F72-7F7A-48F8-A742-A26F36A8DC10" targetRef="_65F6E8B9-FDD3-4770-B12B-87862F37BDF6" name="" id="_07B03EA5-891A-4BF5-8779-1A6912D3B183"/>
        <semantic:sequenceFlow sourceRef="_65F6E8B9-FDD3-4770-B12B-87862F37BDF6" targetRef="_A2A06973-DC30-4BCF-BF0F-1FD60D68E1EB" name="" id="_0AEB1821-0E16-4CC8-BC7C-9AF71C35F88F"/>
        <semantic:sequenceFlow sourceRef="_63474DBF-E8E4-4C29-AD38-E46DE50EE080" targetRef="_DA142784-0125-46E0-A3CA-004302BD5E21" name="Yes" id="_3D6F2455-BFFB-44BB-A052-892FB15FEEB4"/>
        <semantic:sequenceFlow sourceRef="_DA142784-0125-46E0-A3CA-004302BD5E21" targetRef="_57EE71B2-5287-46A2-9B24-83A68131714C" name="" id="_906AE477-1AA9-443C-AFFD-C0F2AAE20D83"/>
        <semantic:sequenceFlow sourceRef="_57EE71B2-5287-46A2-9B24-83A68131714C" targetRef="_32AE6A44-B449-40FE-9055-69819469BF98" name="" id="_F8D6251D-FEDF-40FE-9541-89714A5F81D8"/>
        <semantic:sequenceFlow sourceRef="_542AE8E6-9CEA-43E3-8177-C685A9F430FE" targetRef="_3330ACC4-BCD9-422A-ADCD-7DDF06A2042D" name="" id="_F36A03D5-2835-4BEB-9835-612961CB01B0"/>
        <semantic:sequenceFlow sourceRef="_3330ACC4-BCD9-422A-ADCD-7DDF06A2042D" targetRef="_32AE6A44-B449-40FE-9055-69819469BF98" name="" id="_81B53174-A333-4892-8A4E-0654D0DC9059"/>
        <semantic:sequenceFlow sourceRef="_32AE6A44-B449-40FE-9055-69819469BF98" targetRef="_F366069F-C180-4D69-B2BF-4124649EC36F" name="" id="_BCC30BA7-C001-4D9D-B69C-2D99DA0706C5"/>
        <semantic:sequenceFlow sourceRef="_F366069F-C180-4D69-B2BF-4124649EC36F" targetRef="_6E1A332C-9187-4C4A-BD0F-27167F940786" name="" id="_DEAA6495-03EC-479A-BAED-836083B9B19F"/>
    </semantic:process>
    <bpmndi:BPMNDiagram documentation="" id="Trisotech_Visio-_6" name="Loan Origination" resolution="96.00000267028808">
        <bpmndi:BPMNPlane bpmnElement="_6">
            <bpmndi:BPMNShape bpmnElement="_81354509-EC39-44E5-A266-4286CBB1EFAC" isHorizontal="true" id="S1364754643557__81354509-EC39-44E5-A266-4286CBB1EFAC">
                <dc:Bounds height="471.0" width="1524.0" x="384.0" y="120.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_B634801B-C2C5-4C55-A4AD-17882B1E87F2" isHorizontal="true" id="S1364754643558__B634801B-C2C5-4C55-A4AD-17882B1E87F2">
                <dc:Bounds height="168.0" width="1524.0" x="384.0" y="591.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_357D85DD-EB4D-4D21-AAD7-D9895DA1633B" isHorizontal="true" id="S1364754643559__357D85DD-EB4D-4D21-AAD7-D9895DA1633B">
                <dc:Bounds height="282.0" width="1524.0" x="384.0" y="759.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_4E504F9B-2618-424F-ABAA-C4D4CC2D75E0" id="S1364754643560__4E504F9B-2618-424F-ABAA-C4D4CC2D75E0">
                <dc:Bounds height="30.0" width="30.0" x="470.0" y="315.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_8576B2C5-068B-4A21-A035-A3F55CA7AA70" id="S1364754643561__8576B2C5-068B-4A21-A035-A3F55CA7AA70">
                <dc:Bounds height="32.0" width="32.0" x="818.0" y="314.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_0CA1F609-5DFA-43E2-96DE-6CBD97BFAC5A" id="S1364754643562__0CA1F609-5DFA-43E2-96DE-6CBD97BFAC5A">
                <dc:Bounds height="68.0" width="105.0" x="830.0" y="171.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_C94EFA57-E605-4564-BFC4-22A84C660A6A" id="S1364754643563__C94EFA57-E605-4564-BFC4-22A84C660A6A">
                <dc:Bounds height="68.0" width="105.0" x="1137.0" y="296.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_D94158CC-F5C2-46A2-96A2-CD8B02AF14B4" id="S1364754643564__D94158CC-F5C2-46A2-96A2-CD8B02AF14B4">
                <dc:Bounds height="42.0" width="42.0" x="705.0" y="309.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_DA142784-0125-46E0-A3CA-004302BD5E21" id="S1364754643565__DA142784-0125-46E0-A3CA-004302BD5E21">
                <dc:Bounds height="68.0" width="105.0" x="1405.0" y="388.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_A2A06973-DC30-4BCF-BF0F-1FD60D68E1EB" id="S1364754643566__A2A06973-DC30-4BCF-BF0F-1FD60D68E1EB">
                <dc:Bounds height="32.0" width="32.0" x="1818.0" y="189.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_63474DBF-E8E4-4C29-AD38-E46DE50EE080" isMarkerVisible="true" id="S1364754643567__63474DBF-E8E4-4C29-AD38-E46DE50EE080">
                <dc:Bounds height="42.0" width="42.0" x="1293.0" y="309.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_BAE2D4BB-902F-4C3C-AF76-A0CABBA9A7AE" id="S1364754643568__BAE2D4BB-902F-4C3C-AF76-A0CABBA9A7AE">
                <dc:Bounds height="32.0" width="32.0" x="940.0" y="314.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_6E1A332C-9187-4C4A-BD0F-27167F940786" id="S1364754643569__6E1A332C-9187-4C4A-BD0F-27167F940786">
                <dc:Bounds height="32.0" width="32.0" x="1818.0" y="411.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_2017EC19-4BD5-40D7-9014-E7D337A68E01" id="S1364754643570__2017EC19-4BD5-40D7-9014-E7D337A68E01">
                <dc:Bounds height="68.0" width="105.0" x="549.0" y="296.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_65F6E8B9-FDD3-4770-B12B-87862F37BDF6" id="S1364754643571__65F6E8B9-FDD3-4770-B12B-87862F37BDF6">
                <dc:Bounds height="68.0" width="105.0" x="1663.0" y="171.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_D6383F72-7F7A-48F8-A742-A26F36A8DC10" id="S1364754643572__D6383F72-7F7A-48F8-A742-A26F36A8DC10">
                <dc:Bounds height="68.0" width="105.0" x="1404.0" y="171.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_F366069F-C180-4D69-B2BF-4124649EC36F" id="S1364754643573__F366069F-C180-4D69-B2BF-4124649EC36F">
                <dc:Bounds height="68.0" width="105.0" x="1664.0" y="393.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_C77E51FD-9C1B-40F7-9273-100E47069B11" id="S1364754643574__C77E51FD-9C1B-40F7-9273-100E47069B11">
                <dc:Bounds height="42.0" width="42.0" x="1044.0" y="309.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_4A0E10F8-6AC7-4AF0-AFD3-5E0CB00BD316" id="S1364754643575__4A0E10F8-6AC7-4AF0-AFD3-5E0CB00BD316">
                <dc:Bounds height="68.0" width="105.0" x="780.0" y="639.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_ACDC390F-49FD-43A3-ACD6-1EBB8074801D" id="S1364754643576__ACDC390F-49FD-43A3-ACD6-1EBB8074801D">
                <dc:Bounds height="68.0" width="105.0" x="930.0" y="639.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_3330ACC4-BCD9-422A-ADCD-7DDF06A2042D" id="S1364754643577__3330ACC4-BCD9-422A-ADCD-7DDF06A2042D">
                <dc:Bounds height="68.0" width="105.0" x="1563.0" y="931.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_32AE6A44-B449-40FE-9055-69819469BF98" isMarkerVisible="true" id="S1364754643578__32AE6A44-B449-40FE-9055-69819469BF98">
                <dc:Bounds height="42.0" width="42.0" x="1595.0" y="839.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_57EE71B2-5287-46A2-9B24-83A68131714C" id="S1364754643579__57EE71B2-5287-46A2-9B24-83A68131714C">
                <dc:Bounds height="68.0" width="105.0" x="1405.0" y="825.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_542AE8E6-9CEA-43E3-8177-C685A9F430FE" id="S1364754643580__542AE8E6-9CEA-43E3-8177-C685A9F430FE">
                <dc:Bounds height="32.0" width="32.0" x="1416.0" y="877.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_A383CA8A-59EA-4E2E-8A40-38363ACF6547" id="S1364754643581__A383CA8A-59EA-4E2E-8A40-38363ACF6547">
                <dc:Bounds height="38.0" width="30.0" x="1738.0" y="489.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_F36BDDC0-AD29-47B6-8102-9BF334EFB012" id="S1364754643582__F36BDDC0-AD29-47B6-8102-9BF334EFB012">
                <dc:Bounds height="38.0" width="30.0" x="534.0" y="187.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_676BDDAC-A319-426B-96DF-E1F1EEF38EFB" id="S1364754643583__676BDDAC-A319-426B-96DF-E1F1EEF38EFB">
                <dc:Bounds height="38.0" width="30.0" x="1738.0" y="262.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNEdge bpmnElement="_8BF5972D-13A9-4941-A60A-F338F0347B05" targetElement="S1364754643570__2017EC19-4BD5-40D7-9014-E7D337A68E01" id="E1364754643589__8BF5972D-13A9-4941-A60A-F338F0347B05">
                <di:waypoint x="564.0" y="205.0"/>
                <di:waypoint x="601.0" y="205.0"/>
                <di:waypoint x="602.0" y="296.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_81B53174-A333-4892-8A4E-0654D0DC9059" id="E1364754643590__81B53174-A333-4892-8A4E-0654D0DC9059">
                <di:waypoint x="1616.0" y="931.0"/>
                <di:waypoint x="1616.0" y="917.0"/>
                <di:waypoint x="1616.0" y="880.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_0E7BF85E-0000-43F9-B735-3BF726227B81" id="E1364754643591__0E7BF85E-0000-43F9-B735-3BF726227B81">
                <di:waypoint x="654.0" y="330.0"/>
                <di:waypoint x="668.0" y="330.0"/>
                <di:waypoint x="705.0" y="330.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_60D986A6-6530-4D75-9648-AF5AFB1CA9A6" id="E1364754643592__60D986A6-6530-4D75-9648-AF5AFB1CA9A6">
                <di:waypoint x="885.0" y="673.0"/>
                <di:waypoint x="930.0" y="673.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_72A5DDBE-554D-4014-BE8C-FB2E7642F4C3" id="E1364754643593__72A5DDBE-554D-4014-BE8C-FB2E7642F4C3">
                <di:waypoint x="500.0" y="330.0"/>
                <di:waypoint x="514.0" y="330.0"/>
                <di:waypoint x="549.0" y="330.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_8663B922-4BE9-4192-8BC8-0578B127A8F1" id="E1364754643594__8663B922-4BE9-4192-8BC8-0578B127A8F1">
                <di:waypoint x="935.0" y="205.0"/>
                <di:waypoint x="1065.0" y="205.0"/>
                <di:waypoint x="1065.0" y="309.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_DEAA6495-03EC-479A-BAED-836083B9B19F" id="E1364754643595__DEAA6495-03EC-479A-BAED-836083B9B19F">
                <di:waypoint x="1769.0" y="427.0"/>
                <di:waypoint x="1783.0" y="427.0"/>
                <di:waypoint x="1818.0" y="427.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_346DBF5F-09DC-4A36-95E4-5019CA5D6457" sourceElement="S1364754643571__65F6E8B9-FDD3-4770-B12B-87862F37BDF6" id="E1364754643596__346DBF5F-09DC-4A36-95E4-5019CA5D6457">
                <di:waypoint x="1698.0" y="239.0"/>
                <di:waypoint x="1698.0" y="280.0"/>
                <di:waypoint x="1738.0" y="281.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_BCC30BA7-C001-4D9D-B69C-2D99DA0706C5" id="E1364754643597__BCC30BA7-C001-4D9D-B69C-2D99DA0706C5">
                <di:waypoint x="1616.0" y="839.0"/>
                <di:waypoint x="1616.0" y="427.0"/>
                <di:waypoint x="1664.0" y="427.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_93351D59-990B-46B0-80AB-FEEF088E9D7B" id="E1364754643598__93351D59-990B-46B0-80AB-FEEF088E9D7B">
                <di:waypoint x="1314.0" y="309.0"/>
                <di:waypoint x="1314.0" y="205.0"/>
                <di:waypoint x="1404.0" y="205.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_A80D6FF4-D222-4AAF-9161-8FB83F91AEED" id="E1364754643599__A80D6FF4-D222-4AAF-9161-8FB83F91AEED">
                <di:waypoint x="1242.0" y="330.0"/>
                <di:waypoint x="1256.0" y="330.0"/>
                <di:waypoint x="1293.0" y="330.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_F39FB372-FB0E-475E-8174-D9F6C1EFABA9" id="E1364754643600__F39FB372-FB0E-475E-8174-D9F6C1EFABA9">
                <di:waypoint x="747.0" y="330.0"/>
                <di:waypoint x="818.0" y="330.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_F8D6251D-FEDF-40FE-9541-89714A5F81D8" id="E1364754643601__F8D6251D-FEDF-40FE-9541-89714A5F81D8">
                <di:waypoint x="1510.0" y="859.0"/>
                <di:waypoint x="1524.0" y="859.0"/>
                <di:waypoint x="1595.0" y="859.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_07B03EA5-891A-4BF5-8779-1A6912D3B183" id="E1364754643602__07B03EA5-891A-4BF5-8779-1A6912D3B183">
                <di:waypoint x="1509.0" y="205.0"/>
                <di:waypoint x="1663.0" y="205.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_5D0B2CCB-8CD7-4D85-B56B-2095BDBF6240" sourceElement="S1364754643560__4E504F9B-2618-424F-ABAA-C4D4CC2D75E0" id="E1364754643603__5D0B2CCB-8CD7-4D85-B56B-2095BDBF6240">
                <di:waypoint x="485.0" y="315.0"/>
                <di:waypoint x="485.0" y="206.0"/>
                <di:waypoint x="534.0" y="205.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_0AEB1821-0E16-4CC8-BC7C-9AF71C35F88F" id="E1364754643604__0AEB1821-0E16-4CC8-BC7C-9AF71C35F88F">
                <di:waypoint x="1768.0" y="205.0"/>
                <di:waypoint x="1782.0" y="205.0"/>
                <di:waypoint x="1818.0" y="205.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_880E2204-2897-40BA-9C2F-B81F9580EF75" id="E1364754643605__880E2204-2897-40BA-9C2F-B81F9580EF75">
                <di:waypoint x="726.0" y="351.0"/>
                <di:waypoint x="726.0" y="674.0"/>
                <di:waypoint x="780.0" y="673.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_4300C232-1B1B-4D7D-9056-A153E31A2A5E" id="E1364754643606__4300C232-1B1B-4D7D-9056-A153E31A2A5E">
                <di:waypoint x="730.0" y="313.0"/>
                <di:waypoint x="730.0" y="205.0"/>
                <di:waypoint x="830.0" y="205.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_F36A03D5-2835-4BEB-9835-612961CB01B0" id="E1364754643607__F36A03D5-2835-4BEB-9835-612961CB01B0">
                <di:waypoint x="1432.0" y="909.0"/>
                <di:waypoint x="1432.0" y="945.0"/>
                <di:waypoint x="1563.0" y="945.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_906AE477-1AA9-443C-AFFD-C0F2AAE20D83" id="E1364754643608__906AE477-1AA9-443C-AFFD-C0F2AAE20D83">
                <di:waypoint x="1457.0" y="456.0"/>
                <di:waypoint x="1457.0" y="825.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_D8676C4E-977F-4441-B9AA-9E0F82898D34" id="E1364754643609__D8676C4E-977F-4441-B9AA-9E0F82898D34">
                <di:waypoint x="973.0" y="330.0"/>
                <di:waypoint x="1044.0" y="330.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_3D6F2455-BFFB-44BB-A052-892FB15FEEB4" id="E1364754643610__3D6F2455-BFFB-44BB-A052-892FB15FEEB4">
                <di:waypoint x="1314.0" y="351.0"/>
                <di:waypoint x="1314.0" y="422.0"/>
                <di:waypoint x="1405.0" y="422.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_78F951B5-7470-4538-AA6C-CD08E4D422C6" id="E1364754643611__78F951B5-7470-4538-AA6C-CD08E4D422C6">
                <di:waypoint x="1035.0" y="673.0"/>
                <di:waypoint x="1065.0" y="673.0"/>
                <di:waypoint x="1065.0" y="351.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_2DC8CE0B-492C-4326-A36C-FA37E695F6B8" id="E1364754643612__2DC8CE0B-492C-4326-A36C-FA37E695F6B8">
                <di:waypoint x="850.0" y="330.0"/>
                <di:waypoint x="940.0" y="330.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_95613936-EA5E-432B-8F84-5D29E58EA82F" sourceElement="S1364754643573__F366069F-C180-4D69-B2BF-4124649EC36F" id="E1364754643613__95613936-EA5E-432B-8F84-5D29E58EA82F">
                <di:waypoint x="1716.0" y="461.0"/>
                <di:waypoint x="1716.0" y="508.0"/>
                <di:waypoint x="1738.0" y="507.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_B9562572-75E4-4143-BC81-4D79CEDB65D6" id="E1364754643614__B9562572-75E4-4143-BC81-4D79CEDB65D6">
                <di:waypoint x="1086.0" y="330.0"/>
                <di:waypoint x="1100.0" y="330.0"/>
                <di:waypoint x="1137.0" y="330.0"/>
                <bpmndi:BPMNLabel/>
            </bpmndi:BPMNEdge>
        </bpmndi:BPMNPlane>
    </bpmndi:BPMNDiagram>
    <semantic:relationship type="BPSimData">
        <semantic:extensionElements>
            <bpsim:BPSimData>
                <bpsim:Scenario author="Tim Stephenson" id="default" name="Scenario 1">
                    <bpsim:ScenarioParameters baseTimeUnit="min" replication="3">
                        <bpsim:Duration>
                            <bpsim:DurationParameter value="PT40H"/>
                        </bpsim:Duration>
                    </bpsim:ScenarioParameters>
                    <bpsim:ElementParameters elementRef="_6">
                        <bpsim:TimeParameters>
                            <bpsim:ProcessingTime>
                                <bpsim:ResultRequest>min</bpsim:ResultRequest>
                                <bpsim:ResultRequest>max</bpsim:ResultRequest>
                                <bpsim:ResultRequest>mean</bpsim:ResultRequest>
                            </bpsim:ProcessingTime>
                        </bpsim:TimeParameters>
                        <bpsim:ControlParameters>
                            <bpsim:TriggerCount>
                                <bpsim:ResultRequest>count</bpsim:ResultRequest>
                            </bpsim:TriggerCount>
                        </bpsim:ControlParameters>
                    </bpsim:ElementParameters>
                    <bpsim:ElementParameters elementRef="_4E504F9B-2618-424F-ABAA-C4D4CC2D75E0">
                        <bpsim:ControlParameters>
                            <bpsim:InterTriggerTimer>
                                <bpsim:TriangularDistribution max="30" min="10" mode="16"/>
                            </bpsim:InterTriggerTimer>
                            <bpsim:TriggerCount>
                                <bpsim:ResultRequest>count</bpsim:ResultRequest>
                            </bpsim:TriggerCount>
                        </bpsim:ControlParameters>
                    </bpsim:ElementParameters>
                    <bpsim:ElementParameters elementRef="_BAE2D4BB-902F-4C3C-AF76-A0CABBA9A7AE">
                        <bpsim:TimeParameters>
                            <bpsim:ProcessingTime>
                                <bpsim:TriangularDistribution max="6" min="4" mode="5"/>
                            </bpsim:ProcessingTime>
                        </bpsim:TimeParameters>
                        <bpsim:ControlParameters>
                            <bpsim:InterTriggerTimer>
                                <bpsim:TriangularDistribution max="6" min="4" mode="5"/>
                            </bpsim:InterTriggerTimer>
                        </bpsim:ControlParameters>
                    </bpsim:ElementParameters>
                    <bpsim:ElementParameters elementRef="_2017EC19-4BD5-40D7-9014-E7D337A68E01">
                        <bpsim:TimeParameters>
                            <bpsim:ProcessingTime>
                                <bpsim:ResultRequest>min</bpsim:ResultRequest>
                                <bpsim:ResultRequest>max</bpsim:ResultRequest>
                                <bpsim:ResultRequest>mean</bpsim:ResultRequest>
                                <bpsim:TruncatedNormalDistribution max="1000" mean="20" min="0" standardDeviation="1"/>
                            </bpsim:ProcessingTime>
                        </bpsim:TimeParameters>
                    </bpsim:ElementParameters>
                    <bpsim:ElementParameters elementRef="_0CA1F609-5DFA-43E2-96DE-6CBD97BFAC5A">
                        <bpsim:TimeParameters>
                            <bpsim:ProcessingTime>
                                <bpsim:ResultRequest>min</bpsim:ResultRequest>
                                <bpsim:ResultRequest>max</bpsim:ResultRequest>
                                <bpsim:ResultRequest>mean</bpsim:ResultRequest>
                                <bpsim:TruncatedNormalDistribution max="1000" mean="30" min="0" standardDeviation="4"/>
                            </bpsim:ProcessingTime>
                        </bpsim:TimeParameters>
                    </bpsim:ElementParameters>
                    <bpsim:ElementParameters elementRef="_4A0E10F8-6AC7-4AF0-AFD3-5E0CB00BD316">
                        <bpsim:TimeParameters>
                            <bpsim:ProcessingTime>
                                <bpsim:ResultRequest>min</bpsim:ResultRequest>
                                <bpsim:ResultRequest>max</bpsim:ResultRequest>
                                <bpsim:ResultRequest>mean</bpsim:ResultRequest>
                                <bpsim:TruncatedNormalDistribution max="1000" mean="60" min="0" standardDeviation="2"/>
                            </bpsim:ProcessingTime>
                        </bpsim:TimeParameters>
                    </bpsim:ElementParameters>
                    <bpsim:ElementParameters elementRef="_ACDC390F-49FD-43A3-ACD6-1EBB8074801D">
                        <bpsim:TimeParameters>
                            <bpsim:ProcessingTime>
                                <bpsim:ResultRequest>min</bpsim:ResultRequest>
                                <bpsim:ResultRequest>max</bpsim:ResultRequest>
                                <bpsim:ResultRequest>mean</bpsim:ResultRequest>
                                <bpsim:TruncatedNormalDistribution max="1000" mean="20" min="0" standardDeviation="2"/>
                            </bpsim:ProcessingTime>
                        </bpsim:TimeParameters>
                    </bpsim:ElementParameters>
                    <bpsim:ElementParameters elementRef="_C94EFA57-E605-4564-BFC4-22A84C660A6A">
                        <bpsim:TimeParameters>
                            <bpsim:ProcessingTime>
                                <bpsim:ResultRequest>min</bpsim:ResultRequest>
                                <bpsim:ResultRequest>max</bpsim:ResultRequest>
                                <bpsim:ResultRequest>mean</bpsim:ResultRequest>
                                <bpsim:TruncatedNormalDistribution max="1000" mean="30" min="0" standardDeviation="4"/>
                            </bpsim:ProcessingTime>
                        </bpsim:TimeParameters>
                    </bpsim:ElementParameters>
                    <bpsim:ElementParameters elementRef="_65F6E8B9-FDD3-4770-B12B-87862F37BDF6">
                        <bpsim:TimeParameters>
                            <bpsim:ProcessingTime>
                                <bpsim:ResultRequest>min</bpsim:ResultRequest>
                                <bpsim:ResultRequest>max</bpsim:ResultRequest>
                                <bpsim:ResultRequest>mean</bpsim:ResultRequest>
                                <bpsim:TruncatedNormalDistribution max="1000" mean="5" min="0" standardDeviation="0.25"/>
                            </bpsim:ProcessingTime>
                        </bpsim:TimeParameters>
                    </bpsim:ElementParameters>
                    <bpsim:ElementParameters elementRef="_F366069F-C180-4D69-B2BF-4124649EC36F">
                        <bpsim:TimeParameters>
                            <bpsim:ProcessingTime>
                                <bpsim:ResultRequest>min</bpsim:ResultRequest>
                                <bpsim:ResultRequest>max</bpsim:ResultRequest>
                                <bpsim:ResultRequest>mean</bpsim:ResultRequest>
                                <bpsim:TruncatedNormalDistribution max="1000" mean="10" min="0" standardDeviation="0.25"/>
                            </bpsim:ProcessingTime>
                        </bpsim:TimeParameters>
                    </bpsim:ElementParameters>
                    <bpsim:ElementParameters elementRef="_57EE71B2-5287-46A2-9B24-83A68131714C">
                        <bpsim:TimeParameters>
                            <bpsim:ProcessingTime>
                                <bpsim:ResultRequest>min</bpsim:ResultRequest>
                                <bpsim:ResultRequest>max</bpsim:ResultRequest>
                                <bpsim:ResultRequest>mean</bpsim:ResultRequest>
                                <bpsim:TruncatedNormalDistribution max="1000" mean="50" min="0" standardDeviation="10"/>
                            </bpsim:ProcessingTime>
                        </bpsim:TimeParameters>
                    </bpsim:ElementParameters>
                    <bpsim:ElementParameters elementRef="_D6383F72-7F7A-48F8-A742-A26F36A8DC10">
                        <bpsim:TimeParameters>
                            <bpsim:ProcessingTime>
                                <bpsim:DurationParameter value="PT1M"/>
                            </bpsim:ProcessingTime>
                        </bpsim:TimeParameters>
                    </bpsim:ElementParameters>
                    <bpsim:ElementParameters elementRef="_DA142784-0125-46E0-A3CA-004302BD5E21">
                        <bpsim:TimeParameters>
                            <bpsim:ProcessingTime>
                                <bpsim:DurationParameter value="PT1M"/>
                            </bpsim:ProcessingTime>
                        </bpsim:TimeParameters>
                    </bpsim:ElementParameters>
                    <bpsim:ElementParameters elementRef="_3330ACC4-BCD9-422A-ADCD-7DDF06A2042D">
                        <bpsim:TimeParameters>
                            <bpsim:ProcessingTime>
                                <bpsim:DurationParameter value="PT1M"/>
                            </bpsim:ProcessingTime>
                        </bpsim:TimeParameters>
                    </bpsim:ElementParameters>
                    <bpsim:ElementParameters elementRef="_3D6F2455-BFFB-44BB-A052-892FB15FEEB4">
                        <bpsim:ControlParameters>
                            <bpsim:Probability>
                                <bpsim:FloatingParameter value="0.27"/>
                            </bpsim:Probability>
                        </bpsim:ControlParameters>
                    </bpsim:ElementParameters>
                    <bpsim:ElementParameters elementRef="_93351D59-990B-46B0-80AB-FEEF088E9D7B">
                        <bpsim:ControlParameters>
                            <bpsim:Probability>
                                <bpsim:FloatingParameter value="0.73"/>
                            </bpsim:Probability>
                        </bpsim:ControlParameters>
                    </bpsim:ElementParameters>
                    <bpsim:ElementParameters elementRef="_6E1A332C-9187-4C4A-BD0F-27167F940786">
                        <bpsim:ControlParameters>
                            <bpsim:TriggerCount>
                                <bpsim:ResultRequest>count</bpsim:ResultRequest>
                            </bpsim:TriggerCount>
                        </bpsim:ControlParameters>
                    </bpsim:ElementParameters>
                    <bpsim:ElementParameters elementRef="_A2A06973-DC30-4BCF-BF0F-1FD60D68E1EB">
                        <bpsim:ControlParameters>
                            <bpsim:TriggerCount>
                                <bpsim:ResultRequest>count</bpsim:ResultRequest>
                            </bpsim:TriggerCount>
                        </bpsim:ControlParameters>
                    </bpsim:ElementParameters>
                    <bpsim:ElementParameters elementRef="_542AE8E6-9CEA-43E3-8177-C685A9F430FE">
                        <bpsim:ControlParameters>
                            <bpsim:InterTriggerTimer>
                                <bpsim:DurationParameter value="PT60M"/>
                            </bpsim:InterTriggerTimer>
                        </bpsim:ControlParameters>
                    </bpsim:ElementParameters>
                </bpsim:Scenario>
            </bpsim:BPSimData>
        </semantic:extensionElements>
        <semantic:source>_1364754643385</semantic:source>
        <semantic:target>_1364754643385</semantic:target>
    </semantic:relationship>
</semantic:definitions>'
]

{ #category : #examples }
BPSimImplementerGuidev1_0_2Test class >> tecnicalSupportProcessV1_0_1_bpmn [
	^ '<?xml version="1.0" encoding="ISO-8859-1" standalone="yes"?>
<semantic:definitions id="_1399929387037" name="Technical Support Process v1.0" targetNamespace="http://www.trisotech.com/definitions/_1399929387037" xmlns:dc="http://www.omg.org/spec/DD/20100524/DC" xmlns:trisofeed="http://trisotech.com/feed" xmlns:bpsim="http://www.bpsim.org/schemas/1.0" xmlns:di="http://www.omg.org/spec/DD/20100524/DI" xmlns:semantic="http://www.omg.org/spec/BPMN/20100524/MODEL" xmlns:rss="http://purl.org/rss/2.0/" xmlns:bpmndi="http://www.omg.org/spec/BPMN/20100524/DI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <semantic:resource name="Front Office" id="resource_Front_Office"/>
    <semantic:process isExecutable="false" id="WFP-40005-1">
        <semantic:manualTask completionQuantity="1" isForCompensation="false" startQuantity="1" name="Request 1st level support" id="_10-235">
            <semantic:incoming>_10-971</semantic:incoming>
            <semantic:outgoing>_10-450</semantic:outgoing>
            <semantic:performer>
                <semantic:resourceRef>resource_Front_Office</semantic:resourceRef>
            </semantic:performer>
        </semantic:manualTask>
        <semantic:startEvent name="Customer issue report" id="_10-42">
            <semantic:outgoing>_10-108</semantic:outgoing>
            <semantic:messageEventDefinition messageRef="Message_1399929387649"/>
        </semantic:startEvent>
        <semantic:manualTask completionQuantity="1" isForCompensation="false" startQuantity="1" name="Provide solution to customer" id="_10-138">
            <semantic:incoming>_10-189</semantic:incoming>
            <semantic:incoming>_10-454</semantic:incoming>
            <semantic:outgoing>_10-217</semantic:outgoing>
            <semantic:performer>
                <semantic:resourceRef>resource_Front_Office</semantic:resourceRef>
            </semantic:performer>
        </semantic:manualTask>
        <semantic:manualTask completionQuantity="1" isForCompensation="false" startQuantity="1" name="Inform customer the issue is going to be escalated" id="_10-920">
            <semantic:incoming>_10-286</semantic:incoming>
            <semantic:outgoing>_10-971</semantic:outgoing>
            <semantic:performer>
                <semantic:resourceRef>resource_Front_Office</semantic:resourceRef>
            </semantic:performer>
        </semantic:manualTask>
        <semantic:manualTask completionQuantity="1" isForCompensation="false" startQuantity="1" name="Get issue description from customer" id="_10-57">
            <semantic:incoming>_10-108</semantic:incoming>
            <semantic:incoming>_10-456</semantic:incoming>
            <semantic:outgoing>_10-136</semantic:outgoing>
            <semantic:performer>
                <semantic:resourceRef>resource_Front_Office</semantic:resourceRef>
            </semantic:performer>
        </semantic:manualTask>
        <semantic:endEvent name="Customer issue resolved" id="_10-219">
            <semantic:incoming>_10-233</semantic:incoming>
        </semantic:endEvent>
        <semantic:intermediateCatchEvent parallelMultiple="false" name="Solution received from 1st level of support" id="_10-433">
            <semantic:incoming>_10-450</semantic:incoming>
            <semantic:outgoing>_10-454</semantic:outgoing>
            <semantic:messageEventDefinition messageRef="Message_1399929387655"/>
        </semantic:intermediateCatchEvent>
        <semantic:exclusiveGateway gatewayDirection="Unspecified" name="" id="_10-114">
            <semantic:incoming>_10-136</semantic:incoming>
            <semantic:outgoing>_10-189</semantic:outgoing>
            <semantic:outgoing>_10-286</semantic:outgoing>
        </semantic:exclusiveGateway>
        <semantic:exclusiveGateway gatewayDirection="Unspecified" name="" id="_10-195">
            <semantic:incoming>_10-217</semantic:incoming>
            <semantic:outgoing>_10-233</semantic:outgoing>
            <semantic:outgoing>_10-456</semantic:outgoing>
        </semantic:exclusiveGateway>
        <semantic:sequenceFlow sourceRef="_10-42" targetRef="_10-57" name="" id="_10-108"/>
        <semantic:sequenceFlow sourceRef="_10-57" targetRef="_10-114" name="" id="_10-136"/>
        <semantic:sequenceFlow sourceRef="_10-114" targetRef="_10-138" name="Able to  provide solution" id="_10-189"/>
        <semantic:sequenceFlow sourceRef="_10-138" targetRef="_10-195" name="" id="_10-217"/>
        <semantic:sequenceFlow sourceRef="_10-195" targetRef="_10-219" name="Solution is effective" id="_10-233"/>
        <semantic:sequenceFlow sourceRef="_10-114" targetRef="_10-920" name="Unable to  provide solution" id="_10-286"/>
        <semantic:sequenceFlow sourceRef="_10-235" targetRef="_10-433" name="" id="_10-450"/>
        <semantic:sequenceFlow sourceRef="_10-433" targetRef="_10-138" name="" id="_10-454"/>
        <semantic:sequenceFlow sourceRef="_10-195" targetRef="_10-57" name="Solution is not effective" id="_10-456"/>
        <semantic:sequenceFlow sourceRef="_10-920" targetRef="_10-235" name="" id="_10-971"/>
    </semantic:process>
    <semantic:resource name="1st Level Techical Support Agent" id="resource_1st_Level_Techical_Support_Agent"/>
    <semantic:process isExecutable="false" id="WFP-40005-2">
        <semantic:endEvent name="Issue handled by 1st level support" id="_10-577">
            <semantic:incoming>_10-591</semantic:incoming>
        </semantic:endEvent>
        <semantic:exclusiveGateway gatewayDirection="Unspecified" name="" id="_10-356">
            <semantic:incoming>_10-378</semantic:incoming>
            <semantic:outgoing>_10-431</semantic:outgoing>
            <semantic:outgoing>_10-509</semantic:outgoing>
        </semantic:exclusiveGateway>
        <semantic:manualTask completionQuantity="1" isForCompensation="false" startQuantity="1" name="Find solution 1st level issue" id="_10-303">
            <semantic:incoming>_10-354</semantic:incoming>
            <semantic:outgoing>_10-378</semantic:outgoing>
            <semantic:performer>
                <semantic:resourceRef>resource_1st_Level_Techical_Support_Agent</semantic:resourceRef>
            </semantic:performer>
        </semantic:manualTask>
        <semantic:startEvent name="1st level Issue" id="_10-288">
            <semantic:outgoing>_10-354</semantic:outgoing>
            <semantic:messageEventDefinition messageRef="Message_1399929387654"/>
        </semantic:startEvent>
        <semantic:manualTask completionQuantity="1" isForCompensation="false" startQuantity="1" name="Provide solution to Front Office" id="_10-380">
            <semantic:incoming>_10-431</semantic:incoming>
            <semantic:incoming>_10-744</semantic:incoming>
            <semantic:outgoing>_10-591</semantic:outgoing>
            <semantic:performer>
                <semantic:resourceRef>resource_1st_Level_Techical_Support_Agent</semantic:resourceRef>
            </semantic:performer>
        </semantic:manualTask>
        <semantic:manualTask completionQuantity="1" isForCompensation="false" startQuantity="1" name="Request 2nd level support" id="_10-458">
            <semantic:incoming>_10-509</semantic:incoming>
            <semantic:outgoing>_10-740</semantic:outgoing>
            <semantic:performer>
                <semantic:resourceRef>resource_1st_Level_Techical_Support_Agent</semantic:resourceRef>
            </semantic:performer>
        </semantic:manualTask>
        <semantic:intermediateCatchEvent parallelMultiple="false" name="Solution received from 2nd level of support" id="_10-723">
            <semantic:incoming>_10-740</semantic:incoming>
            <semantic:outgoing>_10-744</semantic:outgoing>
            <semantic:messageEventDefinition messageRef="Message_1399929387657"/>
        </semantic:intermediateCatchEvent>
        <semantic:sequenceFlow sourceRef="_10-288" targetRef="_10-303" name="" id="_10-354"/>
        <semantic:sequenceFlow sourceRef="_10-303" targetRef="_10-356" name="" id="_10-378"/>
        <semantic:sequenceFlow sourceRef="_10-356" targetRef="_10-380" name="Able to provide  1st level solution" id="_10-431"/>
        <semantic:sequenceFlow sourceRef="_10-356" targetRef="_10-458" name="Unable to provide 1st level solution" id="_10-509"/>
        <semantic:sequenceFlow sourceRef="_10-380" targetRef="_10-577" name="" id="_10-591"/>
        <semantic:sequenceFlow sourceRef="_10-458" targetRef="_10-723" name="" id="_10-740"/>
        <semantic:sequenceFlow sourceRef="_10-723" targetRef="_10-380" name="" id="_10-744"/>
    </semantic:process>
    <semantic:resource name="Supplier" id="resource_Supplier"/>
    <semantic:process isExecutable="false" id="WFP-40005-3">
        <semantic:manualTask completionQuantity="1" isForCompensation="false" startQuantity="1" name="Find solution supplier issue" id="_10-794">
            <semantic:incoming>_10-845</semantic:incoming>
            <semantic:outgoing>_10-898</semantic:outgoing>
            <semantic:performer>
                <semantic:resourceRef>resource_Supplier</semantic:resourceRef>
            </semantic:performer>
        </semantic:manualTask>
        <semantic:startEvent name="Supplier Issue" id="_10-781">
            <semantic:outgoing>_10-845</semantic:outgoing>
            <semantic:messageEventDefinition messageRef="Message_1399929387659"/>
        </semantic:startEvent>
        <semantic:manualTask completionQuantity="1" isForCompensation="false" startQuantity="1" name="Provide solution to 2nd level support" id="_10-847">
            <semantic:incoming>_10-898</semantic:incoming>
            <semantic:outgoing>_10-916</semantic:outgoing>
            <semantic:performer>
                <semantic:resourceRef>resource_Supplier</semantic:resourceRef>
            </semantic:performer>
        </semantic:manualTask>
        <semantic:endEvent name="Issue handled by supplier" id="_10-902">
            <semantic:incoming>_10-916</semantic:incoming>
        </semantic:endEvent>
        <semantic:sequenceFlow sourceRef="_10-781" targetRef="_10-794" name="" id="_10-845"/>
        <semantic:sequenceFlow sourceRef="_10-794" targetRef="_10-847" name="" id="_10-898"/>
        <semantic:sequenceFlow sourceRef="_10-847" targetRef="_10-902" name="" id="_10-916"/>
    </semantic:process>
    <semantic:resource name="2nd Level Techical Support Agent" id="resource_2nd_Level_Techical_Support_Agent"/>
    <semantic:process isExecutable="false" id="WFP-40005-5">
        <semantic:exclusiveGateway gatewayDirection="Unspecified" name="" id="_10-593">
            <semantic:incoming>_10-615</semantic:incoming>
            <semantic:outgoing>_10-668</semantic:outgoing>
            <semantic:outgoing>_10-721</semantic:outgoing>
        </semantic:exclusiveGateway>
        <semantic:manualTask completionQuantity="1" isForCompensation="false" startQuantity="1" name="Request supplier support" id="_10-670">
            <semantic:incoming>_10-721</semantic:incoming>
            <semantic:outgoing>_10-777</semantic:outgoing>
            <semantic:performer>
                <semantic:resourceRef>resource_2nd_Level_Techical_Support_Agent</semantic:resourceRef>
            </semantic:performer>
        </semantic:manualTask>
        <semantic:manualTask completionQuantity="1" isForCompensation="false" startQuantity="1" name="Provide solution to 1st level support" id="_10-617">
            <semantic:incoming>_10-668</semantic:incoming>
            <semantic:incoming>_10-779</semantic:incoming>
            <semantic:outgoing>_10-977</semantic:outgoing>
            <semantic:performer>
                <semantic:resourceRef>resource_2nd_Level_Techical_Support_Agent</semantic:resourceRef>
            </semantic:performer>
        </semantic:manualTask>
        <semantic:intermediateCatchEvent parallelMultiple="false" name="Solution received from supplier" id="_10-760">
            <semantic:incoming>_10-777</semantic:incoming>
            <semantic:outgoing>_10-779</semantic:outgoing>
            <semantic:messageEventDefinition messageRef="Message_1399929387658"/>
        </semantic:intermediateCatchEvent>
        <semantic:manualTask completionQuantity="1" isForCompensation="false" startQuantity="1" name="Find solution 2nd level issue" id="_10-526">
            <semantic:incoming>_10-975</semantic:incoming>
            <semantic:outgoing>_10-615</semantic:outgoing>
            <semantic:performer>
                <semantic:resourceRef>resource_2nd_Level_Techical_Support_Agent</semantic:resourceRef>
            </semantic:performer>
        </semantic:manualTask>
        <semantic:startEvent name="2nd  level Issue" id="_10-511">
            <semantic:outgoing>_10-975</semantic:outgoing>
            <semantic:messageEventDefinition messageRef="Message_1399929387656"/>
        </semantic:startEvent>
        <semantic:endEvent name="Issue handled by  2 nd level support" id="_10-746">
            <semantic:incoming>_10-977</semantic:incoming>
        </semantic:endEvent>
        <semantic:sequenceFlow sourceRef="_10-526" targetRef="_10-593" name="" id="_10-615"/>
        <semantic:sequenceFlow sourceRef="_10-593" targetRef="_10-617" name="Able to provide  2nd level solution" id="_10-668"/>
        <semantic:sequenceFlow sourceRef="_10-593" targetRef="_10-670" name="Unable to provide 2nd level solution" id="_10-721"/>
        <semantic:sequenceFlow sourceRef="_10-670" targetRef="_10-760" name="" id="_10-777"/>
        <semantic:sequenceFlow sourceRef="_10-760" targetRef="_10-617" name="" id="_10-779"/>
        <semantic:sequenceFlow sourceRef="_10-511" targetRef="_10-526" name="" id="_10-975"/>
        <semantic:sequenceFlow sourceRef="_10-617" targetRef="_10-746" name="" id="_10-977"/>
    </semantic:process>
    <semantic:message id="Message_1399929387649"/>
    <semantic:message id="Message_1399929387650"/>
    <semantic:message id="Message_1399929387651"/>
    <semantic:message id="Message_1399929387652"/>
    <semantic:message id="Message_1399929387653"/>
    <semantic:message id="Message_1399929387654"/>
    <semantic:message id="Message_1399929387655"/>
    <semantic:message id="Message_1399929387656"/>
    <semantic:message id="Message_1399929387657"/>
    <semantic:message id="Message_1399929387658"/>
    <semantic:message id="Message_1399929387659"/>
    <semantic:message id="Message_1399929387660"/>
    <semantic:collaboration id="C1399929387648">
        <semantic:participant name="Customer" id="_10-1"/>
        <semantic:participant name="Front Office" processRef="WFP-40005-1" id="_10-10"/>
        <semantic:participant name="1st Level Techical Support Agent" processRef="WFP-40005-2" id="_10-18"/>
        <semantic:participant name="2nd Level Techical Support Agent" processRef="WFP-40005-5" id="_10-26"/>
        <semantic:participant name="Supplier" processRef="WFP-40005-3" id="_10-34"/>
        <semantic:messageFlow messageRef="Message_1399929387649" name="" sourceRef="_10-1" targetRef="_10-42" id="_10-55"/>
        <semantic:messageFlow messageRef="Message_1399929387650" name="" sourceRef="_10-57" targetRef="_10-1" id="_10-110"/>
        <semantic:messageFlow messageRef="Message_1399929387651" name="" sourceRef="_10-1" targetRef="_10-57" id="_10-112"/>
        <semantic:messageFlow messageRef="Message_1399929387652" name="" sourceRef="_10-138" targetRef="_10-1" id="_10-191"/>
        <semantic:messageFlow messageRef="Message_1399929387653" name="" sourceRef="_10-1" targetRef="_10-138" id="_10-193"/>
        <semantic:messageFlow messageRef="Message_1399929387654" name="" sourceRef="_10-235" targetRef="_10-288" id="_10-301"/>
        <semantic:messageFlow messageRef="Message_1399929387655" name="" sourceRef="_10-380" targetRef="_10-433" id="_10-452"/>
        <semantic:messageFlow messageRef="Message_1399929387656" name="" sourceRef="_10-458" targetRef="_10-511" id="_10-524"/>
        <semantic:messageFlow messageRef="Message_1399929387657" name="" sourceRef="_10-617" targetRef="_10-723" id="_10-742"/>
        <semantic:messageFlow messageRef="Message_1399929387658" name="" sourceRef="_10-847" targetRef="_10-760" id="_10-900"/>
        <semantic:messageFlow messageRef="Message_1399929387659" name="" sourceRef="_10-670" targetRef="_10-781" id="_10-918"/>
        <semantic:messageFlow messageRef="Message_1399929387660" name="" sourceRef="_10-920" targetRef="_10-1" id="_10-973"/>
    </semantic:collaboration>
    <bpmndi:BPMNDiagram documentation="" id="_40005" name="Scenario 1" resolution="96.00000267028808">
        <bpmndi:BPMNPlane bpmnElement="C1399929387648">
            <bpmndi:BPMNShape bpmnElement="_10-1" isHorizontal="true" id="S1399929387615__10-1">
                <dc:Bounds height="72.0" width="936.0" x="288.0" y="144.0"/>
                <bpmndi:BPMNLabel labelStyle="LS1399929387616">
                    <dc:Bounds height="49.2026760725625" width="12.804751171874997" x="292.0" y="155.0"/>
                </bpmndi:BPMNLabel>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_10-10" isHorizontal="true" id="S1399929387617__10-10">
                <dc:Bounds height="354.0" width="936.0" x="288.0" y="258.0"/>
                <bpmndi:BPMNLabel labelStyle="LS1399929387616">
                    <dc:Bounds height="58.686440721" width="12.804751171874997" x="292.0" y="405.0"/>
                </bpmndi:BPMNLabel>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_10-18" isHorizontal="true" id="S1399929387618__10-18">
                <dc:Bounds height="240.0" width="936.0" x="288.0" y="672.0"/>
                <bpmndi:BPMNLabel labelStyle="LS1399929387616">
                    <dc:Bounds height="159.50321318193755" width="12.804751171874997" x="292.0" y="712.0"/>
                </bpmndi:BPMNLabel>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_10-26" isHorizontal="true" id="S1399929387619__10-26">
                <dc:Bounds height="246.0" width="936.0" x="288.0" y="966.0"/>
                <bpmndi:BPMNLabel labelStyle="LS1399929387616">
                    <dc:Bounds height="163.0708401350625" width="12.804751171874997" x="292.0" y="1007.0"/>
                </bpmndi:BPMNLabel>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_10-34" isHorizontal="true" id="S1399929387620__10-34">
                <dc:Bounds height="168.0" width="936.0" x="288.0" y="1260.0"/>
                <bpmndi:BPMNLabel labelStyle="LS1399929387616">
                    <dc:Bounds height="42.1033108381875" width="12.804751171874997" x="292.0" y="1322.0"/>
                </bpmndi:BPMNLabel>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_10-235" id="S1399929387621__10-235">
                <dc:Bounds height="68.0" width="83.0" x="759.0" y="476.0"/>
                <bpmndi:BPMNLabel labelStyle="LS1399929387616">
                    <dc:Bounds height="38.404653515625" width="72.33333333333334" x="764.3333333333334" y="490.79767324218744"/>
                </bpmndi:BPMNLabel>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_10-42" id="S1399929387622__10-42">
                <dc:Bounds height="30.0" width="30.0" x="345.0" y="495.0"/>
                <bpmndi:BPMNLabel labelStyle="LS1399929387616">
                    <dc:Bounds height="25.604702343750013" width="94.93333333333335" x="312.5333333333333" y="530.3333333333334"/>
                </bpmndi:BPMNLabel>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_10-138" id="S1399929387623__10-138">
                <dc:Bounds height="68.0" width="83.0" x="853.0" y="306.0"/>
                <bpmndi:BPMNLabel labelStyle="LS1399929387616">
                    <dc:Bounds height="38.404653515625" width="72.33333333333334" x="858.3333333333334" y="320.79767324218744"/>
                </bpmndi:BPMNLabel>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_10-920" id="S1399929387624__10-920">
                <dc:Bounds height="68.0" width="83.0" x="640.0" y="476.0"/>
                <bpmndi:BPMNLabel labelStyle="LS1399929387616">
                    <dc:Bounds height="64.00455585937502" width="72.33333333333334" x="645.3333333333334" y="477.9977220703125"/>
                </bpmndi:BPMNLabel>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_10-57" id="S1399929387625__10-57">
                <dc:Bounds height="68.0" width="83.0" x="411.0" y="476.0"/>
                <bpmndi:BPMNLabel labelStyle="LS1399929387616">
                    <dc:Bounds height="51.204604687499994" width="72.33333333333334" x="416.3333333333333" y="484.39769765625"/>
                </bpmndi:BPMNLabel>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_10-219" id="S1399929387626__10-219">
                <dc:Bounds height="32.0" width="32.0" x="1149.0" y="324.0"/>
                <bpmndi:BPMNLabel labelStyle="LS1399929387616">
                    <dc:Bounds height="25.604702343750013" width="94.93333333333335" x="1117.5333333333333" y="361.3333333333333"/>
                </bpmndi:BPMNLabel>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_10-433" id="S1399929387627__10-433">
                <dc:Bounds height="32.0" width="32.0" x="878.0" y="494.0"/>
                <bpmndi:BPMNLabel labelStyle="LS1399929387616">
                    <dc:Bounds height="38.404653515625" width="94.93333333333335" x="846.5333333333334" y="531.3333333333334"/>
                </bpmndi:BPMNLabel>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_10-114" isMarkerVisible="true" id="S1399929387628__10-114">
                <dc:Bounds height="42.0" width="42.0" x="519.0" y="489.0"/>
                <bpmndi:BPMNLabel labelStyle="LS1399929387616"/>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_10-195" isMarkerVisible="true" id="S1399929387629__10-195">
                <dc:Bounds height="42.0" width="42.0" x="996.0" y="319.0"/>
                <bpmndi:BPMNLabel labelStyle="LS1399929387616"/>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_10-577" id="S1399929387630__10-577">
                <dc:Bounds height="32.0" width="32.0" x="1149.0" y="728.0"/>
                <bpmndi:BPMNLabel labelStyle="LS1399929387616">
                    <dc:Bounds height="25.604702343750013" width="94.93333333333335" x="1117.5333333333333" y="765.3333333333334"/>
                </bpmndi:BPMNLabel>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_10-356" isMarkerVisible="true" id="S1399929387631__10-356">
                <dc:Bounds height="42.0" width="42.0" x="519.0" y="723.0"/>
                <bpmndi:BPMNLabel labelStyle="LS1399929387616"/>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_10-303" id="S1399929387632__10-303">
                <dc:Bounds height="68.0" width="83.0" x="403.0" y="710.0"/>
                <bpmndi:BPMNLabel labelStyle="LS1399929387616">
                    <dc:Bounds height="38.404653515625" width="72.33333333333334" x="408.3333333333333" y="724.7976732421876"/>
                </bpmndi:BPMNLabel>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_10-288" id="S1399929387633__10-288">
                <dc:Bounds height="30.0" width="30.0" x="345.0" y="729.0"/>
                <bpmndi:BPMNLabel labelStyle="LS1399929387616">
                    <dc:Bounds height="12.804751171875008" width="94.93333333333335" x="312.5333333333333" y="764.3333333333333"/>
                </bpmndi:BPMNLabel>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_10-380" id="S1399929387634__10-380">
                <dc:Bounds height="68.0" width="83.0" x="853.0" y="710.0"/>
                <bpmndi:BPMNLabel labelStyle="LS1399929387616">
                    <dc:Bounds height="38.404653515625" width="72.33333333333334" x="858.3333333333334" y="724.7976732421876"/>
                </bpmndi:BPMNLabel>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_10-458" id="S1399929387635__10-458">
                <dc:Bounds height="68.0" width="83.0" x="640.0" y="806.0"/>
                <bpmndi:BPMNLabel labelStyle="LS1399929387616">
                    <dc:Bounds height="38.404653515625" width="72.33333333333334" x="645.3333333333334" y="820.7976732421876"/>
                </bpmndi:BPMNLabel>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_10-723" id="S1399929387636__10-723">
                <dc:Bounds height="32.0" width="32.0" x="878.0" y="824.0"/>
                <bpmndi:BPMNLabel labelStyle="LS1399929387616">
                    <dc:Bounds height="38.404653515625" width="94.93333333333335" x="846.5333333333334" y="861.3333333333334"/>
                </bpmndi:BPMNLabel>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_10-794" id="S1399929387637__10-794">
                <dc:Bounds height="68.0" width="83.0" x="546.0" y="1310.0"/>
                <bpmndi:BPMNLabel labelStyle="LS1399929387616">
                    <dc:Bounds height="51.204604687499994" width="72.33333333333334" x="551.3333333333334" y="1318.3976976562499"/>
                </bpmndi:BPMNLabel>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_10-781" id="S1399929387638__10-781">
                <dc:Bounds height="30.0" width="30.0" x="348.0" y="1329.0"/>
                <bpmndi:BPMNLabel labelStyle="LS1399929387616">
                    <dc:Bounds height="12.804751171875008" width="94.93333333333335" x="315.5333333333333" y="1364.3333333333333"/>
                </bpmndi:BPMNLabel>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_10-847" id="S1399929387639__10-847">
                <dc:Bounds height="68.0" width="83.0" x="853.0" y="1310.0"/>
                <bpmndi:BPMNLabel labelStyle="LS1399929387616">
                    <dc:Bounds height="51.204604687499994" width="72.33333333333334" x="858.3333333333334" y="1318.3976976562499"/>
                </bpmndi:BPMNLabel>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_10-902" id="S1399929387640__10-902">
                <dc:Bounds height="32.0" width="32.0" x="1149.0" y="1328.0"/>
                <bpmndi:BPMNLabel labelStyle="LS1399929387616">
                    <dc:Bounds height="25.604702343750013" width="94.93333333333335" x="1117.5333333333333" y="1365.333333333333"/>
                </bpmndi:BPMNLabel>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_10-593" isMarkerVisible="true" id="S1399929387641__10-593">
                <dc:Bounds height="42.0" width="42.0" x="519.0" y="1025.0"/>
                <bpmndi:BPMNLabel labelStyle="LS1399929387616"/>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_10-670" id="S1399929387642__10-670">
                <dc:Bounds height="68.0" width="83.0" x="640.0" y="1108.0"/>
                <bpmndi:BPMNLabel labelStyle="LS1399929387616">
                    <dc:Bounds height="38.404653515625" width="72.33333333333334" x="645.3333333333334" y="1122.7976732421876"/>
                </bpmndi:BPMNLabel>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_10-617" id="S1399929387643__10-617">
                <dc:Bounds height="68.0" width="83.0" x="853.0" y="1012.0"/>
                <bpmndi:BPMNLabel labelStyle="LS1399929387616">
                    <dc:Bounds height="51.204604687499994" width="72.33333333333334" x="858.3333333333334" y="1020.39769765625"/>
                </bpmndi:BPMNLabel>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_10-760" id="S1399929387644__10-760">
                <dc:Bounds height="32.0" width="32.0" x="878.0" y="1126.0"/>
                <bpmndi:BPMNLabel labelStyle="LS1399929387616">
                    <dc:Bounds height="25.604702343750013" width="94.93333333333335" x="846.5333333333334" y="1163.333333333333"/>
                </bpmndi:BPMNLabel>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_10-526" id="S1399929387645__10-526">
                <dc:Bounds height="68.0" width="83.0" x="403.0" y="1012.0"/>
                <bpmndi:BPMNLabel labelStyle="LS1399929387616">
                    <dc:Bounds height="51.204604687499994" width="72.33333333333334" x="408.3333333333333" y="1020.39769765625"/>
                </bpmndi:BPMNLabel>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_10-511" id="S1399929387646__10-511">
                <dc:Bounds height="30.0" width="30.0" x="345.0" y="1031.0"/>
                <bpmndi:BPMNLabel labelStyle="LS1399929387616">
                    <dc:Bounds height="12.804751171875008" width="94.93333333333335" x="312.5333333333333" y="1066.3333333333333"/>
                </bpmndi:BPMNLabel>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNShape bpmnElement="_10-746" id="S1399929387647__10-746">
                <dc:Bounds height="32.0" width="32.0" x="1149.0" y="1030.0"/>
                <bpmndi:BPMNLabel labelStyle="LS1399929387616">
                    <dc:Bounds height="25.604702343750013" width="94.93333333333335" x="1117.5333333333333" y="1067.333333333333"/>
                </bpmndi:BPMNLabel>
            </bpmndi:BPMNShape>
            <bpmndi:BPMNEdge bpmnElement="_10-779" id="E1399929387661__10-779">
                <di:waypoint x="894.0" y="1126.0"/>
                <di:waypoint x="894.0" y="1080.0"/>
                <bpmndi:BPMNLabel labelStyle="LS1399929387616"/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_10-615" id="E1399929387662__10-615">
                <di:waypoint x="486.0" y="1046.0"/>
                <di:waypoint x="519.0" y="1046.0"/>
                <bpmndi:BPMNLabel labelStyle="LS1399929387616"/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_10-916" id="E1399929387663__10-916">
                <di:waypoint x="936.0" y="1344.0"/>
                <di:waypoint x="1149.0" y="1344.0"/>
                <bpmndi:BPMNLabel labelStyle="LS1399929387616"/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_10-777" id="E1399929387664__10-777">
                <di:waypoint x="723.0" y="1142.0"/>
                <di:waypoint x="878.0" y="1142.0"/>
                <bpmndi:BPMNLabel labelStyle="LS1399929387616"/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_10-452" id="E1399929387665__10-452">
                <di:waypoint x="894.0" y="710.0"/>
                <di:waypoint x="894.0" y="526.0"/>
                <bpmndi:BPMNLabel labelStyle="LS1399929387616"/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_10-191" id="E1399929387666__10-191">
                <di:waypoint x="880.0" y="306.0"/>
                <di:waypoint x="880.0" y="288.0"/>
                <di:waypoint x="882.0" y="288.0"/>
                <di:waypoint x="882.0" y="216.0"/>
                <bpmndi:BPMNLabel labelStyle="LS1399929387616"/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_10-108" id="E1399929387667__10-108">
                <di:waypoint x="375.0" y="510.0"/>
                <di:waypoint x="411.0" y="510.0"/>
                <bpmndi:BPMNLabel labelStyle="LS1399929387616"/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_10-301" id="E1399929387668__10-301">
                <di:waypoint x="800.0" y="544.0"/>
                <di:waypoint x="800.0" y="574.0"/>
                <di:waypoint x="360.0" y="574.0"/>
                <di:waypoint x="360.0" y="729.0"/>
                <bpmndi:BPMNLabel labelStyle="LS1399929387616"/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_10-450" id="E1399929387669__10-450">
                <di:waypoint x="842.0" y="510.0"/>
                <di:waypoint x="878.0" y="510.0"/>
                <bpmndi:BPMNLabel labelStyle="LS1399929387616"/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_10-431" id="E1399929387670__10-431">
                <di:waypoint x="560.0" y="744.0"/>
                <di:waypoint x="853.0" y="744.0"/>
                <bpmndi:BPMNLabel labelStyle="LS1399929387616">
                    <dc:Bounds height="25.604702343750013" width="94.93333333333335" x="665.5333333333334" y="731.197648828125"/>
                </bpmndi:BPMNLabel>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_10-456" id="E1399929387671__10-456">
                <di:waypoint x="1016.0" y="361.0"/>
                <di:waypoint x="1016.0" y="562.0"/>
                <di:waypoint x="898.0" y="562.0"/>
                <di:waypoint x="804.0" y="562.0"/>
                <di:waypoint x="452.0" y="562.0"/>
                <di:waypoint x="452.0" y="544.0"/>
                <bpmndi:BPMNLabel labelStyle="LS1399929387616">
                    <dc:Bounds height="25.604702343750013" width="94.93333333333335" x="801.0588277374833" y="549.197648828125"/>
                </bpmndi:BPMNLabel>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_10-193" id="E1399929387672__10-193">
                <di:waypoint x="910.0" y="216.0"/>
                <di:waypoint x="910.0" y="234.0"/>
                <di:waypoint x="908.0" y="234.0"/>
                <di:waypoint x="908.0" y="306.0"/>
                <bpmndi:BPMNLabel labelStyle="LS1399929387616"/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_10-454" id="E1399929387673__10-454">
                <di:waypoint x="894.0" y="494.0"/>
                <di:waypoint x="894.0" y="374.0"/>
                <bpmndi:BPMNLabel labelStyle="LS1399929387616"/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_10-973" id="E1399929387674__10-973">
                <di:waypoint x="681.0" y="476.0"/>
                <di:waypoint x="681.0" y="216.0"/>
                <bpmndi:BPMNLabel labelStyle="LS1399929387616"/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_10-189" id="E1399929387675__10-189">
                <di:waypoint x="540.0" y="489.0"/>
                <di:waypoint x="540.0" y="340.0"/>
                <di:waypoint x="677.0" y="340.0"/>
                <di:waypoint x="853.0" y="340.0"/>
                <bpmndi:BPMNLabel labelStyle="LS1399929387616">
                    <dc:Bounds height="25.604702343750013" width="94.93333333333335" x="562.0652958982554" y="327.1976488281252"/>
                </bpmndi:BPMNLabel>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_10-524" id="E1399929387676__10-524">
                <di:waypoint x="681.0" y="874.0"/>
                <di:waypoint x="681.0" y="892.0"/>
                <di:waypoint x="360.0" y="892.0"/>
                <di:waypoint x="360.0" y="1031.0"/>
                <bpmndi:BPMNLabel labelStyle="LS1399929387616"/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_10-971" id="E1399929387677__10-971">
                <di:waypoint x="723.0" y="510.0"/>
                <di:waypoint x="759.0" y="510.0"/>
                <bpmndi:BPMNLabel labelStyle="LS1399929387616"/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_10-217" id="E1399929387678__10-217">
                <di:waypoint x="936.0" y="340.0"/>
                <di:waypoint x="996.0" y="340.0"/>
                <bpmndi:BPMNLabel labelStyle="LS1399929387616"/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_10-233" id="E1399929387679__10-233">
                <di:waypoint x="1037.0" y="340.0"/>
                <di:waypoint x="1149.0" y="340.0"/>
                <bpmndi:BPMNLabel labelStyle="LS1399929387616">
                    <dc:Bounds height="12.804751171875008" width="94.93333333333335" x="1045.533333333333" y="333.59762441406247"/>
                </bpmndi:BPMNLabel>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_10-55" id="E1399929387680__10-55">
                <di:waypoint x="358.0" y="216.0"/>
                <di:waypoint x="358.0" y="234.0"/>
                <di:waypoint x="360.0" y="234.0"/>
                <di:waypoint x="360.0" y="495.0"/>
                <bpmndi:BPMNLabel labelStyle="LS1399929387616"/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_10-509" id="E1399929387681__10-509">
                <di:waypoint x="540.0" y="765.0"/>
                <di:waypoint x="540.0" y="840.0"/>
                <di:waypoint x="640.0" y="840.0"/>
                <bpmndi:BPMNLabel labelStyle="LS1399929387616">
                    <dc:Bounds height="25.604702343750013" width="94.93333333333335" x="542.5333333333335" y="827.197648828125"/>
                </bpmndi:BPMNLabel>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_10-918" id="E1399929387682__10-918">
                <di:waypoint x="681.0" y="1176.0"/>
                <di:waypoint x="681.0" y="1194.0"/>
                <di:waypoint x="363.0" y="1194.0"/>
                <di:waypoint x="363.0" y="1329.0"/>
                <bpmndi:BPMNLabel labelStyle="LS1399929387616"/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_10-977" id="E1399929387683__10-977">
                <di:waypoint x="936.0" y="1046.0"/>
                <di:waypoint x="1149.0" y="1046.0"/>
                <bpmndi:BPMNLabel labelStyle="LS1399929387616"/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_10-354" id="E1399929387684__10-354">
                <di:waypoint x="375.0" y="744.0"/>
                <di:waypoint x="403.0" y="744.0"/>
                <bpmndi:BPMNLabel labelStyle="LS1399929387616"/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_10-975" id="E1399929387685__10-975">
                <di:waypoint x="375.0" y="1046.0"/>
                <di:waypoint x="403.0" y="1046.0"/>
                <bpmndi:BPMNLabel labelStyle="LS1399929387616"/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_10-378" id="E1399929387686__10-378">
                <di:waypoint x="486.0" y="744.0"/>
                <di:waypoint x="519.0" y="744.0"/>
                <bpmndi:BPMNLabel labelStyle="LS1399929387616"/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_10-898" id="E1399929387687__10-898">
                <di:waypoint x="629.0" y="1344.0"/>
                <di:waypoint x="853.0" y="1344.0"/>
                <bpmndi:BPMNLabel labelStyle="LS1399929387616"/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_10-740" id="E1399929387688__10-740">
                <di:waypoint x="723.0" y="840.0"/>
                <di:waypoint x="878.0" y="840.0"/>
                <bpmndi:BPMNLabel labelStyle="LS1399929387616"/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_10-742" id="E1399929387689__10-742">
                <di:waypoint x="894.0" y="1012.0"/>
                <di:waypoint x="894.0" y="856.0"/>
                <bpmndi:BPMNLabel labelStyle="LS1399929387616"/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_10-721" id="E1399929387690__10-721">
                <di:waypoint x="540.0" y="1067.0"/>
                <di:waypoint x="540.0" y="1142.0"/>
                <di:waypoint x="640.0" y="1142.0"/>
                <bpmndi:BPMNLabel labelStyle="LS1399929387616">
                    <dc:Bounds height="25.604702343750013" width="94.93333333333335" x="542.7901566979942" y="1129.6976238299999"/>
                </bpmndi:BPMNLabel>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_10-900" id="E1399929387691__10-900">
                <di:waypoint x="894.0" y="1310.0"/>
                <di:waypoint x="894.0" y="1158.0"/>
                <bpmndi:BPMNLabel labelStyle="LS1399929387616"/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_10-112" id="E1399929387692__10-112">
                <di:waypoint x="466.0" y="216.0"/>
                <di:waypoint x="466.0" y="476.0"/>
                <bpmndi:BPMNLabel labelStyle="LS1399929387616"/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_10-744" id="E1399929387693__10-744">
                <di:waypoint x="894.0" y="824.0"/>
                <di:waypoint x="894.0" y="778.0"/>
                <bpmndi:BPMNLabel labelStyle="LS1399929387616"/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_10-668" id="E1399929387694__10-668">
                <di:waypoint x="560.0" y="1046.0"/>
                <di:waypoint x="853.0" y="1046.0"/>
                <bpmndi:BPMNLabel labelStyle="LS1399929387616">
                    <dc:Bounds height="25.604702343750013" width="94.93333333333335" x="665.5333333333334" y="1033.1976488281248"/>
                </bpmndi:BPMNLabel>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_10-110" id="E1399929387695__10-110">
                <di:waypoint x="439.0" y="476.0"/>
                <di:waypoint x="439.0" y="458.0"/>
                <di:waypoint x="437.0" y="458.0"/>
                <di:waypoint x="437.0" y="216.0"/>
                <bpmndi:BPMNLabel labelStyle="LS1399929387616"/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_10-286" id="E1399929387696__10-286">
                <di:waypoint x="560.0" y="510.0"/>
                <di:waypoint x="640.0" y="510.0"/>
                <bpmndi:BPMNLabel labelStyle="LS1399929387616">
                    <dc:Bounds height="25.604702343750013" width="94.93333333333335" x="559.5333333333335" y="497.19764882812495"/>
                </bpmndi:BPMNLabel>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_10-136" id="E1399929387697__10-136">
                <di:waypoint x="494.0" y="510.0"/>
                <di:waypoint x="519.0" y="510.0"/>
                <bpmndi:BPMNLabel labelStyle="LS1399929387616"/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_10-845" id="E1399929387698__10-845">
                <di:waypoint x="378.0" y="1344.0"/>
                <di:waypoint x="546.0" y="1344.0"/>
                <bpmndi:BPMNLabel labelStyle="LS1399929387616"/>
            </bpmndi:BPMNEdge>
            <bpmndi:BPMNEdge bpmnElement="_10-591" id="E1399929387699__10-591">
                <di:waypoint x="936.0" y="744.0"/>
                <di:waypoint x="1149.0" y="744.0"/>
                <bpmndi:BPMNLabel labelStyle="LS1399929387616"/>
            </bpmndi:BPMNEdge>
        </bpmndi:BPMNPlane>
        <bpmndi:BPMNLabelStyle id="LS1399929387616">
            <dc:Font isBold="false" isItalic="false" isStrikeThrough="false" isUnderline="false" name="Arial" size="8.0"/>
        </bpmndi:BPMNLabelStyle>
    </bpmndi:BPMNDiagram>
    <semantic:relationship type="BPSimData">
        <semantic:extensionElements>
            <bpsim:BPSimData>
                <bpsim:Scenario id="S1" name="1 - Control perspective">
                    <bpsim:ScenarioParameters baseTimeUnit="min" replication="3">
                        <bpsim:Duration>
                            <bpsim:DurationParameter value="P1M"/>
                        </bpsim:Duration>
                    </bpsim:ScenarioParameters>
                    <bpsim:ElementParameters elementRef="WFP-40005-1">
                        <bpsim:TimeParameters>
                            <bpsim:ProcessingTime>
                                <bpsim:ResultRequest>min</bpsim:ResultRequest>
                                <bpsim:ResultRequest>max</bpsim:ResultRequest>
                                <bpsim:ResultRequest>mean</bpsim:ResultRequest>
                            </bpsim:ProcessingTime>
                        </bpsim:TimeParameters>
                        <bpsim:ControlParameters>
                            <bpsim:TriggerCount>
                                <bpsim:ResultRequest>count</bpsim:ResultRequest>
                            </bpsim:TriggerCount>
                        </bpsim:ControlParameters>
                    </bpsim:ElementParameters>
                    <bpsim:ElementParameters elementRef="_10-42">
                        <bpsim:ControlParameters>
                            <bpsim:InterTriggerTimer>
                                <bpsim:TriangularDistribution max="2.5" min="0.35" mode="2"/>
                            </bpsim:InterTriggerTimer>
                            <bpsim:TriggerCount>
                                <bpsim:ResultRequest>count</bpsim:ResultRequest>
                            </bpsim:TriggerCount>
                        </bpsim:ControlParameters>
                    </bpsim:ElementParameters>
                    <bpsim:ElementParameters elementRef="_10-781">
                        <bpsim:ControlParameters>
                            <bpsim:TriggerCount>
                                <bpsim:ResultRequest>count</bpsim:ResultRequest>
                            </bpsim:TriggerCount>
                        </bpsim:ControlParameters>
                    </bpsim:ElementParameters>
                    <bpsim:ElementParameters elementRef="_10-511">
                        <bpsim:ControlParameters>
                            <bpsim:TriggerCount>
                                <bpsim:ResultRequest>count</bpsim:ResultRequest>
                            </bpsim:TriggerCount>
                        </bpsim:ControlParameters>
                    </bpsim:ElementParameters>
                    <bpsim:ElementParameters elementRef="_10-288">
                        <bpsim:ControlParameters>
                            <bpsim:TriggerCount>
                                <bpsim:ResultRequest>count</bpsim:ResultRequest>
                            </bpsim:TriggerCount>
                        </bpsim:ControlParameters>
                    </bpsim:ElementParameters>
                </bpsim:Scenario>
                <bpsim:Scenario id="S2" inherits="S1" name="2 - Temporal perspective">
                    <bpsim:ElementParameters elementRef="_10-57">
                        <bpsim:TimeParameters>
                            <bpsim:ProcessingTime>
                                <bpsim:TruncatedNormalDistribution max="1000" mean="4" min="0" standardDeviation="0.5"/>
                            </bpsim:ProcessingTime>
                        </bpsim:TimeParameters>
                    </bpsim:ElementParameters>
                    <bpsim:ElementParameters elementRef="_10-920">
                        <bpsim:TimeParameters>
                            <bpsim:ProcessingTime>
                                <bpsim:TruncatedNormalDistribution max="1000" mean="1" min="0" standardDeviation="0.5"/>
                            </bpsim:ProcessingTime>
                        </bpsim:TimeParameters>
                    </bpsim:ElementParameters>
                    <bpsim:ElementParameters elementRef="_10-235">
                        <bpsim:TimeParameters>
                            <bpsim:ProcessingTime>
                                <bpsim:DurationParameter value="PT30S"/>
                            </bpsim:ProcessingTime>
                        </bpsim:TimeParameters>
                    </bpsim:ElementParameters>
                    <bpsim:ElementParameters elementRef="_10-138">
                        <bpsim:TimeParameters>
                            <bpsim:ProcessingTime>
                                <bpsim:TruncatedNormalDistribution max="1000" mean="10" min="0" standardDeviation="2.5"/>
                            </bpsim:ProcessingTime>
                        </bpsim:TimeParameters>
                    </bpsim:ElementParameters>
                    <bpsim:ElementParameters elementRef="_10-303">
                        <bpsim:TimeParameters>
                            <bpsim:ProcessingTime>
                                <bpsim:TruncatedNormalDistribution max="1000" mean="4" min="0" standardDeviation="0.5"/>
                            </bpsim:ProcessingTime>
                        </bpsim:TimeParameters>
                    </bpsim:ElementParameters>
                    <bpsim:ElementParameters elementRef="_10-458">
                        <bpsim:TimeParameters>
                            <bpsim:ProcessingTime>
                                <bpsim:DurationParameter value="PT30S"/>
                            </bpsim:ProcessingTime>
                        </bpsim:TimeParameters>
                    </bpsim:ElementParameters>
                    <bpsim:ElementParameters elementRef="_10-380">
                        <bpsim:TimeParameters>
                            <bpsim:ProcessingTime>
                                <bpsim:TruncatedNormalDistribution max="1000" mean="1" min="0" standardDeviation="0.5"/>
                            </bpsim:ProcessingTime>
                        </bpsim:TimeParameters>
                    </bpsim:ElementParameters>
                    <bpsim:ElementParameters elementRef="_10-526">
                        <bpsim:TimeParameters>
                            <bpsim:ProcessingTime>
                                <bpsim:TruncatedNormalDistribution max="1000" mean="7" min="0" standardDeviation="0.5"/>
                            </bpsim:ProcessingTime>
                        </bpsim:TimeParameters>
                    </bpsim:ElementParameters>
                    <bpsim:ElementParameters elementRef="_10-670">
                        <bpsim:TimeParameters>
                            <bpsim:ProcessingTime>
                                <bpsim:TruncatedNormalDistribution max="1000" mean="3" min="0" standardDeviation="0.5"/>
                            </bpsim:ProcessingTime>
                        </bpsim:TimeParameters>
                    </bpsim:ElementParameters>
                    <bpsim:ElementParameters elementRef="_10-617">
                        <bpsim:TimeParameters>
                            <bpsim:ProcessingTime>
                                <bpsim:TruncatedNormalDistribution max="1000" mean="1" min="0" standardDeviation="0.5"/>
                            </bpsim:ProcessingTime>
                        </bpsim:TimeParameters>
                    </bpsim:ElementParameters>
                    <bpsim:ElementParameters elementRef="_10-794">
                        <bpsim:TimeParameters>
                            <bpsim:ProcessingTime>
                                <bpsim:TruncatedNormalDistribution max="1000" mean="300" min="0" standardDeviation="30"/>
                            </bpsim:ProcessingTime>
                        </bpsim:TimeParameters>
                    </bpsim:ElementParameters>
                    <bpsim:ElementParameters elementRef="_10-847">
                        <bpsim:TimeParameters>
                            <bpsim:ProcessingTime>
                                <bpsim:TruncatedNormalDistribution max="1000" mean="2" min="0" standardDeviation="0.5"/>
                            </bpsim:ProcessingTime>
                        </bpsim:TimeParameters>
                    </bpsim:ElementParameters>
                    <bpsim:ElementParameters elementRef="_10-189">
                        <bpsim:ControlParameters>
                            <bpsim:Probability>
                                <bpsim:FloatingParameter value="60"/>
                            </bpsim:Probability>
                        </bpsim:ControlParameters>
                    </bpsim:ElementParameters>
                    <bpsim:ElementParameters elementRef="_10-286">
                        <bpsim:ControlParameters>
                            <bpsim:Probability>
                                <bpsim:FloatingParameter value="40"/>
                            </bpsim:Probability>
                        </bpsim:ControlParameters>
                    </bpsim:ElementParameters>
                    <bpsim:ElementParameters elementRef="_10-233">
                        <bpsim:ControlParameters>
                            <bpsim:Probability>
                                <bpsim:FloatingParameter value="15"/>
                            </bpsim:Probability>
                        </bpsim:ControlParameters>
                    </bpsim:ElementParameters>
                    <bpsim:ElementParameters elementRef="_10-456">
                        <bpsim:ControlParameters>
                            <bpsim:Probability>
                                <bpsim:FloatingParameter value="85"/>
                            </bpsim:Probability>
                        </bpsim:ControlParameters>
                    </bpsim:ElementParameters>
                    <bpsim:ElementParameters elementRef="_10-431">
                        <bpsim:ControlParameters>
                            <bpsim:Probability>
                                <bpsim:FloatingParameter value="70"/>
                            </bpsim:Probability>
                        </bpsim:ControlParameters>
                    </bpsim:ElementParameters>
                    <bpsim:ElementParameters elementRef="_10-509">
                        <bpsim:ControlParameters>
                            <bpsim:Probability>
                                <bpsim:FloatingParameter value="30"/>
                            </bpsim:Probability>
                        </bpsim:ControlParameters>
                    </bpsim:ElementParameters>
                    <bpsim:ElementParameters elementRef="_10-668">
                        <bpsim:ControlParameters>
                            <bpsim:Probability>
                                <bpsim:FloatingParameter value="80"/>
                            </bpsim:Probability>
                        </bpsim:ControlParameters>
                    </bpsim:ElementParameters>
                    <bpsim:ElementParameters elementRef="_10-721">
                        <bpsim:ControlParameters>
                            <bpsim:Probability>
                                <bpsim:FloatingParameter value="20"/>
                            </bpsim:Probability>
                        </bpsim:ControlParameters>
                    </bpsim:ElementParameters>
                    <bpsim:ElementParameters elementRef="_10-42">
                        <bpsim:ControlParameters>
                            <bpsim:TriggerCount>
                                <bpsim:ResultRequest>count</bpsim:ResultRequest>
                            </bpsim:TriggerCount>
                        </bpsim:ControlParameters>
                    </bpsim:ElementParameters>
                    <bpsim:ElementParameters elementRef="_10-219">
                        <bpsim:ControlParameters>
                            <bpsim:TriggerCount>
                                <bpsim:ResultRequest>count</bpsim:ResultRequest>
                            </bpsim:TriggerCount>
                        </bpsim:ControlParameters>
                    </bpsim:ElementParameters>
                    <bpsim:ElementParameters elementRef="_10-577">
                        <bpsim:ControlParameters>
                            <bpsim:TriggerCount>
                                <bpsim:ResultRequest>count</bpsim:ResultRequest>
                            </bpsim:TriggerCount>
                        </bpsim:ControlParameters>
                    </bpsim:ElementParameters>
                    <bpsim:ElementParameters elementRef="_10-746">
                        <bpsim:ControlParameters>
                            <bpsim:TriggerCount>
                                <bpsim:ResultRequest>count</bpsim:ResultRequest>
                            </bpsim:TriggerCount>
                        </bpsim:ControlParameters>
                    </bpsim:ElementParameters>
                    <bpsim:ElementParameters elementRef="_10-902">
                        <bpsim:ControlParameters>
                            <bpsim:TriggerCount>
                                <bpsim:ResultRequest>count</bpsim:ResultRequest>
                            </bpsim:TriggerCount>
                        </bpsim:ControlParameters>
                    </bpsim:ElementParameters>
                    <bpsim:ElementParameters elementRef="_10-781">
                        <bpsim:ControlParameters>
                            <bpsim:TriggerCount>
                                <bpsim:ResultRequest>count</bpsim:ResultRequest>
                            </bpsim:TriggerCount>
                        </bpsim:ControlParameters>
                    </bpsim:ElementParameters>
                    <bpsim:ElementParameters elementRef="_10-511">
                        <bpsim:ControlParameters>
                            <bpsim:TriggerCount>
                                <bpsim:ResultRequest>count</bpsim:ResultRequest>
                            </bpsim:TriggerCount>
                        </bpsim:ControlParameters>
                    </bpsim:ElementParameters>
                    <bpsim:ElementParameters elementRef="_10-288">
                        <bpsim:ControlParameters>
                            <bpsim:TriggerCount>
                                <bpsim:ResultRequest>count</bpsim:ResultRequest>
                            </bpsim:TriggerCount>
                        </bpsim:ControlParameters>
                    </bpsim:ElementParameters>
                </bpsim:Scenario>
                <bpsim:Scenario id="S3" inherits="S1" name="3 - Resource perspective">
                    <bpsim:ElementParameters elementRef="resource_Front_Office">
                        <bpsim:TimeParameters>
                            <bpsim:WaitTime>
                                <bpsim:ResultRequest>sum</bpsim:ResultRequest>
                            </bpsim:WaitTime>
                            <bpsim:ProcessingTime>
                                <bpsim:ResultRequest>sum</bpsim:ResultRequest>
                            </bpsim:ProcessingTime>
                        </bpsim:TimeParameters>
                        <bpsim:ControlParameters>
                            <bpsim:TriggerCount>
                                <bpsim:ResultRequest>count</bpsim:ResultRequest>
                            </bpsim:TriggerCount>
                        </bpsim:ControlParameters>
                        <bpsim:ResourceParameters>
                            <bpsim:Quantity>
                                <bpsim:NumericParameter value="0"/>
                                <bpsim:NumericParameter validFor="C1" value="200"/>
                                <bpsim:NumericParameter validFor="C2" value="90"/>
                                <bpsim:NumericParameter validFor="C3" value="130"/>
                                <bpsim:NumericParameter validFor="C4" value="60"/>
                                <bpsim:NumericParameter validFor="C5" value="150"/>
                                <bpsim:NumericParameter validFor="C6" value="100"/>
                                <bpsim:NumericParameter validFor="C7" value="40"/>
                            </bpsim:Quantity>
                        </bpsim:ResourceParameters>
                    </bpsim:ElementParameters>
                    <bpsim:ElementParameters elementRef="resource_1st_Level_Techical_Support_Agent">
                        <bpsim:TimeParameters>
                            <bpsim:WaitTime>
                                <bpsim:ResultRequest>sum</bpsim:ResultRequest>
                            </bpsim:WaitTime>
                            <bpsim:ProcessingTime>
                                <bpsim:ResultRequest>sum</bpsim:ResultRequest>
                            </bpsim:ProcessingTime>
                        </bpsim:TimeParameters>
                        <bpsim:ResourceParameters>
                            <bpsim:Quantity>
                                <bpsim:NumericParameter value="0"/>
                                <bpsim:NumericParameter validFor="C1" value="3"/>
                                <bpsim:NumericParameter validFor="C2" value="3"/>
                                <bpsim:NumericParameter validFor="C3" value="3"/>
                                <bpsim:NumericParameter validFor="C4" value="3"/>
                                <bpsim:NumericParameter validFor="C5" value="3"/>
                                <bpsim:NumericParameter validFor="C6" value="3"/>
                            </bpsim:Quantity>
                        </bpsim:ResourceParameters>
                    </bpsim:ElementParameters>
                    <bpsim:ElementParameters elementRef="resource_2nd_Level_Techical_Support_Agent">
                        <bpsim:TimeParameters>
                            <bpsim:WaitTime>
                                <bpsim:ResultRequest>sum</bpsim:ResultRequest>
                            </bpsim:WaitTime>
                            <bpsim:ProcessingTime>
                                <bpsim:ResultRequest>sum</bpsim:ResultRequest>
                            </bpsim:ProcessingTime>
                        </bpsim:TimeParameters>
                        <bpsim:ResourceParameters>
                            <bpsim:Quantity>
                                <bpsim:NumericParameter value="0"/>
                                <bpsim:NumericParameter validFor="C1" value="2"/>
                                <bpsim:NumericParameter validFor="C2" value="2"/>
                                <bpsim:NumericParameter validFor="C3" value="2"/>
                                <bpsim:NumericParameter validFor="C4" value="2"/>
                                <bpsim:NumericParameter validFor="C5" value="2"/>
                                <bpsim:NumericParameter validFor="C6" value="2"/>
                            </bpsim:Quantity>
                        </bpsim:ResourceParameters>
                    </bpsim:ElementParameters>
                    <bpsim:ElementParameters elementRef="resource_Supplier">
                        <bpsim:TimeParameters>
                            <bpsim:WaitTime>
                                <bpsim:ResultRequest>sum</bpsim:ResultRequest>
                            </bpsim:WaitTime>
                            <bpsim:ProcessingTime>
                                <bpsim:ResultRequest>sum</bpsim:ResultRequest>
                            </bpsim:ProcessingTime>
                        </bpsim:TimeParameters>
                        <bpsim:ResourceParameters>
                            <bpsim:Quantity>
                                <bpsim:NumericParameter value="0"/>
                                <bpsim:NumericParameter validFor="C8" value="1"/>
                            </bpsim:Quantity>
                        </bpsim:ResourceParameters>
                    </bpsim:ElementParameters>
                    <bpsim:Calendar id="C1" name="shift-6-9am">BEGIN:VCALENDAR
BEGIN:VEVENT
DTSTAMP:20121220T202424
UID:1356035064823@localhost
DTSTART:20121220T060000
DTEND:20121220T090000
RRULE:FREQ=DAILY
END:VEVENT
PRODID:PAF Editor
VERSION:2.0
END:VCALENDAR</bpsim:Calendar>
                    <bpsim:Calendar id="C2" name="shift-9-noon">BEGIN:VCALENDAR
BEGIN:VEVENT
DTSTAMP:20121220T202500
UID:1356035100473@localhost
DTSTART:20121220T090000
DTEND:20121220T120000
RRULE:FREQ=DAILY
END:VEVENT
PRODID:PAF Editor
VERSION:2.0
END:VCALENDAR</bpsim:Calendar>
                    <bpsim:Calendar id="C3" name="shift-noon-3pm">BEGIN:VCALENDAR
BEGIN:VEVENT
DTSTAMP:20121220T202529
UID:1356035129707@localhost
DTSTART:20121220T120000
DTEND:20121220T150000
RRULE:FREQ=DAILY
END:VEVENT
PRODID:PAF Editor
VERSION:2.0
END:VCALENDAR</bpsim:Calendar>
                    <bpsim:Calendar id="C4" name="shift-3-6pm">BEGIN:VCALENDAR
BEGIN:VEVENT
DTSTAMP:20121220T202631
UID:1356035191095@localhost
DTSTART:20121220T150000
DTEND:20121220T180000
RRULE:FREQ=DAILY
END:VEVENT
PRODID:PAF Editor
VERSION:2.0
END:VCALENDAR</bpsim:Calendar>
                    <bpsim:Calendar id="C5" name="shift-6-10pm">BEGIN:VCALENDAR
BEGIN:VEVENT
DTSTAMP:20121220T202706
UID:1356035226921@localhost
DTSTART:20121220T180000
DTEND:20121220T220000
RRULE:FREQ=DAILY
END:VEVENT
PRODID:PAF Editor
VERSION:2.0
END:VCALENDAR</bpsim:Calendar>
                    <bpsim:Calendar id="C6" name="shift-10-1am">BEGIN:VCALENDAR
BEGIN:VEVENT
DTSTAMP:20121220T202726
UID:1356035246845@localhost
DTSTART:20121220T100000
DTEND:20121221T010000
RRULE:FREQ=DAILY
END:VEVENT
PRODID:PAF Editor
VERSION:2.0
END:VCALENDAR</bpsim:Calendar>
                    <bpsim:Calendar id="C7" name="shift-1-6am">BEGIN:VCALENDAR
BEGIN:VEVENT
DTSTAMP:20121220T202752
UID:1356035272706@localhost
DTSTART:20121220T010000
DTEND:20121220T060000
RRULE:FREQ=DAILY
END:VEVENT
PRODID:PAF Editor
VERSION:2.0
END:VCALENDAR</bpsim:Calendar>
                    <bpsim:Calendar id="C8" name="shift-9am-10pm-weekdays">BEGIN:VCALENDAR
BEGIN:VEVENT
DTSTAMP:20121220T203015
UID:1356035303891@localhost
DTSTART:20121220T090000
DTEND:20121220T220000
RRULE:FREQ=WEEKLY;BYDAY=MO,TU,WE,TH,FR
END:VEVENT
PRODID:PAF Editor
VERSION:2.0
END:VCALENDAR</bpsim:Calendar>
                </bpsim:Scenario>
            </bpsim:BPSimData>
        </semantic:extensionElements>
        <semantic:source>_1399929387037</semantic:source>
        <semantic:target>_1399929387037</semantic:target>
    </semantic:relationship>
</semantic:definitions>'
]

{ #category : #tests }
BPSimImplementerGuidev1_0_2Test >> testCarRepairProcessV1_0_bpmn [
	| bpsimdata scenario ep p |
	bpsimdata := BPSimParser
		parseString: self class carRepairProcessV1_0_bpmn.
	self assert: bpsimdata scenario size equals: 2.
	scenario := bpsimdata scenarioAt: 'S1'.
	self
		assert: scenario scenarioParameters replication asInteger
		equals: 3.
	self assert: scenario elementParameters size equals: 14.
	ep := scenario elementParameters
		at: '_8040CF1A-3CAA-4A98-8E94-DD405EF233E9'.
	self
		assert: ep propertyParameters class
		equals: BPSimPropertyParameters.
	ep := scenario elementParameters
		at: '_51BDA265-2FF5-40CB-B68D-1FBF9DAAA74C'.
	self
		assert: ep propertyParameters class
		equals: BPSimPropertyParameters.
	self
		assert: ep controlParameters class
		equals: BPSimControlParameters.
	"
	<bpsim:ElementParameters elementRef="	"_6"	">
		<bpsim:ControlParameters>
			<bpsim:TriggerCount>
				<bpsim:ResultRequest>count</bpsim:ResultRequest>
			</bpsim:TriggerCount>
		</bpsim:ControlParameters>
	</bpsim:ElementParameters>
	"
	ep := scenario elementParameters at: '_6'.
	p := ep controlParameters triggerCount.
	self assert: p notNil.
	self assert: p resultRequest v equals: 'count'

	"
	<bpsim:Scenario id="	"S2"	" inherits="	"S1"	" name="	"Scenario 2: Main and Secondary paths"	">
	<bpsim:ElementParameters elementRef="	"_F9A272EE-D325-44CF-AFFC-4A615D2C9971"	">
		<bpsim:ControlParameters>
			<bpsim:Probability>
				<bpsim:FloatingParameter value="	"0.05"	"/>
         		</bpsim:Probability>
			<bpsim:InterTriggerTimer>
				<bpsim:DurationParameter value="	"PT0M"	"/>
			</bpsim:InterTriggerTimer>
			<bpsim:TriggerCount>
				<bpsim:ResultRequest>count</bpsim:ResultRequest>
				<bpsim:NumericParameter value="	"1"	"/>
			</bpsim:TriggerCount>
		</bpsim:ControlParameters>
	</bpsim:ElementParameters>
	</bpsim:Scenario>
	"
	"scenario := bpsimdata scenarioAt: 'S2'.
	ep := scenario elementParameters at: '_F9A272EE-D325-44CF-AFFC-4A615D2C9971'.
	p := ep controlParameters probability.
	self assert: p notNil.
	self assert: p parameterValue class = BPSimFloatingParameter.
	self assert: p vv = 0.05.
	
	p := ep controlParameters interTriggerTimer.
	self assert: p notNil.
	self assert: p parameterValue  class = BPSimDurationParameter.
	"	"self assert: p value value = 'PT0M'."	"
	self assert: p vv = 0.
	
	p := ep controlParameters triggerCount.
	self assert: p notNil.
	self assert: p parameterValue class = BPSimNumericParameter.
	self assert: p vv = 1.
	
	
	scenario := bpsimdata scenarioAt: 'S2'.
	self assert: scenario scenarioParameters = nil.
	self assert: scenario elementParameters size = 2.
	self assert: true"
]

{ #category : #tests }
BPSimImplementerGuidev1_0_2Test >> testTecnicalSupportProcessV1_0_1_bpmn [
	| bpsimdata scenario |
	bpsimdata := BPSimParser
		parseString: self class tecnicalSupportProcessV1_0_1_bpmn.
	scenario := bpsimdata scenarioAt: 'S1'.
	self assert: scenario scenarioParameters replication equals: '3'.
	self assert: scenario scenarioParameters baseTimeUnit equals: 'min'.
	self assert: scenario elementParameters size equals: 5


	"
	<bpsim:ElementParameters elementRef="	"_10-42"	">
		<bpsim:ControlParameters>
			<bpsim:InterTriggerTimer>
				<bpsim:TriangularDistribution max="	"2.5"	" min="	"0.35"	" mode="	"2"	"/>
	 		</bpsim:InterTriggerTimer>
			<bpsim:TriggerCount>
				<bpsim:ResultRequest>count</bpsim:ResultRequest>
			</bpsim:TriggerCount>
		</bpsim:ControlParameters>
	</bpsim:ElementParameters>
	"
	"scenario := bpsimdata scenarioAt: 'S1'.
	ep := scenario elementParameters at: '_10-42'.
	p := ep controlParameters interTriggerTimer.
	self assert: p notNil.
	self assert: p parameterValue class = BPSimTriangularDistribution.
	self assert: p parameterValue max = '2.5'.
	self assert: p parameterValue min = '0.35'.
	self assert: p parameterValue mode = '2'."
]
