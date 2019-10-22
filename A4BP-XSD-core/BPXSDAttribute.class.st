Class {
	#name : #BPXSDAttribute,
	#superclass : #BPXSDNamedElement,
	#category : #'A4BP-XSD-core-model'
}

{ #category : #'as yet unclassified' }
BPXSDAttribute class >> annotation [
<MSEClass: #BPXSDAttribute  super: #BPXSDNamedElement >
<package: #'A4BP-XSD-core' >
]

{ #category : #visitor }
BPXSDAttribute >> accept: aVisitor [
	^ aVisitor visitBPXSDAttribute: self
]
