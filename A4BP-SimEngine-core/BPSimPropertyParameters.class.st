Class {
	#name : #BPSimPropertyParameters,
	#superclass : #BPSimAbstractParameters,
	#instVars : [
		'property'
	],
	#category : #'A4BP-SimEngine-core-model'
}

{ #category : #'as yet unclassified' }
BPSimPropertyParameters class >> annotation [
<MSEClass: #BPSimPropertyParameters  super: #BPSimAbstractParameters >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #visitor }
BPSimPropertyParameters >> accept: aVisitor [
	^ aVisitor visitBPSimPropertyParameters: self
]

{ #category : #accessing }
BPSimPropertyParameters >> property [
^ property
]

{ #category : #accessing }
BPSimPropertyParameters >> property: aproperty [
^ property := aproperty
]
