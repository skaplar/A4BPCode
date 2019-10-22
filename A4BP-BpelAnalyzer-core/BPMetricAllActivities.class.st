"
A BPMetricCFC is a implementation of visitor patter to control the action to execute in BPModel
to calculate the CFC metric
"
Class {
	#name : #BPMetricAllActivities,
	#superclass : #BPMetricAbstractForBPActivities,
	#category : #'A4BP-BpelAnalyzer-core-metric'
}

{ #category : #'as yet unclassified' }
BPMetricAllActivities class >> annotation [
<MSEClass: #BPMetricAllActivities  super: #BPMetricAbstractForBPActivities >
<package: #'A4BP-BpelAnalyzer-core' >
]

{ #category : #initialization }
BPMetricAllActivities >> initialize [
	"comment stating purpose of message"

	super initialize
]

{ #category : #visitors }
BPMetricAllActivities >> visitBPActivity:aBPActivity [
	lstActivities add: aBPActivity.
	^ lstActivities 
]

{ #category : #visitors }
BPMetricAllActivities >> visitBPActivityComposite: aBPActivityComposite [
	self visitBPActivity: aBPActivityComposite.
	aBPActivityComposite lstActivities do:[ :act | act accept: self].
	^ lstActivities 
]

{ #category : #visitors }
BPMetricAllActivities >> visitBPFlow: aBPInvoke [
	^ self visitBPActivityComposite: aBPInvoke 
]

{ #category : #visitors }
BPMetricAllActivities >> visitBPObject: aBPObject [
	^ 0
]

{ #category : #visitors }
BPMetricAllActivities >> visitBPOnMessage: aBPOnMessage [
	aBPOnMessage bpActivity ifNil: [ ^ self ].
	aBPOnMessage bpActivity accept: self
]

{ #category : #visitors }
BPMetricAllActivities >> visitBPPick: aBPPick [
	self visitBPActivity: aBPPick.
	aBPPick lstBPOnMessage do:[ :act | act accept: self].
	^ lstActivities
]

{ #category : #visitors }
BPMetricAllActivities >> visitBPScope: aBPScope [
	^ self visitBPActivityComposite: aBPScope 
]

{ #category : #visitors }
BPMetricAllActivities >> visitBPSequence: aBPSequence [
	^ self visitBPActivityComposite: aBPSequence 
]

{ #category : #visitors }
BPMetricAllActivities >> visitBPWhile: aBPWhile [
	^ self visitBPActivityComposite: aBPWhile
]
