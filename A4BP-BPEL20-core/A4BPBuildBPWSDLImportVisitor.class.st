"
An A4BPBuilderSetNodesinBPWSDLImportVisitor is xxxxxxxxx.

Instance Variables
	a:		<Object>

a
	- xxxxx

"
Class {
	#name : #A4BPBuildBPWSDLImportVisitor,
	#superclass : #A4BPBuilderSetNodesVisitor,
	#instVars : [
		'a'
	],
	#category : #'A4BP-BPEL20-core-parser-builder'
}

{ #category : #'as yet unclassified' }
A4BPBuildBPWSDLImportVisitor class >> annotation [
<MSEClass: #A4BPBuildBPWSDLImportVisitor  super: #A4BPBuilderSetNodesVisitor >
<package: #'A4BP-BPEL20-core' >
]

{ #category : #visitor }
A4BPBuildBPWSDLImportVisitor >> visitBPWSDLPart: aModel [
	aBPObj bpWsdlPart: aModel
]

{ #category : #visitor }
A4BPBuildBPWSDLImportVisitor >> visitBPWSDLSchema: aModel [
	aBPObj addSchema: aModel
]
