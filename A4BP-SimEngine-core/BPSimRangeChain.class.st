Class {
	#name : #BPSimRangeChain,
	#superclass : #Object,
	#instVars : [
		'availableRanges'
	],
	#category : #'A4BP-SimEngine-core-execution-resource-jbpm'
}

{ #category : #intialization }
BPSimRangeChain >> addRange: aRange [
	availableRanges add:aRange 
]

{ #category : #intialization }
BPSimRangeChain >> allocateWork: startTime duration: duration [
	|allocatedWork previousRange|
	allocatedWork := BPSimAllocatedWork new duration: duration.
	"Interval"
	previousRange := nil.
	[ :break |
		availableRanges do:[ :range |
			(range contains: startTime) ifTrue:[
				allocatedWork merge:(range allocate: startTime duration: duration).
				allocatedWork isAllocated ifTrue:[break value].
				previousRange := range interval.
			] ifFalse:[
				(allocatedWork isAllocated not) ifTrue:[
					|gap|
					gap :=0.
               previousRange ifNotNil:[
						gap := previousRange gap:(range interval toDurationMillis).
                  allocatedWork setWaitTime:(allocatedWork waitTime + gap).
               ].
               allocatedWork merge:(
						range 
						allocate: (range interval startMillis) 
						duration: duration - (allocatedWork allocatedTime )
						)
					].
			].
		].
	] valueWithExit.
   
	^ allocatedWork waitTime
]

{ #category : #intialization }
BPSimRangeChain >> initialize [
	super initialize.
	availableRanges := OrderedCollection new.
]
