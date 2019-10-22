"
An A4BPBuilderSetNodesinBPXSDSchemaVisitor is xxxxxxxxx.

Instance Variables
	a:		<Object>

a
	- xxxxx

"
Class {
	#name : #A4BPBuildBPXSDSchemaVisitor,
	#superclass : #A4BPBuilderSetNodesVisitor,
	#instVars : [
		'a'
	],
	#category : #'A4BP-BPEL20-core-parser-builder'
}

{ #category : #'as yet unclassified' }
A4BPBuildBPXSDSchemaVisitor class >> annotation [
<MSEClass: #A4BPBuildBPXSDSchemaVisitor  super: #A4BPBuilderSetNodesVisitor >
<package: #'A4BP-BPEL20-core' >
]

{ #category : #visitor }
A4BPBuildBPXSDSchemaVisitor >> visitBPXSDComplexType: aModel [
	self visitBPXSDObject: aModel.
	^ aBPObj addComplexType: aModel
]

{ #category : #visitor }
A4BPBuildBPXSDSchemaVisitor >> visitBPXSDElement: aModel [
	self visitBPXSDObject: aModel.
	^ aBPObj addElement: aModel
]

{ #category : #visitor }
A4BPBuildBPXSDSchemaVisitor >> visitBPXSDImport: aModel [
	aBPObj import: aModel
]

{ #category : #visitor }
A4BPBuildBPXSDSchemaVisitor >> visitBPXSDInclude: aModel [
	aBPObj include: aModel
]

{ #category : #visitor }
A4BPBuildBPXSDSchemaVisitor >> visitBPXSDObject: aModel [
	^ aModel mySchema: aBPObj.
]

{ #category : #visitor }
A4BPBuildBPXSDSchemaVisitor >> visitBPXSDSimpleType: aModel [
	self visitBPXSDObject: aModel.
	^ aBPObj addSimpleType: aModel
]
