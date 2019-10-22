Class {
	#name : #BPSimStaffPoolImpl,
	#superclass : #Object,
	#instVars : [
		'poolSize',
		'duration',
		'timeUnit',
		'workingHours',
		'poolCapacity',
		'performedWork',
		'resourceCost',
		'elementTimeUnit',
		'timeGenerator',
		'allocatedRanges',
		'rangeChain',
		'element',
		'waitTime'
	],
	#category : #'A4BP-SimEngine-core-execution-resource-jbpm'
}

{ #category : #'as yet unclassified' }
BPSimStaffPoolImpl class >> build: node simulationDuration: simulationDuration [
	^ self new build: node simulationDuration: simulationDuration
]

{ #category : #'as yet unclassified' }
BPSimStaffPoolImpl >> allocate: currentTime [
	^ self allocate: currentTime duration: duration 
]

{ #category : #'as yet unclassified' }
BPSimStaffPoolImpl >> allocate: currentTime duration: anDuration [
	performedWork := performedWork + anDuration.
	waitTime := rangeChain allocateWork: currentTime duration: anDuration.
	^ waitTime
]

{ #category : #accessing }
BPSimStaffPoolImpl >> allocatedRanges [
	^ allocatedRanges
]

{ #category : #accessing }
BPSimStaffPoolImpl >> allocatedRanges: anObject [
	allocatedRanges := anObject
]

{ #category : #'as yet unclassified' }
BPSimStaffPoolImpl >> build: inputP simulationDuration: simulationDuration [
	element := inputP elementRef.
	timeGenerator :=  inputP processing.
	elementTimeUnit := BPSimTimeUnit new.
	poolSize := inputP quantity vv.
	duration := timeGenerator v nextValue.
	rangeChain := BPSimRangeChain new.
	rangeChain addRange:(BPSimRange new start:0 end: 24 resourcePoolSize: poolSize).
	poolCapacity := poolSize * 24.

	"if simulation is estimated to more than one day multiply working hours by that factor"
 	simulationDuration moreThanOneDay ifTrue:[
		poolCapacity := (poolCapacity * (simulationDuration toMillis)).
	].
	resourceCost = inputP unitCost vv.
]

{ #category : #accessing }
BPSimStaffPoolImpl >> duration [
	^ duration
]

{ #category : #accessing }
BPSimStaffPoolImpl >> duration: anObject [
	duration := anObject
]

{ #category : #accessing }
BPSimStaffPoolImpl >> element [
	^ element
]

{ #category : #accessing }
BPSimStaffPoolImpl >> element: anObject [
	element := anObject
]

{ #category : #accessing }
BPSimStaffPoolImpl >> elementTimeUnit [
	^ elementTimeUnit
]

{ #category : #accessing }
BPSimStaffPoolImpl >> elementTimeUnit: anObject [
	elementTimeUnit := anObject
]

{ #category : #'as yet unclassified' }
BPSimStaffPoolImpl >> initialize [
	super initialize.
	workingHours := ( 8 * 60 * 60 * 1000).
	poolCapacity := 0.
	performedWork := 0.
	allocatedRanges := Dictionary new.
]

{ #category : #'as yet unclassified' }
BPSimStaffPoolImpl >> key [
	element aName
]

{ #category : #accessing }
BPSimStaffPoolImpl >> performedWork [
	^ performedWork
]

{ #category : #accessing }
BPSimStaffPoolImpl >> performedWork: anObject [
	performedWork := anObject
]

{ #category : #accessing }
BPSimStaffPoolImpl >> poolCapacity [
	^ poolCapacity
]

{ #category : #accessing }
BPSimStaffPoolImpl >> poolCapacity: anObject [
	poolCapacity := anObject
]

{ #category : #accessing }
BPSimStaffPoolImpl >> poolSize [
	^ poolSize
]

{ #category : #accessing }
BPSimStaffPoolImpl >> poolSize: anObject [
	poolSize := anObject
]

{ #category : #accessing }
BPSimStaffPoolImpl >> rangeChain [
	^ rangeChain
]

{ #category : #accessing }
BPSimStaffPoolImpl >> rangeChain: anObject [
	rangeChain := anObject
]

{ #category : #accessing }
BPSimStaffPoolImpl >> resourceCost [
	^ resourceCost
]

{ #category : #accessing }
BPSimStaffPoolImpl >> resourceCost: anObject [
	resourceCost := anObject
]

{ #category : #accessing }
BPSimStaffPoolImpl >> timeGenerator [
	^ timeGenerator
]

{ #category : #accessing }
BPSimStaffPoolImpl >> timeGenerator: anObject [
	timeGenerator := anObject
]

{ #category : #accessing }
BPSimStaffPoolImpl >> timeUnit [
	^ timeUnit
]

{ #category : #accessing }
BPSimStaffPoolImpl >> timeUnit: anObject [
	timeUnit := anObject
]

{ #category : #accessing }
BPSimStaffPoolImpl >> waitTime [
	^ waitTime
]

{ #category : #accessing }
BPSimStaffPoolImpl >> waitTime: anObject [
	waitTime := anObject
]

{ #category : #accessing }
BPSimStaffPoolImpl >> workingHours [
	^ workingHours
]

{ #category : #accessing }
BPSimStaffPoolImpl >> workingHours: anObject [
	workingHours := anObject
]
