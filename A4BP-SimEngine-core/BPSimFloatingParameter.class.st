Class {
	#name : #BPSimFloatingParameter,
	#superclass : #BPSimConstantParameter,
	#instVars : [
		'timeUnit',
		'currencyUnit'
	],
	#category : #'A4BP-SimEngine-core-model'
}

{ #category : #'as yet unclassified' }
BPSimFloatingParameter class >> annotation [
<MSEClass: #BPSimFloatingParameter  super: #BPSimConstantParameter >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #'as yet unclassified' }
BPSimFloatingParameter class >> fillElementsIn: aModel from: document [
	super fillElementsIn: aModel from: document

]

{ #category : #'as yet unclassified' }
BPSimFloatingParameter >> accept: aVisitor [
	^ aVisitor visitBPSimFloatingParameter: self
]

{ #category : #'as yet unclassified' }
BPSimFloatingParameter >> currencyUnit [
^ currencyUnit
]

{ #category : #'as yet unclassified' }
BPSimFloatingParameter >> currencyUnit: acurrencyUnit [
 currencyUnit := acurrencyUnit
]

{ #category : #'as yet unclassified' }
BPSimFloatingParameter >> timeUnit [
^ timeUnit
]

{ #category : #'as yet unclassified' }
BPSimFloatingParameter >> timeUnit: atimeUnit [
 timeUnit := atimeUnit
]

{ #category : #'as yet unclassified' }
BPSimFloatingParameter >> v [
	[ ^ NumberParser parse: self result v asString ]
		on: Error
		do: [ ^ 0 asFloat ]
]
