Class {
	#name : #BPMN20BPMNPlaneImpl,
	#superclass : #BPMN20PlaneImpl,
	#instVars : [
		'bpmnElement',
		'shapes'
	],
	#category : #'A4BP-BPMN20-core-model-di'
}

{ #category : #'as yet unclassified' }
BPMN20BPMNPlaneImpl class >> annotation [
<MSEClass: #BPMN20BPMNPlaneImpl  super: #BPMN20PlaneImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20BPMNPlaneImpl class >> fillElementsIn: aModel from: document [
	| visitor |
	visitor := BPMN20DiParserPlaneImplVisitor new.
	visitor element: aModel.	
	self fillElementsIn: aModel from: document visitor: visitor.
]

{ #category : #'as yet unclassified' }
BPMN20BPMNPlaneImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20BPMNPlaneImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20BPMNPlaneImpl >> bpmnElement [
^ bpmnElement
]

{ #category : #'as yet unclassified' }
BPMN20BPMNPlaneImpl >> bpmnElement: abpmnElement [
^ bpmnElement := abpmnElement
]

{ #category : #build }
BPMN20BPMNPlaneImpl >> buildInternalRelations [
	super buildInternalRelations.
	shapes do: [ :s | s buildInternalRelations ]
]

{ #category : #initialization }
BPMN20BPMNPlaneImpl >> initialize [

	super initialize.

	bpmnElement := nil.
	shapes := A4BPDictionary new.
]

{ #category : #accessing }
BPMN20BPMNPlaneImpl >> shapes [
	^ shapes
]

{ #category : #accessing }
BPMN20BPMNPlaneImpl >> shapes: anObject [
	shapes := anObject
]
