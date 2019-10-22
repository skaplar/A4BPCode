Class {
	#name : #BPMN20DiParserShapeImplVisitor,
	#superclass : #BPMN20DiParserAbstractSetVisitor,
	#category : #'A4BP-BPMN20-core-parser-builder-visitors-di'
}

{ #category : #'as yet unclassified' }
BPMN20DiParserShapeImplVisitor class >> annotation [
<MSEClass: #BPMN20DiParserShapeImplVisitor  super: #BPMN20DiParserAbstractSetVisitor >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20DiParserShapeImplVisitor >> visitBPMN20BPMNLabelImpl: aModel [
	element label: aModel
]

{ #category : #'as yet unclassified' }
BPMN20DiParserShapeImplVisitor >> visitBPMN20BoundsImpl: aModel [
	element bounds: aModel
]

{ #category : #'as yet unclassified' }
BPMN20DiParserShapeImplVisitor >> visitBPMN20ShapeImpl: aElement [
	^ self visitBPMN20DiagramElementImpl: aElement
]
