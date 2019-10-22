"
A BPFor is representation of loop activity.

"
Class {
	#name : #BPFor,
	#superclass : #BPBPELObject,
	#category : #'A4BP-BpelAnalyzer-core-model-bpel'
}

{ #category : #visitor }
BPFor class >> accept: aVisitor [
	^ aVisitor visitBPFor: self
]

{ #category : #visitor }
BPFor class >> annotation [
<MSEClass: #BPFor  super: #BPBPELObject >
<package: #'A4BP-BpelAnalyzer-core' >
]

{ #category : #visitor }
BPFor >> accept:aVisitor [
 ^ aVisitor visitBPFor:self
]
