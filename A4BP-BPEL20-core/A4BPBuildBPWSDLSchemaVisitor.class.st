"
An A4BPBuilderSetNodesinBPWSDLSchemaVisitor is xxxxxxxxx.

Instance Variables
	a:		<Object>

a
	- xxxxx

"
Class {
	#name : #A4BPBuildBPWSDLSchemaVisitor,
	#superclass : #A4BPBuilderSetNodesVisitor,
	#instVars : [
		'a'
	],
	#category : #'A4BP-BPEL20-core-parser-builder'
}

{ #category : #'as yet unclassified' }
A4BPBuildBPWSDLSchemaVisitor class >> annotation [
<MSEClass: #A4BPBuildBPWSDLSchemaVisitor  super: #A4BPBuilderSetNodesVisitor >
<package: #'A4BP-BPEL20-core' >
]

{ #category : #visitor }
A4BPBuildBPWSDLSchemaVisitor >> visitBPWSDLImport: aModel [
	aBPObj addImport: aModel
]

{ #category : #visitor }
A4BPBuildBPWSDLSchemaVisitor >> visitBPWSDLPart: aModel [
	aBPObj bpWsdlPart: aModel
]

{ #category : #visitor }
A4BPBuildBPWSDLSchemaVisitor >> visitBPWSDLSchema: aModel [
	aBPObj addSchema: aModel
]
