Class {
	#name : #BPMN20SourceRefImpl,
	#superclass : #BPMN20RefToBeBuild,
	#category : #'A4BP-BPMN20-core-model-a4bp'
}

{ #category : #annotation }
BPMN20SourceRefImpl class >> annotation [
<MSEClass: #BPMN20SourceRefImpl  super: #BPMN20RefToBeBuild >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #parser }
BPMN20SourceRefImpl class >> fillElementsIn: aModel from: document [
	| visitor |
	visitor := self getVisitor.
	visitor element: aModel.
	aModel refId: (self readString: document at: 'sourceRef').
	^ aModel
]

{ #category : #parser }
BPMN20SourceRefImpl class >> fromXMLDescription: document [
	| obj |
	obj := self new.
	self fillElementsIn: obj from: document.
	^ obj
]

{ #category : #parser }
BPMN20SourceRefImpl class >> getVisitor [
	^ BPMN20ParserSetinBPMN20IncomingImplVisitor new
]

{ #category : #visitor }
BPMN20SourceRefImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20SourceRefImpl: self
]

{ #category : #add }
BPMN20SourceRefImpl >> addMatch: e [
	objWhitMatch sourceRef: e
]
