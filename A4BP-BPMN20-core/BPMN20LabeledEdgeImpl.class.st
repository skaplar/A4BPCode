Class {
	#name : #BPMN20LabeledEdgeImpl,
	#superclass : #BPMN20EdgeImpl,
	#instVars : [
		'ownedLabel'
	],
	#category : #'A4BP-BPMN20-core-model-dd-di'
}

{ #category : #'as yet unclassified' }
BPMN20LabeledEdgeImpl class >> annotation [
<MSEClass: #BPMN20LabeledEdgeImpl  super: #BPMN20EdgeImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20LabeledEdgeImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20LabeledEdgeImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20LabeledEdgeImpl >> ownedLabel [
^ ownedLabel
]

{ #category : #'as yet unclassified' }
BPMN20LabeledEdgeImpl >> ownedLabel: aownedLabel [
^ ownedLabel := aownedLabel
]
