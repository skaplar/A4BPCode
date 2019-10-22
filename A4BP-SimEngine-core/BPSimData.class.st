"
I'm  the root class where all scenarios are defined.

Instance Variables:
	scenario	<Dictionnary>	Collection of scenarios



"
Class {
	#name : #BPSimData,
	#superclass : #BPSimObject,
	#instVars : [
		'scenario'
	],
	#category : #'A4BP-SimEngine-core-model'
}

{ #category : #'as yet unclassified' }
BPSimData class >> annotation [
	<MSEClass: #BPSimData super: #BPSimObject>
	<package: #'A4BP-SimEngine-core'>
	
]

{ #category : #'as yet unclassified' }
BPSimData class >> fillElementsIn: aModel from: document [
	| visitor |
	visitor := BPSimParserBPSimDataVisitor new.
	visitor element: aModel.
	self fillElementsIn: aModel from: document visitor: visitor.

]

{ #category : #visitor }
BPSimData >> accept: aVisitor [
	^ aVisitor visitBPSimData: self
]

{ #category : #adding }
BPSimData >> addScenario: aScenario [
	self scenario at: aScenario id put: aScenario
]

{ #category : #initialization }
BPSimData >> initialize [
	super initialize.
	scenario := Dictionary new
]

{ #category : #accessing }
BPSimData >> inputScenario [
	^ self scenarios first
]

{ #category : #accessing }
BPSimData >> scenario [
	^ scenario
]

{ #category : #accessing }
BPSimData >> scenario: aScenario [
	^ scenario := aScenario
]

{ #category : #accessing }
BPSimData >> scenarioAt: aId [
	^ scenario at: aId
]

{ #category : #accessing }
BPSimData >> scenarios [
	^ scenario values
]
