Class {
	#name : #BPXSDNamedElement,
	#superclass : #BPXSDObject,
	#category : #'A4BP-XSD-core-model'
}

{ #category : #'as yet unclassified' }
BPXSDNamedElement class >> annotation [
<MSEClass: #BPXSDNamedElement  super: #BPXSDObject >
<package: #'A4BP-XSD-core' >
]

{ #category : #visitor }
BPXSDNamedElement >> accept: aVisitor [
	^ aVisitor visitBPXSDNamedElement: self
]
