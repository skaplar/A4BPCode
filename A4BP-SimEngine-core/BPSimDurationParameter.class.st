Class {
	#name : #BPSimDurationParameter,
	#superclass : #BPSimConstantParameter,
	#category : #'A4BP-SimEngine-core-model'
}

{ #category : #'as yet unclassified' }
BPSimDurationParameter class >> annotation [
<MSEClass: #BPSimDurationParameter  super: #BPSimConstantParameter >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #parser }
BPSimDurationParameter class >> fillElementsIn: aModel from: document [
	super fillElementsIn: aModel from: document.
	aModel value: (document attributeAt:'value').

]

{ #category : #'as yet unclassified' }
BPSimDurationParameter >> accept: aVisitor [
	^ aVisitor visitBPSimDurationParameter: self
]

{ #category : #accessing }
BPSimDurationParameter >> v [
	[ ^  NumberParser parse: value asString  ]
		on: Error
		do: [ ^ 0 asInteger ]
]

{ #category : #accessing }
BPSimDurationParameter >> v: aValue [
	value := aValue
]

{ #category : #accessing }
BPSimDurationParameter >> value: aString [
	value := aString
]
