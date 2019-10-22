Class {
	#name : #BPSimDistributionParameter,
	#superclass : #BPSimParameterValue,
	#instVars : [
		'timeUnit',
		'currencyUnit',
		'bpDistributionGenerator'
	],
	#category : #'A4BP-SimEngine-core-model'
}

{ #category : #'as yet unclassified' }
BPSimDistributionParameter class >> annotation [
	<MSEClass: #BPSimDistributionParameter super: #BPSimParameterValue>
	<package: #'A4BP-SimEngine-core'>
	
]

{ #category : #'as yet unclassified' }
BPSimDistributionParameter >> accept: aVisitor [
	^ aVisitor visitBPSimDistributionParameter: self
]

{ #category : #accessing }
BPSimDistributionParameter >> currencyUnit [
	^ currencyUnit
]

{ #category : #'as yet unclassified' }
BPSimDistributionParameter >> currencyUnit: aCurrencyUnit [
 currencyUnit := aCurrencyUnit
]

{ #category : #'as yet unclassified' }
BPSimDistributionParameter >> nextValue [
	^ 0

]

{ #category : #'as yet unclassified' }
BPSimDistributionParameter >> timeUnit [
	^ timeUnit
]

{ #category : #'as yet unclassified' }
BPSimDistributionParameter >> timeUnit: aTimeUnit [
	timeUnit := aTimeUnit
]

{ #category : #'as yet unclassified' }
BPSimDistributionParameter >> v [
	^ self nextValue
]
