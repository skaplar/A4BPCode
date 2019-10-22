Class {
	#name : #BPSimPriorityParameters,
	#superclass : #BPSimAbstractParameters,
	#instVars : [
		'priority',
		'interruptible'
	],
	#category : #'A4BP-SimEngine-core-model'
}

{ #category : #'as yet unclassified' }
BPSimPriorityParameters class >> annotation [
<MSEClass: #BPSimPriorityParameters  super: #BPSimAbstractParameters >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #visitor }
BPSimPriorityParameters >> accept: aVisitor [
	^ aVisitor visitBPSimPriorityParameters: self
]

{ #category : #accessing }
BPSimPriorityParameters >> interruptible [
^ interruptible
]

{ #category : #accessing }
BPSimPriorityParameters >> interruptible: ainterruptible [
^ interruptible := ainterruptible
]

{ #category : #accessing }
BPSimPriorityParameters >> priority [
^ priority
]

{ #category : #accessing }
BPSimPriorityParameters >> priority: apriority [
^ priority := apriority
]
