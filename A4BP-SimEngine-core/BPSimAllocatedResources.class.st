Class {
	#name : #BPSimAllocatedResources,
	#superclass : #Object,
	#instVars : [
		'poolSize',
		'performedWork',
		'allocatedTill'
	],
	#category : #'A4BP-SimEngine-core-execution-resource-jbpm'
}

{ #category : #'as yet unclassified' }
BPSimAllocatedResources >> allocate: startTime duration: duration limit: limit [
	| waitTime allocatedWork |
	waitTime := 0.
	allocatedWork := BPSimAllocatedWork new duration: duration.
	performedWork := performedWork + duration.
	poolSize = 0
		ifTrue: [ 
			"no available resources"
			allocatedWork allocatedTime: startTime + duration.
			allocatedWork waitTime: duration.
			^ allocatedWork ].
	allocatedTill size < poolSize
		ifTrue: [ 
			| allocated |
			allocated := startTime + duration.
			allocated > limit
				ifTrue: [ allocated := limit ].
			allocatedTill add: allocated.
			allocatedWork allocatedTime: allocated - startTime.
			allocatedWork waitTime: waitTime ]
		ifFalse: [ 
			| allocated |
			allocatedTill sort.
			allocated := allocatedTill first.
			allocated = limit
				ifTrue: [ 
					waitTime := allocated - startTime.
					allocatedWork allocatedTime: 0.
					allocatedWork waitTime: waitTime.
					^ allocatedWork ].
			allocated >= startTime
				ifTrue: [ 
					waitTime := allocated - startTime.
					allocated := allocated + duration ]
				ifFalse: [ allocated := startTime + duration ].
			allocated > limit
				ifTrue: [ 
					allocatedTill at: 0 put: limit.
					allocatedWork allocatedTime: duration - (allocated - limit).
					allocatedWork waitTime: waitTime ]
				ifFalse: [ 
					allocatedTill at: 0 put: allocated.
					allocatedWork allocatedTime: allocated - startTime.
					allocatedWork waitTime: waitTime ] ].
	^ allocatedWork
]

{ #category : #accessing }
BPSimAllocatedResources >> allocatedTill [
	^ allocatedTill
]

{ #category : #accessing }
BPSimAllocatedResources >> allocatedTill: anObject [
	allocatedTill := anObject
]

{ #category : #'as yet unclassified' }
BPSimAllocatedResources >> initialize [
	super initialize.
	performedWork :=0.
	allocatedTill := OrderedCollection new.
]

{ #category : #accessing }
BPSimAllocatedResources >> performedWork [
	^ performedWork
]

{ #category : #accessing }
BPSimAllocatedResources >> performedWork: anObject [
	performedWork := anObject
]

{ #category : #accessing }
BPSimAllocatedResources >> poolSize [
	^ poolSize
]

{ #category : #accessing }
BPSimAllocatedResources >> poolSize: anObject [
	poolSize := anObject
]
