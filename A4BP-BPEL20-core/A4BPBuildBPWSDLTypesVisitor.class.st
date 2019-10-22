"
An A4BPBuilderSetNodesinBPWSDLTypesVisitor is xxxxxxxxx.

Instance Variables
	a:		<Object>

a
	- xxxxx

"
Class {
	#name : #A4BPBuildBPWSDLTypesVisitor,
	#superclass : #A4BPBuilderSetNodesVisitor,
	#instVars : [
		'a'
	],
	#category : #'A4BP-BPEL20-core-parser-builder'
}

{ #category : #'as yet unclassified' }
A4BPBuildBPWSDLTypesVisitor class >> annotation [
<MSEClass: #A4BPBuildBPWSDLTypesVisitor  super: #A4BPBuilderSetNodesVisitor >
<package: #'A4BP-BPEL20-core' >
]

{ #category : #visitor }
A4BPBuildBPWSDLTypesVisitor >> visitBPWSDLPart: aModel [
	aBPObj bpWsdlPart: aModel
]

{ #category : #visitor }
A4BPBuildBPWSDLTypesVisitor >> visitBPWSDLSchema: aModel [
	aBPObj addSchema: aModel
]

{ #category : #visitor }
A4BPBuildBPWSDLTypesVisitor >> visitBPXSDSchema: aModel [
	aModel iInternalReference: true.
	aBPObj addSchema: aModel
]
