Class {
	#name : #BPSimNormalDistribution,
	#superclass : #BPSimDistributionParameter,
	#instVars : [
		'standardDeviation',
		'mean'
	],
	#category : #'A4BP-SimEngine-core-model'
}

{ #category : #'as yet unclassified' }
BPSimNormalDistribution class >> annotation [
<MSEClass: #BPSimNormalDistribution  super: #BPSimDistributionParameter >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #'as yet unclassified' }
BPSimNormalDistribution >> accept: aVisitor [
	^ aVisitor visitBPSimNormalDistribution: self
]

{ #category : #'as yet unclassified' }
BPSimNormalDistribution >> mean [
^ mean
]

{ #category : #'as yet unclassified' }
BPSimNormalDistribution >> mean: amean [
 mean := amean
]

{ #category : #'as yet unclassified' }
BPSimNormalDistribution >> standardDeviation [
^ standardDeviation
]

{ #category : #'as yet unclassified' }
BPSimNormalDistribution >> standardDeviation: astandardDeviation [
 standardDeviation := astandardDeviation
]
