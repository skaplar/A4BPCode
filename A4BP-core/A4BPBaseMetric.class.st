Class {
	#name : #A4BPBaseMetric,
	#superclass : #Object,
	#instVars : [
		'aName',
		'algorithm',
		'derivation'
	],
	#category : #'A4BP-core-metric'
}

{ #category : #accessing }
A4BPBaseMetric >> aName [
	^ aName
]

{ #category : #accessing }
A4BPBaseMetric >> aName: anObject [
	aName := anObject
]

{ #category : #accessing }
A4BPBaseMetric >> algorithm [
	^ algorithm
]

{ #category : #accessing }
A4BPBaseMetric >> algorithm: anObject [
	algorithm := anObject
]

{ #category : #calculate }
A4BPBaseMetric >> calculate [
	^ 0
]

{ #category : #accessing }
A4BPBaseMetric >> derivation [
	^ derivation
]

{ #category : #accessing }
A4BPBaseMetric >> derivation: anObject [
	derivation := anObject
]
