"
A BPMetricCFC is a implementation of visitor patter to control the action to execute in BPModel
to calculate the CFC metric
"
Class {
	#name : #BPMetricAbstractForBPActivities,
	#superclass : #A4BPAbstractVisitor,
	#traits : 'TBPActivitySameDoForAll',
	#classTraits : 'TBPActivitySameDoForAll classTrait',
	#instVars : [
		'lstActivities'
	],
	#category : #'A4BP-BpelAnalyzer-core-metric'
}

{ #category : #'as yet unclassified' }
BPMetricAbstractForBPActivities class >> annotation [
<MSEClass: #BPMetricAbstractForBPActivities  super: #A4BPAbstractVisitor >
<package: #'A4BP-BpelAnalyzer-core' >
]

{ #category : #action }
BPMetricAbstractForBPActivities >> calculateActivitiesFrom: lstAct [
	lstAct do: [ :act | act accept: self ]
]

{ #category : #initialization }
BPMetricAbstractForBPActivities >> initialize [
	"comment stating purpose of message"

	super initialize.
	lstActivities := OrderedCollection new
]

{ #category : #getset }
BPMetricAbstractForBPActivities >> lstActivities [
	^ lstActivities 
]

{ #category : #getset }
BPMetricAbstractForBPActivities >> numberOfActivities [
	^ lstActivities size
]

{ #category : #visitor }
BPMetricAbstractForBPActivities >> visitBBPWait: aBPWait [
	^ self visitBPActivity: aBPWait
]

{ #category : #visitors }
BPMetricAbstractForBPActivities >> visitBPActivity:aBPActivity [
	^ 0
]

{ #category : #visitor }
BPMetricAbstractForBPActivities >> visitBPActivityBasic: aBPActivityBasic [
	^ self visitBPActivity: aBPActivityBasic
]

{ #category : #visitor }
BPMetricAbstractForBPActivities >> visitBPActivityComposite: aBPActivityComposite [
	^ self visitBPActivity: aBPActivityComposite 
]

{ #category : #visitor }
BPMetricAbstractForBPActivities >> visitBPAssign: aBPAssign [
	^ self visitBPActivity: aBPAssign 
]

{ #category : #visitor }
BPMetricAbstractForBPActivities >> visitBPCatch: aBPCatch [
	^ self visitBPActivity: aBPCatch
]

{ #category : #visitor }
BPMetricAbstractForBPActivities >> visitBPCatchAll: aBPCatchAll [
	^ self visitBPActivity: aBPCatchAll 
]

{ #category : #visitor }
BPMetricAbstractForBPActivities >> visitBPElseIf: aBPElseIf [
	^ self visitBPActivity: aBPElseIf
]

{ #category : #visitor }
BPMetricAbstractForBPActivities >> visitBPEmpty: aBPEmpty [
	^ self visitBPActivity: aBPEmpty 
]

{ #category : #visitor }
BPMetricAbstractForBPActivities >> visitBPExit: aBPExit [
	^ self visitBPActivity: aBPExit 
]

{ #category : #visitor }
BPMetricAbstractForBPActivities >> visitBPExtensionActitity: aBPExtensionActitity [
	^ self visitBPActivity: aBPExtensionActitity 
]

{ #category : #visitor }
BPMetricAbstractForBPActivities >> visitBPFlow: aBPInvoke [
	^ self visitBPActivity: aBPInvoke 
]

{ #category : #visitor }
BPMetricAbstractForBPActivities >> visitBPForEach: aBPForEach [
	^ self visitBPActivity: aBPForEach 
]

{ #category : #visitor }
BPMetricAbstractForBPActivities >> visitBPIf: aBPIf [
	^ self visitBPActivity: aBPIf 
]

{ #category : #visitor }
BPMetricAbstractForBPActivities >> visitBPInvoke: aBPInvoke [
	^ self visitBPActivity: aBPInvoke 
]

{ #category : #visitor }
BPMetricAbstractForBPActivities >> visitBPPick: aBPPick [
	^ self visitBPActivity: aBPPick 
]

{ #category : #visitor }
BPMetricAbstractForBPActivities >> visitBPReceive: aBPReceive [
	^ self visitBPActivity: aBPReceive 
]

{ #category : #visitor }
BPMetricAbstractForBPActivities >> visitBPRepeatUntil: aBPRepeatUntil [
	^ self visitBPActivity: aBPRepeatUntil 
]

{ #category : #visitor }
BPMetricAbstractForBPActivities >> visitBPReply: aBPReply [
	^ self visitBPActivity: aBPReply 
]

{ #category : #visitor }
BPMetricAbstractForBPActivities >> visitBPRethrow: aBPRethrow [
	^ self visitBPActivity: aBPRethrow 
]

{ #category : #visitor }
BPMetricAbstractForBPActivities >> visitBPScope: aBPScope [
 	^ self visitBPActivity: aBPScope 
]

{ #category : #visitor }
BPMetricAbstractForBPActivities >> visitBPSequence: aBPSequence [
	^ self visitBPActivity: aBPSequence 
]

{ #category : #visitor }
BPMetricAbstractForBPActivities >> visitBPSwitch: aBPSwitch [
	^ self visitBPActivity: aBPSwitch 
]

{ #category : #visitor }
BPMetricAbstractForBPActivities >> visitBPThrow: aBPThrow [
	^ self visitBPActivity: aBPThrow 
]

{ #category : #visitor }
BPMetricAbstractForBPActivities >> visitBPValidate: aBPValidate [
	^ self visitBPActivity: aBPValidate 
]

{ #category : #visitor }
BPMetricAbstractForBPActivities >> visitBPWhile: aBPWhile [
	^ self visitBPActivity: aBPWhile 
]
