Class {
	#name : #BPSimResourceDispacher,
	#superclass : #Object,
	#instVars : [
		'resource',
		'availabilityTable',
		'totalResource'
	],
	#category : #'A4BP-SimEngine-core-execution-resource'
}

{ #category : #accessing }
BPSimResourceDispacher >> availabilityTable [
	^ availabilityTable
]

{ #category : #accessing }
BPSimResourceDispacher >> availabilityTable: anObject [
	availabilityTable := anObject
]

{ #category : #initialization }
BPSimResourceDispacher >> initialize [
	super initialize.
	availabilityTable := BPSimAvailabiltyTable new.
]

{ #category : #accessing }
BPSimResourceDispacher >> key [
	^ resource 
]

{ #category : #questions }
BPSimResourceDispacher >> nextFreeTime: aTime using: aResourceNumber inModel: aModel [
	^ availabilityTable nextFreeTime: aTime using: aResourceNumber inModel:aModel
]

{ #category : #accessing }
BPSimResourceDispacher >> resource [
	^ resource
]

{ #category : #accessing }
BPSimResourceDispacher >> resource: anObject [
	resource := anObject
]

{ #category : #accessing }
BPSimResourceDispacher >> totalResource [
	^ totalResource
]

{ #category : #accessing }
BPSimResourceDispacher >> totalResource: anObject [
	totalResource := anObject
]
