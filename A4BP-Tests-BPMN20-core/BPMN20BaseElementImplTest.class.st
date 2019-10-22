Class {
	#name : #BPMN20BaseElementImplTest,
	#superclass : #BPMN20ObjectTest,
	#category : #'A4BP-Tests-BPMN20-core-model'
}

{ #category : #'tests-builder' }
BPMN20BaseElementImplTest >> testBuildInternalRelations [
]

{ #category : #'builder-test' }
BPMN20BaseElementImplTest >> testDiagramsNode [
	|parser v diagram plane shape|
	parser := BPMN20Parser new.
	parser parseString: BPMN20SampleVerySimpleProcess bpmn01.
	v:= parser lstElements first.
	v buildInternalRelations.
	
	"Start the test process"
	diagram := v diagrams.
	self assert: diagram notNil.
	self assert: diagram size >= 1.
	diagram := v diagrams values first.
	
	plane := diagram plane.
	self assert: plane notNil.
	
	shape := plane shapes values first.
	self assert: shape notNil.
	
	self assert: shape bounds x notNil.
	

]

{ #category : #'builder-test' }
BPMN20BaseElementImplTest >> testbuildInternalRelations [
	|toTest v e1 e2 e3|
	toTest := BPMN20Parser new.
	toTest parseString: BPMN20SampleVerySimpleProcess bpmn01.
	v:= toTest lstElements first.
	"Start the test process"
	v buildInternalRelations.

	e2 := v findElementById: 'SequenceFlow_1'.
	e3 := v findElementById: 'SequenceFlow_2'.
	
	e1 := v findElementById: 'StartEvent_1'.	
	self assert: (e1 outgoings at: 'SequenceFlow_1' ) = e2.	
		
	e1 := v findElementById: 'T1'.
	self assert: (e1 incomings at: 'SequenceFlow_1' ) = e2. 
	self assert: (e1 outgoings at: 'SequenceFlow_2' ) = e3.
	
	
	
	self assert: v numberOfInternalRelations = 0.
]
