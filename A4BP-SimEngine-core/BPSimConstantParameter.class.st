Class {
	#name : #BPSimConstantParameter,
	#superclass : #BPSimParameterValue,
	#instVars : [
		'value'
	],
	#category : #'A4BP-SimEngine-core-model'
}

{ #category : #'as yet unclassified' }
BPSimConstantParameter class >> annotation [
<MSEClass: #BPSimConstantParameter  super: #BPSimParameterValue >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #parser }
BPSimConstantParameter class >> fillElementsIn: aModel from: document [
	aModel value: (self readString: document at: 'value').

]

{ #category : #'as yet unclassified' }
BPSimConstantParameter >> accept: aVisitor [
	^ aVisitor visitBPSimConstantParameter: self
]

{ #category : #getset }
BPSimConstantParameter >> calculate: anParameter [
	self result calculate: anParameter v result.
	value := self result v.
]

{ #category : #getset }
BPSimConstantParameter >> nextValue [
	^ self v
]

{ #category : #getset }
BPSimConstantParameter >> result [
	result ifNil: [ 
		result := BPSimResultTypeVALUE new.
		result value:value.
		].
	result pv: self.
	^ result
]

{ #category : #getset }
BPSimConstantParameter >> v [
	^ value
]

{ #category : #getset }
BPSimConstantParameter >> v: avalue [
	value := avalue
]

{ #category : #getset }
BPSimConstantParameter >> value: avalue [
	value := avalue
]
