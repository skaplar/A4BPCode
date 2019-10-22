Class {
	#name : #BPSimStringParameter,
	#superclass : #BPSimConstantParameter,
	#category : #'A4BP-SimEngine-core-model'
}

{ #category : #'as yet unclassified' }
BPSimStringParameter class >> annotation [
<MSEClass: #BPSimStringParameter  super: #BPSimConstantParameter >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #'as yet unclassified' }
BPSimStringParameter class >> fillElementsIn: aModel from: document [
	super fillElementsIn: aModel from: document

]

{ #category : #'as yet unclassified' }
BPSimStringParameter >> accept: aVisitor [
	^ aVisitor visitBPSimStringParameter: self
]

{ #category : #accessing }
BPSimStringParameter >> v [
	[ ^ self result value asString ]
		on: Error
		do: [ ^ '' ]
]
