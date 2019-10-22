Class {
	#name : #BPSimBinomialDistribution,
	#superclass : #BPSimDistributionParameter,
	#instVars : [
		'trials',
		'probability'
	],
	#category : #'A4BP-SimEngine-core-model'
}

{ #category : #'as yet unclassified' }
BPSimBinomialDistribution class >> annotation [
<MSEClass: #BPSimBinomialDistribution  super: #BPSimDistributionParameter >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #'as yet unclassified' }
BPSimBinomialDistribution >> accept: aVisitor [
	^ aVisitor visitBPSimBinomialDistribution: self
]

{ #category : #'as yet unclassified' }
BPSimBinomialDistribution >> probability [
^ probability
]

{ #category : #'as yet unclassified' }
BPSimBinomialDistribution >> probability: aprobability [
 probability := aprobability
]

{ #category : #'as yet unclassified' }
BPSimBinomialDistribution >> trials [
^ trials
]

{ #category : #'as yet unclassified' }
BPSimBinomialDistribution >> trials: atrials [
 trials := atrials
]
