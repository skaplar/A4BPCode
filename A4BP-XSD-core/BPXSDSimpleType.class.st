Class {
	#name : #BPXSDSimpleType,
	#superclass : #BPXSDNamedElement,
	#category : #'A4BP-XSD-core-model'
}

{ #category : #'as yet unclassified' }
BPXSDSimpleType class >> annotation [
<MSEClass: #BPXSDSimpleType  super: #BPXSDNamedElement >
<package: #'A4BP-XSD-core' >
]

{ #category : #visitor }
BPXSDSimpleType >> accept: aVisitor [
	^ aVisitor visitBPXSDSimpleType: self
]

{ #category : #getset }
BPXSDSimpleType >> allElements [
	^ OrderedCollection new add: self
]

{ #category : #getset }
BPXSDSimpleType >> fillElementsIn: lst [
	lst ifNotNil: [ lst add: self ]
]
