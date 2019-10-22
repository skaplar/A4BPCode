Class {
	#name : #BPSimNumericParameter,
	#superclass : #BPSimConstantParameter,
	#instVars : [
		'timeUnit',
		'currencyUnit'
	],
	#category : #'A4BP-SimEngine-core-model'
}

{ #category : #'as yet unclassified' }
BPSimNumericParameter class >> annotation [
<MSEClass: #BPSimNumericParameter  super: #BPSimConstantParameter >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #'as yet unclassified' }
BPSimNumericParameter class >> fillElementsIn: aModel from: document [
	super fillElementsIn: aModel from: document

]

{ #category : #'as yet unclassified' }
BPSimNumericParameter >> accept: aVisitor [
	^ aVisitor visitBPSimNumericParameter: self
]

{ #category : #'as yet unclassified' }
BPSimNumericParameter >> currencyUnit [
^ currencyUnit
]

{ #category : #'as yet unclassified' }
BPSimNumericParameter >> currencyUnit: acurrencyUnit [
 currencyUnit := acurrencyUnit
]

{ #category : #'as yet unclassified' }
BPSimNumericParameter >> timeUnit [
^ timeUnit
]

{ #category : #'as yet unclassified' }
BPSimNumericParameter >> timeUnit: atimeUnit [
 timeUnit := atimeUnit
]

{ #category : #'as yet unclassified' }
BPSimNumericParameter >> v [
	[ ^ NumberParser parse: self result v asString ]
		on: Error
		do: [ ^ 0 asInteger ]
]
