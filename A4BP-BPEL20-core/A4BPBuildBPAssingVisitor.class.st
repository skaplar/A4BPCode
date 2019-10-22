"
An A4BPBuilderSetNodesinBPAssingVisitor is xxxxxxxxx.

Instance Variables
	a:		<Object>

a
	- xxxxx

"
Class {
	#name : #A4BPBuildBPAssingVisitor,
	#superclass : #A4BPBuilderSetNodesVisitor,
	#instVars : [
		'a'
	],
	#category : #'A4BP-BPEL20-core-parser-builder'
}

{ #category : #'as yet unclassified' }
A4BPBuildBPAssingVisitor class >> annotation [
<MSEClass: #A4BPBuildBPAssingVisitor  super: #A4BPBuilderSetNodesVisitor >
<package: #'A4BP-BPEL20-core' >
]

{ #category : #visitor }
A4BPBuildBPAssingVisitor >> visitBPCopy: aBPCopy [
	aBPObj addAction: aBPCopy.
	^ self visitBPObject: aBPCopy
]
