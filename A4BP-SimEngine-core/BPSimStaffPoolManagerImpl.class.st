Class {
	#name : #BPSimStaffPoolManagerImpl,
	#superclass : #Object,
	#instVars : [
		'registeredPools'
	],
	#category : #'A4BP-SimEngine-core-execution-resource-jbpm'
}

{ #category : #'as yet unclassified' }
BPSimStaffPoolManagerImpl >> activityPool: inputP [
	| element tmpPool|
	element := inputP elementRef.
	tmpPool := BPSimStaffPoolImpl new element:element.
	^ registeredPools at: tmpPool key ifAbsent:[
		^ self registerPool: inputP duration: 1
	]. 
]

{ #category : #'as yet unclassified' }
BPSimStaffPoolManagerImpl >> activityPool: inputP inTime: clock [
	"this process calcule according with BPSim parameter information in the node base
	on resources asigned into them"
	| element tmpPool|
	element := inputP elementRef.
	tmpPool := BPSimStaffPoolImpl new element:element.
	tmpPool := registeredPools at: tmpPool key ifAbsent:[
		tmpPool := self registerPool: inputP duration: clock
	]. 
	^ tmpPool
]

{ #category : #intialization }
BPSimStaffPoolManagerImpl >> initialize [
	super initialize.
	registeredPools := Dictionary new.
]

{ #category : #'as yet unclassified' }
BPSimStaffPoolManagerImpl >> registerPool: inputP duration: duration [
	| pool |
	pool := BPSimStaffPoolImpl build: inputP simulationDuration: duration.
	registeredPools at: pool key put: pool.
	^ pool
]
