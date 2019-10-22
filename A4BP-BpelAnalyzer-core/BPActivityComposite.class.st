"
A BPActivityComposite class is basic structure to reuse the code from activies with contain other activities

"
Class {
	#name : #BPActivityComposite,
	#superclass : #BPActivityStructured,
	#traits : 'TBPActivityMetric',
	#classTraits : 'TBPActivityMetric classTrait',
	#instVars : [
		'lstActivities'
	],
	#category : #'A4BP-BpelAnalyzer-core-model-bpel'
}

{ #category : #parser }
BPActivityComposite class >> annotation [
<MSEClass: #BPActivityComposite  super: #BPActivityStructured >
<package: #'A4BP-BpelAnalyzer-core' >
]

{ #category : #parser }
BPActivityComposite class >> fillElementsIn: aBPActivityComposite from: document [
	| visitor |
	visitor := BPBuilderSetNodesinBPObjectCompositeVisitor new.
	visitor element: aBPActivityComposite.
	self fillElementsIn: aBPActivityComposite from: document visitor: visitor
]

{ #category : #parser }
BPActivityComposite class >> fromXMLDescription: document fromAct: bpAct in: parent [
	self fillElementsIn: bpAct from: document.
	^ bpAct
]

{ #category : #visitor }
BPActivityComposite >> accept: aVisitor [
	^ aVisitor visitBPActivityComposite: self
]

{ #category : #getset }
BPActivityComposite >> activities [
	^ self lstActivities 
]

{ #category : #'as yet unclassified' }
BPActivityComposite >> addActivity: act [
	lstActivities add: act
]

{ #category : #bind }
BPActivityComposite >> bindWithBpProcess: aBPProcess [
	super bindWithBpProcess: aBPProcess.
	lstActivities do:[ :act | act bindWithBpProcess: aBPProcess].
	
]

{ #category : #dsl }
BPActivityComposite >> flows [
	^ self lstActivities
]

{ #category : #getset }
BPActivityComposite >> getChildrenNodes [
	| nodes |
	nodes := OrderedCollection new.
	nodes addAll: self lstActivities.
	^ nodes
]

{ #category : #initialization }
BPActivityComposite >> initialize [
	super initialize.
	lstActivities:= OrderedCollection new.
]

{ #category : #getset }
BPActivityComposite >> lstActivities [
	^ lstActivities ifNil: [ lstActivities := OrderedCollection new ]
]

{ #category : #getset }
BPActivityComposite >> lstAllActivities [
	"show all activities include into child activities elements"

	| visitor |
	visitor := BPMetricAllActivities new.
	visitor calculateActivitiesFrom: lstActivities.
	^ visitor lstActivities
]

{ #category : #metric }
BPActivityComposite >> metricCFC [
	^ super metricCFC 
]

{ #category : #'metrics-BPActivity' }
BPActivityComposite >> numberOfActAssing [
	^ self numberOfActByClass: BPAssign
]

{ #category : #'metrics-BPActivity' }
BPActivityComposite >> numberOfActByClass: aClass [
	| lst |
	lst := self lstAllActivities select: [ :act | act class == aClass ].
	^ lst size
]

{ #category : #'metrics-BPActivity' }
BPActivityComposite >> numberOfActEmpty [
	^ self numberOfActByClass: BPEmpty
]

{ #category : #'metrics-BPActivity' }
BPActivityComposite >> numberOfActFlow [
	^ self numberOfActByClass: BPFlow
]

{ #category : #'metrics-BPActivity' }
BPActivityComposite >> numberOfActForEach [
	^ self numberOfActByClass: BPForEach
]

{ #category : #'metrics-BPActivity' }
BPActivityComposite >> numberOfActIf [
	^ self numberOfActByClass: BPIf
]

{ #category : #'metrics-BPActivity' }
BPActivityComposite >> numberOfActInvoke [
	^ self numberOfActByClass: BPInvoke
]

{ #category : #'metrics-BPActivity' }
BPActivityComposite >> numberOfActPick [
	^ self numberOfActByClass: BPPick
]

{ #category : #'metrics-BPActivity' }
BPActivityComposite >> numberOfActReceive [
	^ self numberOfActByClass: BPReceive
]

{ #category : #'metrics-BPActivity' }
BPActivityComposite >> numberOfActReply [
	^ self numberOfActByClass: BPReply
]

{ #category : #'metrics-BPActivity' }
BPActivityComposite >> numberOfActRethrow [
	^ self numberOfActByClass: BPRethrow
]

{ #category : #'metrics-BPActivity' }
BPActivityComposite >> numberOfActScope [
	^ self numberOfActByClass: BPScope
]

{ #category : #'metrics-BPActivity' }
BPActivityComposite >> numberOfActSecuence [
	^ self numberOfActByClass: BPSequence
]

{ #category : #'metrics-BPActivity' }
BPActivityComposite >> numberOfActThrow [
	^ self numberOfActByClass: BPThrow
]

{ #category : #'metrics-BPActivity' }
BPActivityComposite >> numberOfActValidate [
	^ self numberOfActByClass: BPValidate
]

{ #category : #'metrics-BPActivity' }
BPActivityComposite >> numberOfActWait [
	^ self numberOfActByClass: BPWait
]

{ #category : #'metrics-BPActivity' }
BPActivityComposite >> numberOfActWhile [
	^ self numberOfActByClass: BPWhile
]

{ #category : #metric }
BPActivityComposite >> numberOfActivities [
	^ lstActivities size
]
