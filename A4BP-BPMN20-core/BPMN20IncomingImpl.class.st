Class {
	#name : #BPMN20IncomingImpl,
	#superclass : #BPMN20RefToBeBuild,
	#category : #'A4BP-BPMN20-core-model-a4bp'
}

{ #category : #annotation }
BPMN20IncomingImpl class >> annotation [
<MSEClass: #BPMN20IncomingImpl  super: #BPMN20RefToBeBuild >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #parser }
BPMN20IncomingImpl class >> getVisitor [
	^ BPMN20ParserSetinBPMN20IncomingImplVisitor new
]

{ #category : #visitor }
BPMN20IncomingImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20IncomingImpl: self
]
