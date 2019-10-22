Class {
	#name : #BPMN20BpmnDiPackageImpl,
	#superclass : #BPMN20Object,
	#instVars : [
		'bpmnShapeEClass',
		'bpmnPlaneEClass',
		'isCreated',
		'isInited',
		'bpmnLabelStyleEClass',
		'bpmnLabelEClass',
		'messageVisibleKindEEnum',
		'documentRootEClass',
		'participantBandKindEEnum',
		'bpmnEdgeEClass',
		'bpmnDiagramEClass',
		'isInitialized'
	],
	#category : #'A4BP-BPMN20-core-model-di'
}

{ #category : #'as yet unclassified' }
BPMN20BpmnDiPackageImpl class >> annotation [
<MSEClass: #BPMN20BpmnDiPackageImpl  super: #BPMN20Object >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20BpmnDiPackageImpl class >> fillElementsIn: aModel from: document [

]

{ #category : #'as yet unclassified' }
BPMN20BpmnDiPackageImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20BpmnDiPackageImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20BpmnDiPackageImpl >> bpmnDiagramEClass [
^ bpmnDiagramEClass
]

{ #category : #'as yet unclassified' }
BPMN20BpmnDiPackageImpl >> bpmnDiagramEClass: abpmnDiagramEClass [
^ bpmnDiagramEClass := abpmnDiagramEClass
]

{ #category : #'as yet unclassified' }
BPMN20BpmnDiPackageImpl >> bpmnEdgeEClass [
^ bpmnEdgeEClass
]

{ #category : #'as yet unclassified' }
BPMN20BpmnDiPackageImpl >> bpmnEdgeEClass: abpmnEdgeEClass [
^ bpmnEdgeEClass := abpmnEdgeEClass
]

{ #category : #'as yet unclassified' }
BPMN20BpmnDiPackageImpl >> bpmnLabelEClass [
^ bpmnLabelEClass
]

{ #category : #'as yet unclassified' }
BPMN20BpmnDiPackageImpl >> bpmnLabelEClass: abpmnLabelEClass [
^ bpmnLabelEClass := abpmnLabelEClass
]

{ #category : #'as yet unclassified' }
BPMN20BpmnDiPackageImpl >> bpmnLabelStyleEClass [
^ bpmnLabelStyleEClass
]

{ #category : #'as yet unclassified' }
BPMN20BpmnDiPackageImpl >> bpmnLabelStyleEClass: abpmnLabelStyleEClass [
^ bpmnLabelStyleEClass := abpmnLabelStyleEClass
]

{ #category : #'as yet unclassified' }
BPMN20BpmnDiPackageImpl >> bpmnPlaneEClass [
^ bpmnPlaneEClass
]

{ #category : #'as yet unclassified' }
BPMN20BpmnDiPackageImpl >> bpmnPlaneEClass: abpmnPlaneEClass [
^ bpmnPlaneEClass := abpmnPlaneEClass
]

{ #category : #'as yet unclassified' }
BPMN20BpmnDiPackageImpl >> bpmnShapeEClass [
^ bpmnShapeEClass
]

{ #category : #'as yet unclassified' }
BPMN20BpmnDiPackageImpl >> bpmnShapeEClass: abpmnShapeEClass [
^ bpmnShapeEClass := abpmnShapeEClass
]

{ #category : #'as yet unclassified' }
BPMN20BpmnDiPackageImpl >> documentRootEClass [
^ documentRootEClass
]

{ #category : #'as yet unclassified' }
BPMN20BpmnDiPackageImpl >> documentRootEClass: adocumentRootEClass [
^ documentRootEClass := adocumentRootEClass
]

{ #category : #'as yet unclassified' }
BPMN20BpmnDiPackageImpl >> isCreated [
^ isCreated
]

{ #category : #'as yet unclassified' }
BPMN20BpmnDiPackageImpl >> isCreated: aisCreated [
^ isCreated := aisCreated
]

{ #category : #'as yet unclassified' }
BPMN20BpmnDiPackageImpl >> isInited [
^ isInited
]

{ #category : #'as yet unclassified' }
BPMN20BpmnDiPackageImpl >> isInited: aisInited [
^ isInited := aisInited
]

{ #category : #'as yet unclassified' }
BPMN20BpmnDiPackageImpl >> isInitialized [
^ isInitialized
]

{ #category : #'as yet unclassified' }
BPMN20BpmnDiPackageImpl >> isInitialized: aisInitialized [
^ isInitialized := aisInitialized
]

{ #category : #'as yet unclassified' }
BPMN20BpmnDiPackageImpl >> messageVisibleKindEEnum [
^ messageVisibleKindEEnum
]

{ #category : #'as yet unclassified' }
BPMN20BpmnDiPackageImpl >> messageVisibleKindEEnum: amessageVisibleKindEEnum [
^ messageVisibleKindEEnum := amessageVisibleKindEEnum
]

{ #category : #'as yet unclassified' }
BPMN20BpmnDiPackageImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20BpmnDiPackageImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20BpmnDiPackageImpl >> parent [
	^ parent
]

{ #category : #'as yet unclassified' }
BPMN20BpmnDiPackageImpl >> parent: aparent [
	^ parent := aparent
]

{ #category : #'as yet unclassified' }
BPMN20BpmnDiPackageImpl >> participantBandKindEEnum [
^ participantBandKindEEnum
]

{ #category : #'as yet unclassified' }
BPMN20BpmnDiPackageImpl >> participantBandKindEEnum: aparticipantBandKindEEnum [
^ participantBandKindEEnum := aparticipantBandKindEEnum
]

{ #category : #'as yet unclassified' }
BPMN20BpmnDiPackageImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20BpmnDiPackageImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20BpmnDiPackageImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20BpmnDiPackageImpl >> text: atext [
	^ text := atext
]
