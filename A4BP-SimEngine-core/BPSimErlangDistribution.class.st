Class {
	#name : #BPSimErlangDistribution,
	#superclass : #BPSimDistributionParameter,
	#instVars : [
		'k',
		'mean'
	],
	#category : #'A4BP-SimEngine-core-model'
}

{ #category : #'as yet unclassified' }
BPSimErlangDistribution class >> annotation [
<MSEClass: #BPSimErlangDistribution  super: #BPSimDistributionParameter >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #'as yet unclassified' }
BPSimErlangDistribution >> accept: aVisitor [
	^ aVisitor visitBPSimErlangDistribution: self
]

{ #category : #'as yet unclassified' }
BPSimErlangDistribution >> k [
^ k
]

{ #category : #'as yet unclassified' }
BPSimErlangDistribution >> k: ak [
 k := ak
]

{ #category : #'as yet unclassified' }
BPSimErlangDistribution >> mean [
^ mean
]

{ #category : #'as yet unclassified' }
BPSimErlangDistribution >> mean: amean [
 mean := amean
]
