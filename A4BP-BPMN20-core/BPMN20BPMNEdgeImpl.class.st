Class {
	#name : #BPMN20BPMNEdgeImpl,
	#superclass : #BPMN20LabeledEdgeImpl,
	#instVars : [
		'targetElement',
		'bpmnElement',
		'messageVisibleKind',
		'sourceElement',
		'label'
	],
	#classVars : [
		'MESSAGE_VISIBLE_KIND_EDEFAULT'
	],
	#category : #'A4BP-BPMN20-core-model-di'
}

{ #category : #'as yet unclassified' }
BPMN20BPMNEdgeImpl class >> annotation [
<MSEClass: #BPMN20BPMNEdgeImpl  super: #BPMN20LabeledEdgeImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20BPMNEdgeImpl class >> fillElementsIn: aModel from: document [
	| visitor |
	visitor := BPMN20DiParserShapeImplVisitor new.
	visitor element: aModel.	
	self fillElementsIn: aModel from: document visitor: visitor.
]

{ #category : #'as yet unclassified' }
BPMN20BPMNEdgeImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20BPMNEdgeImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20BPMNEdgeImpl >> bpmnElement [
^ bpmnElement
]

{ #category : #'as yet unclassified' }
BPMN20BPMNEdgeImpl >> bpmnElement: abpmnElement [
^ bpmnElement := abpmnElement
]

{ #category : #'as yet unclassified' }
BPMN20BPMNEdgeImpl >> label [
^ label
]

{ #category : #'as yet unclassified' }
BPMN20BPMNEdgeImpl >> label: alabel [
^ label := alabel
]

{ #category : #'as yet unclassified' }
BPMN20BPMNEdgeImpl >> messageVisibleKind [
^ messageVisibleKind
]

{ #category : #'as yet unclassified' }
BPMN20BPMNEdgeImpl >> messageVisibleKind: amessageVisibleKind [
^ messageVisibleKind := amessageVisibleKind
]

{ #category : #'as yet unclassified' }
BPMN20BPMNEdgeImpl >> sourceElement [
^ sourceElement
]

{ #category : #'as yet unclassified' }
BPMN20BPMNEdgeImpl >> sourceElement: asourceElement [
^ sourceElement := asourceElement
]

{ #category : #'as yet unclassified' }
BPMN20BPMNEdgeImpl >> targetElement [
^ targetElement
]

{ #category : #'as yet unclassified' }
BPMN20BPMNEdgeImpl >> targetElement: atargetElement [
^ targetElement := atargetElement
]
