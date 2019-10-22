Class {
	#name : #BPMN20PlaneImpl,
	#superclass : #BPMN20NodeImpl,
	#instVars : [
		'planeElement'
	],
	#category : #'A4BP-BPMN20-core-model-dd-di'
}

{ #category : #'as yet unclassified' }
BPMN20PlaneImpl class >> annotation [
<MSEClass: #BPMN20PlaneImpl  super: #BPMN20NodeImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20PlaneImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20PlaneImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20PlaneImpl >> planeElement [
^ planeElement
]

{ #category : #'as yet unclassified' }
BPMN20PlaneImpl >> planeElement: aplaneElement [
^ planeElement := aplaneElement
]
