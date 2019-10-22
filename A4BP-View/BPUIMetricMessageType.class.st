Class {
	#name : #BPUIMetricMessageType,
	#superclass : #Object,
	#instVars : [
		'messageType',
		'val'
	],
	#category : #'A4BP-View-UI-metric'
}

{ #category : #'as yet unclassified' }
BPUIMetricMessageType class >> build: aMessage [
	|ct|
	ct := self new.
	ct messageType: aMessage.
	^ ct
 
]

{ #category : #'as yet unclassified' }
BPUIMetricMessageType class >> build: aMessage model: aModel [
	| ct |
	ct := self new.
	ct messageType: aMessage.
	[ ct val: (aModel perform: aMessage) ]
		on: Error
		do: [ ct val: -1 ].
	^ ct
]

{ #category : #accessing }
BPUIMetricMessageType >> initialize [
	super initialize.
	val := 0
]

{ #category : #accessing }
BPUIMetricMessageType >> messageType [
	^ messageType
]

{ #category : #accessing }
BPUIMetricMessageType >> messageType: anObject [
	messageType := anObject
]

{ #category : #accessing }
BPUIMetricMessageType >> name [
	^ messageType  name , ':' , val asString 
]

{ #category : #accessing }
BPUIMetricMessageType >> val [
	^ val
]

{ #category : #accessing }
BPUIMetricMessageType >> val: anObject [
	val := anObject
]
