Class {
	#name : #BPSimAllocatedWork,
	#superclass : #Object,
	#instVars : [
		'allocatedTime',
		'waitTime',
		'duration'
	],
	#category : #'A4BP-SimEngine-core-execution-resource-jbpm'
}

{ #category : #accessing }
BPSimAllocatedWork >> allocatedTime [
	^ allocatedTime
]

{ #category : #accessing }
BPSimAllocatedWork >> allocatedTime: anObject [
	allocatedTime := anObject
]

{ #category : #accessing }
BPSimAllocatedWork >> duration [
	^ duration
]

{ #category : #accessing }
BPSimAllocatedWork >> duration: anObject [
	duration := anObject
]

{ #category : #'as yet unclassified' }
BPSimAllocatedWork >> initialize [
	super initialize.
	duration := 0.
	waitTime := 0.
	allocatedTime  := 0.
]

{ #category : #'as yet unclassified' }
BPSimAllocatedWork >> isAllocated [
  ^ (duration + waitTime) == allocatedTime
]

{ #category : #'as yet unclassified' }
BPSimAllocatedWork >> merge: anAllocatedWork [
	allocatedTime :=  allocatedTime + (anAllocatedWork allocatedTime).
   waitTime := waitTime + (anAllocatedWork waitTime).
]

{ #category : #accessing }
BPSimAllocatedWork >> waitTime [
	^ waitTime
]

{ #category : #accessing }
BPSimAllocatedWork >> waitTime: anObject [
	waitTime := anObject
]
