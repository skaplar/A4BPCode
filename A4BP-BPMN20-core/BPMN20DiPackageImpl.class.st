Class {
	#name : #BPMN20DiPackageImpl,
	#superclass : #BPMN20Object,
	#instVars : [
		'edgeEClass',
		'nodeEClass',
		'isInited',
		'isCreated',
		'diagramEClass',
		'styleEClass',
		'labelEClass',
		'planeEClass',
		'labeledShapeEClass',
		'documentRootEClass',
		'labeledEdgeEClass',
		'isInitialized',
		'diagramElementEClass',
		'shapeEClass'
	],
	#category : #'A4BP-BPMN20-core-model-dd-di'
}

{ #category : #'as yet unclassified' }
BPMN20DiPackageImpl class >> annotation [
<MSEClass: #BPMN20DiPackageImpl  super: #BPMN20Object >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20DiPackageImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20DiPackageImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20DiPackageImpl >> diagramEClass [
^ diagramEClass
]

{ #category : #'as yet unclassified' }
BPMN20DiPackageImpl >> diagramEClass: adiagramEClass [
^ diagramEClass := adiagramEClass
]

{ #category : #'as yet unclassified' }
BPMN20DiPackageImpl >> diagramElementEClass [
^ diagramElementEClass
]

{ #category : #'as yet unclassified' }
BPMN20DiPackageImpl >> diagramElementEClass: adiagramElementEClass [
^ diagramElementEClass := adiagramElementEClass
]

{ #category : #'as yet unclassified' }
BPMN20DiPackageImpl >> documentRootEClass [
^ documentRootEClass
]

{ #category : #'as yet unclassified' }
BPMN20DiPackageImpl >> documentRootEClass: adocumentRootEClass [
^ documentRootEClass := adocumentRootEClass
]

{ #category : #'as yet unclassified' }
BPMN20DiPackageImpl >> edgeEClass [
^ edgeEClass
]

{ #category : #'as yet unclassified' }
BPMN20DiPackageImpl >> edgeEClass: aedgeEClass [
^ edgeEClass := aedgeEClass
]

{ #category : #'as yet unclassified' }
BPMN20DiPackageImpl >> isCreated [
^ isCreated
]

{ #category : #'as yet unclassified' }
BPMN20DiPackageImpl >> isCreated: aisCreated [
^ isCreated := aisCreated
]

{ #category : #'as yet unclassified' }
BPMN20DiPackageImpl >> isInited [
^ isInited
]

{ #category : #'as yet unclassified' }
BPMN20DiPackageImpl >> isInited: aisInited [
^ isInited := aisInited
]

{ #category : #'as yet unclassified' }
BPMN20DiPackageImpl >> isInitialized [
^ isInitialized
]

{ #category : #'as yet unclassified' }
BPMN20DiPackageImpl >> isInitialized: aisInitialized [
^ isInitialized := aisInitialized
]

{ #category : #'as yet unclassified' }
BPMN20DiPackageImpl >> labelEClass [
^ labelEClass
]

{ #category : #'as yet unclassified' }
BPMN20DiPackageImpl >> labelEClass: alabelEClass [
^ labelEClass := alabelEClass
]

{ #category : #'as yet unclassified' }
BPMN20DiPackageImpl >> labeledEdgeEClass [
^ labeledEdgeEClass
]

{ #category : #'as yet unclassified' }
BPMN20DiPackageImpl >> labeledEdgeEClass: alabeledEdgeEClass [
^ labeledEdgeEClass := alabeledEdgeEClass
]

{ #category : #'as yet unclassified' }
BPMN20DiPackageImpl >> labeledShapeEClass [
^ labeledShapeEClass
]

{ #category : #'as yet unclassified' }
BPMN20DiPackageImpl >> labeledShapeEClass: alabeledShapeEClass [
^ labeledShapeEClass := alabeledShapeEClass
]

{ #category : #'as yet unclassified' }
BPMN20DiPackageImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20DiPackageImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20DiPackageImpl >> nodeEClass [
^ nodeEClass
]

{ #category : #'as yet unclassified' }
BPMN20DiPackageImpl >> nodeEClass: anodeEClass [
^ nodeEClass := anodeEClass
]

{ #category : #'as yet unclassified' }
BPMN20DiPackageImpl >> parent [
	^ parent
]

{ #category : #'as yet unclassified' }
BPMN20DiPackageImpl >> parent: aparent [
	^ parent := aparent
]

{ #category : #'as yet unclassified' }
BPMN20DiPackageImpl >> planeEClass [
^ planeEClass
]

{ #category : #'as yet unclassified' }
BPMN20DiPackageImpl >> planeEClass: aplaneEClass [
^ planeEClass := aplaneEClass
]

{ #category : #'as yet unclassified' }
BPMN20DiPackageImpl >> shapeEClass [
^ shapeEClass
]

{ #category : #'as yet unclassified' }
BPMN20DiPackageImpl >> shapeEClass: ashapeEClass [
^ shapeEClass := ashapeEClass
]

{ #category : #'as yet unclassified' }
BPMN20DiPackageImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20DiPackageImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20DiPackageImpl >> styleEClass [
^ styleEClass
]

{ #category : #'as yet unclassified' }
BPMN20DiPackageImpl >> styleEClass: astyleEClass [
^ styleEClass := astyleEClass
]

{ #category : #'as yet unclassified' }
BPMN20DiPackageImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20DiPackageImpl >> text: atext [
	^ text := atext
]
