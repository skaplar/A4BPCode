Class {
	#name : #BPSimResourceControllerJbpm,
	#superclass : #BPSimResourceController,
	#instVars : [
		'staffPoolManagerImpl'
	],
	#category : #'A4BP-SimEngine-core-execution-resource-jbpm'
}

{ #category : #'as yet unclassified' }
BPSimResourceControllerJbpm >> doActivity: inputP inTime: clock [
	|pool|
	pool := BPSimStaffPoolImpl new.
	pool := self staffPoolManagerImpl activityPool:inputP inTime: clock.
	pool allocate: clock.
	^ pool
]

{ #category : #'as yet unclassified' }
BPSimResourceControllerJbpm >> initialize [
	super initialize.
	staffPoolManagerImpl := BPSimStaffPoolManagerImpl new.
]

{ #category : #'as yet unclassified' }
BPSimResourceControllerJbpm >> nextFreeTime: clock fromParameter: inputP [
	|pool|
	pool := staffPoolManagerImpl getActivityPool: inputP 
]

{ #category : #accessing }
BPSimResourceControllerJbpm >> staffPoolManagerImpl [
	staffPoolManagerImpl ifNil:[ staffPoolManagerImpl := BPSimStaffPoolManagerImpl new].
	^ staffPoolManagerImpl
]

{ #category : #accessing }
BPSimResourceControllerJbpm >> staffPoolManagerImpl: anObject [
	staffPoolManagerImpl := anObject
]
