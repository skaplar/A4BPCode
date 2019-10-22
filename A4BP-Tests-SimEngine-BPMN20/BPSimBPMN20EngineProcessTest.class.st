Class {
	#name : #BPSimBPMN20EngineProcessTest,
	#superclass : #TestCase,
	#category : #'A4BP-Tests-SimEngine-BPMN20'
}

{ #category : #'as yet unclassified' }
BPSimBPMN20EngineProcessTest >> testrunTimerSimulation [
	"| bpSimEngine parser bpmnMetamodel bpsimdata | 
	
	parser := BPMN20Parser parseString: BPMN20SampleVerySimpleProcess bpmn02.
	bpmnMetamodel := parser definitions first process values first.
	bpsimdata := BPSimParser parseString: BPMN20SampleVerySimpleProcess bpmn02WithSim.
	
	bpSimEngine := BPSimBPMN20EngineProcess new.
	bpSimEngine addProcessModel: bpmnMetamodel.
	bpSimEngine runSimulationUsing:  bpsimdata inputScenario."

]

{ #category : #'as yet unclassified' }
BPSimBPMN20EngineProcessTest >> testrunTimerSimulations [
	"| bpSimEngine bpmnMetamodel bpsimdata parser inprocess|
	
	bpSimEngine := BPSimBPMN20EngineProcess new.
	parser := BPMN20Parser parseString: BPMN20SampleVerySimpleProcess bpmn02.
	bpmnMetamodel := parser definitions first process values first.
	bpsimdata := BPSimParser parseString: BPMN20SampleVerySimpleProcess bpmn02WithSim.


	bpSimEngine addProcessModel: bpmnMetamodel.
	inprocess := 3.
	bpSimEngine runSimulationUsing:bpsimdata inputScenario for: inprocess.
		
	self assert: bpSimEngine simulations notNil.
	self assert: bpSimEngine simulations size = 1.
	self assert: bpSimEngine simulations first executions size = inprocess."	

]
