Class {
	#name : #BPSimBetaDistribution,
	#superclass : #BPSimDistributionParameter,
	#instVars : [
		'scale',
		'shape'
	],
	#category : #'A4BP-SimEngine-core-model'
}

{ #category : #'as yet unclassified' }
BPSimBetaDistribution class >> annotation [
<MSEClass: #BPSimBetaDistribution  super: #BPSimDistributionParameter >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #'as yet unclassified' }
BPSimBetaDistribution >> accept: aVisitor [
	^ aVisitor visitBPSimBetaDistribution: self
]

{ #category : #'as yet unclassified' }
BPSimBetaDistribution >> scale [
	^ scale
]

{ #category : #'as yet unclassified' }
BPSimBetaDistribution >> scale: aScale [
	scale := aScale
]

{ #category : #'as yet unclassified' }
BPSimBetaDistribution >> shape [
	^ shape
]

{ #category : #'as yet unclassified' }
BPSimBetaDistribution >> shape: aShape [
	shape := aShape
]
