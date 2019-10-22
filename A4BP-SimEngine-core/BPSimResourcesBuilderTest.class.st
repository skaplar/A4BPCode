"
A BPSimResourcesBuilderTest is a test class for testing the behavior of BPSimResourcesBuilder
"
Class {
	#name : #BPSimResourcesBuilderTest,
	#superclass : #TestCase,
	#category : #'A4BP-SimEngine-core-Tests'
}

{ #category : #tests }
BPSimResourcesBuilderTest >> testQuantityInElementName [
	| v pt |
	v := BPSimResourcesBuilder new.
	v processModel: BPMN20DefinitionsImpl new.
	pt := v quantity: (v numeric value: 10) inElementName: 'element'.
	self assert: pt quantity notNil.
	self assert: pt class equals: BPSimElementParameters.
	self assert: pt quantity vv equals: 10
]
