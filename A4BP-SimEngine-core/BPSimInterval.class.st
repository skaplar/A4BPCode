Class {
	#name : #BPSimInterval,
	#superclass : #Object,
	#instVars : [
		'from',
		'to'
	],
	#category : #'A4BP-SimEngine-core-execution-resource-jbpm'
}

{ #category : #'as yet unclassified' }
BPSimInterval class >> from: from to: to [
	^ self new from: from ; to: to
]

{ #category : #'as yet unclassified' }
BPSimInterval class >> start: from end: to [
	^ self new from: from ; to: to
]

{ #category : #'as yet unclassified' }
BPSimInterval >> contains: seconds [
	^ (from < seconds) and: (to > seconds)
	
]

{ #category : #'as yet unclassified' }
BPSimInterval >> endMillis [
	^ to * 1000
]

{ #category : #accessing }
BPSimInterval >> from [
	^ from
]

{ #category : #accessing }
BPSimInterval >> from: anObject [
	from := anObject
]

{ #category : #'as yet unclassified' }
BPSimInterval >> startMillis [
	^ from * 1000
]

{ #category : #accessing }
BPSimInterval >> to [
	^ to
]

{ #category : #accessing }
BPSimInterval >> to: anObject [
	to := anObject
]
