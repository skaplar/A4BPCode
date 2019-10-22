"
A BPSimParserTest is a test class for testing the behavior of BPSimParser
"
Class {
	#name : #BPSimParserTest,
	#superclass : #TestCase,
	#category : #'A4BP-SimEngine-core-Tests'
}

{ #category : #examples }
BPSimParserTest class >> example2 [
^'<?xml version="1.0" encoding="ISO-8859-1" standalone="yes"?>
<bpmn:definitions id="_1364754643385" name="Loan Process v0.20" targetNamespace="http://www.trisotech.com/definitions/_1364754643385" xmlns:dc="http://www.omg.org/spec/DD/20100524/DC" xmlns:bpsim="http://www.bpsim.org/schemas/1.0" xmlns:di="http://www.omg.org/spec/DD/20100524/DI" xmlns:bpmn="http://www.omg.org/spec/BPMN/20100524/MODEL" xmlns:bpmndi="http://www.omg.org/spec/BPMN/20100524/DI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <bpmn:message id="_1364754643401"/>
    <bpmn:message id="_1364754643403"/>
    <bpmn:message id="_1364754643417"/>
    <bpmn:message id="_1364754643422"/>
    <bpmn:message id="_1364754643428"/>
    <bpmn:process isExecutable="false" id="_6">
        <bpmn:laneSet id="ls_1364754643532">
            <bpmn:lane name="Loan officer" id="_81354509-EC39-44E5-A266-4286CBB1EFAC">
                <bpmn:flowNodeRef>_4E504F9B-2618-424F-ABAA-C4D4CC2D75E0</bpmn:flowNodeRef>
                <bpmn:flowNodeRef>_8576B2C5-068B-4A21-A035-A3F55CA7AA70</bpmn:flowNodeRef>
                <bpmn:flowNodeRef>_0CA1F609-5DFA-43E2-96DE-6CBD97BFAC5A</bpmn:flowNodeRef>
                <bpmn:flowNodeRef>_C94EFA57-E605-4564-BFC4-22A84C660A6A</bpmn:flowNodeRef>
                <bpmn:flowNodeRef>_D94158CC-F5C2-46A2-96A2-CD8B02AF14B4</bpmn:flowNodeRef>
                <bpmn:flowNodeRef>_DA142784-0125-46E0-A3CA-004302BD5E21</bpmn:flowNodeRef>
                <bpmn:flowNodeRef>_A2A06973-DC30-4BCF-BF0F-1FD60D68E1EB</bpmn:flowNodeRef>
                <bpmn:flowNodeRef>_63474DBF-E8E4-4C29-AD38-E46DE50EE080</bpmn:flowNodeRef>
                <bpmn:flowNodeRef>_BAE2D4BB-902F-4C3C-AF76-A0CABBA9A7AE</bpmn:flowNodeRef>
                <bpmn:flowNodeRef>_6E1A332C-9187-4C4A-BD0F-27167F940786</bpmn:flowNodeRef>
                <bpmn:flowNodeRef>_2017EC19-4BD5-40D7-9014-E7D337A68E01</bpmn:flowNodeRef>
                <bpmn:flowNodeRef>_65F6E8B9-FDD3-4770-B12B-87862F37BDF6</bpmn:flowNodeRef>
                <bpmn:flowNodeRef>_D6383F72-7F7A-48F8-A742-A26F36A8DC10</bpmn:flowNodeRef>
                <bpmn:flowNodeRef>_F366069F-C180-4D69-B2BF-4124649EC36F</bpmn:flowNodeRef>
                <bpmn:flowNodeRef>_C77E51FD-9C1B-40F7-9273-100E47069B11</bpmn:flowNodeRef>
            </bpmn:lane>
            <bpmn:lane name="Title Researcher" id="_B634801B-C2C5-4C55-A4AD-17882B1E87F2">
                <bpmn:flowNodeRef>_4A0E10F8-6AC7-4AF0-AFD3-5E0CB00BD316</bpmn:flowNodeRef>
                <bpmn:flowNodeRef>_ACDC390F-49FD-43A3-ACD6-1EBB8074801D</bpmn:flowNodeRef>
            </bpmn:lane>
            <bpmn:lane name="Loan Underwriter" id="_357D85DD-EB4D-4D21-AAD7-D9895DA1633B">
                <bpmn:flowNodeRef>_3330ACC4-BCD9-422A-ADCD-7DDF06A2042D</bpmn:flowNodeRef>
                <bpmn:flowNodeRef>_32AE6A44-B449-40FE-9055-69819469BF98</bpmn:flowNodeRef>
                <bpmn:flowNodeRef>_57EE71B2-5287-46A2-9B24-83A68131714C</bpmn:flowNodeRef>
            </bpmn:lane>
        </bpmn:laneSet>
        <bpmn:dataObject isCollection="false" id="DF1364754643533"/>
        <bpmn:startEvent name="Receive  Loan  Application" id="_4E504F9B-2618-424F-ABAA-C4D4CC2D75E0">
            <bpmn:outgoing>_72A5DDBE-554D-4014-BE8C-FB2E7642F4C3</bpmn:outgoing>
            <bpmn:dataOutput id="Dout1364754643587"/>
            <bpmn:dataOutputAssociation id="_5D0B2CCB-8CD7-4D85-B56B-2095BDBF6240">
                <bpmn:sourceRef>Dout1364754643587</bpmn:sourceRef>
                <bpmn:targetRef>_F36BDDC0-AD29-47B6-8102-9BF334EFB012</bpmn:targetRef>
            </bpmn:dataOutputAssociation>
            <bpmn:outputSet>
                <bpmn:dataOutputRefs>Dout1364754643587</bpmn:dataOutputRefs>
            </bpmn:outputSet>
            <bpmn:messageEventDefinition messageRef="_1364754643401"/>
        </bpmn:startEvent>
        <bpmn:intermediateThrowEvent name="Request Credit Report" id="_8576B2C5-068B-4A21-A035-A3F55CA7AA70">
            <bpmn:incoming>_F39FB372-FB0E-475E-8174-D9F6C1EFABA9</bpmn:incoming>
            <bpmn:outgoing>_2DC8CE0B-492C-4326-A36C-FA37E695F6B8</bpmn:outgoing>
            <bpmn:messageEventDefinition messageRef="_1364754643403"/>
        </bpmn:intermediateThrowEvent>
        <bpmn:userTask implementation="##WebService" completionQuantity="1" isForCompensation="false" startQuantity="1" name="Verify Employment" id="_0CA1F609-5DFA-43E2-96DE-6CBD97BFAC5A">
            <bpmn:incoming>_4300C232-1B1B-4D7D-9056-A153E31A2A5E</bpmn:incoming>
            <bpmn:outgoing>_8663B922-4BE9-4192-8BC8-0578B127A8F1</bpmn:outgoing>
        </bpmn:userTask>
        <bpmn:userTask implementation="##WebService" completionQuantity="1" isForCompensation="false" startQuantity="1" name="Review Loan Application" id="_C94EFA57-E605-4564-BFC4-22A84C660A6A">
            <bpmn:incoming>_B9562572-75E4-4143-BC81-4D79CEDB65D6</bpmn:incoming>
            <bpmn:outgoing>_A80D6FF4-D222-4AAF-9161-8FB83F91AEED</bpmn:outgoing>
        </bpmn:userTask>
        <bpmn:parallelGateway gatewayDirection="Unspecified" name="" id="_D94158CC-F5C2-46A2-96A2-CD8B02AF14B4">
            <bpmn:incoming>_0E7BF85E-0000-43F9-B735-3BF726227B81</bpmn:incoming>
            <bpmn:outgoing>_4300C232-1B1B-4D7D-9056-A153E31A2A5E</bpmn:outgoing>
            <bpmn:outgoing>_F39FB372-FB0E-475E-8174-D9F6C1EFABA9</bpmn:outgoing>
            <bpmn:outgoing>_880E2204-2897-40BA-9C2F-B81F9580EF75</bpmn:outgoing>
        </bpmn:parallelGateway>
        <bpmn:sendTask implementation="##WebService" messageRef="_1364754643417" completionQuantity="1" isForCompensation="false" startQuantity="1" name="Send Approval Letter" id="_DA142784-0125-46E0-A3CA-004302BD5E21">
            <bpmn:incoming>_3D6F2455-BFFB-44BB-A052-892FB15FEEB4</bpmn:incoming>
            <bpmn:outgoing>_906AE477-1AA9-443C-AFFD-C0F2AAE20D83</bpmn:outgoing>
        </bpmn:sendTask>
        <bpmn:endEvent name="Loan Request Rejected" id="_A2A06973-DC30-4BCF-BF0F-1FD60D68E1EB">
            <bpmn:incoming>_0AEB1821-0E16-4CC8-BC7C-9AF71C35F88F</bpmn:incoming>
        </bpmn:endEvent>
        <bpmn:exclusiveGateway gatewayDirection="Unspecified" name="Approved?" id="_63474DBF-E8E4-4C29-AD38-E46DE50EE080">
            <bpmn:incoming>_A80D6FF4-D222-4AAF-9161-8FB83F91AEED</bpmn:incoming>
            <bpmn:outgoing>_93351D59-990B-46B0-80AB-FEEF088E9D7B</bpmn:outgoing>
            <bpmn:outgoing>_3D6F2455-BFFB-44BB-A052-892FB15FEEB4</bpmn:outgoing>
        </bpmn:exclusiveGateway>
        <bpmn:intermediateCatchEvent parallelMultiple="false" name="Receive  Credit  Report" id="_BAE2D4BB-902F-4C3C-AF76-A0CABBA9A7AE">
            <bpmn:incoming>_2DC8CE0B-492C-4326-A36C-FA37E695F6B8</bpmn:incoming>
            <bpmn:outgoing>_D8676C4E-977F-4441-B9AA-9E0F82898D34</bpmn:outgoing>
            <bpmn:messageEventDefinition messageRef="_1364754643422"/>
        </bpmn:intermediateCatchEvent>
        <bpmn:endEvent name="Loan Request Approved" id="_6E1A332C-9187-4C4A-BD0F-27167F940786">
            <bpmn:incoming>_DEAA6495-03EC-479A-BAED-836083B9B19F</bpmn:incoming>
        </bpmn:endEvent>
        <bpmn:userTask implementation="##WebService" completionQuantity="1" isForCompensation="false" startQuantity="1" name="Record Loan Application" id="_2017EC19-4BD5-40D7-9014-E7D337A68E01">
            <bpmn:incoming>_72A5DDBE-554D-4014-BE8C-FB2E7642F4C3</bpmn:incoming>
            <bpmn:outgoing>_0E7BF85E-0000-43F9-B735-3BF726227B81</bpmn:outgoing>
            <bpmn:ioSpecification>
                <bpmn:dataInput id="Din1364754643584"/>
                <bpmn:inputSet>
                    <bpmn:dataInputRefs>Din1364754643584</bpmn:dataInputRefs>
                </bpmn:inputSet>
                <bpmn:outputSet/>
            </bpmn:ioSpecification>
            <bpmn:dataInputAssociation id="_8BF5972D-13A9-4941-A60A-F338F0347B05">
                <bpmn:sourceRef>_F36BDDC0-AD29-47B6-8102-9BF334EFB012</bpmn:sourceRef>
                <bpmn:targetRef>Din1364754643584</bpmn:targetRef>
            </bpmn:dataInputAssociation>
        </bpmn:userTask>
        <bpmn:userTask implementation="##WebService" completionQuantity="1" isForCompensation="false" startQuantity="1" name="Close-Out Rejection" id="_65F6E8B9-FDD3-4770-B12B-87862F37BDF6">
            <bpmn:incoming>_07B03EA5-891A-4BF5-8779-1A6912D3B183</bpmn:incoming>
            <bpmn:outgoing>_0AEB1821-0E16-4CC8-BC7C-9AF71C35F88F</bpmn:outgoing>
            <bpmn:ioSpecification>
                <bpmn:dataOutput id="Dout1364754643585"/>
                <bpmn:inputSet/>
                <bpmn:outputSet>
                    <bpmn:dataOutputRefs>Dout1364754643585</bpmn:dataOutputRefs>
                </bpmn:outputSet>
            </bpmn:ioSpecification>
            <bpmn:dataOutputAssociation id="_346DBF5F-09DC-4A36-95E4-5019CA5D6457">
                <bpmn:sourceRef>Dout1364754643585</bpmn:sourceRef>
                <bpmn:targetRef>_676BDDAC-A319-426B-96DF-E1F1EEF38EFB</bpmn:targetRef>
            </bpmn:dataOutputAssociation>
        </bpmn:userTask>
        <bpmn:sendTask implementation="##WebService" messageRef="_1364754643428" completionQuantity="1" isForCompensation="false" startQuantity="1" name="Send Rejection Letter" id="_D6383F72-7F7A-48F8-A742-A26F36A8DC10">
            <bpmn:incoming>_93351D59-990B-46B0-80AB-FEEF088E9D7B</bpmn:incoming>
            <bpmn:outgoing>_07B03EA5-891A-4BF5-8779-1A6912D3B183</bpmn:outgoing>
        </bpmn:sendTask>
        <bpmn:userTask implementation="##WebService" completionQuantity="1" isForCompensation="false" startQuantity="1" name="Close-out Approval" id="_F366069F-C180-4D69-B2BF-4124649EC36F">
            <bpmn:incoming>_BCC30BA7-C001-4D9D-B69C-2D99DA0706C5</bpmn:incoming>
            <bpmn:outgoing>_DEAA6495-03EC-479A-BAED-836083B9B19F</bpmn:outgoing>
            <bpmn:ioSpecification>
                <bpmn:dataOutput id="Dout1364754643586"/>
                <bpmn:inputSet/>
                <bpmn:outputSet>
                    <bpmn:dataOutputRefs>Dout1364754643586</bpmn:dataOutputRefs>
                </bpmn:outputSet>
            </bpmn:ioSpecification>
            <bpmn:dataOutputAssociation id="_95613936-EA5E-432B-8F84-5D29E58EA82F">
                <bpmn:sourceRef>Dout1364754643586</bpmn:sourceRef>
                <bpmn:targetRef>_A383CA8A-59EA-4E2E-8A40-38363ACF6547</bpmn:targetRef>
            </bpmn:dataOutputAssociation>
        </bpmn:userTask>
        <bpmn:parallelGateway gatewayDirection="Unspecified" name="" id="_C77E51FD-9C1B-40F7-9273-100E47069B11">
            <bpmn:incoming>_D8676C4E-977F-4441-B9AA-9E0F82898D34</bpmn:incoming>
            <bpmn:incoming>_8663B922-4BE9-4192-8BC8-0578B127A8F1</bpmn:incoming>
            <bpmn:incoming>_78F951B5-7470-4538-AA6C-CD08E4D422C6</bpmn:incoming>
            <bpmn:outgoing>_B9562572-75E4-4143-BC81-4D79CEDB65D6</bpmn:outgoing>
        </bpmn:parallelGateway>
        <bpmn:manualTask completionQuantity="1" isForCompensation="false" startQuantity="1" name="Perform Title Search" id="_4A0E10F8-6AC7-4AF0-AFD3-5E0CB00BD316">
            <bpmn:incoming>_880E2204-2897-40BA-9C2F-B81F9580EF75</bpmn:incoming>
            <bpmn:outgoing>_60D986A6-6530-4D75-9648-AF5AFB1CA9A6</bpmn:outgoing>
        </bpmn:manualTask>
        <bpmn:userTask implementation="##WebService" completionQuantity="1" isForCompensation="false" startQuantity="1" name="Review Title Report" id="_ACDC390F-49FD-43A3-ACD6-1EBB8074801D">
            <bpmn:incoming>_60D986A6-6530-4D75-9648-AF5AFB1CA9A6</bpmn:incoming>
            <bpmn:outgoing>_78F951B5-7470-4538-AA6C-CD08E4D422C6</bpmn:outgoing>
        </bpmn:userTask>
        <bpmn:scriptTask completionQuantity="1" isForCompensation="false" startQuantity="1" name="Set with Default Terms" id="_3330ACC4-BCD9-422A-ADCD-7DDF06A2042D">
            <bpmn:incoming>_F36A03D5-2835-4BEB-9835-612961CB01B0</bpmn:incoming>
            <bpmn:outgoing>_81B53174-A333-4892-8A4E-0654D0DC9059</bpmn:outgoing>
            <bpmn:script/>
        </bpmn:scriptTask>
        <bpmn:exclusiveGateway gatewayDirection="Unspecified" name="" id="_32AE6A44-B449-40FE-9055-69819469BF98">
            <bpmn:incoming>_F8D6251D-FEDF-40FE-9541-89714A5F81D8</bpmn:incoming>
            <bpmn:incoming>_81B53174-A333-4892-8A4E-0654D0DC9059</bpmn:incoming>
            <bpmn:outgoing>_BCC30BA7-C001-4D9D-B69C-2D99DA0706C5</bpmn:outgoing>
        </bpmn:exclusiveGateway>
        <bpmn:userTask implementation="##WebService" completionQuantity="1" isForCompensation="false" startQuantity="1" name="Underwrite Loan with Terms" id="_57EE71B2-5287-46A2-9B24-83A68131714C">
            <bpmn:incoming>_906AE477-1AA9-443C-AFFD-C0F2AAE20D83</bpmn:incoming>
            <bpmn:outgoing>_F8D6251D-FEDF-40FE-9541-89714A5F81D8</bpmn:outgoing>
        </bpmn:userTask>
        <bpmn:boundaryEvent attachedToRef="_57EE71B2-5287-46A2-9B24-83A68131714C" cancelActivity="true" parallelMultiple="false" name="1 Hour Time Limit" id="_542AE8E6-9CEA-43E3-8177-C685A9F430FE">
            <bpmn:outgoing>_F36A03D5-2835-4BEB-9835-612961CB01B0</bpmn:outgoing>
            <bpmn:timerEventDefinition>
                <bpmn:timeDate/>
            </bpmn:timerEventDefinition>
        </bpmn:boundaryEvent>
        <bpmn:dataObjectReference dataObjectRef="DF1364754643533" name="Loan Application" id="_A383CA8A-59EA-4E2E-8A40-38363ACF6547">
            <bpmn:dataState name="Approved"/>
        </bpmn:dataObjectReference>
        <bpmn:dataObjectReference dataObjectRef="DF1364754643533" name="Loan Application" id="_F36BDDC0-AD29-47B6-8102-9BF334EFB012">
            <bpmn:dataState name="Initial"/>
        </bpmn:dataObjectReference>
        <bpmn:dataObjectReference dataObjectRef="DF1364754643533" name="Loan Application" id="_676BDDAC-A319-426B-96DF-E1F1EEF38EFB">
            <bpmn:dataState name="Rejected"/>
        </bpmn:dataObjectReference>
        <bpmn:sequenceFlow sourceRef="_4E504F9B-2618-424F-ABAA-C4D4CC2D75E0" targetRef="_2017EC19-4BD5-40D7-9014-E7D337A68E01" name="" id="_72A5DDBE-554D-4014-BE8C-FB2E7642F4C3"/>
        <bpmn:sequenceFlow sourceRef="_2017EC19-4BD5-40D7-9014-E7D337A68E01" targetRef="_D94158CC-F5C2-46A2-96A2-CD8B02AF14B4" name="" id="_0E7BF85E-0000-43F9-B735-3BF726227B81"/>
        <bpmn:sequenceFlow sourceRef="_D94158CC-F5C2-46A2-96A2-CD8B02AF14B4" targetRef="_0CA1F609-5DFA-43E2-96DE-6CBD97BFAC5A" name="" id="_4300C232-1B1B-4D7D-9056-A153E31A2A5E"/>
        <bpmn:sequenceFlow sourceRef="_D94158CC-F5C2-46A2-96A2-CD8B02AF14B4" targetRef="_8576B2C5-068B-4A21-A035-A3F55CA7AA70" name="" id="_F39FB372-FB0E-475E-8174-D9F6C1EFABA9"/>
        <bpmn:sequenceFlow sourceRef="_8576B2C5-068B-4A21-A035-A3F55CA7AA70" targetRef="_BAE2D4BB-902F-4C3C-AF76-A0CABBA9A7AE" name="" id="_2DC8CE0B-492C-4326-A36C-FA37E695F6B8"/>
        <bpmn:sequenceFlow sourceRef="_BAE2D4BB-902F-4C3C-AF76-A0CABBA9A7AE" targetRef="_C77E51FD-9C1B-40F7-9273-100E47069B11" name="" id="_D8676C4E-977F-4441-B9AA-9E0F82898D34"/>
        <bpmn:sequenceFlow sourceRef="_0CA1F609-5DFA-43E2-96DE-6CBD97BFAC5A" targetRef="_C77E51FD-9C1B-40F7-9273-100E47069B11" name="" id="_8663B922-4BE9-4192-8BC8-0578B127A8F1"/>
        <bpmn:sequenceFlow sourceRef="_D94158CC-F5C2-46A2-96A2-CD8B02AF14B4" targetRef="_4A0E10F8-6AC7-4AF0-AFD3-5E0CB00BD316" name="" id="_880E2204-2897-40BA-9C2F-B81F9580EF75"/>
        <bpmn:sequenceFlow sourceRef="_4A0E10F8-6AC7-4AF0-AFD3-5E0CB00BD316" targetRef="_ACDC390F-49FD-43A3-ACD6-1EBB8074801D" name="" id="_60D986A6-6530-4D75-9648-AF5AFB1CA9A6"/>
        <bpmn:sequenceFlow sourceRef="_ACDC390F-49FD-43A3-ACD6-1EBB8074801D" targetRef="_C77E51FD-9C1B-40F7-9273-100E47069B11" name="" id="_78F951B5-7470-4538-AA6C-CD08E4D422C6"/>
        <bpmn:sequenceFlow sourceRef="_C77E51FD-9C1B-40F7-9273-100E47069B11" targetRef="_C94EFA57-E605-4564-BFC4-22A84C660A6A" name="" id="_B9562572-75E4-4143-BC81-4D79CEDB65D6"/>
        <bpmn:sequenceFlow sourceRef="_C94EFA57-E605-4564-BFC4-22A84C660A6A" targetRef="_63474DBF-E8E4-4C29-AD38-E46DE50EE080" name="" id="_A80D6FF4-D222-4AAF-9161-8FB83F91AEED"/>
        <bpmn:sequenceFlow sourceRef="_63474DBF-E8E4-4C29-AD38-E46DE50EE080" targetRef="_D6383F72-7F7A-48F8-A742-A26F36A8DC10" name="No" id="_93351D59-990B-46B0-80AB-FEEF088E9D7B"/>
        <bpmn:sequenceFlow sourceRef="_D6383F72-7F7A-48F8-A742-A26F36A8DC10" targetRef="_65F6E8B9-FDD3-4770-B12B-87862F37BDF6" name="" id="_07B03EA5-891A-4BF5-8779-1A6912D3B183"/>
        <bpmn:sequenceFlow sourceRef="_65F6E8B9-FDD3-4770-B12B-87862F37BDF6" targetRef="_A2A06973-DC30-4BCF-BF0F-1FD60D68E1EB" name="" id="_0AEB1821-0E16-4CC8-BC7C-9AF71C35F88F"/>
        <bpmn:sequenceFlow sourceRef="_63474DBF-E8E4-4C29-AD38-E46DE50EE080" targetRef="_DA142784-0125-46E0-A3CA-004302BD5E21" name="Yes" id="_3D6F2455-BFFB-44BB-A052-892FB15FEEB4"/>
        <bpmn:sequenceFlow sourceRef="_DA142784-0125-46E0-A3CA-004302BD5E21" targetRef="_57EE71B2-5287-46A2-9B24-83A68131714C" name="" id="_906AE477-1AA9-443C-AFFD-C0F2AAE20D83"/>
        <bpmn:sequenceFlow sourceRef="_57EE71B2-5287-46A2-9B24-83A68131714C" targetRef="_32AE6A44-B449-40FE-9055-69819469BF98" name="" id="_F8D6251D-FEDF-40FE-9541-89714A5F81D8"/>
        <bpmn:sequenceFlow sourceRef="_542AE8E6-9CEA-43E3-8177-C685A9F430FE" targetRef="_3330ACC4-BCD9-422A-ADCD-7DDF06A2042D" name="" id="_F36A03D5-2835-4BEB-9835-612961CB01B0"/>
        <bpmn:sequenceFlow sourceRef="_3330ACC4-BCD9-422A-ADCD-7DDF06A2042D" targetRef="_32AE6A44-B449-40FE-9055-69819469BF98" name="" id="_81B53174-A333-4892-8A4E-0654D0DC9059"/>
        <bpmn:sequenceFlow sourceRef="_32AE6A44-B449-40FE-9055-69819469BF98" targetRef="_F366069F-C180-4D69-B2BF-4124649EC36F" name="" id="_BCC30BA7-C001-4D9D-B69C-2D99DA0706C5"/>
        <bpmn:sequenceFlow sourceRef="_F366069F-C180-4D69-B2BF-4124649EC36F" targetRef="_6E1A332C-9187-4C4A-BD0F-27167F940786" name="" id="_DEAA6495-03EC-479A-BAED-836083B9B19F"/>
    </bpmn:process>
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
    <bpmn:relationship type="BPSimData">
        <bpmn:extensionElements>
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
        </bpmn:extensionElements>
        <bpmn:source>_1364754643385</bpmn:source>
        <bpmn:target>_1364754643385</bpmn:target>
    </bpmn:relationship>
</bpmn:definitions>'
]

{ #category : #tests }
BPSimParserTest >> testExample2HasOneScenario [
	| bpsimdata |
	bpsimdata := BPSimParser parseString: self class example2.
	self assert: bpsimdata scenario isNotEmpty
]

{ #category : #tests }
BPSimParserTest >> testExample2Scenario1ReplicateThreeTimes [
	| bpsimdata scenario scenarioParameters |
	bpsimdata := BPSimParser parseString: self class example2.
	scenario := bpsimdata inputScenario.

	"<bpsim:Scenario author="	"Tim Stephenson"	" id="	"default"	" name="	"Scenario 1"	">"
	self assert: scenario author equals: 'Tim Stephenson'.
	self assert: scenario id equals: 'default'.
	self assert: scenario aName equals: 'Scenario 1'.
	"
	<bpsim:ScenarioParameters baseTimeUnit="	"min"	" replication="	"3"	">
		<bpsim:Duration>
			<bpsim:DurationParameter value="	"PT40H"	"/>
		</bpsim:Duration>
	</bpsim:ScenarioParameters>
	"
	scenarioParameters := scenario scenarioParameters.
	self assert: scenarioParameters replication equals: '3'.
	self assert: scenario scenarioParameters baseTimeUnit equals: 'min'

	"duration := scenarioParameters duration.
	self assert: duration parameterValue class = BPSimDurationParameter.
	"	"self assert: duration value value = 'PT40H'."	"
	self assert: duration vv = 0."
]
