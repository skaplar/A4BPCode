Class {
	#name : #BPSimTriangularDistribution,
	#superclass : #BPSimDistributionParameter,
	#instVars : [
		'mode',
		'max',
		'min'
	],
	#category : #'A4BP-SimEngine-core-model'
}

{ #category : #'as yet unclassified' }
BPSimTriangularDistribution class >> annotation [
<MSEClass: #BPSimTriangularDistribution  super: #BPSimDistributionParameter >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #'as yet unclassified' }
BPSimTriangularDistribution class >> fillElementsIn: aModel from: document [
	aModel min: (self readString: document at: 'min').
	aModel max: (self readString: document at: 'max').
	aModel mode: (self readString: document at: 'mode').		
]

{ #category : #'as yet unclassified' }
BPSimTriangularDistribution >> accept: aVisitor [
	^ aVisitor visitBPSimTriangularDistribution: self
]

{ #category : #'as yet unclassified' }
BPSimTriangularDistribution >> generator [
	"
	Use DhbTriangularDistribution as generator of values
		
	new: aNumber1 from: aNumber2 to: aNumber3
	Create an instance of the receiver with peak at aNumber1 and limits aNumber2 and aNumber3.
		 (c) Copyrights Didier BESSET, 1999, all rights reserved.
		 Initial code: 15/2/99 
	^super new initialize: aNumber1 from: aNumber2 to: aNumber3
	mode max min"

	bpDistributionGenerator ifNil: [ bpDistributionGenerator := DhbTriangularDistribution new: mode from: min to: max ].
	^ bpDistributionGenerator
]

{ #category : #'as yet unclassified' }
BPSimTriangularDistribution >> max [
^ max
]

{ #category : #'as yet unclassified' }
BPSimTriangularDistribution >> max: amax [
	max := amax
]

{ #category : #'as yet unclassified' }
BPSimTriangularDistribution >> min [
^ min
]

{ #category : #'as yet unclassified' }
BPSimTriangularDistribution >> min: amin [
	min := amin
]

{ #category : #'as yet unclassified' }
BPSimTriangularDistribution >> mode [
^ mode
]

{ #category : #'as yet unclassified' }
BPSimTriangularDistribution >> mode: amode [
	mode := amode
]

{ #category : #'as yet unclassified' }
BPSimTriangularDistribution >> nextValue [
	[ ^ self generator random ]
		on: Error
		do: [ ^ 0 ]
]
