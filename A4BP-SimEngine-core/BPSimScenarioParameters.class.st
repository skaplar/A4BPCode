Class {
	#name : #BPSimScenarioParameters,
	#superclass : #BPSimAbstractParameters,
	#instVars : [
		'duration',
		'baseTimeUnit',
		'baseCurrencyUnit',
		'replication',
		'start',
		'seed',
		'propertyParameters',
		'elementRef'
	],
	#category : #'A4BP-SimEngine-core-model'
}

{ #category : #'as yet unclassified' }
BPSimScenarioParameters class >> annotation [
<MSEClass: #BPSimScenarioParameters  super: #BPSimAbstractParameters >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #parser }
BPSimScenarioParameters class >> fillElementsIn: aModel from: document [
	| visitor |
	visitor := BPSimParserBPSimScenarioParametersVisitor new.
	visitor element: aModel.
	
	aModel replication: (self readInt: document at: 'replication').
	aModel baseTimeUnit: (self readString: document at: 'baseTimeUnit').
	aModel seed: (self readInt: document at: 'seed').

	
	self fillElementsIn: aModel from: document visitor: visitor.

]

{ #category : #visitor }
BPSimScenarioParameters >> accept: aVisitor [
	^ aVisitor visitBPSimScenarioParameters: self
]

{ #category : #accessing }
BPSimScenarioParameters >> baseCurrencyUnit [
^ baseCurrencyUnit
]

{ #category : #accessing }
BPSimScenarioParameters >> baseCurrencyUnit: abaseCurrencyUnit [
^ baseCurrencyUnit := abaseCurrencyUnit
]

{ #category : #accessing }
BPSimScenarioParameters >> baseTimeUnit [
^ baseTimeUnit
]

{ #category : #accessing }
BPSimScenarioParameters >> baseTimeUnit: abaseTimeUnit [
^ baseTimeUnit := abaseTimeUnit
]

{ #category : #accessing }
BPSimScenarioParameters >> duration [
^ duration
]

{ #category : #accessing }
BPSimScenarioParameters >> duration: aduration [
^ duration := aduration
]

{ #category : #accessing }
BPSimScenarioParameters >> elementRef [
^ elementRef
]

{ #category : #accessing }
BPSimScenarioParameters >> elementRef: aelementRef [
^ elementRef := aelementRef
]

{ #category : #accessing }
BPSimScenarioParameters >> propertyParameters [
^ propertyParameters
]

{ #category : #accessing }
BPSimScenarioParameters >> propertyParameters: apropertyParameters [
^ propertyParameters := apropertyParameters
]

{ #category : #accessing }
BPSimScenarioParameters >> replication [
^ replication
]

{ #category : #accessing }
BPSimScenarioParameters >> replication: areplication [
^ replication := areplication
]

{ #category : #accessing }
BPSimScenarioParameters >> seed [
^ seed
]

{ #category : #accessing }
BPSimScenarioParameters >> seed: aseed [
^ seed := aseed
]

{ #category : #accessing }
BPSimScenarioParameters >> start [
^ start
]

{ #category : #accessing }
BPSimScenarioParameters >> start: astart [
^ start := astart
]
