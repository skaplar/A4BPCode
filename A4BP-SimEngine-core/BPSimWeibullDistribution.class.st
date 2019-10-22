Class {
	#name : #BPSimWeibullDistribution,
	#superclass : #BPSimDistributionParameter,
	#instVars : [
		'shape',
		'scale'
	],
	#category : #'A4BP-SimEngine-core-model'
}

{ #category : #'as yet unclassified' }
BPSimWeibullDistribution class >> annotation [
<MSEClass: #BPSimWeibullDistribution  super: #BPSimDistributionParameter >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #'as yet unclassified' }
BPSimWeibullDistribution >> accept: aVisitor [
	^ aVisitor visitBPSimWeibullDistribution: self
]

{ #category : #accessing }
BPSimWeibullDistribution >> scale [
	^ scale
]

{ #category : #accessing }
BPSimWeibullDistribution >> scale: anObject [
	scale := anObject
]

{ #category : #accessing }
BPSimWeibullDistribution >> shape [
	^ shape
]

{ #category : #accessing }
BPSimWeibullDistribution >> shape: anObject [
	shape := anObject
]
