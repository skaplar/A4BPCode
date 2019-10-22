Class {
	#name : #BPSimDuration,
	#superclass : #BPSimObject,
	#instVars : [
		'constantParameter'
	],
	#category : #'A4BP-SimEngine-core-model-a4bp'
}

{ #category : #'as yet unclassified' }
BPSimDuration class >> annotation [
<MSEClass: #BPSimDuration  super: #BPSimObject >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #parser }
BPSimDuration class >> fillElementsIn: aModel from: document [
	| visitor |
	visitor := BPSimParserBPSimDurationVisitor new.
	visitor element: aModel.
	self fillElementsIn: aModel from: document visitor: visitor.

]

{ #category : #visitor }
BPSimDuration >> accept: aVisitor [
	^ aVisitor visitBPDuration: self
]

{ #category : #getset }
BPSimDuration >> constantParameter [
^ constantParameter
]

{ #category : #getset }
BPSimDuration >> constantParameter: aconstantParameter [
^ constantParameter := aconstantParameter
]
