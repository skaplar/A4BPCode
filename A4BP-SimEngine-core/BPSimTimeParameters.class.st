Class {
	#name : #BPSimTimeParameters,
	#superclass : #BPSimAbstractParameters,
	#instVars : [
		'validationTime',
		'queueTime',
		'transferTime',
		'waitTime',
		'reworkTime',
		'processingTime',
		'setUpTime',
		'historicalTime'
	],
	#category : #'A4BP-SimEngine-core-model'
}

{ #category : #'as yet unclassified' }
BPSimTimeParameters class >> annotation [
<MSEClass: #BPSimTimeParameters  super: #BPSimAbstractParameters >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #visitor }
BPSimTimeParameters >> accept: aVisitor [
	^ aVisitor visitBPSimTimeParameters: self
]

{ #category : #calculate }
BPSimTimeParameters >> calculate: anParameter [
	processingTime parameterValue do: [ :p | p calculate: anParameter value ]
]

{ #category : #accessing }
BPSimTimeParameters >> historicalTime [
	^ historicalTime
]

{ #category : #accessing }
BPSimTimeParameters >> historicalTime: anObject [
	historicalTime := anObject
]

{ #category : #accessing }
BPSimTimeParameters >> processingTime [
^ processingTime
]

{ #category : #accessing }
BPSimTimeParameters >> processingTime: aprocessingTime [
	^ processingTime := aprocessingTime
]

{ #category : #accessing }
BPSimTimeParameters >> queueTime [
^ queueTime
]

{ #category : #accessing }
BPSimTimeParameters >> queueTime: aqueueTime [
^ queueTime := aqueueTime
]

{ #category : #accessing }
BPSimTimeParameters >> reworkTime [
^ reworkTime
]

{ #category : #accessing }
BPSimTimeParameters >> reworkTime: areworkTime [
^ reworkTime := areworkTime
]

{ #category : #accessing }
BPSimTimeParameters >> setUpTime [
^ setUpTime
]

{ #category : #accessing }
BPSimTimeParameters >> setUpTime: asetUpTime [
^ setUpTime := asetUpTime
]

{ #category : #accessing }
BPSimTimeParameters >> transferTime [
^ transferTime
]

{ #category : #accessing }
BPSimTimeParameters >> transferTime: atransferTime [
^ transferTime := atransferTime
]

{ #category : #accessing }
BPSimTimeParameters >> validationTime [
^ validationTime
]

{ #category : #accessing }
BPSimTimeParameters >> validationTime: avalidationTime [
^ validationTime := avalidationTime
]

{ #category : #accessing }
BPSimTimeParameters >> waitTime [
^ waitTime
]

{ #category : #accessing }
BPSimTimeParameters >> waitTime: awaitTime [
^ waitTime := awaitTime
]
