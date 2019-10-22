Class {
	#name : #BPMN20DiParserLabeledShapeImplVisitor,
	#superclass : #BPMN20DiParserAbstractSetVisitor,
	#category : #'A4BP-BPMN20-core-parser-builder-visitors-di'
}

{ #category : #'as yet unclassified' }
BPMN20DiParserLabeledShapeImplVisitor class >> annotation [
<MSEClass: #BPMN20DiParserLabeledShapeImplVisitor  super: #BPMN20DiParserAbstractSetVisitor >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20DiParserLabeledShapeImplVisitor >> visitBPMN20LabeledShapeImpl: aElement [
	^ self visitBPMN20DiagramElementImpl: aElement
]
