"
A BPActivityBasic is a inheritance structure of basic an athomic activities.

Basic activities are those that are considered to be atomic, meaning that they cannot be subdivided.

"
Class {
	#name : #BPActivityBasic,
	#superclass : #BPActivity,
	#category : #'A4BP-BpelAnalyzer-core-model-bpel'
}

{ #category : #'as yet unclassified' }
BPActivityBasic class >> annotation [
<MSEClass: #BPActivityBasic  super: #BPActivity >
<package: #'A4BP-BpelAnalyzer-core' >
]

{ #category : #visitor }
BPActivityBasic >> accept: aVisitor [
	^ aVisitor visitBPActivityBasic:self.
]
