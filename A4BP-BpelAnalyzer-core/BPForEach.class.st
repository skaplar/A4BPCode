"
A BPForEach class is xxxxxxxxx.


forEach:-  forEach activity executes its scope activity exactly N+1 times serially in iteration or concurrently where N is the difference between finalCounterValue and startCounterValue. 

Based on the complitionCondition all activities inside scope activity of forEach activity might not be executed
"
Class {
	#name : #BPForEach,
	#superclass : #BPActivityStructured,
	#category : #'A4BP-BpelAnalyzer-core-model-bpel'
}

{ #category : #'as yet unclassified' }
BPForEach class >> annotation [
<MSEClass: #BPForEach  super: #BPActivityStructured >
<package: #'A4BP-BpelAnalyzer-core' >
]

{ #category : #'as yet unclassified' }
BPForEach class >> fromXMLDescription: document [
	| bpAct |
	bpAct := self new.
	self fromXMLDescription: document fromAct: bpAct.
	^ bpAct
]

{ #category : #visitor }
BPForEach >> accept: aVisitor [
	^ aVisitor visitBPForEach: self
]
