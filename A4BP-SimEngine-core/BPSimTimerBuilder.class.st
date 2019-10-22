"
A BPSimTimerBuilder is xxxxxxxxx.

"
Class {
	#name : #BPSimTimerBuilder,
	#superclass : #BPSimAbstractBuilder,
	#category : #'A4BP-SimEngine-core-builder'
}

{ #category : #'as yet unclassified' }
BPSimTimerBuilder class >> newElementParameters [
	| tp |
	tp := BPSimTimeParameters new.	"validationTime queueTime transferTime waitTime reworkTime processingTime setUpTime"
	tp validationTime: (self buildConstantParameters: 0 subClass: BPSimDurationParameter).
	tp queueTime: (self buildConstantParameters: 0 subClass: BPSimDurationParameter).
	tp transferTime: (self buildConstantParameters: 0 subClass: BPSimDurationParameter).
	tp waitTime: (self buildConstantParameters: 0 subClass: BPSimDurationParameter).
	tp reworkTime: (self buildConstantParameters: 0 subClass: BPSimDurationParameter).
	tp setUpTime: (self buildConstantParameters: 0 subClass: BPSimDurationParameter).
	tp processingTime: (self buildConstantParameters: 0 subClass: BPSimDurationParameter).
	tp historicalTime: (self buildConstantParameters: 0 subClass: BPSimDurationParameter).

	^ tp
]

{ #category : #'as yet unclassified' }
BPSimTimerBuilder >> buildParameter: e [
	| ep |
	ep := currentScenario getParameterAt: e.
	ep timeParameters.
	currentScenario addElementParameters: ep.
	^ ep timeParameters
]

{ #category : #'as yet unclassified' }
BPSimTimerBuilder >> h: p [
	self historicalTime: p
]

{ #category : #'as yet unclassified' }
BPSimTimerBuilder >> historicalTime: p [
	currentParameter timeParameters historicalTime parameterValue: p.
]

{ #category : #'as yet unclassified' }
BPSimTimerBuilder >> p: p [
	self processingTime: p
]

{ #category : #'as yet unclassified' }
BPSimTimerBuilder >> processingParameterOn: element parameterValue: p [
	| ep |
	self processingParameters: (Array with: element).
	ep := currentScenario getParameterAt: element.
	ep timeParameters processingTime parameterValue: p.
	^ ep
]

{ #category : #'as yet unclassified' }
BPSimTimerBuilder >> processingParameters: elements config: aBlock [
	|eps|
	self processingParameters: elements.
	eps := OrderedCollection new.
	elements
		do: [ :e | 
			| p ep |
			p := aBlock rtValue: e.
			ep := currentScenario getParameterAt: e.
			ep timeParameters processingTime parameterValue: p.
			eps add:ep.
			].
	^ eps
]

{ #category : #'as yet unclassified' }
BPSimTimerBuilder >> processingTime: p [
	currentParameter timeParameters processingTime parameterValue: p.
]

{ #category : #'as yet unclassified' }
BPSimTimerBuilder >> processingTime: anParameter inElementId: anElemementId [
	|element|
	element := processModel findElementById: anElemementId.
	^ self processingParameterOn: element parameterValue: anParameter.

]

{ #category : #'as yet unclassified' }
BPSimTimerBuilder >> processingTime: anParameter inElementName: anElementName [
	|element|
	element := processModel findElementByName: anElementName.
	^ self processingParameterOn: element parameterValue: anParameter.

]

{ #category : #'as yet unclassified' }
BPSimTimerBuilder >> q: p [
	self queueTime: p
]

{ #category : #'as yet unclassified' }
BPSimTimerBuilder >> queueTime: p [
	currentParameter timeParameters queueTime parameterValue: p.
]

{ #category : #'as yet unclassified' }
BPSimTimerBuilder >> r: p [
	self reworkTime: p.
]

{ #category : #'as yet unclassified' }
BPSimTimerBuilder >> reworkTime: p [
	currentParameter timeParameters reworkTime parameterValue: p.
]

{ #category : #'as yet unclassified' }
BPSimTimerBuilder >> s: p [
	self setUpTime: p
]

{ #category : #'as yet unclassified' }
BPSimTimerBuilder >> setUpTime: p [
	currentParameter timeParameters setUpTime parameterValue: p.
]

{ #category : #'as yet unclassified' }
BPSimTimerBuilder >> t: p [
	self transferTime: p
]

{ #category : #'as yet unclassified' }
BPSimTimerBuilder >> transferTime: p [
	currentParameter timeParameters transferTime parameterValue: p.
]

{ #category : #'as yet unclassified' }
BPSimTimerBuilder >> v: p [
	self validationTime: p
]

{ #category : #'as yet unclassified' }
BPSimTimerBuilder >> validationTime: p [
	currentParameter timeParameters validationTime parameterValue: p.
]

{ #category : #'as yet unclassified' }
BPSimTimerBuilder >> w: p [
	self waitTime: p
]

{ #category : #'as yet unclassified' }
BPSimTimerBuilder >> waitTime: p [
	currentParameter timeParameters waitTime parameterValue: p.
]
