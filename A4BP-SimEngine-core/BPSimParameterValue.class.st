Class {
	#name : #BPSimParameterValue,
	#superclass : #BPSimObject,
	#instVars : [
		'instance',
		'validFor',
		'result'
	],
	#category : #'A4BP-SimEngine-core-model'
}

{ #category : #'as yet unclassified' }
BPSimParameterValue class >> annotation [
<MSEClass: #BPSimParameterValue  super: #BPSimObject >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #'as yet unclassified' }
BPSimParameterValue >> accept: aVisitor [
	^ aVisitor visitBPSimParameterValue: self
]

{ #category : #'as yet unclassified' }
BPSimParameterValue >> calculate: anParameter [
	self result calculate: anParameter v result
]

{ #category : #'as yet unclassified' }
BPSimParameterValue >> instance [
^ instance
]

{ #category : #'as yet unclassified' }
BPSimParameterValue >> instance: ainstance [
 instance := ainstance
]

{ #category : #question }
BPSimParameterValue >> isCollection [
	^ false
]

{ #category : #'as yet unclassified' }
BPSimParameterValue >> nextValue [ 
	^ self result value
]

{ #category : #'as yet unclassified' }
BPSimParameterValue >> result [
	result ifNil: [ result := BPSimResultTypeVALUE new].
	result pv: self.
	^ result
]

{ #category : #'as yet unclassified' }
BPSimParameterValue >> result: aresult [
 result := aresult
]

{ #category : #'as yet unclassified' }
BPSimParameterValue >> validFor [
^ validFor
]

{ #category : #'as yet unclassified' }
BPSimParameterValue >> validFor: avalidFor [
 validFor := avalidFor
]

{ #category : #'as yet unclassified' }
BPSimParameterValue >> values [
	^ Dictionary new at: BPSimResultType VALUE put: self
]
