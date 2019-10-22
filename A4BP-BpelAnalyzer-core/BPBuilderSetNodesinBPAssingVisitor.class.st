"
A BPBuilderSetNodesinBPAssingVisitor is xxxxxxxxx.

"
Class {
	#name : #BPBuilderSetNodesinBPAssingVisitor,
	#superclass : #BPBuilderSetNodesVisitor,
	#category : #'A4BP-BpelAnalyzer-core-parser-builder'
}

{ #category : #visitor }
BPBuilderSetNodesinBPAssingVisitor >> visitBPCopy: aBPCopy [
	aBPObj addAction: aBPCopy.
	^ self visitBPObject: aBPCopy
]
