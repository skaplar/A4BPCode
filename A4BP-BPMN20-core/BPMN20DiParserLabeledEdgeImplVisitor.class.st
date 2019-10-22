Class {
	#name : #BPMN20DiParserLabeledEdgeImplVisitor,
	#superclass : #BPMN20DiParserAbstractSetVisitor,
	#category : #'A4BP-BPMN20-core-parser-builder-visitors-di'
}

{ #category : #'as yet unclassified' }
BPMN20DiParserLabeledEdgeImplVisitor class >> annotation [
<MSEClass: #BPMN20DiParserLabeledEdgeImplVisitor  super: #BPMN20DiParserAbstractSetVisitor >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20DiParserLabeledEdgeImplVisitor >> visitBPMN20LabeledEdgeImpl: aElement [
	^ self visitBPMN20DiagramElementImpl: aElement
]
