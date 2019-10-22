Class {
	#name : #BPMN20DiParserEdgeImplVisitor,
	#superclass : #BPMN20DiParserAbstractSetVisitor,
	#category : #'A4BP-BPMN20-core-parser-builder-visitors-di'
}

{ #category : #'as yet unclassified' }
BPMN20DiParserEdgeImplVisitor class >> annotation [
<MSEClass: #BPMN20DiParserEdgeImplVisitor  super: #BPMN20DiParserAbstractSetVisitor >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20DiParserEdgeImplVisitor >> visitBPMN20EdgeImpl: aElement [
	^ self visitBPMN20DiagramElementImpl: aElement
]
