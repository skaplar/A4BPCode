Class {
	#name : #BPMN20ParserSetinBPMN20MessageFlowImplVisitor,
	#superclass : #BPMN20ParserAbstractSetVisitor,
	#category : #'A4BP-BPMN20-core-parser-builder-visitors'
}

{ #category : #'as yet unclassified' }
BPMN20ParserSetinBPMN20MessageFlowImplVisitor class >> annotation [
<MSEClass: #BPMN20ParserSetinBPMN20MessageFlowImplVisitor  super: #BPMN20ParserAbstractSetVisitor >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20ParserSetinBPMN20MessageFlowImplVisitor >> visitBPMN20SourceRefImpl: aModel [
	aModel objWhitMatch: element.
	element addRefToBuild: aModel
]

{ #category : #'as yet unclassified' }
BPMN20ParserSetinBPMN20MessageFlowImplVisitor >> visitBPMN20TargetRefImpl: aModel [
	aModel objWhitMatch: element.
	element addRefToBuild: aModel
]
