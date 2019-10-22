Class {
	#name : #BPMN20DiParserLabelImplVisitor,
	#superclass : #BPMN20DiParserAbstractSetVisitor,
	#category : #'A4BP-BPMN20-core-parser-builder-visitors-di'
}

{ #category : #'as yet unclassified' }
BPMN20DiParserLabelImplVisitor class >> annotation [
<MSEClass: #BPMN20DiParserLabelImplVisitor  super: #BPMN20DiParserAbstractSetVisitor >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20DiParserLabelImplVisitor >> visitBPMN20LabelImpl: aElement [
	^ self visitBPMN20DiagramElementImpl: aElement
]
