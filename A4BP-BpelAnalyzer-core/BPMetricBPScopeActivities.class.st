"
A BPMetricCFC is a implementation of visitor patter to control the action to execute in BPModel
to calculate the CFC metric
"
Class {
	#name : #BPMetricBPScopeActivities,
	#superclass : #BPMetricAllActivities,
	#category : #'A4BP-BpelAnalyzer-core-metric'
}

{ #category : #'as yet unclassified' }
BPMetricBPScopeActivities class >> annotation [
<MSEClass: #BPMetricBPScopeActivities  super: #BPMetricAllActivities >
<package: #'A4BP-BpelAnalyzer-core' >
]

{ #category : #initialization }
BPMetricBPScopeActivities >> initialize [
	"comment stating purpose of message"

	super initialize
]

{ #category : #doNothing }
BPMetricBPScopeActivities >> visitBPActivity: aBPActivity [
	^ 0
]

{ #category : #visitors }
BPMetricBPScopeActivities >> visitBPActivityComposite: aBPActivityComposite [
	aBPActivityComposite lstActivities do:[ :act | act accept: self].
	^ lstActivities 
]

{ #category : #visitors }
BPMetricBPScopeActivities >> visitBPScope: aBPScope [
	^ lstActivities add: aBPScope
]
