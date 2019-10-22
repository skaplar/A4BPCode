Class {
	#name : #BPSimEngineProcess,
	#superclass : #Object,
	#instVars : [
		'engineController',
		'processModel',
		'simulations',
		'id',
		'desc',
		'aName',
		'engineScenarios'
	],
	#category : #'A4BP-SimEngine-core-execution'
}

{ #category : #accessing }
BPSimEngineProcess >> aName [
	^ aName
]

{ #category : #accessing }
BPSimEngineProcess >> aName: anObject [
	aName := anObject
]

{ #category : #simulation }
BPSimEngineProcess >> accept: aVisitor [
	^ aVisitor visitBPSimEngineProcess: self
]

{ #category : #simulation }
BPSimEngineProcess >> addProcessModel: aModel [
	processModel := aModel 
]

{ #category : #biz }
BPSimEngineProcess >> addSimulation: anSimulation [
	simulations at: anSimulation key put: anSimulation
]

{ #category : #biz }
BPSimEngineProcess >> createEngineScenario [
	|simb|
	simb := BPSimBuilder buildScenarioId: UUID new asString.
	^ self createEngineScenarioUsing: simb currentScenario.
]

{ #category : #biz }
BPSimEngineProcess >> createEngineScenarioUsing: inputScenario [
	|engineScenario|
	engineScenario := self getEngineScenarioImpl.
	engineScenario engineProcess: self.
	engineScenario scenario: inputScenario.
	engineScenario processModel: processModel.
	engineScenarios add: engineScenario.
	^ engineScenario
]

{ #category : #biz }
BPSimEngineProcess >> createEngineSimulation [
	|anEngineScenario s|
	anEngineScenario := self createEngineScenario.
	s := anEngineScenario createSimulation.
	^ s
	
]

{ #category : #biz }
BPSimEngineProcess >> deleteEngineScenario: aModel [
	self engineScenarios remove: aModel
]

{ #category : #accessing }
BPSimEngineProcess >> desc [
	^ desc
]

{ #category : #accessing }
BPSimEngineProcess >> desc: anObject [
	desc := anObject
]

{ #category : #accessing }
BPSimEngineProcess >> engineController [
	^ engineController
]

{ #category : #accessing }
BPSimEngineProcess >> engineController: anObject [
	engineController := anObject
]

{ #category : #accessing }
BPSimEngineProcess >> engineScenarios [
	^ engineScenarios
]

{ #category : #accessing }
BPSimEngineProcess >> engineScenarios: anObject [
	engineScenarios := anObject
]

{ #category : #biz }
BPSimEngineProcess >> findOrCreateEngineScenarioUsing: inputScenario [
	| engines|
	engines := engineScenarios at: inputScenario id ifAbsent:[
		engines := self createEngineScenarioUsing: inputScenario.
		].
	^ engines
]

{ #category : #getset }
BPSimEngineProcess >> getChildrenNodes [
	^ engineScenarios values.

]

{ #category : #biz }
BPSimEngineProcess >> getEngineScenarioImpl [
	^ self subclassResponsibility 

]

{ #category : #accessing }
BPSimEngineProcess >> id [
	id ifNil:[ id := UUID new asString].
	^ id
]

{ #category : #accessing }
BPSimEngineProcess >> id1: anObject [
	^ id := anObject
]

{ #category : #accessing }
BPSimEngineProcess >> id: anObject [
	id := anObject
]

{ #category : #initialization }
BPSimEngineProcess >> initialize [
	super initialize.
	simulations := A4BPDictionary new.
	engineScenarios := A4BPDictionary new.
]

{ #category : #accessing }
BPSimEngineProcess >> key [
	^ self id
]

{ #category : #simulation }
BPSimEngineProcess >> label [
	^ processModel aName
]

{ #category : #getset }
BPSimEngineProcess >> processModel [
	^ processModel
]

{ #category : #accessing }
BPSimEngineProcess >> scenarios [
	^ scenarios
]

{ #category : #accessing }
BPSimEngineProcess >> scenarios: anObject [
	scenarios := anObject
]

{ #category : #getset }
BPSimEngineProcess >> simulations [
	^ simulations
]

{ #category : #accessing }
BPSimEngineProcess >> simulations: anObject [
	simulations := anObject
]
