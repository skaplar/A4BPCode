Class {
	#name : #BPWSDLMessage,
	#superclass : #BPWSDLObject,
	#instVars : [
		'bpWsdlPart'
	],
	#category : #'A4BP-WSDL-core-model'
}

{ #category : #'as yet unclassified' }
BPWSDLMessage class >> annotation [
<MSEClass: #BPWSDLMessage  super: #BPWSDLObject >
<package: #'A4BP-WSDL-core' >
]

{ #category : #builder }
BPWSDLMessage class >> fillElementsIn: aBPObj from: document [
	| visitor |
	visitor := BPBuilderSetNodesinBPWSDLMessageVisitor new.
	visitor element: aBPObj.
	self fillElementsIn: aBPObj from: document visitor: visitor.
	^ aBPObj
]

{ #category : #visitor }
BPWSDLMessage >> accept: aVisitor [
	^ aVisitor visitBPWSDLMessage: self
]

{ #category : #getset }
BPWSDLMessage >> bpWsdlPart [
	^ bpWsdlPart
]

{ #category : #getset }
BPWSDLMessage >> bpWsdlPart: aModel [
	bpWsdlPart := aModel
]

{ #category : #'build-relations' }
BPWSDLMessage >> findDefType: aDef [
	aDef element = aName
		ifTrue: [ 
			| newDef |
			newDef :=BPGenericType newGenericType: bpWsdlPart.
			^ myWSDL findDefTypeInXSD: newDef ].
	^ A4BPEmptyObj instance.
]
