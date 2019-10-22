Class {
	#name : #BPSimEngineSimulations,
	#superclass : #Object,
	#instVars : [
		'processModel',
		'executions',
		'key',
		'inputScenario',
		'fullOutputScenario',
		'resourceController',
		'delay'
	],
	#category : #'A4BP-SimEngine-core-execution'
}

{ #category : #visitor }
BPSimEngineSimulations >> accept: aVisitor [
	^ aVisitor visitBPSimEngineSimulations: self
]

{ #category : #add }
BPSimEngineSimulations >> addExecution: anExecution [
	anExecution addFullOutputScenario: fullOutputScenario.
	anExecution addResourceController: resourceController.
	anExecution mySimulation: self.
	executions add: anExecution.
	 
]

{ #category : #add }
BPSimEngineSimulations >> addFulloutputScenario: aoutputScenario [
	fullOutputScenario := aoutputScenario 
]

{ #category : #add }
BPSimEngineSimulations >> addInputScenario: anInputScenario [
	inputScenario := anInputScenario
]

{ #category : #biz }
BPSimEngineSimulations >> configureExecution [
	self subclassResponsibility
]

{ #category : #biz }
BPSimEngineSimulations >> configureOutPuts [
	"the objetive is set new outputs,specially when the simulation restart"
	|simbBlock|
	simbBlock :=  [(BPSimBuilder buildScenario timer processingParameters: processModel flowElements)].
	self addFulloutputScenario: simbBlock value currentScenario.
	executions do: [ :execution |  
		execution addProcessModel: processModel.
		execution addFullOutputScenario: fullOutputScenario .
		execution addOutputScenario: simbBlock value currentScenario]
]

{ #category : #accessing }
BPSimEngineSimulations >> delay [
	delay ifNil:[ delay := 0.1].
	^ delay
]

{ #category : #accessing }
BPSimEngineSimulations >> delay: anObject [
	delay := anObject
]

{ #category : #'as yet unclassified' }
BPSimEngineSimulations >> executions [
	^ executions
]

{ #category : #accessing }
BPSimEngineSimulations >> executions: anObject [
	executions := anObject
]

{ #category : #accessing }
BPSimEngineSimulations >> fullOutputScenario [
	^ fullOutputScenario
]

{ #category : #getset }
BPSimEngineSimulations >> getChildrenNodes [
	^ nil
	"^ executions values"
]

{ #category : #initalize }
BPSimEngineSimulations >> initialize [
	super initialize.
	executions := 	A4BPDictionary new.
	delay := 0.1
]

{ #category : #accessing }
BPSimEngineSimulations >> inputScenario [
	^ inputScenario
]

{ #category : #accessing }
BPSimEngineSimulations >> key [
	key ifNil: [ key := UUID new asString ].
	^ key
]

{ #category : #accessing }
BPSimEngineSimulations >> key: anKey [
	key := anKey
]

{ #category : #initalize }
BPSimEngineSimulations >> label [
	^ 'simulation'
]

{ #category : #initalize }
BPSimEngineSimulations >> noDelay [
	delay := (Delay forSeconds: 0).
]

{ #category : #accessing }
BPSimEngineSimulations >> out [
	^ self fullOutputScenario
]

{ #category : #accessing }
BPSimEngineSimulations >> processModel [
	^ processModel
]

{ #category : #accessing }
BPSimEngineSimulations >> processModel: anObject [
	processModel := anObject
]

{ #category : #accessing }
BPSimEngineSimulations >> resourceController [
	^ resourceController
]

{ #category : #accessing }
BPSimEngineSimulations >> resourceController: anObject [
	resourceController := anObject
]

{ #category : #run }
BPSimEngineSimulations >> runSimulation [
	self configureOutPuts.
	executions do: [ :e | 
		|blockProcess|
		e delay:delay.
		blockProcess := [ e runExecution ] newProcess.
		blockProcess priority: Processor userBackgroundPriority.
		e blockProcess: blockProcess.
		blockProcess resume
	]
]

{ #category : #run }
BPSimEngineSimulations >> runSimulationSimpleThread [
	self configureOutPuts.
	self executions do: [ :e | 
		e delay:delay.
		e runExecution.]
]

{ #category : #run }
BPSimEngineSimulations >> stopSimulation [
	executions do: [ :e | e stopSimulation].
]
