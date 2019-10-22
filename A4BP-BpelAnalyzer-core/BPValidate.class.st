"
A BPValidate is

"
Class {
	#name : #BPValidate,
	#superclass : #BPActivity,
	#category : #'A4BP-BpelAnalyzer-core-model-bpel'
}

{ #category : #'as yet unclassified' }
BPValidate class >> annotation [
<MSEClass: #BPValidate  super: #BPActivity >
<package: #'A4BP-BpelAnalyzer-core' >
]

{ #category : #'as yet unclassified' }
BPValidate class >> fromXMLDescription: document [
	| bpAct |
	bpAct := self new.
	self fromXMLDescription: document fromAct: bpAct.
	^ bpAct
]
