Class {
	#name : #BPMN20DiParserBoundsImplVisitor,
	#superclass : #BPMN20DiParserAbstractSetVisitor,
	#category : #'A4BP-BPMN20-core-parser-builder-visitors-di'
}

{ #category : #'as yet unclassified' }
BPMN20DiParserBoundsImplVisitor class >> annotation [
<MSEClass: #BPMN20DiParserBoundsImplVisitor  super: #BPMN20DiParserAbstractSetVisitor >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20DiParserBoundsImplVisitor >> visitBPMN20BPMNPlaneImpl: aModel [
	element plane: aModel
]
