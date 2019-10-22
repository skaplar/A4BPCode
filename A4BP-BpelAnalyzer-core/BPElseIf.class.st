"
A BPElseIf is action to execute sentences when the boolean validation is false.

"
Class {
	#name : #BPElseIf,
	#superclass : #BPActivityStructured,
	#category : #'A4BP-BpelAnalyzer-core-model-bpel'
}

{ #category : #'as yet unclassified' }
BPElseIf class >> annotation [
<MSEClass: #BPElseIf  super: #BPActivityStructured >
<package: #'A4BP-BpelAnalyzer-core' >
]

{ #category : #'as yet unclassified' }
BPElseIf class >> fromXMLDescription: document [
	| bpAct |
	bpAct := self new.
	self fromXMLDescription: document fromAct: bpAct.
	^ bpAct
]
