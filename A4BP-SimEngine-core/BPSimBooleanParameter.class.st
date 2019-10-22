Class {
	#name : #BPSimBooleanParameter,
	#superclass : #BPSimConstantParameter,
	#category : #'A4BP-SimEngine-core-model'
}

{ #category : #'as yet unclassified' }
BPSimBooleanParameter class >> annotation [
<MSEClass: #BPSimBooleanParameter  super: #BPSimConstantParameter >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #'as yet unclassified' }
BPSimBooleanParameter class >> fillElementsIn: aModel from: document [
	super fillElementsIn: aModel from: document.
	aModel value: (document attributeAt:'value') = 'true'.
	

]

{ #category : #'as yet unclassified' }
BPSimBooleanParameter >> accept: aVisitor [
	^ aVisitor visitBPSimBooleanParameter: self
]

{ #category : #accessing }
BPSimBooleanParameter >> v [
	[ ^ self result value asString asLowercase = 'true' ]
		on: Error
		do: [ ^ false ]
]

{ #category : #accessing }
BPSimBooleanParameter >> v: aBoolean [
	value := aBoolean
]

{ #category : #accessing }
BPSimBooleanParameter >> value: aBoolean [
	value := aBoolean
]
