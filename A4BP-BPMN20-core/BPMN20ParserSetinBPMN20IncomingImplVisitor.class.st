Class {
	#name : #BPMN20ParserSetinBPMN20IncomingImplVisitor,
	#superclass : #BPMN20ParserSetinBPMN20RefToBeBuildImplVisitor,
	#category : #'A4BP-BPMN20-core-parser-builder-visitors'
}

{ #category : #'as yet unclassified' }
BPMN20ParserSetinBPMN20IncomingImplVisitor class >> annotation [
<MSEClass: #BPMN20ParserSetinBPMN20IncomingImplVisitor  super: #BPMN20ParserSetinBPMN20RefToBeBuildImplVisitor >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #visitor }
BPMN20ParserSetinBPMN20IncomingImplVisitor >> visitBPMN20FlowNodeImpl: aModel [
	self halt.
	element objWhitMatch: aModel incoming
]
