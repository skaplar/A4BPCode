Class {
	#name : #BPMN20ShapeImpl,
	#superclass : #BPMN20NodeImpl,
	#instVars : [
		'bounds'
	],
	#category : #'A4BP-BPMN20-core-model-dd-di'
}

{ #category : #'as yet unclassified' }
BPMN20ShapeImpl class >> annotation [
<MSEClass: #BPMN20ShapeImpl  super: #BPMN20NodeImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20ShapeImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20ShapeImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20ShapeImpl >> bounds [
^ bounds
]

{ #category : #'as yet unclassified' }
BPMN20ShapeImpl >> bounds: abounds [
^ bounds := abounds
]
