"
An A4BPBuilderSetNodesinBPWSDLPartVisitor is xxxxxxxxx.

Instance Variables
	a:		<Object>

a
	- xxxxx

"
Class {
	#name : #A4BPBuildBPWSDLPartVisitor,
	#superclass : #A4BPBuilderSetNodesVisitor,
	#instVars : [
		'a'
	],
	#category : #'A4BP-BPEL20-core-parser-builder'
}

{ #category : #'as yet unclassified' }
A4BPBuildBPWSDLPartVisitor class >> annotation [
<MSEClass: #A4BPBuildBPWSDLPartVisitor  super: #A4BPBuilderSetNodesVisitor >
<package: #'A4BP-BPEL20-core' >
]

{ #category : #visitor }
A4BPBuildBPWSDLPartVisitor >> visitBPXSDImport: aModel [
	aBPObj bpWsdlPart: aModel
]

{ #category : #visitor }
A4BPBuildBPWSDLPartVisitor >> visitBPXSDSchema: aModel [

]
