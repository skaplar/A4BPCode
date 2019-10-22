Class {
	#name : #BPMN20OutgoingImpl,
	#superclass : #BPMN20RefToBeBuild,
	#category : #'A4BP-BPMN20-core-model-a4bp'
}

{ #category : #annotation }
BPMN20OutgoingImpl class >> annotation [
<MSEClass: #BPMN20OutgoingImpl  super: #BPMN20RefToBeBuild >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #parser }
BPMN20OutgoingImpl class >> getVisitor [
	^ BPMN20ParserSetinBPMN20OutgoingImplVisitor new
]

{ #category : #visitor }
BPMN20OutgoingImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20OutgoingImpl: self
]
