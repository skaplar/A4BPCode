Class {
	#name : #BPSimAvailabiltyTable,
	#superclass : #Object,
	#instVars : [
		'map',
		'totalResource'
	],
	#category : #'A4BP-SimEngine-core-execution-resource'
}

{ #category : #'as yet unclassified' }
BPSimAvailabiltyTable >> initialize [
	super initialize.
	totalResource := 1.
	map := A4BPDictionary new.
]

{ #category : #accessing }
BPSimAvailabiltyTable >> map [
	^ map
]

{ #category : #accessing }
BPSimAvailabiltyTable >> map: anObject [
	map := anObject
]

{ #category : #'as yet unclassified' }
BPSimAvailabiltyTable >> nextFreeTime: aTime using: aResourceNumber inModel: aModel [
	|r lastTime|
	r := BPSimResourceInTime new.
	lastTime := BPSimTime new.
	[r imNotAvailable: aResourceNumber] whileTrue:[
		r := map at: aTime ifAbsent:[ 
			r := BPSimResourceInTime new 
			available: totalResource;
			time:lastTime next;
			element:aModel.
			map at: r time put: r.
			].
		lastTime := r time.
	].
	^ r

	
]

{ #category : #accessing }
BPSimAvailabiltyTable >> totalResource [
	^ totalResource
]

{ #category : #accessing }
BPSimAvailabiltyTable >> totalResource: anObject [
	totalResource := anObject
]
