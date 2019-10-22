"
A BPRethrow is 

"
Class {
	#name : #BPRethrow,
	#superclass : #BPActivity,
	#category : #'A4BP-BpelAnalyzer-core-model-bpel'
}

{ #category : #'as yet unclassified' }
BPRethrow class >> annotation [
<MSEClass: #BPRethrow  super: #BPActivity >
<package: #'A4BP-BpelAnalyzer-core' >
]

{ #category : #'as yet unclassified' }
BPRethrow class >> fromXMLDescription: document [
	| bpAct |
	bpAct := self new.
	self fromXMLDescription: document fromAct: bpAct.
	^ bpAct
]
