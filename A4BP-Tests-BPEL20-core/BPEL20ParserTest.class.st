Class {
	#name : #BPEL20ParserTest,
	#superclass : #TestCase,
	#category : #'A4BP-Tests-BPEL20-core'
}

{ #category : #testbasic }
BPEL20ParserTest >> testparseStream [
	|toTest|
	toTest := BPEL20Parser new.
	toTest parseString: BPEL20BpelAnalyzerTest4 bpel_OrderProcessor.
	self assert: (toTest lstElements size > 0 ).
]

{ #category : #testbasic }
BPEL20ParserTest >> testparseString [
	|toTest|
	toTest := BPEL20Parser new.
	toTest parseString: BPEL20BpelAnalyzerTest4 bpel_OrderProcessor.
	self assert: (toTest lstElements size > 0 ).
]
