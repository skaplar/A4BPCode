Class {
	#name : #BPMN20ParserTest,
	#superclass : #TestCase,
	#category : #'A4BP-Tests-BPMN20-core-parser'
}

{ #category : #testDiagramsNode }
BPMN20ParserTest >> testDiagramsNode [
	|parser v diagram plane shape |
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
	self assert: shape bpmnElement notNil.
]

{ #category : #testbasic }
BPMN20ParserTest >> testId: v [
	self assert: v id ~= nil.
	v childrens do:[ :e | self testId: e].
]

{ #category : #testbasic }
BPMN20ParserTest >> testparseBPMN20BaseElementImpl [
	|toTest v|
	toTest := BPMN20Parser new.
	toTest parseString: BPMN20SampleLucasianSoftProcess bpmn2Concepcion.
	self assert: (toTest lstElements size > 0 ).
	v:= toTest lstElements first.
	self testId: v

]

{ #category : #testbasic }
BPMN20ParserTest >> testparseString [
	|toTest v|
	toTest := BPMN20Parser new.
	toTest parseString: BPMN20SampleLucasianSoftProcess bpmn2Concepcion.
	
	self assert: (toTest lstElements size > 0 ).
	v:= toTest lstElements first.
	self assert: v class = BPMN20DefinitionsImpl.
	'<bpmn:definitions fileRevision="20120601" version="12.1.3.0.0.00.00" xmlns:ns2="http://www.omg.org/spec/DD/20100524/DI" xmlns:ns4="http://www.omg.org/spec/BPMN/20100524/DI" xmlns:ns3="http://www.omg.org/spec/DD/20100524/DC" xmlns:bpmnext="http://xmlns.oracle.com/bpm/OracleExtensions" xmlns:bpmn="http://www.omg.org/spec/BPMN/20100524/MODEL">'.
	self assert: v fileRevision = '20120601'.
	self assert: v version = '12.1.3.0.0.00.00'.
	self assert: v rootElements size > 0.
	self assert: v process size > 0.
	v := v process at:'LucasianProDevConcepcion'.
	self assert: v class = BPMN20ProcessImpl.
	self assert: v aName = 'LucasianProDevConcepcion'.
	self assert: v laneSets size > 0.
	v := v laneSets first.
	self assert: v class = BPMN20LaneSetImpl.
	self assert: v lanes size > 0.
	v:= v lanes first.
	self assert: v class = BPMN20LaneImpl.
	self assert: v aName = 'GerenteDeProyecto'.
]
