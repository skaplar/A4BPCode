Class {
	#name : #BPSimUserDistributionDataPoint,
	#superclass : #BPSimObject,
	#instVars : [
		'probability',
		'parameterValue'
	],
	#category : #'A4BP-SimEngine-core-model'
}

{ #category : #'as yet unclassified' }
BPSimUserDistributionDataPoint class >> annotation [
<MSEClass: #BPSimUserDistributionDataPoint  super: #BPSimObject >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #visitor }
BPSimUserDistributionDataPoint >> accept: aVisitor [
	^ aVisitor visitBPSimUserDistributionDataPoint: self
]

{ #category : #accessing }
BPSimUserDistributionDataPoint >> parameterValue [
^ parameterValue
]

{ #category : #accessing }
BPSimUserDistributionDataPoint >> parameterValue: aparameterValue [
^ parameterValue := aparameterValue
]

{ #category : #accessing }
BPSimUserDistributionDataPoint >> probability [
^ probability
]

{ #category : #accessing }
BPSimUserDistributionDataPoint >> probability: aprobability [
^ probability := aprobability
]
