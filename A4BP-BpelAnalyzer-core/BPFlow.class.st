"
A BPFlow is xxxxxxxxx.

Instance Variables
	bpLinks:		<BPLink>

bpLinks
	- list of BPLink
	
	
	flow:- Enables the concurrent execution of activities. 
It defines a set of activities that will be invoked in parallel.

<flow> 
<links>? 
	<link name=""NCName"">+ 
</links> 
activity+ 
</flow> 

The links put their own constraints on how the activities of a process are set to run

"
Class {
	#name : #BPFlow,
	#superclass : #BPActivityComposite,
	#instVars : [
		'lstBPLinks'
	],
	#category : #'A4BP-BpelAnalyzer-core-model-bpel'
}

{ #category : #'as yet unclassified' }
BPFlow class >> annotation [
<MSEClass: #BPFlow  super: #BPActivityComposite >
<package: #'A4BP-BpelAnalyzer-core' >
]

{ #category : #visitor }
BPFlow >> accept: aVisitor [
	^ aVisitor visitBPFlow: self
]

{ #category : #initialization }
BPFlow >> initialize [
	super initialize.
	lstBPLinks :=IdentityDictionary new.
]

{ #category : #accessing }
BPFlow >> lstBPLinks [
^ lstBPLinks.
]

{ #category : #accessing }
BPFlow >> lstBPLinks:lst [
	lstBPLinks:=lst

]

{ #category : #metric }
BPFlow >> metricCFC [
	^ BPMetricCFC calculateCFC: self
]

{ #category : #metric }
BPFlow >> numberOfLinks [
	^ self lstBPLinks size
]
