"
A BPSimExecutionVisitor is xxxxxxxxx.

Instance Variables
	fullOutputScenario:		<Object>
	grabbers:		<Object>
	inputScenario:		<Object>
	key:		<Object>
	outputScenario:		<Object>
	processModel:		<Object>

fullOutputScenario
	- xxxxx

grabbers
	- xxxxx

inputScenario
	- xxxxx

key
	- xxxxx

outputScenario
	- xxxxx

processModel
	- xxxxx

"
Class {
	#name : #BPSimExecutionVisitor,
	#superclass : #BPSimAbstractVisitor,
	#instVars : [
		'processModel',
		'inputScenario',
		'outputScenario',
		'fullOutputScenario',
		'grabbers',
		'key',
		'observers',
		'rtObserver',
		'bpElement',
		'resourceController',
		'delay',
		'blockProcess'
	],
	#category : #'A4BP-SimEngine-core-execution'
}

{ #category : #'as yet unclassified' }
BPSimExecutionVisitor class >> annotation [
<MSEClass: #BPSimExecutionVisitor  super: #BPSimAbstractVisitor >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #add }
BPSimExecutionVisitor >> addFullOutputScenario: anFullOutPutScenario [
	fullOutputScenario := anFullOutPutScenario
]

{ #category : #add }
BPSimExecutionVisitor >> addGrabber: aGrabber [
	grabbers add: aGrabber
]

{ #category : #add }
BPSimExecutionVisitor >> addInputScenario: aInputScenario [
	inputScenario := aInputScenario 
]

{ #category : #accessing }
BPSimExecutionVisitor >> addObserver: anObserver [
	observers add: anObserver
]

{ #category : #add }
BPSimExecutionVisitor >> addOutputScenario: aoutputScenario [
	outputScenario := aoutputScenario 
]

{ #category : #add }
BPSimExecutionVisitor >> addProcessModel: anprocessModel [
	processModel := anprocessModel
]

{ #category : #add }
BPSimExecutionVisitor >> addResourceController: aResourceController [
	resourceController := aResourceController.
]

{ #category : #accessing }
BPSimExecutionVisitor >> blockProcess [
	^ blockProcess
]

{ #category : #accessing }
BPSimExecutionVisitor >> blockProcess: anObject [
	blockProcess := anObject
]

{ #category : #delay }
BPSimExecutionVisitor >> delay [
	delay ifNil:[ delay := 0.1].
	^ delay
]

{ #category : #delay }
BPSimExecutionVisitor >> delay: anObject [
	delay := anObject
]

{ #category : #flow }
BPSimExecutionVisitor >> doInGrabbers: aModel [
	self notifyObserves.
	grabbers do: [ :g | aModel accept: g ].
]

{ #category : #accessing }
BPSimExecutionVisitor >> fullOutputScenario [
	^ fullOutputScenario
]

{ #category : #accessing }
BPSimExecutionVisitor >> getChildrenNodes [
	^ nil
]

{ #category : #initialization }
BPSimExecutionVisitor >> initialize [
	super initialize.
	grabbers := OrderedCollection new.
	observers := OrderedCollection new.
	rtObserver := BPSimBPMN20RTObserver new.
	rtObserver execution: self.
	observers add: rtObserver.
]

{ #category : #accessing }
BPSimExecutionVisitor >> inputScenario [
	^ inputScenario
]

{ #category : #accessing }
BPSimExecutionVisitor >> key [
	key ifNil: [ key := UUID new asString ].
	^ key
]

{ #category : #accessing }
BPSimExecutionVisitor >> key: anKey [
	key := anKey
]

{ #category : #visitor }
BPSimExecutionVisitor >> label [
	^ 'execution'
]

{ #category : #accessing }
BPSimExecutionVisitor >> noDelay [
	delay := (Delay forSeconds:0)
]

{ #category : #observers }
BPSimExecutionVisitor >> notifyObserves [
	observers do: [ :o | 
		o notify: bpElement ]
]

{ #category : #accessing }
BPSimExecutionVisitor >> out [
	^ self outputScenario 
]

{ #category : #accessing }
BPSimExecutionVisitor >> outputScenario [
	^ outputScenario
]

{ #category : #view }
BPSimExecutionVisitor >> plot [
	^ rtObserver view
	
]

{ #category : #view }
BPSimExecutionVisitor >> plotOpen [
	[rtObserver view inspect] forkAt: Processor userBackgroundPriority
	
]

{ #category : #visitor }
BPSimExecutionVisitor >> processModel [
	^ processModel
]

{ #category : #observers }
BPSimExecutionVisitor >> removeAllObservers [
	observers removeAll.
	rtObserver := BPSimBPMN20RTEmptyObserver new.
]

{ #category : #accessing }
BPSimExecutionVisitor >> resourceController [
	^ resourceController
]

{ #category : #'as yet unclassified' }
BPSimExecutionVisitor >> resourceController: aResourceController [
	^ resourceController := aResourceController
]

{ #category : #accessing }
BPSimExecutionVisitor >> rtObserver [
	^ rtObserver
]

{ #category : #accessing }
BPSimExecutionVisitor >> rtObserver: anObject [
	rtObserver := anObject
]

{ #category : #private }
BPSimExecutionVisitor >> run [
	"rtObserver open."
	processModel accept: self
]

{ #category : #simulation }
BPSimExecutionVisitor >> runExecution [
	grabbers
		do: [ :g | 
			g
				inputScenario: inputScenario;
				outputScenario: outputScenario;
				fullOutputScenario: fullOutputScenario;
				resourceController:resourceController
				].
	self run
]

{ #category : #simulation }
BPSimExecutionVisitor >> stopSimulation [
	blockProcess ifNotNil:[ blockProcess terminate].
]

{ #category : #visitor }
BPSimExecutionVisitor >> visitA4BPEmptyObj: aModel [
	"comment stating purpose of message"

]

{ #category : #delay }
BPSimExecutionVisitor >> wait [
	(Delay forSeconds: self delay) wait.
]
