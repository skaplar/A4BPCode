"
An A4BPBuilderSetNodesinBPXSDElementVisitor is xxxxxxxxx.

Instance Variables
	a:		<Object>

a
	- xxxxx

"
Class {
	#name : #A4BPBuildBPXSDElementVisitor,
	#superclass : #A4BPBuilderSetNodesVisitor,
	#instVars : [
		'a'
	],
	#category : #'A4BP-BPEL20-core-parser-builder'
}

{ #category : #'as yet unclassified' }
A4BPBuildBPXSDElementVisitor class >> annotation [
<MSEClass: #A4BPBuildBPXSDElementVisitor  super: #A4BPBuilderSetNodesVisitor >
<package: #'A4BP-BPEL20-core' >
]

{ #category : #visitor }
A4BPBuildBPXSDElementVisitor >> visitBPXSDComplexType: aModel [
	aBPObj addElement: aModel
	
]
