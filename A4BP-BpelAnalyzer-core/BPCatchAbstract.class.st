"
A BPCatch is the representation of the catch handler element used for catch error from intertfaces wsdl.

"
Class {
	#name : #BPCatchAbstract,
	#superclass : #BPBPELObject,
	#traits : 'TBPActivityMetric',
	#classTraits : 'TBPActivityMetric classTrait',
	#instVars : [
		'lstActivities'
	],
	#category : #'A4BP-BpelAnalyzer-core-model-bpel'
}

{ #category : #parser }
BPCatchAbstract class >> annotation [
<MSEClass: #BPCatchAbstract  super: #BPBPELObject >
<package: #'A4BP-BpelAnalyzer-core' >
]

{ #category : #parser }
BPCatchAbstract class >> fillElementsIn: aBPObjectComposite from: document [
	| visitor |
	visitor := BPBuilderSetNodesinBPObjectCompositeVisitor new.
	visitor element: aBPObjectComposite.
	self fillElementsIn: aBPObjectComposite from: document visitor: visitor
]

{ #category : #parser }
BPCatchAbstract class >> fromXMLDescription: document in: aBPObject [
	| bpObj |
	bpObj := self new.
	self fillElementsIn: bpObj from: document.
	^ bpObj
]

{ #category : #visitor }
BPCatchAbstract >> accept: aVisitor [
	^ aVisitor visitBPCatch: self.
]

{ #category : #adding }
BPCatchAbstract >> addActivity: aBPActivity [
	lstActivities add: aBPActivity
]

{ #category : #getset }
BPCatchAbstract >> getChildrenNodes [
	| nodes |
	nodes := OrderedCollection new.
	nodes addAll: self lstActivities.
	^ nodes
]

{ #category : #initialization }
BPCatchAbstract >> initialize [
	super initialize.
	lstActivities:= OrderedCollection new.
]

{ #category : #getset }
BPCatchAbstract >> lstActivities [
 ^ lstActivities
]

{ #category : #'metrics-BPActivity' }
BPCatchAbstract >> lstAllActivities [
"show all activities include into child activities elements"
	| visitor |
	visitor := BPMetricAllActivities new.
	visitor calculateActivitiesFrom: self lstActivities.
	^ visitor lstActivities
]

{ #category : #'metrics-BPActivity' }
BPCatchAbstract >> numberOfActAssing [
	^ self numberOfActByClass: BPAssign
]

{ #category : #'metrics-BPActivity' }
BPCatchAbstract >> numberOfActByClass: aClass [
	| lst |
	lst := self lstAllActivities select: [ :act | act class == aClass ].
	^ lst size
]

{ #category : #'metrics-BPActivity' }
BPCatchAbstract >> numberOfActEmpty [
	^ self numberOfActByClass: BPEmpty
]

{ #category : #'metrics-BPActivity' }
BPCatchAbstract >> numberOfActFlow [
	^ self numberOfActByClass: BPFlow
]

{ #category : #'metrics-BPActivity' }
BPCatchAbstract >> numberOfActForEach [
	^ self numberOfActByClass: BPForEach
]

{ #category : #'metrics-BPActivity' }
BPCatchAbstract >> numberOfActIf [
	^ self numberOfActByClass: BPIf
]

{ #category : #'metrics-BPActivity' }
BPCatchAbstract >> numberOfActInvoke [
	^ self numberOfActByClass: BPInvoke
]

{ #category : #'metrics-BPActivity' }
BPCatchAbstract >> numberOfActPick [
	^ self numberOfActByClass: BPPick
]

{ #category : #'metrics-BPActivity' }
BPCatchAbstract >> numberOfActReceive [
	^ self numberOfActByClass: BPReceive
]

{ #category : #'metrics-BPActivity' }
BPCatchAbstract >> numberOfActReply [
	^ self numberOfActByClass: BPReply
]

{ #category : #'metrics-BPActivity' }
BPCatchAbstract >> numberOfActRethrow [
	^ self numberOfActByClass: BPRethrow
]

{ #category : #'metrics-BPActivity' }
BPCatchAbstract >> numberOfActScope [
	^ self numberOfActByClass: BPScope
]

{ #category : #'metrics-BPActivity' }
BPCatchAbstract >> numberOfActSecuence [
	^ self numberOfActByClass: BPSequence
]

{ #category : #'metrics-BPActivity' }
BPCatchAbstract >> numberOfActThrow [
	^ self numberOfActByClass: BPThrow
]

{ #category : #'metrics-BPActivity' }
BPCatchAbstract >> numberOfActValidate [
	^ self numberOfActByClass: BPValidate
]

{ #category : #'metrics-BPActivity' }
BPCatchAbstract >> numberOfActWait [
	^ self numberOfActByClass: BPWait
]

{ #category : #'metrics-BPActivity' }
BPCatchAbstract >> numberOfActWhile [
	^ self numberOfActByClass: BPWhile
]

{ #category : #'metrics-BPActivity' }
BPCatchAbstract >> numberOfActivities [
	^ self lstAllActivities size
]
