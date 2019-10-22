"
An A4BPBuilderSetNodesinBPXSDSequenceVisitor is xxxxxxxxx.

Instance Variables
	a:		<Object>

a
	- xxxxx

"
Class {
	#name : #A4BPBuildBPXSDSequenceVisitor,
	#superclass : #A4BPBuilderSetNodesVisitor,
	#instVars : [
		'a'
	],
	#category : #'A4BP-BPEL20-core-parser-builder'
}

{ #category : #'as yet unclassified' }
A4BPBuildBPXSDSequenceVisitor class >> annotation [
<MSEClass: #A4BPBuildBPXSDSequenceVisitor  super: #A4BPBuilderSetNodesVisitor >
<package: #'A4BP-BPEL20-core' >
]

{ #category : #visitor }
A4BPBuildBPXSDSequenceVisitor >> visitBPXSDComplexType: aModel [
	^ aBPObj addElement: aModel
]

{ #category : #visitor }
A4BPBuildBPXSDSequenceVisitor >> visitBPXSDElement: aModel [
	^ aBPObj addElement: aModel
]

{ #category : #visitor }
A4BPBuildBPXSDSequenceVisitor >> visitBPXSDSimpleType: aModel [
	^ aBPObj addElement: aModel
]
