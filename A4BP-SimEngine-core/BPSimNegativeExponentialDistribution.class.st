Class {
	#name : #BPSimNegativeExponentialDistribution,
	#superclass : #BPSimDistributionParameter,
	#instVars : [
		'mean'
	],
	#category : #'A4BP-SimEngine-core-model'
}

{ #category : #'as yet unclassified' }
BPSimNegativeExponentialDistribution class >> annotation [
<MSEClass: #BPSimNegativeExponentialDistribution  super: #BPSimDistributionParameter >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #'as yet unclassified' }
BPSimNegativeExponentialDistribution >> accept: aVisitor [
	^ aVisitor visitBPSimNegativeExponentialDistribution: self
]

{ #category : #'as yet unclassified' }
BPSimNegativeExponentialDistribution >> mean [
^ mean
]

{ #category : #'as yet unclassified' }
BPSimNegativeExponentialDistribution >> mean: amean [
 mean := amean
]
