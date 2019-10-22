Class {
	#name : #BPMN20DiParserPlaneImplVisitor,
	#superclass : #BPMN20DiParserAbstractSetVisitor,
	#category : #'A4BP-BPMN20-core-parser-builder-visitors-di'
}

{ #category : #'as yet unclassified' }
BPMN20DiParserPlaneImplVisitor class >> annotation [
<MSEClass: #BPMN20DiParserPlaneImplVisitor  super: #BPMN20DiParserAbstractSetVisitor >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20DiParserPlaneImplVisitor >> visitBPMN20BPMNShapeImpl: aModel [ 
	element shapes at: aModel id put: aModel
]

{ #category : #'as yet unclassified' }
BPMN20DiParserPlaneImplVisitor >> visitBPMN20PlaneImpl: aElement [
	^ self visitBPMN20DiagramElementImpl: aElement
]
