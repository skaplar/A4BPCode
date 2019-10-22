Class {
	#name : #BPSimPoissonDistribution,
	#superclass : #BPSimDistributionParameter,
	#instVars : [
		'mean'
	],
	#category : #'A4BP-SimEngine-core-model'
}

{ #category : #'as yet unclassified' }
BPSimPoissonDistribution class >> annotation [
<MSEClass: #BPSimPoissonDistribution  super: #BPSimDistributionParameter >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #'as yet unclassified' }
BPSimPoissonDistribution >> accept: aVisitor [
	^ aVisitor visitBPSimPoissonDistribution: self
]

{ #category : #'as yet unclassified' }
BPSimPoissonDistribution >> mean [
^ mean
]

{ #category : #'as yet unclassified' }
BPSimPoissonDistribution >> mean: amean [
 mean := amean
]
