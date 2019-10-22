Class {
	#name : #BPSimProperty,
	#superclass : #BPSimParameter,
	#instVars : [
		'name'
	],
	#category : #'A4BP-SimEngine-core-model'
}

{ #category : #'as yet unclassified' }
BPSimProperty class >> annotation [
<MSEClass: #BPSimProperty  super: #BPSimParameter >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #'as yet unclassified' }
BPSimProperty >> accept: aVisitor [
	^ aVisitor visitBPSimProperty: self
]
