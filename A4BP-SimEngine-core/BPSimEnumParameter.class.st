Class {
	#name : #BPSimEnumParameter,
	#superclass : #BPSimParameterValue,
	#instVars : [
		'parameterValue'
	],
	#category : #'A4BP-SimEngine-core-model'
}

{ #category : #'as yet unclassified' }
BPSimEnumParameter class >> annotation [
<MSEClass: #BPSimEnumParameter  super: #BPSimParameterValue >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #'as yet unclassified' }
BPSimEnumParameter >> accept: aVisitor [
	^ aVisitor visitBPSimEnumParameter: self
]

{ #category : #accessing }
BPSimEnumParameter >> parameterValue [
^ parameterValue
]

{ #category : #accessing }
BPSimEnumParameter >> parameterValue: aparameterValue [
^ parameterValue := aparameterValue
]
