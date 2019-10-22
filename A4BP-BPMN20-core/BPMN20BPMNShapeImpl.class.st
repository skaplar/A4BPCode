Class {
	#name : #BPMN20BPMNShapeImpl,
	#superclass : #BPMN20LabeledShapeImpl,
	#instVars : [
		'label',
		'isHorizontal',
		'isMessageVisible',
		'isMarkerVisible',
		'isExpanded',
		'bpmnElement',
		'choreographyActivityShape',
		'participantBandKind'
	],
	#classVars : [
		'IS_EXPANDED_EDEFAULT',
		'IS_HORIZONTAL_EDEFAULT',
		'IS_MARKER_VISIBLE_EDEFAULT',
		'IS_MESSAGE_VISIBLE_EDEFAULT',
		'PARTICIPANT_BAND_KIND_EDEFAULT'
	],
	#category : #'A4BP-BPMN20-core-model-di'
}

{ #category : #'as yet unclassified' }
BPMN20BPMNShapeImpl class >> annotation [
<MSEClass: #BPMN20BPMNShapeImpl  super: #BPMN20LabeledShapeImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20BPMNShapeImpl class >> fillElementsIn: aModel from: document [
	| visitor |
	visitor := BPMN20DiParserShapeImplVisitor new.
	visitor element: aModel.
	
	aModel bpmnElement:  ( self readString: document at: 'bpmnElement' ).
	
	self fillElementsIn: aModel from: document visitor: visitor.
]

{ #category : #'as yet unclassified' }
BPMN20BPMNShapeImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20BPMNShapeImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20BPMNShapeImpl >> bpmnElement [
^ bpmnElement
]

{ #category : #'as yet unclassified' }
BPMN20BPMNShapeImpl >> bpmnElement: abpmnElement [
^ bpmnElement := abpmnElement
]

{ #category : #build }
BPMN20BPMNShapeImpl >> buildInternalRelations [
	super buildInternalRelations.
	[
	"bpmnElement ='Id_c7f06a85-b3f5-442a-af1f-c866fe040817' ifTrue:[ self halt]."
	bpmnElement := myRoot elementAt: bpmnElement.
	bpmnElement shape: self.
	] on: Error do:[].
	
	bounds buildInternalRelations
]

{ #category : #'as yet unclassified' }
BPMN20BPMNShapeImpl >> choreographyActivityShape [
^ choreographyActivityShape
]

{ #category : #'as yet unclassified' }
BPMN20BPMNShapeImpl >> choreographyActivityShape: achoreographyActivityShape [
^ choreographyActivityShape := achoreographyActivityShape
]

{ #category : #'as yet unclassified' }
BPMN20BPMNShapeImpl >> isExpanded [
^ isExpanded
]

{ #category : #'as yet unclassified' }
BPMN20BPMNShapeImpl >> isExpanded: aisExpanded [
^ isExpanded := aisExpanded
]

{ #category : #'as yet unclassified' }
BPMN20BPMNShapeImpl >> isHorizontal [
^ isHorizontal
]

{ #category : #'as yet unclassified' }
BPMN20BPMNShapeImpl >> isHorizontal: aisHorizontal [
^ isHorizontal := aisHorizontal
]

{ #category : #'as yet unclassified' }
BPMN20BPMNShapeImpl >> isMarkerVisible [
^ isMarkerVisible
]

{ #category : #'as yet unclassified' }
BPMN20BPMNShapeImpl >> isMarkerVisible: aisMarkerVisible [
^ isMarkerVisible := aisMarkerVisible
]

{ #category : #'as yet unclassified' }
BPMN20BPMNShapeImpl >> isMessageVisible [
^ isMessageVisible
]

{ #category : #'as yet unclassified' }
BPMN20BPMNShapeImpl >> isMessageVisible: aisMessageVisible [
^ isMessageVisible := aisMessageVisible
]

{ #category : #'as yet unclassified' }
BPMN20BPMNShapeImpl >> label [
^ label
]

{ #category : #'as yet unclassified' }
BPMN20BPMNShapeImpl >> label: alabel [
^ label := alabel
]

{ #category : #'as yet unclassified' }
BPMN20BPMNShapeImpl >> participantBandKind [
^ participantBandKind
]

{ #category : #'as yet unclassified' }
BPMN20BPMNShapeImpl >> participantBandKind: aparticipantBandKind [
^ participantBandKind := aparticipantBandKind
]
