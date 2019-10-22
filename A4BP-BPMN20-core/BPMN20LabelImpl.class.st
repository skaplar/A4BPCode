Class {
	#name : #BPMN20LabelImpl,
	#superclass : #BPMN20NodeImpl,
	#instVars : [
		'bounds'
	],
	#category : #'A4BP-BPMN20-core-model-dd-di'
}

{ #category : #'as yet unclassified' }
BPMN20LabelImpl class >> annotation [
<MSEClass: #BPMN20LabelImpl  super: #BPMN20NodeImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20LabelImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20LabelImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20LabelImpl >> bounds [
^ bounds
]

{ #category : #'as yet unclassified' }
BPMN20LabelImpl >> bounds: abounds [
^ bounds := abounds
]
