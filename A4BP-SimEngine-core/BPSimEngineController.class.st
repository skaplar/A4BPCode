Class {
	#name : #BPSimEngineController,
	#superclass : #Object,
	#instVars : [
		'engineProcesses'
	],
	#classInstVars : [
		'instance'
	],
	#category : #'A4BP-SimEngine-core-execution'
}

{ #category : #'as yet unclassified' }
BPSimEngineController class >> instance [
	instance ifNil: [ instance := self new ].
	^ instance
]

{ #category : #'as yet unclassified' }
BPSimEngineController class >> reset [
	"self reset"
	instance := nil.
	^ instance
]

{ #category : #initialization }
BPSimEngineController >> accept: anVisitor [
	^ anVisitor visitBPSimEngineController: self
]

{ #category : #accessing }
BPSimEngineController >> addEngineProcessForSimulation: aEngineProcess [
	engineProcesses at: aEngineProcess id put: aEngineProcess.
	engineProcesses add: aEngineProcess.
]

{ #category : #biz }
BPSimEngineController >> createEngineProcess: processModel [
	|bpSimEngine|
	bpSimEngine := BPSimBPMN20EngineProcess new.
	bpSimEngine addProcessModel: processModel.
	bpSimEngine engineController: self.
	engineProcesses add: bpSimEngine.
]

{ #category : #biz }
BPSimEngineController >> deleteEngineProcess: aEngineProcess [
	engineProcesses removeKey: aEngineProcess id ifAbsent: []
]

{ #category : #accessing }
BPSimEngineController >> engineProcesses [
	^ engineProcesses
]

{ #category : #accessing }
BPSimEngineController >> engineProcesses: anObject [
	engineProcesses := anObject
]

{ #category : #accessing }
BPSimEngineController >> findEngineProcessAt: anProcessModel [
	[ ^ engineProcesses at: anProcessModel id ]
		on: Error
		do: [ ^ nil ].
]

{ #category : #initialization }
BPSimEngineController >> getChildrenNodes [
	^ engineProcesses values
]

{ #category : #initialization }
BPSimEngineController >> initialize [
	super initialize.
	engineProcesses  := A4BPDictionary new.
]

{ #category : #initialization }
BPSimEngineController >> label [
	^ 'Business Process List'
]
