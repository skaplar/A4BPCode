Class {
	#name : #BPSimRange,
	#superclass : #Object,
	#instVars : [
		'start',
		'end',
		'interval',
		'resources'
	],
	#category : #'A4BP-SimEngine-core-execution-resource-jbpm'
}

{ #category : #accessing }
BPSimRange >> allocate: startTime duration: duration [
	| allocate |
	allocate := resources allocate: startTime duration: duration limit: interval endMillis.
	^ allocate
]

{ #category : #accessing }
BPSimRange >> contains: bpSimTime [
	|time startInstant endInstant|
	time := bpSimTime toTimeStamp.
	time := DateAndTime year: time year month:time month day:time daysInMonth hour: start minute:time minute second:time second.
	startInstant := time asDuration seconds.
	time := bpSimTime toTimeStamp.
	time := DateAndTime year: time year month:time month day:time daysInMonth hour: end minute:time minute second:time second.
	endInstant := time asDuration seconds.
	
	interval := BPSimInterval from: startInstant to: endInstant.
	^  interval contains: bpSimTime toSeconds.
]

{ #category : #accessing }
BPSimRange >> end [
	^ end
]

{ #category : #accessing }
BPSimRange >> end: anObject [
	end := anObject
]

{ #category : #accessing }
BPSimRange >> interval [
	^ interval
]

{ #category : #accessing }
BPSimRange >> interval: anObject [
	interval := anObject
]

{ #category : #accessing }
BPSimRange >> resources [
	^ resources
]

{ #category : #accessing }
BPSimRange >> resources: anObject [
	resources := anObject
]

{ #category : #accessing }
BPSimRange >> start [
	^ start
]

{ #category : #accessing }
BPSimRange >> start: anObject [
	start := anObject
]

{ #category : #accessing }
BPSimRange >> start: aStart end: aEnd resourcePoolSize: aResourcePoolSize [
	self start: aStart.
	self end: aEnd.
	self resources: (BPSimAllocatedResources new poolSize:aResourcePoolSize).
]
