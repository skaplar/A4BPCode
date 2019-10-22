"
A BPWhile is xxxxxxxxx.


while:- Defines the notion of loops. 
It executes an activity repeatedly until its associated Boolean condition is no longer true.

<while> 
<condition expressionLanguage=""anyURI""?> 
		bool-expr 
</ condition>
activity 
</while>
"
Class {
	#name : #BPWhile,
	#superclass : #BPActivityComposite,
	#category : #'A4BP-BpelAnalyzer-core-model-bpel'
}

{ #category : #'as yet unclassified' }
BPWhile class >> annotation [
<MSEClass: #BPWhile  super: #BPActivityComposite >
<package: #'A4BP-BpelAnalyzer-core' >
]

{ #category : #visitor }
BPWhile >> accept: aVisitor [
	^ aVisitor visitBPWhile: self
]
