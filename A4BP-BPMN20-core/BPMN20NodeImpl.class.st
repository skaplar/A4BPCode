Class {
	#name : #BPMN20NodeImpl,
	#superclass : #BPMN20DiagramElementImpl,
	#category : #'A4BP-BPMN20-core-model-dd-di'
}

{ #category : #'as yet unclassified' }
BPMN20NodeImpl class >> annotation [
<MSEClass: #BPMN20NodeImpl  super: #BPMN20DiagramElementImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20NodeImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20NodeImpl: self
]
