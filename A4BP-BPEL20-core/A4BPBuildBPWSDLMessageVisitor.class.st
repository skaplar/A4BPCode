"
An A4BPBuilderSetNodesinBPWSDLMessageVisitor is xxxxxxxxx.

Instance Variables
	a:		<Object>

a
	- xxxxx

"
Class {
	#name : #A4BPBuildBPWSDLMessageVisitor,
	#superclass : #A4BPBuilderSetNodesVisitor,
	#instVars : [
		'a'
	],
	#category : #'A4BP-BPEL20-core-parser-builder'
}

{ #category : #'as yet unclassified' }
A4BPBuildBPWSDLMessageVisitor class >> annotation [
<MSEClass: #A4BPBuildBPWSDLMessageVisitor  super: #A4BPBuilderSetNodesVisitor >
<package: #'A4BP-BPEL20-core' >
]

{ #category : #visitor }
A4BPBuildBPWSDLMessageVisitor >> visitBPWSDLPart: aModel [
	aBPObj bpWsdlPart: aModel
]
