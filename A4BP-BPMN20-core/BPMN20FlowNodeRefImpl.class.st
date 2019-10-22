Class {
	#name : #BPMN20FlowNodeRefImpl,
	#superclass : #BPMN20RefToBeBuild,
	#category : #'A4BP-BPMN20-core-model-a4bp'
}

{ #category : #annotation }
BPMN20FlowNodeRefImpl class >> annotation [
<MSEClass: #BPMN20FlowNodeRefImpl  super: #BPMN20RefToBeBuild >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #parser }
BPMN20FlowNodeRefImpl class >> getVisitor [
	^ BPMN20ParserSetinBPMN20FlowNodeRefImplVisitor new
]

{ #category : #visitor }
BPMN20FlowNodeRefImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20FlowNodeRefImpl: self
]
