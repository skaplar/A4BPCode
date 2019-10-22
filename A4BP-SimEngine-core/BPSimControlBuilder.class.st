"
A BPSimControlBuilder is xxxxxxxxx.

"
Class {
	#name : #BPSimControlBuilder,
	#superclass : #BPSimAbstractBuilder,
	#category : #'A4BP-SimEngine-core-builder'
}

{ #category : #'as yet unclassified' }
BPSimControlBuilder class >> newElementParameters [
	| tp |
	tp := BPSimControlParameters new.	"condition triggerCount interTriggerTimer probability"
	tp condition: (self buildConstantParameters: true subClass: BPSimBooleanParameter).
	tp triggerCount: (self buildConstantParameters: 1 subClass: BPSimNumericParameter).
	tp interTriggerTimer: (self buildConstantParameters: 1 subClass: BPSimNumericParameter).
	tp probability: (self buildConstantParameters: 0.1 subClass: BPSimFloatingParameter).
	^ tp
]

{ #category : #'as yet unclassified' }
BPSimControlBuilder >> buildParameter: e [
	| ep |
	ep := currentScenario getParameterAt: e.
	ep controlParameters.
	currentScenario addElementParameters: ep.
	^ ep controlParameters
]

{ #category : #'as yet unclassified' }
BPSimControlBuilder >> p: p [
	^ self probability: p
]

{ #category : #'as yet unclassified' }
BPSimControlBuilder >> probability: p [
	^ currentParameter controlParameters probability parameterValue: p.
]

{ #category : #'as yet unclassified' }
BPSimControlBuilder >> probabilityParameterOn: e parameterValue: p [
	| ep |
	self processingParameters: (Array with: e).
	ep := currentScenario getParameterAt: e.
	ep controlParameters probability parameterValue: p
]

{ #category : #'as yet unclassified' }
BPSimControlBuilder >> probabilityParameterOnGateway: gateway [
	| spv sum outgoing operations arrays|
	outgoing := gateway outgoing.
	spv := 100 // outgoing size.
	sum := 0.
	operations := BPSimOperationsActions new.
	arrays := operations proportionateSelectionEqual: outgoing.
	arrays values do: [ :array | 
			|el pv|
			el := (array at:1).
			pv := (array at:2).
			self processingParameters: (Array with: el).
			self probabilityParameterOn: el parameterValue: (self floating value: pv) ]
]

{ #category : #'as yet unclassified' }
BPSimControlBuilder >> probabilityParameters: elements config: aBlock [
	self processingParameters: elements.
	elements
		do: [ :e | 
			| p ep |
			p := aBlock rtValue: e.
			ep := currentScenario getParameterAt: e.
			ep controlParameters probability parameterValue: p ]
]
