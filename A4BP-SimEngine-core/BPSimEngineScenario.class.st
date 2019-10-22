Class {
	#name : #BPSimEngineScenario,
	#superclass : #Object,
	#instVars : [
		'scenario',
		'engineProcess',
		'simulations',
		'processModel',
		'codeBuilderImpl'
	],
	#category : #'A4BP-SimEngine-core-execution'
}

{ #category : #visitor }
BPSimEngineScenario >> accept: aVisitor [
	^ aVisitor visitBPSimEngineScenario: self
]

{ #category : #biz }
BPSimEngineScenario >> addSimulation: anSimulation [
	simulations at: anSimulation key put: anSimulation
]

{ #category : #build }
BPSimEngineScenario >> buildNewSimulation: inputScenario [
	| simulation |
	simulation := self getSimulationImpl.
	simulation key: inputScenario key.
	simulation addInputScenario: inputScenario.
	simulation processModel: processModel.
	simulation resourceController: BPSimResourceControllerFactory resourceController.
	self addSimulation: simulation.
	^ simulation
]

{ #category : #build }
BPSimEngineScenario >> buildSimulation [
	^ self buildSimulationFor: 1
]

{ #category : #build }
BPSimEngineScenario >> buildSimulationFor: noIteration [
	|s|
	s := self buildNewSimulation: scenario.
	(1 to: noIteration) do:[ :iter | s configureExecution].
	^ s 
]

{ #category : #accessing }
BPSimEngineScenario >> codeBuilderImpl [
	^ codeBuilderImpl
]

{ #category : #accessing }
BPSimEngineScenario >> codeBuilderImpl: anObject [
	codeBuilderImpl := anObject
]

{ #category : #biz }
BPSimEngineScenario >> createSimulation [
	|s|
	s := self buildSimulation.
	engineProcess addSimulation: s.
	^ s
]

{ #category : #biz }
BPSimEngineScenario >> createSimulationFor: noIteration [
	|s|
	s := self buildSimulationFor:noIteration.
	engineProcess addSimulation: s.
	^ s
]

{ #category : #accessing }
BPSimEngineScenario >> engineProcess [
	^ engineProcess
]

{ #category : #accessing }
BPSimEngineScenario >> engineProcess: anObject [
	engineProcess := anObject
]

{ #category : #biz }
BPSimEngineScenario >> getChildrenNodes [
	^ simulations values
]

{ #category : #build }
BPSimEngineScenario >> getSimulationImpl [
	self subclassResponsibility 
]

{ #category : #initialization }
BPSimEngineScenario >> initialize [
	super initialize.
	simulations := A4BPDictionary new.
]

{ #category : #accessing }
BPSimEngineScenario >> key [
	^ self scenario key
]

{ #category : #accessing }
BPSimEngineScenario >> label [
	^ 'scenario'
]

{ #category : #accessing }
BPSimEngineScenario >> processModel [
	^ processModel
]

{ #category : #accessing }
BPSimEngineScenario >> processModel: anObject [
	processModel := anObject
]

{ #category : #accessing }
BPSimEngineScenario >> scenario [
	^ scenario
]

{ #category : #accessing }
BPSimEngineScenario >> scenario: aScenario [
	scenario := aScenario 
]

{ #category : #accessing }
BPSimEngineScenario >> simulations [
	^ simulations
]

{ #category : #accessing }
BPSimEngineScenario >> simulations: anObject [
	simulations := anObject
]
