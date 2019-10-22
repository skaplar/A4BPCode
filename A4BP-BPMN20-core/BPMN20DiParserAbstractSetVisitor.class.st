Class {
	#name : #BPMN20DiParserAbstractSetVisitor,
	#superclass : #BPMN20ParserAbstractSetVisitor,
	#category : #'A4BP-BPMN20-core-parser-builder-visitors-di'
}

{ #category : #'as yet unclassified' }
BPMN20DiParserAbstractSetVisitor class >> annotation [
<MSEClass: #BPMN20DiParserAbstractSetVisitor  super: #BPMN20ParserAbstractSetVisitor >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20DiParserAbstractSetVisitor >> visitBPMN20BPMNEdgeImpl: aModel [ 
	^ self visitBPMN20DiagramElementImpl: aModel
]

{ #category : #'as yet unclassified' }
BPMN20DiParserAbstractSetVisitor >> visitBPMN20BPMNLabelImpl: aModel [ 
	^ self visitBPMN20DiagramElementImpl: aModel
]

{ #category : #'as yet unclassified' }
BPMN20DiParserAbstractSetVisitor >> visitBPMN20BPMNPlaneImpl: aModel [ 
	^ self visitBPMN20DiagramElementImpl: aModel
]

{ #category : #'as yet unclassified' }
BPMN20DiParserAbstractSetVisitor >> visitBPMN20BPMNShapeImpl: aModel [ 
	^ self visitBPMN20DiagramElementImpl: aModel
]

{ #category : #'as yet unclassified' }
BPMN20DiParserAbstractSetVisitor >> visitBPMN20BoundsImpl: aModel [ 
]

{ #category : #'as yet unclassified' }
BPMN20DiParserAbstractSetVisitor >> visitBPMN20DiagramElementImpl: aModel [ 
	 ^ nil
]

{ #category : #'as yet unclassified' }
BPMN20DiParserAbstractSetVisitor >> visitBPMN20EdgeImpl: aModel [ 
	^ self visitBPMN20DiagramElementImpl: aModel
]

{ #category : #'as yet unclassified' }
BPMN20DiParserAbstractSetVisitor >> visitBPMN20LabelImpl: aModel [ 
	^ self visitBPMN20DiagramElementImpl: aModel
]

{ #category : #'as yet unclassified' }
BPMN20DiParserAbstractSetVisitor >> visitBPMN20LabeledEdgeImpl: aModel [ 
	^ self visitBPMN20DiagramElementImpl: aModel
]

{ #category : #'as yet unclassified' }
BPMN20DiParserAbstractSetVisitor >> visitBPMN20LabeledShapeImpl: aModel [ 
	^ self visitBPMN20DiagramElementImpl: aModel
]

{ #category : #'as yet unclassified' }
BPMN20DiParserAbstractSetVisitor >> visitBPMN20NodeImpl: aModel [ 
	^ self visitBPMN20DiagramElementImpl: aModel
]

{ #category : #'as yet unclassified' }
BPMN20DiParserAbstractSetVisitor >> visitBPMN20PlaneImpl: aModel [ 
	^ self visitBPMN20DiagramElementImpl: aModel
]

{ #category : #'as yet unclassified' }
BPMN20DiParserAbstractSetVisitor >> visitBPMN20ShapeImpl: aModel [ 
	^ self visitBPMN20DiagramElementImpl: aModel
]
