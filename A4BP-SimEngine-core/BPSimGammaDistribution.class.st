Class {
	#name : #BPSimGammaDistribution,
	#superclass : #BPSimDistributionParameter,
	#instVars : [
		'shape',
		'scale'
	],
	#category : #'A4BP-SimEngine-core-model'
}

{ #category : #'as yet unclassified' }
BPSimGammaDistribution class >> annotation [
<MSEClass: #BPSimGammaDistribution  super: #BPSimDistributionParameter >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #'as yet unclassified' }
BPSimGammaDistribution >> accept: aVisitor [
	^ aVisitor visitBPSimGammaDistribution: self
]

{ #category : #accessing }
BPSimGammaDistribution >> scale [
	^ scale
]

{ #category : #accessing }
BPSimGammaDistribution >> scale: anObject [
	scale := anObject
]

{ #category : #accessing }
BPSimGammaDistribution >> shape [
	^ shape
]

{ #category : #accessing }
BPSimGammaDistribution >> shape: anObject [
	shape := anObject
]
