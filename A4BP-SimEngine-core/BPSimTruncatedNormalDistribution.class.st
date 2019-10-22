Class {
	#name : #BPSimTruncatedNormalDistribution,
	#superclass : #BPSimDistributionParameter,
	#instVars : [
		'max',
		'min',
		'standardDeviation',
		'mean'
	],
	#category : #'A4BP-SimEngine-core-model'
}

{ #category : #'as yet unclassified' }
BPSimTruncatedNormalDistribution class >> annotation [
<MSEClass: #BPSimTruncatedNormalDistribution  super: #BPSimDistributionParameter >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #'as yet unclassified' }
BPSimTruncatedNormalDistribution >> accept: aVisitor [
	^ aVisitor visitBPSimTruncatedNormalDistribution: self
]

{ #category : #accessing }
BPSimTruncatedNormalDistribution >> max [
	^ max
]

{ #category : #accessing }
BPSimTruncatedNormalDistribution >> max: anObject [
	max := anObject
]

{ #category : #accessing }
BPSimTruncatedNormalDistribution >> mean [
	^ mean
]

{ #category : #accessing }
BPSimTruncatedNormalDistribution >> mean: anObject [
	mean := anObject
]

{ #category : #accessing }
BPSimTruncatedNormalDistribution >> min [
	^ min
]

{ #category : #accessing }
BPSimTruncatedNormalDistribution >> min: anObject [
	min := anObject
]

{ #category : #accessing }
BPSimTruncatedNormalDistribution >> standardDeviation [
	^ standardDeviation
]

{ #category : #accessing }
BPSimTruncatedNormalDistribution >> standardDeviation: anObject [
	standardDeviation := anObject
]
