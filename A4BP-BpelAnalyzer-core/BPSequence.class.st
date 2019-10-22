"
A BPSequence is xxxxxxxxx.


sequence:- Structures a set of activities to be invoked in an ordered sequence.

   <sequence>    
		activity+
   </sequence>
"
Class {
	#name : #BPSequence,
	#superclass : #BPActivityComposite,
	#category : #'A4BP-BpelAnalyzer-core-model-bpel'
}

{ #category : #parser }
BPSequence class >> annotation [
<MSEClass: #BPSequence  super: #BPActivityComposite >
<package: #'A4BP-BpelAnalyzer-core' >
]

{ #category : #'as yet unclassified' }
BPSequence >> aName [
	aName = ''
		ifTrue: [ ^ A4BPUII18n msg msgBPSequenceName ].
	^ aName
]

{ #category : #visitor }
BPSequence >> accept: aVisitor [
	^ aVisitor visitBPSequence: self
]

{ #category : #initialization }
BPSequence >> initialize [
	super initialize.
]

{ #category : #getset }
BPSequence >> linkOut [
	self bpPartnerLink bpwsdl
]
