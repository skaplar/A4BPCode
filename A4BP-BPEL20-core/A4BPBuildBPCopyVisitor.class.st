"
An A4BPBuilderSetNodesinBPCopyVisitor is xxxxxxxxx.

Instance Variables
	a:		<Object>

a
	- xxxxx

"
Class {
	#name : #A4BPBuildBPCopyVisitor,
	#superclass : #A4BPBuilderSetNodesVisitor,
	#instVars : [
		'a'
	],
	#category : #'A4BP-BPEL20-core-parser-builder'
}

{ #category : #'as yet unclassified' }
A4BPBuildBPCopyVisitor class >> annotation [
<MSEClass: #A4BPBuildBPCopyVisitor  super: #A4BPBuilderSetNodesVisitor >
<package: #'A4BP-BPEL20-core' >
]

{ #category : #visitor }
A4BPBuildBPCopyVisitor >> visitBPFrom: aBPFrom [
	aBPObj bpFrom:aBPFrom.
	^ self visitBPObject: aBPFrom
]

{ #category : #visitor }
A4BPBuildBPCopyVisitor >> visitBPTo: aBPTo [
	aBPObj bpTo:aBPTo.
	^ self visitBPObject: aBPTo
]
