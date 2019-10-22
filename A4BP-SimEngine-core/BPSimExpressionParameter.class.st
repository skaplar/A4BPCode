Class {
	#name : #BPSimExpressionParameter,
	#superclass : #BPSimParameterValue,
	#instVars : [
		'value'
	],
	#category : #'A4BP-SimEngine-core-model'
}

{ #category : #'as yet unclassified' }
BPSimExpressionParameter class >> annotation [
<MSEClass: #BPSimExpressionParameter  super: #BPSimParameterValue >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #'as yet unclassified' }
BPSimExpressionParameter >> accept: aVisitor [
	^ aVisitor visitBPSimExpressionParameter: self
]

{ #category : #accessing }
BPSimExpressionParameter >> v [
	^ value
]

{ #category : #accessing }
BPSimExpressionParameter >> value: avalue [
^ value := avalue
]
