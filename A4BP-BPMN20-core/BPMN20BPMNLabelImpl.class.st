Class {
	#name : #BPMN20BPMNLabelImpl,
	#superclass : #BPMN20LabelImpl,
	#instVars : [
		'labelStyle'
	],
	#category : #'A4BP-BPMN20-core-model-di'
}

{ #category : #'as yet unclassified' }
BPMN20BPMNLabelImpl class >> annotation [
<MSEClass: #BPMN20BPMNLabelImpl  super: #BPMN20LabelImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20BPMNLabelImpl class >> fillElementsIn: aModel from: document [
	| visitor |
	visitor := BPMN20DiParserLabelImplVisitor new.
	visitor element: aModel.	
	self fillElementsIn: aModel from: document visitor: visitor.
]

{ #category : #'as yet unclassified' }
BPMN20BPMNLabelImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20BPMNLabelImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20BPMNLabelImpl >> labelStyle [
^ labelStyle
]

{ #category : #'as yet unclassified' }
BPMN20BPMNLabelImpl >> labelStyle: alabelStyle [
^ labelStyle := alabelStyle
]
