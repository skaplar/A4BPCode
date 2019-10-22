Trait {
	#name : #TA4BPActivityMetric,
	#category : #'A4BP-BPEL20-core-Trait'
}

{ #category : #'metrics-BPActivity' }
TA4BPActivityMetric >> lstAllActivities [
"show all activities include into child activities elements"
	"
	| visitor |
	visitor := BPMetricActivities new.
	visitor calculateActivitiesFrom: self lstActivities.
	^ visitor lstActivities
	"
]

{ #category : #'metrics-BPActivity' }
TA4BPActivityMetric >> numberOfActAssing [
	^ self numberOfActByClass: BPEL20AssignImpl
]

{ #category : #'metrics-BPActivity' }
TA4BPActivityMetric >> numberOfActByClass: aClass [
	| lst |
	lst := self lstAllActivities select: [ :act | act class == aClass ].
	^ lst size
]

{ #category : #'metrics-BPActivity' }
TA4BPActivityMetric >> numberOfActEmpty [
	^ self numberOfActByClass: BPEL20EmptyImpl 
]

{ #category : #'metrics-BPActivity' }
TA4BPActivityMetric >> numberOfActFlow [
	^ self numberOfActByClass: BPEL20FlowImpl 
]

{ #category : #'metrics-BPActivity' }
TA4BPActivityMetric >> numberOfActForEach [
	^ self numberOfActByClass: BPEL20ForEachImpl 
]

{ #category : #'metrics-BPActivity' }
TA4BPActivityMetric >> numberOfActIf [
	^ self numberOfActByClass: BPEL20IfImpl 
]

{ #category : #'metrics-BPActivity' }
TA4BPActivityMetric >> numberOfActInvoke [
	^ self numberOfActByClass: BPEL20InvokeImpl 
]

{ #category : #'metrics-BPActivity' }
TA4BPActivityMetric >> numberOfActPick [
	^ self numberOfActByClass: BPEL20PickImpl 
]

{ #category : #'metrics-BPActivity' }
TA4BPActivityMetric >> numberOfActReceive [
	^ self numberOfActByClass: BPEL20ReceiveImpl 
]

{ #category : #'metrics-BPActivity' }
TA4BPActivityMetric >> numberOfActReply [
	^ self numberOfActByClass: BPEL20ReplyImpl 
]

{ #category : #'metrics-BPActivity' }
TA4BPActivityMetric >> numberOfActRethrow [
	^ self numberOfActByClass: BPEL20RethrowImpl 
]

{ #category : #'metrics-BPActivity' }
TA4BPActivityMetric >> numberOfActScope [
	^ self numberOfActByClass: BPEL20ScopeImpl
]

{ #category : #'metrics-BPActivity' }
TA4BPActivityMetric >> numberOfActSecuence [
	^ self numberOfActByClass: BPEL20SequenceImpl 
]

{ #category : #'metrics-BPActivity' }
TA4BPActivityMetric >> numberOfActThrow [
	^ self numberOfActByClass: BPEL20ThrowImpl 
]

{ #category : #'metrics-BPActivity' }
TA4BPActivityMetric >> numberOfActValidate [
	^ self numberOfActByClass: BPEL20ValidateImpl 
]

{ #category : #'metrics-BPActivity' }
TA4BPActivityMetric >> numberOfActWait [
	^ self numberOfActByClass: BPEL20WaitImpl 
]

{ #category : #'metrics-BPActivity' }
TA4BPActivityMetric >> numberOfActWhile [
	^ self numberOfActByClass: BPEL20WhileImpl 
]

{ #category : #'metrics-BPActivity' }
TA4BPActivityMetric >> numberOfActivities [
	^ self lstAllActivities size
]
