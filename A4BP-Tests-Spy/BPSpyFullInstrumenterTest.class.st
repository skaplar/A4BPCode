Class {
	#name : #BPSpyFullInstrumenterTest,
	#superclass : #BPSpyAbstractInstrumenterTest,
	#category : #'A4BP-Tests-Spy'
}

{ #category : #'tests-instrumentation' }
BPSpyFullInstrumenterTest >> testBuildInstrumentation [
]

{ #category : #instrumentationTest }
BPSpyFullInstrumenterTest >> testbuildInstrumentation [
	| test bpProcess parser value |
	test := BPSpyFullInstrumenter new.
	parser := BPBPELParser new parseString: BPSourceInstrumentation001 new bpel_BPELProcess004.
	bpProcess := parser processes first.
	value := test buildInstrumentation: bpProcess.

]

{ #category : #instrumentationTest }
BPSpyFullInstrumenterTest >> testbuildInstrumentationToStudy [
	| test bpProcess parser value writer|
	test := BPSpyFullInstrumenter new.
	parser := BPBPELParser new parseString: BPSourceInstrumentation001 new bpel_BPELProcess004.
	bpProcess := parser processes first.
	writer := XMLWriter new.
	bpProcess myDocument writeXMLOn: writer.
	value := writer.
	A4BPLog d: writer asString.

]
