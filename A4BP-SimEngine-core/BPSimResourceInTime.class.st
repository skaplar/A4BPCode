Class {
	#name : #BPSimResourceInTime,
	#superclass : #Object,
	#instVars : [
		'available',
		'busy',
		'element',
		'time'
	],
	#category : #'A4BP-SimEngine-core-execution-resource'
}

{ #category : #accessing }
BPSimResourceInTime >> available [
	^ available
]

{ #category : #accessing }
BPSimResourceInTime >> available: anObject [
	available := anObject
]

{ #category : #accessing }
BPSimResourceInTime >> busy [
	^ busy
]

{ #category : #accessing }
BPSimResourceInTime >> busy: anObject [
	busy := anObject
]

{ #category : #accessing }
BPSimResourceInTime >> element [
	^ element
]

{ #category : #accessing }
BPSimResourceInTime >> element: anObject [
	element := anObject
]

{ #category : #accessing }
BPSimResourceInTime >> imAvailable: aResourceNumber [
	^ available >= aResourceNumber
]

{ #category : #accessing }
BPSimResourceInTime >> imNotAvailable: aResourceNumber [
	^ (self imAvailable:aResourceNumber) not
]

{ #category : #initialization }
BPSimResourceInTime >> initialize [
	super initialize.
	available := 0.
	busy := 0.
	element := nil.
	time := BPSimTime new.
]

{ #category : #accessing }
BPSimResourceInTime >> time [
	^ time
]

{ #category : #accessing }
BPSimResourceInTime >> time: anObject [
	time := anObject
]
