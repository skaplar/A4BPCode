Class {
	#name : #BPMN20SampleVerySimpleProcess,
	#superclass : #Object,
	#category : #'A4BP-Tests-BPMN20-source'
}

{ #category : #bpmn }
BPMN20SampleVerySimpleProcess class >> bpmn01 [
	^ '<?xml version="1.0" encoding="UTF-8"?>
<bpmn2:definitions xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:bpmn2="http://www.omg.org/spec/BPMN/20100524/MODEL" xmlns:bpmndi="http://www.omg.org/spec/BPMN/20100524/DI" xmlns:dc="http://www.omg.org/spec/DD/20100524/DC" xmlns:di="http://www.omg.org/spec/DD/20100524/DI" xsi:schemaLocation="http://www.omg.org/spec/BPMN/20100524/MODEL BPMN20.xsd" id="_prMHEMNTEeSNS9xfcuaZ8g" exporter="camunda modeler" exporterVersion="2.7.0" targetNamespace="http://activiti.org/bpmn">
  <bpmn2:process id="Process_1" isExecutable="false">
    <bpmn2:startEvent id="StartEvent_1">
      <bpmn2:outgoing>SequenceFlow_1</bpmn2:outgoing>
    </bpmn2:startEvent>
    <bpmn2:sequenceFlow id="SequenceFlow_1" name="" sourceRef="StartEvent_1" targetRef="T1"/>
    <bpmn2:manualTask id="T1" name="T1">
      <bpmn2:incoming>SequenceFlow_1</bpmn2:incoming>
      <bpmn2:outgoing>SequenceFlow_2</bpmn2:outgoing>
    </bpmn2:manualTask>
    <bpmn2:sequenceFlow id="SequenceFlow_2" name="" sourceRef="T1" targetRef="EndEvent_1"/>
    <bpmn2:endEvent id="EndEvent_1">
      <bpmn2:incoming>SequenceFlow_2</bpmn2:incoming>
    </bpmn2:endEvent>
  </bpmn2:process>
  <bpmndi:BPMNDiagram id="BPMNDiagram_1">
    <bpmndi:BPMNPlane id="BPMNPlane_1" bpmnElement="Process_1">
      <bpmndi:BPMNShape id="_BPMNShape_StartEvent_2" bpmnElement="StartEvent_1">
        <dc:Bounds height="36.0" width="36.0" x="132.0" y="158.0"/>
      </bpmndi:BPMNShape>
      <bpmndi:BPMNShape id="_BPMNShape_ManualTask_2" bpmnElement="T1">
        <dc:Bounds height="80.0" width="100.0" x="240.0" y="136.0"/>
      </bpmndi:BPMNShape>
      <bpmndi:BPMNEdge id="BPMNEdge_SequenceFlow_1" bpmnElement="SequenceFlow_1" sourceElement="_BPMNShape_StartEvent_2" targetElement="_BPMNShape_ManualTask_2">
        <di:waypoint xsi:type="dc:Point" x="168.0" y="176.0"/>
        <di:waypoint xsi:type="dc:Point" x="240.0" y="176.0"/>
        <bpmndi:BPMNLabel>
          <dc:Bounds height="6.0" width="6.0" x="190.0" y="176.0"/>
        </bpmndi:BPMNLabel>
      </bpmndi:BPMNEdge>
      <bpmndi:BPMNShape id="_BPMNShape_EndEvent_2" bpmnElement="EndEvent_1">
        <dc:Bounds height="36.0" width="36.0" x="422.0" y="158.0"/>
        <bpmndi:BPMNLabel>
          <dc:Bounds height="0.0" width="0.0" x="440.0" y="199.0"/>
        </bpmndi:BPMNLabel>
      </bpmndi:BPMNShape>
      <bpmndi:BPMNEdge id="BPMNEdge_SequenceFlow_2" bpmnElement="SequenceFlow_2" sourceElement="_BPMNShape_ManualTask_2" targetElement="_BPMNShape_EndEvent_2">
        <di:waypoint xsi:type="dc:Point" x="340.0" y="176.0"/>
        <di:waypoint xsi:type="dc:Point" x="422.0" y="176.0"/>
        <bpmndi:BPMNLabel>
          <dc:Bounds height="6.0" width="6.0" x="378.0" y="176.0"/>
        </bpmndi:BPMNLabel>
      </bpmndi:BPMNEdge>
    </bpmndi:BPMNPlane>
  </bpmndi:BPMNDiagram>
</bpmn2:definitions>'
]

{ #category : #bpmn }
BPMN20SampleVerySimpleProcess class >> bpmn02 [
	^ '<?xml version="1.0"?>

<definitions xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" id="_2015031101657" targetNamespace="http://www.bizagi.com/definitions/_2015031101657" xmlns="http://www.omg.org/spec/BPMN/20100524/MODEL">

  <process id="Id_f5320cf0-23ee-4dd5-b84a-fdeec50e8681" name="Main Process">

    <documentation />

  </process>

  <process id="Id_1609d53f-481b-4c63-82fc-a0db7c284188">

    <documentation />

    <startEvent id="Id_f90b2713-676c-4ecc-ba12-53479c74f4a1" name="">

      <extensionElements>

        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">

          <bizagi:BizagiProperties>

            <bizagi:BizagiProperty name="bgColor" value="#E6FF97" />

            <bizagi:BizagiProperty name="borderColor" value="#62A716" />

          </bizagi:BizagiProperties>

        </bizagi:BizagiExtensions>

      </extensionElements>

      <outgoing>Id_28216ade-3337-4385-a83d-4b93060a180b</outgoing>

    </startEvent>

    <task id="Id_a403abe2-afc8-47ba-b606-d2d73c2c647d" name="T1">

      <extensionElements>

        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">

          <bizagi:BizagiProperties>

            <bizagi:BizagiProperty name="bgColor" value="#ECEFFF" />

            <bizagi:BizagiProperty name="borderColor" value="#03689A" />

          </bizagi:BizagiProperties>

        </bizagi:BizagiExtensions>

      </extensionElements>

      <incoming>Id_28216ade-3337-4385-a83d-4b93060a180b</incoming>

      <outgoing>Id_fd73cc83-fc75-439f-8f96-1dee31b22836</outgoing>

    </task>

    <sequenceFlow id="Id_28216ade-3337-4385-a83d-4b93060a180b" sourceRef="Id_f90b2713-676c-4ecc-ba12-53479c74f4a1" targetRef="Id_a403abe2-afc8-47ba-b606-d2d73c2c647d">

      <extensionElements>

        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">

          <bizagi:BizagiProperties>

            <bizagi:BizagiProperty name="bgColor" value="White" />

            <bizagi:BizagiProperty name="borderColor" value="Black" />

          </bizagi:BizagiProperties>

        </bizagi:BizagiExtensions>

      </extensionElements>

    </sequenceFlow>

    <task id="Id_bed1a49a-3163-4449-a212-c3c34958b86f" name="T2">

      <extensionElements>

        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">

          <bizagi:BizagiProperties>

            <bizagi:BizagiProperty name="bgColor" value="#ECEFFF" />

            <bizagi:BizagiProperty name="borderColor" value="#03689A" />

          </bizagi:BizagiProperties>

        </bizagi:BizagiExtensions>

      </extensionElements>

      <incoming>Id_fd73cc83-fc75-439f-8f96-1dee31b22836</incoming>

      <outgoing>Id_2aebd767-e4d7-45d6-b2ca-b819217046f6</outgoing>

    </task>

    <sequenceFlow id="Id_fd73cc83-fc75-439f-8f96-1dee31b22836" sourceRef="Id_a403abe2-afc8-47ba-b606-d2d73c2c647d" targetRef="Id_bed1a49a-3163-4449-a212-c3c34958b86f">

      <extensionElements>

        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">

          <bizagi:BizagiProperties>

            <bizagi:BizagiProperty name="bgColor" value="White" />

            <bizagi:BizagiProperty name="borderColor" value="Black" />

          </bizagi:BizagiProperties>

        </bizagi:BizagiExtensions>

      </extensionElements>

    </sequenceFlow>

    <endEvent id="Id_e9645efd-5e92-4855-9e2d-3010460394be" name="">

      <extensionElements>

        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">

          <bizagi:BizagiProperties>

            <bizagi:BizagiProperty name="bgColor" value="#EEAAAA" />

            <bizagi:BizagiProperty name="borderColor" value="#990000" />

          </bizagi:BizagiProperties>

        </bizagi:BizagiExtensions>

      </extensionElements>

      <incoming>Id_2aebd767-e4d7-45d6-b2ca-b819217046f6</incoming>

    </endEvent>

    <sequenceFlow id="Id_2aebd767-e4d7-45d6-b2ca-b819217046f6" sourceRef="Id_bed1a49a-3163-4449-a212-c3c34958b86f" targetRef="Id_e9645efd-5e92-4855-9e2d-3010460394be">

      <extensionElements>

        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">

          <bizagi:BizagiProperties>

            <bizagi:BizagiProperty name="bgColor" value="White" />

            <bizagi:BizagiProperty name="borderColor" value="Black" />

          </bizagi:BizagiProperties>

        </bizagi:BizagiExtensions>

      </extensionElements>

    </sequenceFlow>

  </process>

  <collaboration id="Id_19ba11f4-2f3a-4dea-9f53-2f479f50590a" name="Diagram 1">

    <participant id="Id_2c2a04fa-9f2d-44ce-bc70-f3a9b59b4ef1" name="Main Process" processRef="Id_f5320cf0-23ee-4dd5-b84a-fdeec50e8681">

      <extensionElements>

        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">

          <bizagi:BizagiProperties>

            <bizagi:BizagiProperty name="bgColor" value="White" />

            <bizagi:BizagiProperty name="borderColor" value="Black" />

            <bizagi:BizagiProperty name="isMainParticipant" />

          </bizagi:BizagiProperties>

        </bizagi:BizagiExtensions>

      </extensionElements>

    </participant>

    <participant id="Id_71a9f247-5dfd-49bc-852a-ed255590bfda" name="P1" processRef="Id_1609d53f-481b-4c63-82fc-a0db7c284188">

      <extensionElements>

        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">

          <bizagi:BizagiProperties>

            <bizagi:BizagiProperty name="bgColor" value="White" />

            <bizagi:BizagiProperty name="borderColor" value="Black" />

          </bizagi:BizagiProperties>

        </bizagi:BizagiExtensions>

      </extensionElements>

    </participant>

  </collaboration>

  <BPMNDiagram id="Diagram_fc1d9f19-3536-4d5d-8df9-68f55e9e99b8" xmlns="http://www.omg.org/spec/BPMN/20100524/DI">

    <BPMNPlane id="DiagramElement_aa252e06-3742-4065-9bd8-112fdd90a137" bpmnElement="Id_19ba11f4-2f3a-4dea-9f53-2f479f50590a">

      <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />

      <BPMNShape id="DiagramElement_5e2694c1-7b42-468c-8c32-65c750203af5" bpmnElement="Id_2c2a04fa-9f2d-44ce-bc70-f3a9b59b4ef1" isHorizontal="true">

        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />

        <Bounds x="30" y="30" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />

        <BPMNLabel id="DiagramElement_607f6967-6eb5-4d75-98d9-fe594f29c79f" labelStyle="Style_c94a54d5-7be9-4ec6-b8f2-03ba26979088">

          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />

          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />

        </BPMNLabel>

      </BPMNShape>

      <BPMNShape id="DiagramElement_7e48318e-24b1-4de1-bec9-abdb463c0b3c" bpmnElement="Id_71a9f247-5dfd-49bc-852a-ed255590bfda" isHorizontal="true">

        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />

        <Bounds x="30" y="30" width="516" height="350" xmlns="http://www.omg.org/spec/DD/20100524/DC" />

        <BPMNLabel id="DiagramElement_ec2e87a2-3e1e-461e-99c5-a124918a6c18" labelStyle="Style_442d9bf9-7b57-4cf7-a9f8-a991751d7efa">

          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />

          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />

        </BPMNLabel>

      </BPMNShape>

      <BPMNShape id="DiagramElement_652eef4f-6c4a-4231-a663-5ef74ef7d6f2" bpmnElement="Id_f90b2713-676c-4ecc-ba12-53479c74f4a1">

        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />

        <Bounds x="124" y="166" width="30" height="30" xmlns="http://www.omg.org/spec/DD/20100524/DC" />

      </BPMNShape>

      <BPMNShape id="DiagramElement_14442b44-1203-4a41-a446-c3ee1d39037c" bpmnElement="Id_a403abe2-afc8-47ba-b606-d2d73c2c647d">

        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />

        <Bounds x="218" y="151" width="90" height="60" xmlns="http://www.omg.org/spec/DD/20100524/DC" />

        <BPMNLabel id="DiagramElement_04beb0c9-beb3-49b6-a373-edbe8b3a30fb" labelStyle="Style_5a39c5e2-4173-4544-ae1d-55d356b7850b">

          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />

          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />

        </BPMNLabel>

      </BPMNShape>

      <BPMNEdge id="DiagramElement_6bd8f16e-8c51-48ae-a344-91b9db58cfe4" bpmnElement="Id_28216ade-3337-4385-a83d-4b93060a180b">

        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />

        <waypoint x="154" y="181" xmlns="http://www.omg.org/spec/DD/20100524/DI" />

        <waypoint x="218" y="181" xmlns="http://www.omg.org/spec/DD/20100524/DI" />

      </BPMNEdge>

      <BPMNShape id="DiagramElement_3b299de8-26d2-45c2-b898-9d12615564ef" bpmnElement="Id_bed1a49a-3163-4449-a212-c3c34958b86f">

        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />

        <Bounds x="218" y="256" width="90" height="60" xmlns="http://www.omg.org/spec/DD/20100524/DC" />

        <BPMNLabel id="DiagramElement_1e014b33-53f6-47b8-a538-520077eef8b1" labelStyle="Style_2b60df88-8697-439d-b7b7-fc521028f797">

          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />

          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />

        </BPMNLabel>

      </BPMNShape>

      <BPMNEdge id="DiagramElement_0ab02665-240c-4e2e-a209-8559b38735f9" bpmnElement="Id_fd73cc83-fc75-439f-8f96-1dee31b22836">

        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />

        <waypoint x="263" y="211" xmlns="http://www.omg.org/spec/DD/20100524/DI" />

        <waypoint x="263" y="256" xmlns="http://www.omg.org/spec/DD/20100524/DI" />

      </BPMNEdge>

      <BPMNShape id="DiagramElement_a901ee93-8718-46c8-a206-f894668cc954" bpmnElement="Id_e9645efd-5e92-4855-9e2d-3010460394be">

        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />

        <Bounds x="413" y="271" width="30" height="30" xmlns="http://www.omg.org/spec/DD/20100524/DC" />

      </BPMNShape>

      <BPMNEdge id="DiagramElement_fc64992e-151c-4c00-8491-fdd1dc65a707" bpmnElement="Id_2aebd767-e4d7-45d6-b2ca-b819217046f6">

        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />

        <waypoint x="308" y="286" xmlns="http://www.omg.org/spec/DD/20100524/DI" />

        <waypoint x="413" y="286" xmlns="http://www.omg.org/spec/DD/20100524/DI" />

      </BPMNEdge>

    </BPMNPlane>

    <BPMNLabelStyle id="Style_c94a54d5-7be9-4ec6-b8f2-03ba26979088">

      <Font name="Segoe UI" size="10" isBold="true" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />

    </BPMNLabelStyle>

    <BPMNLabelStyle id="Style_442d9bf9-7b57-4cf7-a9f8-a991751d7efa">

      <Font name="Segoe UI" size="8" isBold="true" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />

    </BPMNLabelStyle>

    <BPMNLabelStyle id="Style_5a39c5e2-4173-4544-ae1d-55d356b7850b">

      <Font name="Segoe UI" size="8.25" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />

    </BPMNLabelStyle>

    <BPMNLabelStyle id="Style_2b60df88-8697-439d-b7b7-fc521028f797">

      <Font name="Segoe UI" size="8.25" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />

    </BPMNLabelStyle>

  </BPMNDiagram>

</definitions>
	'
]

{ #category : #bpmn }
BPMN20SampleVerySimpleProcess class >> bpmn02WithSim [
	^ '<?xml version="1.0"?>

<definitions xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" id="_2015031101657" targetNamespace="http://www.bizagi.com/definitions/_2015031101657" xmlns="http://www.omg.org/spec/BPMN/20100524/MODEL"
xmlns:bpsim="http://www.bpsim.org/schemas/1.0">

  <process id="Id_f5320cf0-23ee-4dd5-b84a-fdeec50e8681" name="Main Process">

    <documentation />

  </process>

  <process id="Id_1609d53f-481b-4c63-82fc-a0db7c284188">

    <documentation />

    <startEvent id="Id_f90b2713-676c-4ecc-ba12-53479c74f4a1" name="">

      <extensionElements>

        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">

          <bizagi:BizagiProperties>

            <bizagi:BizagiProperty name="bgColor" value="#E6FF97" />

            <bizagi:BizagiProperty name="borderColor" value="#62A716" />

          </bizagi:BizagiProperties>

        </bizagi:BizagiExtensions>

      </extensionElements>

      <outgoing>Id_28216ade-3337-4385-a83d-4b93060a180b</outgoing>

    </startEvent>

    <task id="Id_a403abe2-afc8-47ba-b606-d2d73c2c647d" name="T1">

      <extensionElements>

        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">

          <bizagi:BizagiProperties>

            <bizagi:BizagiProperty name="bgColor" value="#ECEFFF" />

            <bizagi:BizagiProperty name="borderColor" value="#03689A" />

          </bizagi:BizagiProperties>

        </bizagi:BizagiExtensions>

      </extensionElements>

      <incoming>Id_28216ade-3337-4385-a83d-4b93060a180b</incoming>

      <outgoing>Id_fd73cc83-fc75-439f-8f96-1dee31b22836</outgoing>

    </task>

    <sequenceFlow id="Id_28216ade-3337-4385-a83d-4b93060a180b" sourceRef="Id_f90b2713-676c-4ecc-ba12-53479c74f4a1" targetRef="Id_a403abe2-afc8-47ba-b606-d2d73c2c647d">

      <extensionElements>

        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">

          <bizagi:BizagiProperties>

            <bizagi:BizagiProperty name="bgColor" value="White" />

            <bizagi:BizagiProperty name="borderColor" value="Black" />

          </bizagi:BizagiProperties>

        </bizagi:BizagiExtensions>

      </extensionElements>

    </sequenceFlow>

    <task id="Id_bed1a49a-3163-4449-a212-c3c34958b86f" name="T2">

      <extensionElements>

        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">

          <bizagi:BizagiProperties>

            <bizagi:BizagiProperty name="bgColor" value="#ECEFFF" />

            <bizagi:BizagiProperty name="borderColor" value="#03689A" />

          </bizagi:BizagiProperties>

        </bizagi:BizagiExtensions>

      </extensionElements>

      <incoming>Id_fd73cc83-fc75-439f-8f96-1dee31b22836</incoming>

      <outgoing>Id_2aebd767-e4d7-45d6-b2ca-b819217046f6</outgoing>

    </task>

    <sequenceFlow id="Id_fd73cc83-fc75-439f-8f96-1dee31b22836" sourceRef="Id_a403abe2-afc8-47ba-b606-d2d73c2c647d" targetRef="Id_bed1a49a-3163-4449-a212-c3c34958b86f">

      <extensionElements>

        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">

          <bizagi:BizagiProperties>

            <bizagi:BizagiProperty name="bgColor" value="White" />

            <bizagi:BizagiProperty name="borderColor" value="Black" />

          </bizagi:BizagiProperties>

        </bizagi:BizagiExtensions>

      </extensionElements>

    </sequenceFlow>

    <endEvent id="Id_e9645efd-5e92-4855-9e2d-3010460394be" name="">

      <extensionElements>

        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">

          <bizagi:BizagiProperties>

            <bizagi:BizagiProperty name="bgColor" value="#EEAAAA" />

            <bizagi:BizagiProperty name="borderColor" value="#990000" />

          </bizagi:BizagiProperties>

        </bizagi:BizagiExtensions>

      </extensionElements>

      <incoming>Id_2aebd767-e4d7-45d6-b2ca-b819217046f6</incoming>

    </endEvent>

    <sequenceFlow id="Id_2aebd767-e4d7-45d6-b2ca-b819217046f6" sourceRef="Id_bed1a49a-3163-4449-a212-c3c34958b86f" targetRef="Id_e9645efd-5e92-4855-9e2d-3010460394be">

      <extensionElements>

        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">

          <bizagi:BizagiProperties>

            <bizagi:BizagiProperty name="bgColor" value="White" />

            <bizagi:BizagiProperty name="borderColor" value="Black" />

          </bizagi:BizagiProperties>

        </bizagi:BizagiExtensions>

      </extensionElements>

    </sequenceFlow>

  </process>

  <collaboration id="Id_19ba11f4-2f3a-4dea-9f53-2f479f50590a" name="Diagram 1">

    <participant id="Id_2c2a04fa-9f2d-44ce-bc70-f3a9b59b4ef1" name="Main Process" processRef="Id_f5320cf0-23ee-4dd5-b84a-fdeec50e8681">

      <extensionElements>

        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">

          <bizagi:BizagiProperties>

            <bizagi:BizagiProperty name="bgColor" value="White" />

            <bizagi:BizagiProperty name="borderColor" value="Black" />

            <bizagi:BizagiProperty name="isMainParticipant" />

          </bizagi:BizagiProperties>

        </bizagi:BizagiExtensions>

      </extensionElements>

    </participant>

    <participant id="Id_71a9f247-5dfd-49bc-852a-ed255590bfda" name="P1" processRef="Id_1609d53f-481b-4c63-82fc-a0db7c284188">

      <extensionElements>

        <bizagi:BizagiExtensions xmlns:bizagi="http://www.bizagi.com/bpmn20">

          <bizagi:BizagiProperties>

            <bizagi:BizagiProperty name="bgColor" value="White" />

            <bizagi:BizagiProperty name="borderColor" value="Black" />

          </bizagi:BizagiProperties>

        </bizagi:BizagiExtensions>

      </extensionElements>

    </participant>

  </collaboration>

  <BPMNDiagram id="Diagram_fc1d9f19-3536-4d5d-8df9-68f55e9e99b8" xmlns="http://www.omg.org/spec/BPMN/20100524/DI">

    <BPMNPlane id="DiagramElement_aa252e06-3742-4065-9bd8-112fdd90a137" bpmnElement="Id_19ba11f4-2f3a-4dea-9f53-2f479f50590a">

      <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />

      <BPMNShape id="DiagramElement_5e2694c1-7b42-468c-8c32-65c750203af5" bpmnElement="Id_2c2a04fa-9f2d-44ce-bc70-f3a9b59b4ef1" isHorizontal="true">

        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />

        <Bounds x="30" y="30" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />

        <BPMNLabel id="DiagramElement_607f6967-6eb5-4d75-98d9-fe594f29c79f" labelStyle="Style_c94a54d5-7be9-4ec6-b8f2-03ba26979088">

          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />

          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />

        </BPMNLabel>

      </BPMNShape>

      <BPMNShape id="DiagramElement_7e48318e-24b1-4de1-bec9-abdb463c0b3c" bpmnElement="Id_71a9f247-5dfd-49bc-852a-ed255590bfda" isHorizontal="true">

        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />

        <Bounds x="30" y="30" width="516" height="350" xmlns="http://www.omg.org/spec/DD/20100524/DC" />

        <BPMNLabel id="DiagramElement_ec2e87a2-3e1e-461e-99c5-a124918a6c18" labelStyle="Style_442d9bf9-7b57-4cf7-a9f8-a991751d7efa">

          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />

          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />

        </BPMNLabel>

      </BPMNShape>

      <BPMNShape id="DiagramElement_652eef4f-6c4a-4231-a663-5ef74ef7d6f2" bpmnElement="Id_f90b2713-676c-4ecc-ba12-53479c74f4a1">

        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />

        <Bounds x="124" y="166" width="30" height="30" xmlns="http://www.omg.org/spec/DD/20100524/DC" />

      </BPMNShape>

      <BPMNShape id="DiagramElement_14442b44-1203-4a41-a446-c3ee1d39037c" bpmnElement="Id_a403abe2-afc8-47ba-b606-d2d73c2c647d">

        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />

        <Bounds x="218" y="151" width="90" height="60" xmlns="http://www.omg.org/spec/DD/20100524/DC" />

        <BPMNLabel id="DiagramElement_04beb0c9-beb3-49b6-a373-edbe8b3a30fb" labelStyle="Style_5a39c5e2-4173-4544-ae1d-55d356b7850b">

          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />

          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />

        </BPMNLabel>

      </BPMNShape>

      <BPMNEdge id="DiagramElement_6bd8f16e-8c51-48ae-a344-91b9db58cfe4" bpmnElement="Id_28216ade-3337-4385-a83d-4b93060a180b">

        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />

        <waypoint x="154" y="181" xmlns="http://www.omg.org/spec/DD/20100524/DI" />

        <waypoint x="218" y="181" xmlns="http://www.omg.org/spec/DD/20100524/DI" />

      </BPMNEdge>

      <BPMNShape id="DiagramElement_3b299de8-26d2-45c2-b898-9d12615564ef" bpmnElement="Id_bed1a49a-3163-4449-a212-c3c34958b86f">

        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />

        <Bounds x="218" y="256" width="90" height="60" xmlns="http://www.omg.org/spec/DD/20100524/DC" />

        <BPMNLabel id="DiagramElement_1e014b33-53f6-47b8-a538-520077eef8b1" labelStyle="Style_2b60df88-8697-439d-b7b7-fc521028f797">

          <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />

          <Bounds x="0" y="0" width="0" height="0" xmlns="http://www.omg.org/spec/DD/20100524/DC" />

        </BPMNLabel>

      </BPMNShape>

      <BPMNEdge id="DiagramElement_0ab02665-240c-4e2e-a209-8559b38735f9" bpmnElement="Id_fd73cc83-fc75-439f-8f96-1dee31b22836">

        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />

        <waypoint x="263" y="211" xmlns="http://www.omg.org/spec/DD/20100524/DI" />

        <waypoint x="263" y="256" xmlns="http://www.omg.org/spec/DD/20100524/DI" />

      </BPMNEdge>

      <BPMNShape id="DiagramElement_a901ee93-8718-46c8-a206-f894668cc954" bpmnElement="Id_e9645efd-5e92-4855-9e2d-3010460394be">

        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />

        <Bounds x="413" y="271" width="30" height="30" xmlns="http://www.omg.org/spec/DD/20100524/DC" />

      </BPMNShape>

      <BPMNEdge id="DiagramElement_fc64992e-151c-4c00-8491-fdd1dc65a707" bpmnElement="Id_2aebd767-e4d7-45d6-b2ca-b819217046f6">

        <extension xmlns="http://www.omg.org/spec/DD/20100524/DI" />

        <waypoint x="308" y="286" xmlns="http://www.omg.org/spec/DD/20100524/DI" />

        <waypoint x="413" y="286" xmlns="http://www.omg.org/spec/DD/20100524/DI" />

      </BPMNEdge>

    </BPMNPlane>

    <BPMNLabelStyle id="Style_c94a54d5-7be9-4ec6-b8f2-03ba26979088">

      <Font name="Segoe UI" size="10" isBold="true" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />

    </BPMNLabelStyle>

    <BPMNLabelStyle id="Style_442d9bf9-7b57-4cf7-a9f8-a991751d7efa">

      <Font name="Segoe UI" size="8" isBold="true" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />

    </BPMNLabelStyle>

    <BPMNLabelStyle id="Style_5a39c5e2-4173-4544-ae1d-55d356b7850b">

      <Font name="Segoe UI" size="8.25" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />

    </BPMNLabelStyle>

    <BPMNLabelStyle id="Style_2b60df88-8697-439d-b7b7-fc521028f797">

      <Font name="Segoe UI" size="8.25" isBold="false" isItalic="false" isUnderline="false" isStrikeThrough="false" xmlns="http://www.omg.org/spec/DD/20100524/DC" />
    </BPMNLabelStyle>
  </BPMNDiagram>
  <relationship type="BPSimData">
        <extensionElements>
			<bpsim:BPSimData>
                <bpsim:Scenario author="Tim Stephenson" id="default" name="Scenario 1">
                    <bpsim:ScenarioParameters baseTimeUnit="min" replication="3">
                        <bpsim:Duration>
                            <bpsim:DurationParameter value="PT40H"/>
                        </bpsim:Duration>
                    </bpsim:ScenarioParameters>
                    <bpsim:ElementParameters elementRef="Id_bed1a49a-3163-4449-a212-c3c34958b86f">
                        <bpsim:TimeParameters>
                            <bpsim:ProcessingTime>
                                <bpsim:ResultRequest>min</bpsim:ResultRequest>
                                <bpsim:ResultRequest>max</bpsim:ResultRequest>
                                <bpsim:ResultRequest>mean</bpsim:ResultRequest>
										 <bpsim:DurationParameter value="10"/>
                            </bpsim:ProcessingTime>
                        </bpsim:TimeParameters>
                        <bpsim:ControlParameters>
                            <bpsim:TriggerCount>
                                <bpsim:ResultRequest>count</bpsim:ResultRequest>
                            </bpsim:TriggerCount>
                        </bpsim:ControlParameters>
                    </bpsim:ElementParameters>
						  <bpsim:ElementParameters elementRef="Id_a403abe2-afc8-47ba-b606-d2d73c2c647d">
                        <bpsim:TimeParameters>
                            <bpsim:ProcessingTime>
                                <bpsim:ResultRequest>min</bpsim:ResultRequest>
                                <bpsim:ResultRequest>max</bpsim:ResultRequest>
                                <bpsim:ResultRequest>mean</bpsim:ResultRequest>
										 <bpsim:DurationParameter value="20"/>
                            </bpsim:ProcessingTime>
                        </bpsim:TimeParameters>
                        <bpsim:ControlParameters>
                            <bpsim:TriggerCount>
                                <bpsim:ResultRequest>count</bpsim:ResultRequest>
                            </bpsim:TriggerCount>
                        </bpsim:ControlParameters>
                    </bpsim:ElementParameters>
					</bpsim:Scenario>
			</bpsim:BPSimData>
		  </extensionElements>
  </relationship>
</definitions>
	'
]

{ #category : #bpmn }
BPMN20SampleVerySimpleProcess class >> bpmn02WithSim2 [
	^ ''
]
