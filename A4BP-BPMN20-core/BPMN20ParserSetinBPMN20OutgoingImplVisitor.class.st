Class {
	#name : #BPMN20ParserSetinBPMN20OutgoingImplVisitor,
	#superclass : #BPMN20ParserSetinBPMN20RefToBeBuildImplVisitor,
	#category : #'A4BP-BPMN20-core-parser-builder-visitors'
}

{ #category : #'as yet unclassified' }
BPMN20ParserSetinBPMN20OutgoingImplVisitor class >> annotation [
<MSEClass: #BPMN20ParserSetinBPMN20OutgoingImplVisitor  super: #BPMN20ParserSetinBPMN20RefToBeBuildImplVisitor >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #visitor }
BPMN20ParserSetinBPMN20OutgoingImplVisitor >> visitBPMN20FlowNodeImpl: aModel [
	element objWhitMatch: aModel outgoing
]
