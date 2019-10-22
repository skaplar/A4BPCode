"
A BPSimBPMN20ExecutionVisitorTest is a test class for testing the behavior of BPSimBPMN20ExecutionVisitor
"
Class {
	#name : #BPSimBPMN20ExecutionVisitorTest,
	#superclass : #TestCase,
	#instVars : [
		'v',
		'aModel',
		'lsf1',
		'lsf2',
		'cb',
		'sf1',
		'sf2',
		'sf3',
		'sf4',
		'ncheck1',
		'ncheck2',
		'ncheck3',
		'ncheck4',
		'lcheck',
		'configBlock'
	],
	#category : #'A4BP-Tests-SimEngine-BPMN20'
}

{ #category : #'tests-visitorImplFlowsGateways' }
BPSimBPMN20ExecutionVisitorTest >> setUp [
	aModel := BPMN20ExclusiveGatewayImpl new.
	aModel id:'exclusiveGateway01'.
	lsf1 := Dictionary new.
	lsf2 := Dictionary new.
	ncheck1 := BPSimBPMN20ExecutionTestHelper new.
	ncheck2  := BPSimBPMN20ExecutionTestHelper new.
	ncheck3  := BPSimBPMN20ExecutionTestHelper new.
	ncheck4  := BPSimBPMN20ExecutionTestHelper new.
	lcheck := Array with:ncheck1 with:ncheck2 with:ncheck3 with:ncheck4.
	
	sf1 :=  BPMN20SequenceFlowImpl new.
	sf1 id:'sf1'.
	sf1 targetRef: ncheck1.
	lsf1 at: sf1 id put:sf1.
	lsf2 at: sf1 id put:sf1.
	
	sf2 :=  BPMN20SequenceFlowImpl new.
	sf2 id:'sf2'.
	sf2 targetRef: ncheck2.
	lsf1 at: sf2 id put:sf2.
	lsf2 at: sf2 id put:sf2.
	
	sf3 :=  BPMN20SequenceFlowImpl new.
	sf3 id:'sf3'.
	sf3 targetRef: ncheck3.
	lsf2 at: sf3 id put:sf3.
	
	sf4 :=  BPMN20SequenceFlowImpl new.
	sf4 id:'sf4'.
	sf4 targetRef: ncheck4.
	lsf2 at: sf4 id put:sf4.
	
	
	aModel outgoing: lsf1.
	
	configBlock := [ 
		|bpProcess def|
		def := BPMN20DefinitionsImpl new.
		bpProcess :=  BPMN20ProcessImpl new.
		bpProcess myRoot: def. 
		aModel parent: bpProcess.
		bpProcess addflowElement: aModel .
		v := BPSimBPMN20ExecutionVisitor new.
		v addInputScenario: BPSimScenario new.
		v addProcessModel: bpProcess.
		v removeAllObservers.
		v
	].
]

{ #category : #'tests-visitorImplFlowsGateways' }
BPSimBPMN20ExecutionVisitorTest >> testVisitBPMN20ExclusiveGatewayImpl [
	cb := BPSimControlBuilder new.
	v := configBlock value.
	cb addCurrentScenario: v inputScenario .
	cb probabilityParameterOn: sf1  parameterValue: (BPSimFloatingParameter new value: 0.5 ).
	cb probabilityParameterOn: sf2  parameterValue: (BPSimFloatingParameter new value: 0.5 ).
	v visitBPMN20ExclusiveGatewayImpl: aModel.
	self assert: (ncheck1 count = 1 or: ncheck2 count = 1).
	lcheck do:[ :c | c count:0].
	
	cb := BPSimControlBuilder new.
	v := configBlock value.
	cb addCurrentScenario: v inputScenario .
	cb probabilityParameterOn: sf1  parameterValue: (BPSimFloatingParameter new value: 1 ).
	cb probabilityParameterOn: sf2  parameterValue: (BPSimFloatingParameter new value: 0 ).
	v visitBPMN20ExclusiveGatewayImpl: aModel.
	self assert: (ncheck1 count = 1 and: ncheck2 count = 0).
	lcheck do:[ :c | c count:0].
	
	"using more gateways"
	aModel outgoing: lsf2.
	
	cb := BPSimControlBuilder new.
	v := configBlock value.
	cb addCurrentScenario: v inputScenario .
	cb probabilityParameterOn: sf1  parameterValue: (BPSimFloatingParameter new value: 1 ).
	cb probabilityParameterOn: sf2  parameterValue: (BPSimFloatingParameter new value: 0 ).
	cb probabilityParameterOn: sf3  parameterValue: (BPSimFloatingParameter new value: 0 ).
	cb probabilityParameterOn: sf4  parameterValue: (BPSimFloatingParameter new value: 0 ).
	v visitBPMN20ExclusiveGatewayImpl: aModel.
	self assert: (((ncheck1 count = 1 and: ncheck2 count = 0) and: ncheck3 count = 0 ) and: ncheck4 count = 0 ).
	lcheck do:[ :c | c count:0].
	
	cb := BPSimControlBuilder new.
	v := configBlock value.
	cb addCurrentScenario: v inputScenario .
	cb probabilityParameterOn: sf1  parameterValue: (BPSimFloatingParameter new value: 0 ).
	cb probabilityParameterOn: sf2  parameterValue: (BPSimFloatingParameter new value: 0 ).
	cb probabilityParameterOn: sf3  parameterValue: (BPSimFloatingParameter new value: 1 ).
	cb probabilityParameterOn: sf4  parameterValue: (BPSimFloatingParameter new value: 0 ).
	v visitBPMN20ExclusiveGatewayImpl: aModel.
	self assert: (((ncheck1 count = 0 and: ncheck2 count = 0) and: ncheck3 count = 1 ) and: ncheck4 count = 0 ).
	lcheck do:[ :c | c count:0].

	cb := BPSimControlBuilder new.
	v := configBlock value.
	cb addCurrentScenario: v inputScenario .
	cb probabilityParameterOn: sf1  parameterValue: (BPSimFloatingParameter new value: 0 ).
	cb probabilityParameterOn: sf2  parameterValue: (BPSimFloatingParameter new value: 0 ).
	cb probabilityParameterOn: sf3  parameterValue: (BPSimFloatingParameter new value: 0 ).
	cb probabilityParameterOn: sf4  parameterValue: (BPSimFloatingParameter new value: 1 ).
	v visitBPMN20ExclusiveGatewayImpl: aModel.
	self assert: (((ncheck1 count = 0 and: ncheck2 count = 0) and: ncheck3 count = 0 ) and: ncheck4 count = 1 ).
	lcheck do:[ :c | c count:0].
	
	cb := BPSimControlBuilder new.
	v := configBlock value.
	cb addCurrentScenario: v inputScenario .
	cb probabilityParameterOn: sf1  parameterValue: (BPSimFloatingParameter new value: 0.25 ).
	cb probabilityParameterOn: sf2  parameterValue: (BPSimFloatingParameter new value: 0.25 ).
	cb probabilityParameterOn: sf3  parameterValue: (BPSimFloatingParameter new value: 0.25 ).
	cb probabilityParameterOn: sf4  parameterValue: (BPSimFloatingParameter new value: 0.25 ).
	v visitBPMN20ExclusiveGatewayImpl: aModel.
	self assert: (((ncheck1 count = 1 or: ncheck2 count = 1) or: ncheck3 count = 1 ) or: ncheck4 count = 1 ).
	lcheck do:[ :c | c count:0].
]

{ #category : #'tests-visitorImplFlowsGateways' }
BPSimBPMN20ExecutionVisitorTest >> testVisitBPMN20ExclusiveGatewayImpl1_0 [
	cb := BPSimControlBuilder new.
	v := configBlock value.
	cb addCurrentScenario: v inputScenario .
	cb probabilityParameterOn: sf1  parameterValue: (BPSimFloatingParameter new value: 1 ).
	cb probabilityParameterOn: sf2  parameterValue: (BPSimFloatingParameter new value: 0 ).
	v visitBPMN20ExclusiveGatewayImpl: aModel.
	self assert: (ncheck1 count = 1 and: ncheck2 count = 0).
	lcheck do:[ :c | c count:0].
	
]
