"
A BPMetricCFC is a implementation of visitor patter to control the action to execute in BPModel
to calculate the CFC metric
"
Class {
	#name : #BPMetricBPReceivesActivities,
	#superclass : #BPMetricAllActivities,
	#instVars : [
		'v'
	],
	#category : #'A4BP-BpelAnalyzer-core-metric'
}

{ #category : #'as yet unclassified' }
BPMetricBPReceivesActivities class >> annotation [
<MSEClass: #BPMetricBPReceivesActivities  super: #BPMetricAllActivities >
<package: #'A4BP-BpelAnalyzer-core' >
]

{ #category : #initialization }
BPMetricBPReceivesActivities >> initialize [
	"comment stating purpose of message"

	super initialize
]

{ #category : #doNothing }
BPMetricBPReceivesActivities >> visitBPActivity: aBPActivity [
	^ 0
]

{ #category : #visitors }
BPMetricBPReceivesActivities >> visitBPActivityComposite: aBPActivityComposite [
	aBPActivityComposite lstActivities do:[ :act | act accept: self].
	^ lstActivities 
]

{ #category : #visitors }
BPMetricBPReceivesActivities >> visitBPReceive: aBPReceive [
	^ lstActivities add: aBPReceive
]
