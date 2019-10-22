Class {
	#name : #BPSimUniformDistribution,
	#superclass : #BPSimDistributionParameter,
	#instVars : [
		'max',
		'min'
	],
	#category : #'A4BP-SimEngine-core-model'
}

{ #category : #'as yet unclassified' }
BPSimUniformDistribution class >> annotation [
<MSEClass: #BPSimUniformDistribution  super: #BPSimDistributionParameter >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #'as yet unclassified' }
BPSimUniformDistribution >> accept: aVisitor [
	^ aVisitor visitBPSimUniformDistribution: self
]

{ #category : #accessing }
BPSimUniformDistribution >> max [
	^ max
]

{ #category : #accessing }
BPSimUniformDistribution >> max: anObject [
	max := anObject
]

{ #category : #accessing }
BPSimUniformDistribution >> min [
	^ min
]

{ #category : #accessing }
BPSimUniformDistribution >> min: anObject [
	min := anObject
]
