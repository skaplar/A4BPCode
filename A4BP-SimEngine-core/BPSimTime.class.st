Class {
	#name : #BPSimTime,
	#superclass : #Object,
	#instVars : [
		'time'
	],
	#category : #'A4BP-SimEngine-core-time'
}

{ #category : #initialization }
BPSimTime >> add: aTime [
	self time: time + aTime time
]

{ #category : #initialization }
BPSimTime >> initialize [
	super initialize.
	time := 0.
]

{ #category : #questions }
BPSimTime >> moreThanOneDay [
	^ time > 1
	
]

{ #category : #initialization }
BPSimTime >> next [
	^ BPSimTime new time: (time + 1)
]

{ #category : #accessing }
BPSimTime >> time [
	^ time
]

{ #category : #accessing }
BPSimTime >> time: anObject [
	time := anObject
]

{ #category : #'as yet unclassified' }
BPSimTime >> toMillis [
	^ time * 1000.
]

{ #category : #'as yet unclassified' }
BPSimTime >> toSeconds [
	^ time.
]

{ #category : #'as yet unclassified' }
BPSimTime >> toTimeStamp [
	^ DateAndTime fromSeconds: time.
]
