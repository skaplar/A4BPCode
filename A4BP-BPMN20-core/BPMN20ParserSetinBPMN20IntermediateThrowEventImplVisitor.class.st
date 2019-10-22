Class {
	#name : #BPMN20ParserSetinBPMN20IntermediateThrowEventImplVisitor,
	#superclass : #BPMN20ParserSetinBPMN20ThrowEventImplVisitor,
	#category : #'A4BP-BPMN20-core-parser-builder-visitors'
}

{ #category : #'as yet unclassified' }
BPMN20ParserSetinBPMN20IntermediateThrowEventImplVisitor class >> annotation [
<MSEClass: #BPMN20ParserSetinBPMN20IntermediateThrowEventImplVisitor  super: #BPMN20ParserSetinBPMN20ThrowEventImplVisitor >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20ParserSetinBPMN20IntermediateThrowEventImplVisitor >> visitBPMN20MessageEventDefinitionImpl: anModel [
	element eventDefinitions at: anModel id put: anModel.
	self addElement: anModel
]
