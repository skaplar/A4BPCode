"
A TBPActivityMetric is the similar code to use in diferent part of model who contains the same way to evaluate metrics.

"
Trait {
	#name : #TBPActivityMetric,
	#category : #'A4BP-BpelAnalyzer-core-Trait'
}

{ #category : #'metrics-BPActivity' }
TBPActivityMetric >> lstAllActivities [
"show all activities include into child activities elements"
	| visitor |
	visitor := BPMetricActivities new.
	visitor calculateActivitiesFrom: self lstActivities.
	^ visitor lstActivities
]

{ #category : #'metrics-BPActivity' }
TBPActivityMetric >> numberOfActAssing [
	^ self numberOfActByClass: BPAssign
]

{ #category : #'metrics-BPActivity' }
TBPActivityMetric >> numberOfActByClass: aClass [
	| lst |
	lst := self lstAllActivities select: [ :act | act class == aClass ].
	^ lst size
]

{ #category : #'metrics-BPActivity' }
TBPActivityMetric >> numberOfActEmpty [
	^ self numberOfActByClass: BPEmpty
]

{ #category : #'metrics-BPActivity' }
TBPActivityMetric >> numberOfActFlow [
	^ self numberOfActByClass: BPFlow
]

{ #category : #'metrics-BPActivity' }
TBPActivityMetric >> numberOfActForEach [
	^ self numberOfActByClass: BPForEach
]

{ #category : #'metrics-BPActivity' }
TBPActivityMetric >> numberOfActIf [
	^ self numberOfActByClass: BPIf
]

{ #category : #'metrics-BPActivity' }
TBPActivityMetric >> numberOfActInvoke [
	^ self numberOfActByClass: BPInvoke
]

{ #category : #'metrics-BPActivity' }
TBPActivityMetric >> numberOfActPick [
	^ self numberOfActByClass: BPPick
]

{ #category : #'metrics-BPActivity' }
TBPActivityMetric >> numberOfActReceive [
	^ self numberOfActByClass: BPReceive
]

{ #category : #'metrics-BPActivity' }
TBPActivityMetric >> numberOfActReply [
	^ self numberOfActByClass: BPReply
]

{ #category : #'metrics-BPActivity' }
TBPActivityMetric >> numberOfActRethrow [
	^ self numberOfActByClass: BPRethrow
]

{ #category : #'metrics-BPActivity' }
TBPActivityMetric >> numberOfActScope [
	^ self numberOfActByClass: BPScope
]

{ #category : #'metrics-BPActivity' }
TBPActivityMetric >> numberOfActSecuence [
	^ self numberOfActByClass: BPSequence
]

{ #category : #'metrics-BPActivity' }
TBPActivityMetric >> numberOfActThrow [
	^ self numberOfActByClass: BPThrow
]

{ #category : #'metrics-BPActivity' }
TBPActivityMetric >> numberOfActValidate [
	^ self numberOfActByClass: BPValidate
]

{ #category : #'metrics-BPActivity' }
TBPActivityMetric >> numberOfActWait [
	^ self numberOfActByClass: BPWait
]

{ #category : #'metrics-BPActivity' }
TBPActivityMetric >> numberOfActWhile [
	^ self numberOfActByClass: BPWhile
]

{ #category : #'metrics-BPActivity' }
TBPActivityMetric >> numberOfActivities [
	^ self lstAllActivities size
]
