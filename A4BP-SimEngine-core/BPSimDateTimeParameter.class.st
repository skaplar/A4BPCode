Class {
	#name : #BPSimDateTimeParameter,
	#superclass : #BPSimConstantParameter,
	#category : #'A4BP-SimEngine-core-model'
}

{ #category : #'as yet unclassified' }
BPSimDateTimeParameter class >> annotation [
<MSEClass: #BPSimDateTimeParameter  super: #BPSimConstantParameter >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #'as yet unclassified' }
BPSimDateTimeParameter class >> fillElementsIn: aModel from: document [
	super fillElementsIn: aModel from: document

]

{ #category : #'as yet unclassified' }
BPSimDateTimeParameter >> accept: aVisitor [
	^ aVisitor visitBPSimDateTimeParameter: self
]
