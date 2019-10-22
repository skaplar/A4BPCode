Class {
	#name : #BPMN20ObjectTest,
	#superclass : #TestCase,
	#instVars : [
		'pVerySimple01',
		'pVerySimple02',
		'pTsunamiv3'
	],
	#category : #'A4BP-Tests-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20ObjectTest >> setUp [
	|parser    |
	parser := BPMN20Parser new.
	parser parseString: BPMN20SampleVerySimpleProcess bpmn01.
	pVerySimple01 :=  parser processes first.
	parser parseString: BPMN20SampleVerySimpleProcess bpmn02.
	pVerySimple02 := parser processes second.
	parser parseString: BPMN20SampleTsunamiResonponse tsunamiv3.
	pTsunamiv3 := parser processes at:3.
  
]
