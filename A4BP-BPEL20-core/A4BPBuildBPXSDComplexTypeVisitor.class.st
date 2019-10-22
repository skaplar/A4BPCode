"
An A4BPBuilderSetNodesinBPXSDComplexTypeVisitor is xxxxxxxxx.

Instance Variables
	a:		<Object>

a
	- xxxxx

"
Class {
	#name : #A4BPBuildBPXSDComplexTypeVisitor,
	#superclass : #A4BPBuilderSetNodesVisitor,
	#instVars : [
		'a'
	],
	#category : #'A4BP-BPEL20-core-parser-builder'
}

{ #category : #'as yet unclassified' }
A4BPBuildBPXSDComplexTypeVisitor class >> annotation [
<MSEClass: #A4BPBuildBPXSDComplexTypeVisitor  super: #A4BPBuilderSetNodesVisitor >
<package: #'A4BP-BPEL20-core' >
]

{ #category : #visitor }
A4BPBuildBPXSDComplexTypeVisitor >> visitBPXSDImport: aModel [
	
]

{ #category : #visitor }
A4BPBuildBPXSDComplexTypeVisitor >> visitBPXSDObject: aModel [
	
]

{ #category : #visitor }
A4BPBuildBPXSDComplexTypeVisitor >> visitBPXSDSequence: aModel [
	^ aBPObj xsdSequence: aModel
]

{ #category : #visitor }
A4BPBuildBPXSDComplexTypeVisitor >> visitBPXSDSimpleType: aModel [
	^ aBPObj addSimpleType: aModel
]
