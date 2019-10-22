Class {
	#name : #BPMN20ParserSetinBPMN20IntermediateCatchEventImplVisitor,
	#superclass : #BPMN20ParserSetinBPMN20CatchEventImplVisitor,
	#category : #'A4BP-BPMN20-core-parser-builder-visitors'
}

{ #category : #'as yet unclassified' }
BPMN20ParserSetinBPMN20IntermediateCatchEventImplVisitor class >> annotation [
<MSEClass: #BPMN20ParserSetinBPMN20IntermediateCatchEventImplVisitor  super: #BPMN20ParserSetinBPMN20CatchEventImplVisitor >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20ParserSetinBPMN20IntermediateCatchEventImplVisitor >> visitBPMN20MessageEventDefinitionImpl: aModel [
	element eventDefinitions at: aModel id put: aModel.
	self addElement: aModel.
]
