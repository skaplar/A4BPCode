"
A BPRepeatUntil class is .

"
Class {
	#name : #BPRepeatUntil,
	#superclass : #BPActivityComposite,
	#category : #'A4BP-BpelAnalyzer-core-model-bpel'
}

{ #category : #'as yet unclassified' }
BPRepeatUntil class >> annotation [
<MSEClass: #BPRepeatUntil  super: #BPActivityComposite >
<package: #'A4BP-BpelAnalyzer-core' >
]

{ #category : #'as yet unclassified' }
BPRepeatUntil class >> fromXMLDescription: document [
	| bpAct |
	bpAct := self new.
	self fromXMLDescription: document fromAct: bpAct.
	^ bpAct
]
