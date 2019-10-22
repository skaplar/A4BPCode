Class {
	#name : #BPMN20TargetRefImpl,
	#superclass : #BPMN20RefToBeBuild,
	#category : #'A4BP-BPMN20-core-model-a4bp'
}

{ #category : #annotation }
BPMN20TargetRefImpl class >> annotation [
<MSEClass: #BPMN20TargetRefImpl  super: #BPMN20RefToBeBuild >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #parser }
BPMN20TargetRefImpl class >> fillElementsIn: aModel from: document [
	| visitor |
	visitor := self getVisitor.
	visitor element: aModel.
	aModel refId: (self readString: document at: 'targetRef').
	^ aModel
]

{ #category : #parser }
BPMN20TargetRefImpl class >> getVisitor [
	^ BPMN20ParserSetinBPMN20IncomingImplVisitor new
]

{ #category : #visitor }
BPMN20TargetRefImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20TargetRefImpl: self
]

{ #category : #add }
BPMN20TargetRefImpl >> addMatch: e [
	objWhitMatch targetRef: e
]
