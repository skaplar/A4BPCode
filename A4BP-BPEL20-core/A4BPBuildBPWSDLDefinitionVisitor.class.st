"
An A4BPBuilderSetNodesinBPWSDLDefinitionVisitor is xxxxxxxxx.

Instance Variables
	a:		<Object>

a
	- xxxxx

"
Class {
	#name : #A4BPBuildBPWSDLDefinitionVisitor,
	#superclass : #A4BPBuilderSetNodesVisitor,
	#instVars : [
		'a'
	],
	#category : #'A4BP-BPEL20-core-parser-builder'
}

{ #category : #'as yet unclassified' }
A4BPBuildBPWSDLDefinitionVisitor class >> annotation [
<MSEClass: #A4BPBuildBPWSDLDefinitionVisitor  super: #A4BPBuilderSetNodesVisitor >
<package: #'A4BP-BPEL20-core' >
]

{ #category : #visitor }
A4BPBuildBPWSDLDefinitionVisitor >> visitBPWSDLMessage: aModel [
	aBPObj addMessage: aModel
]

{ #category : #visitor }
A4BPBuildBPWSDLDefinitionVisitor >> visitBPWSDLPlnkType: aModel [
	aBPObj addPartnerLinkType: aModel
]

{ #category : #visitor }
A4BPBuildBPWSDLDefinitionVisitor >> visitBPWSDLPortType: aModel [
	aBPObj addPortType: aModel
]

{ #category : #visitor }
A4BPBuildBPWSDLDefinitionVisitor >> visitBPWSDLTypes:aModel [
	aBPObj addType:aModel.
]
