Class {
	#name : #BPMN20ExtensionElementsImpl,
	#superclass : #BPMN20Object,
	#category : #'A4BP-BPMN20-core-model-a4bp'
}

{ #category : #'as yet unclassified' }
BPMN20ExtensionElementsImpl class >> annotation [
<MSEClass: #BPMN20ExtensionElementsImpl  super: #BPMN20Object >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #parser }
BPMN20ExtensionElementsImpl class >> fillElementsIn: aModel from: document [
	|visitor|
	visitor := BPMN20ParserSetinBPMN20ExtensionElementsImplVisitor new.
	visitor element: aModel.
	self fillElementsIn: aModel from: document visitor: visitor.
	^ aModel 
]

{ #category : #visitor }
BPMN20ExtensionElementsImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20ExtensionElementsImpl: self
]

{ #category : #initialization }
BPMN20ExtensionElementsImpl >> initialize [

	super initialize.

	id := UUID new asString.
]
