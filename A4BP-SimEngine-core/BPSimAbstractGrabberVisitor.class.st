"
A BPSimAbstractGrabberVisitor is xxxxxxxxx.

Instance Variables
	fullOutputScenario:		<Object>
	incomingCall:		<Object>
	inputScenario:		<Object>
	outputScenario:		<Object>

fullOutputScenario
	- xxxxx

incomingCall
	- xxxxx

inputScenario
	- xxxxx

outputScenario
	- xxxxx

"
Class {
	#name : #BPSimAbstractGrabberVisitor,
	#superclass : #BPSimAbstractVisitor,
	#instVars : [
		'inputScenario',
		'outputScenario',
		'fullOutputScenario',
		'incomingCall'
	],
	#category : #'A4BP-SimEngine-core-execution'
}

{ #category : #'as yet unclassified' }
BPSimAbstractGrabberVisitor class >> annotation [
<MSEClass: #BPSimAbstractGrabberVisitor  super: #BPSimAbstractVisitor >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #accessing }
BPSimAbstractGrabberVisitor >> fullOutputScenario [
	^ fullOutputScenario
]

{ #category : #accessing }
BPSimAbstractGrabberVisitor >> fullOutputScenario: anObject [
	fullOutputScenario := anObject
]

{ #category : #accessing }
BPSimAbstractGrabberVisitor >> incomingCall [
	^ incomingCall
]

{ #category : #accessing }
BPSimAbstractGrabberVisitor >> incomingCall: anObject [
	incomingCall := anObject
]

{ #category : #accessing }
BPSimAbstractGrabberVisitor >> inputParameters [
	^ inputParameters
]

{ #category : #accessing }
BPSimAbstractGrabberVisitor >> inputParameters: anObject [
	inputParameters := anObject
]

{ #category : #accessing }
BPSimAbstractGrabberVisitor >> inputScenario [
	^ inputScenario
]

{ #category : #accessing }
BPSimAbstractGrabberVisitor >> inputScenario: anObject [
	inputScenario := anObject
]

{ #category : #accessing }
BPSimAbstractGrabberVisitor >> outputParameters [
	^ outputParameters
]

{ #category : #accessing }
BPSimAbstractGrabberVisitor >> outputParameters: anObject [
	outputParameters := anObject
]

{ #category : #accessing }
BPSimAbstractGrabberVisitor >> outputScenario [
	^ outputScenario
]

{ #category : #accessing }
BPSimAbstractGrabberVisitor >> outputScenario: anObject [
	outputScenario := anObject
]
