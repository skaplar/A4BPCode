Class {
	#name : #BPSimUserDistribution,
	#superclass : #BPSimDistributionParameter,
	#instVars : [
		'discrete',
		'userDistributionDataPoint'
	],
	#category : #'A4BP-SimEngine-core-model'
}

{ #category : #'as yet unclassified' }
BPSimUserDistribution class >> annotation [
<MSEClass: #BPSimUserDistribution  super: #BPSimDistributionParameter >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #'as yet unclassified' }
BPSimUserDistribution >> accept: aVisitor [
	^ aVisitor visitBPSimUserDistribution: self
]

{ #category : #accessing }
BPSimUserDistribution >> discrete [
	^ discrete
]

{ #category : #accessing }
BPSimUserDistribution >> discrete: anObject [
	discrete := anObject
]

{ #category : #accessing }
BPSimUserDistribution >> userDistributionDataPoint [
	^ userDistributionDataPoint
]

{ #category : #accessing }
BPSimUserDistribution >> userDistributionDataPoint: anObject [
	userDistributionDataPoint := anObject
]
