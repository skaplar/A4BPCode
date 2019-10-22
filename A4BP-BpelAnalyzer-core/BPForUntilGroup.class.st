Class {
	#name : #BPForUntilGroup,
	#superclass : #BPBPELObject,
	#instVars : [
		'bpFor',
		'bpUntil'
	],
	#category : #'A4BP-BpelAnalyzer-core-model-bpel'
}

{ #category : #visitor }
BPForUntilGroup class >> accept: aVisitor [
	^ aVisitor visitBPForUntilGroup: self
]

{ #category : #visitor }
BPForUntilGroup class >> annotation [
<MSEClass: #BPForUntilGroup  super: #BPBPELObject >
<package: #'A4BP-BpelAnalyzer-core' >
]

{ #category : #visitor }
BPForUntilGroup >> accept: aVisitor [
	^ aVisitor visitBPForUntilGroup: self
]
