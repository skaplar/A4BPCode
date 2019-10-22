Class {
	#name : #BPSimLogNormalDistribution,
	#superclass : #BPSimDistributionParameter,
	#instVars : [
		'standardDeviation',
		'mean'
	],
	#category : #'A4BP-SimEngine-core-model'
}

{ #category : #'as yet unclassified' }
BPSimLogNormalDistribution class >> annotation [
<MSEClass: #BPSimLogNormalDistribution  super: #BPSimDistributionParameter >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #'as yet unclassified' }
BPSimLogNormalDistribution >> accept: aVisitor [
	^ aVisitor visitBPSimLogNormalDistribution: self
]

{ #category : #'as yet unclassified' }
BPSimLogNormalDistribution >> mean [
^ mean
]

{ #category : #'as yet unclassified' }
BPSimLogNormalDistribution >> mean: amean [
 mean := amean
]

{ #category : #'as yet unclassified' }
BPSimLogNormalDistribution >> standardDeviation [
^ standardDeviation
]

{ #category : #'as yet unclassified' }
BPSimLogNormalDistribution >> standardDeviation: astandardDeviation [
 standardDeviation := astandardDeviation
]
