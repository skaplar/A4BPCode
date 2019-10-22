"
A BPScope is xxxxxxxxx.


Scope:-  provides fault and compensation handling capabilities to the activities nested within it. 
"
Class {
	#name : #BPScope,
	#superclass : #BPActivityComposite,
	#traits : 'TBPActivityMetric',
	#classTraits : 'TBPActivityMetric classTrait',
	#instVars : [
		'faultHandlers'
	],
	#category : #'A4BP-BpelAnalyzer-core-model-bpel'
}

{ #category : #parser }
BPScope class >> annotation [
<MSEClass: #BPScope  super: #BPActivityComposite >
<package: #'A4BP-BpelAnalyzer-core' >
]

{ #category : #parser }
BPScope class >> fillElementsIn: aBPScope from: document [
	| visitor |
	visitor := BPBuilderSetNodesinBPScopeVisitor new.
	visitor element: aBPScope.
	self fillElementsIn: aBPScope from: document visitor: visitor
]

{ #category : #visitor }
BPScope >> accept: aVisitor [
	^ aVisitor visitBPScope: self
]

{ #category : #adding }
BPScope >> addFaultHandler: aHandler [
	faultHandlers := aHandler
]

{ #category : #getset }
BPScope >> faultHandlers [
  ^ faultHandlers
]

{ #category : #initialization }
BPScope >> initialize [
	super initialize.
	faultHandlers := BPFaultHandlers new.
]

{ #category : #'metrics-BPActivity' }
BPScope >> lstAllActivities [
"show all activities include into child activities elements"
	| visitor |
	visitor := BPMetricAllActivities new.
	visitor calculateActivitiesFrom: self lstActivities.
	^ visitor lstActivities
]

{ #category : #'metrics-BPActivity' }
BPScope >> numberOfActAssing [
	^ self numberOfActByClass: BPAssign
]

{ #category : #'metrics-BPActivity' }
BPScope >> numberOfActByClass: aClass [
	| lst |
	lst := self lstAllActivities select: [ :act | act class == aClass ].
	^ lst size
]

{ #category : #'metrics-BPActivity' }
BPScope >> numberOfActEmpty [
	^ self numberOfActByClass: BPEmpty
]

{ #category : #'metrics-BPActivity' }
BPScope >> numberOfActFlow [
	^ self numberOfActByClass: BPFlow
]

{ #category : #'metrics-BPActivity' }
BPScope >> numberOfActForEach [
	^ self numberOfActByClass: BPForEach
]

{ #category : #'metrics-BPActivity' }
BPScope >> numberOfActIf [
	^ self numberOfActByClass: BPIf
]

{ #category : #'metrics-BPActivity' }
BPScope >> numberOfActInvoke [
	^ self numberOfActByClass: BPInvoke
]

{ #category : #'metrics-BPActivity' }
BPScope >> numberOfActPick [
	^ self numberOfActByClass: BPPick
]

{ #category : #'metrics-BPActivity' }
BPScope >> numberOfActReceive [
	^ self numberOfActByClass: BPReceive
]

{ #category : #'metrics-BPActivity' }
BPScope >> numberOfActReply [
	^ self numberOfActByClass: BPReply
]

{ #category : #'metrics-BPActivity' }
BPScope >> numberOfActRethrow [
	^ self numberOfActByClass: BPRethrow
]

{ #category : #'metrics-BPActivity' }
BPScope >> numberOfActScope [
	^ self numberOfActByClass: BPScope
]

{ #category : #'metrics-BPActivity' }
BPScope >> numberOfActSecuence [
	^ self numberOfActByClass: BPSequence
]

{ #category : #'metrics-BPActivity' }
BPScope >> numberOfActThrow [
	^ self numberOfActByClass: BPThrow
]

{ #category : #'metrics-BPActivity' }
BPScope >> numberOfActValidate [
	^ self numberOfActByClass: BPValidate
]

{ #category : #'metrics-BPActivity' }
BPScope >> numberOfActWait [
	^ self numberOfActByClass: BPWait
]

{ #category : #'metrics-BPActivity' }
BPScope >> numberOfActWhile [
	^ self numberOfActByClass: BPWhile
]

{ #category : #'metrics-BPActivity' }
BPScope >> numberOfActivities [
	^ self lstAllActivities size
]

{ #category : #metric }
BPScope >> numberOfCatchAll [
	^ faultHandlers numberOfCatchAll
]

{ #category : #metric }
BPScope >> numberOfCatchs [
	^ faultHandlers numberOfCatchs
]
