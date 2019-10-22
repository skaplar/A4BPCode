"
A BPBuilderSetNodesinBPCopyVisitor is xxxxxxxxx.

"
Class {
	#name : #BPBuilderSetNodesinBPCopyVisitor,
	#superclass : #BPBuilderSetNodesVisitor,
	#category : #'A4BP-BpelAnalyzer-core-parser-builder'
}

{ #category : #visitor }
BPBuilderSetNodesinBPCopyVisitor >> visitBPFrom: aBPFrom [
	aBPObj bpFrom:aBPFrom.
	^ self visitBPObject: aBPFrom
]

{ #category : #visitor }
BPBuilderSetNodesinBPCopyVisitor >> visitBPTo: aBPTo [
	aBPObj bpTo:aBPTo.
	^ self visitBPObject: aBPTo
]
