Class {
	#name : #BPMN20DiParserDiagramImplVisitor,
	#superclass : #BPMN20DiParserAbstractSetVisitor,
	#category : #'A4BP-BPMN20-core-parser-builder-visitors-di'
}

{ #category : #'as yet unclassified' }
BPMN20DiParserDiagramImplVisitor class >> annotation [
<MSEClass: #BPMN20DiParserDiagramImplVisitor  super: #BPMN20DiParserAbstractSetVisitor >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20DiParserDiagramImplVisitor >> visitBPMN20BPMNPlaneImpl: aModel [
	element plane: aModel
]
