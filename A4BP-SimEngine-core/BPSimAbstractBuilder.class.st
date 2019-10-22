"
A BPSimAbstractBuilder is xxxxxxxxx.

Instance Variables
	currentScenario:		<Object>
	processModel:		<Object>
	scenarios:		<Object>

currentScenario
	- xxxxx

processModel
	- xxxxx

scenarios
	- xxxxx

"
Class {
	#name : #BPSimAbstractBuilder,
	#superclass : #Object,
	#instVars : [
		'scenarios',
		'currentScenario',
		'processModel',
		'currentParameter'
	],
	#category : #'A4BP-SimEngine-core-builder'
}

{ #category : #initalize }
BPSimAbstractBuilder class >> buildConstantParameters: value subClass: subClass [
	| lst p |
	lst := A4BPDictionary new.
	p := BPSimParameter new.
	p resultRequest: A4BPDictionary new.
	BPSimResultType typesInstances
		do: [ :t | 
			| cp |
			cp := subClass new.
			cp value: value.
			t v: value.
			cp result: t.
			lst at: t type put: cp.
			p resultRequest at: t type put: t ].
	p parameterValue: lst.
	^ p
]

{ #category : #adding }
BPSimAbstractBuilder >> addCurrentScenario: anCurrentScenario [
	currentScenario := anCurrentScenario.
	scenarios add: anCurrentScenario.
]

{ #category : #build }
BPSimAbstractBuilder >> buildScenario [
	self buildScenarioId: UUID new asString.
	
]

{ #category : #build }
BPSimAbstractBuilder >> buildScenarioId: aId [
	currentScenario := BPSimScenario new.
	currentScenario id: aId.
	scenarios add: currentScenario.

]

{ #category : #getset }
BPSimAbstractBuilder >> currentScenario [
	currentScenario ifNil:[ self buildScenario ].
	^ currentScenario
]

{ #category : #accessing }
BPSimAbstractBuilder >> currentScenario: anObject [
	currentScenario := anObject
]

{ #category : #parameters }
BPSimAbstractBuilder >> duration [
	^ BPSimDurationParameter new
]

{ #category : #parameters }
BPSimAbstractBuilder >> floating [
	^ BPSimFloatingParameter new
]

{ #category : #initialization }
BPSimAbstractBuilder >> initialize [
	super initialize.
	scenarios := A4BPDictionary new
]

{ #category : #accessing }
BPSimAbstractBuilder >> name: anElementName [
	|element|
	element := processModel findElementByName: anElementName.
	currentParameter := currentScenario getParameterAt: element
]

{ #category : #parameters }
BPSimAbstractBuilder >> numeric [
	^ BPSimNumericParameter new
]

{ #category : #accessing }
BPSimAbstractBuilder >> processModel [
	^ processModel
]

{ #category : #accessing }
BPSimAbstractBuilder >> processModel: anObject [
	processModel := anObject
]

{ #category : #'as yet unclassified' }
BPSimAbstractBuilder >> processingParameters: elements [
	elements
		do: [ :e | 
			| tp |
			tp := self buildParameter: e ]
]

{ #category : #accessing }
BPSimAbstractBuilder >> scenarios [
	^ scenarios
]

{ #category : #accessing }
BPSimAbstractBuilder >> scenarios: anObject [
	scenarios := anObject
]

{ #category : #parameters }
BPSimAbstractBuilder >> triangular [
	^ BPSimTriangularDistribution new
]
