Class {
	#name : #BPMN20DiParserNodeImplVisitor,
	#superclass : #BPMN20DiParserAbstractSetVisitor,
	#category : #'A4BP-BPMN20-core-parser-builder-visitors-di'
}

{ #category : #'as yet unclassified' }
BPMN20DiParserNodeImplVisitor class >> annotation [
<MSEClass: #BPMN20DiParserNodeImplVisitor  super: #BPMN20DiParserAbstractSetVisitor >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20DiParserNodeImplVisitor >> visitBPMN20NodeImpl: aElement [
	^ self visitBPMN20DiagramElementImpl: aElement
]
