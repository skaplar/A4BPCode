"
A BPExtensionActitity class is reference to more kind of activities

"
Class {
	#name : #BPExtensionActitity,
	#superclass : #BPActivity,
	#category : #'A4BP-BpelAnalyzer-core-model-bpel'
}

{ #category : #'as yet unclassified' }
BPExtensionActitity class >> annotation [
<MSEClass: #BPExtensionActitity  super: #BPActivity >
<package: #'A4BP-BpelAnalyzer-core' >
]

{ #category : #'as yet unclassified' }
BPExtensionActitity class >> fromXMLDescription: document [
	| bpAct |
	bpAct := self new.
	self fromXMLDescription: document fromAct: bpAct.
	^ bpAct
]
