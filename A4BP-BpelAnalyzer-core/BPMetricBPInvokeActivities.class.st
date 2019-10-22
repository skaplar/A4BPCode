"
A BPMetricCFC is a implementation of visitor patter to control the action to execute in BPModel
to calculate the CFC metric
"
Class {
	#name : #BPMetricBPInvokeActivities,
	#superclass : #BPMetricAllActivities,
	#category : #'A4BP-BpelAnalyzer-core-metric'
}

{ #category : #'as yet unclassified' }
BPMetricBPInvokeActivities class >> annotation [
<MSEClass: #BPMetricBPInvokeActivities  super: #BPMetricAllActivities >
<package: #'A4BP-BpelAnalyzer-core' >
]

{ #category : #initialization }
BPMetricBPInvokeActivities >> initialize [
	"comment stating purpose of message"

	super initialize
]

{ #category : #doNothing }
BPMetricBPInvokeActivities >> visitBPActivity: aBPActivity [
	^ 0
]

{ #category : #visitors }
BPMetricBPInvokeActivities >> visitBPActivityComposite: aBPActivityComposite [
	aBPActivityComposite lstActivities do:[ :act | act accept: self].
	^ lstActivities 
]

{ #category : #visitors }
BPMetricBPInvokeActivities >> visitBPInvoke: aBPInvoke [
	^ lstActivities add: aBPInvoke
]
