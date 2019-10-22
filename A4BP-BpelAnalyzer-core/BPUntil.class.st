"
A BPUntil is xxxxxxxxx.

"
Class {
	#name : #BPUntil,
	#superclass : #BPBPELObject,
	#category : #'A4BP-BpelAnalyzer-core-model-bpel'
}

{ #category : #'as yet unclassified' }
BPUntil class >> annotation [
<MSEClass: #BPUntil  super: #BPBPELObject >
<package: #'A4BP-BpelAnalyzer-core' >
]

{ #category : #visitor }
BPUntil >> accept: aVisitor [
	^ aVisitor visitBPUntil: self
]
