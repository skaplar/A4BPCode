Class {
	#name : #BPMN20LabeledShapeImpl,
	#superclass : #BPMN20ShapeImpl,
	#instVars : [
		'ownedLabel'
	],
	#category : #'A4BP-BPMN20-core-model-dd-di'
}

{ #category : #'as yet unclassified' }
BPMN20LabeledShapeImpl class >> annotation [
<MSEClass: #BPMN20LabeledShapeImpl  super: #BPMN20ShapeImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20LabeledShapeImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20LabeledShapeImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20LabeledShapeImpl >> ownedLabel [
^ ownedLabel
]

{ #category : #'as yet unclassified' }
BPMN20LabeledShapeImpl >> ownedLabel: aownedLabel [
^ ownedLabel := aownedLabel
]
