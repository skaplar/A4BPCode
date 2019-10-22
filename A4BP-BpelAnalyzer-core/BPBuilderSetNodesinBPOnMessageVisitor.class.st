"
A BPBuilderSetNodesinBPOnMessageVisitor is xxxxxxxxx.

"
Class {
	#name : #BPBuilderSetNodesinBPOnMessageVisitor,
	#superclass : #BPBuilderSetNodesVisitor,
	#category : #'A4BP-BpelAnalyzer-core-parser-builder'
}

{ #category : #visitor }
BPBuilderSetNodesinBPOnMessageVisitor >> visitBPActivity: aBPActivity [
	aBPObj addActivity:aBPActivity 
]

{ #category : #visitor }
BPBuilderSetNodesinBPOnMessageVisitor >> visitBPOnMessage: aBPOnMessage [
]
