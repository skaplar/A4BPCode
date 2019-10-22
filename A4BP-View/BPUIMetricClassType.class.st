Class {
	#name : #BPUIMetricClassType,
	#superclass : #Object,
	#instVars : [
		'classType',
		'elements'
	],
	#category : #'A4BP-View-UI-metric'
}

{ #category : #'as yet unclassified' }
BPUIMetricClassType class >> build: aClass [
	|ct|
	ct := self new.
	ct classType:aClass.
	^ ct
 
]

{ #category : #accessing }
BPUIMetricClassType >> classType [
	^ classType
]

{ #category : #accessing }
BPUIMetricClassType >> classType: anObject [
	classType := anObject
]

{ #category : #accessing }
BPUIMetricClassType >> elements [
	^ elements
]

{ #category : #accessing }
BPUIMetricClassType >> elements: anObject [
	elements := anObject
]

{ #category : #accessing }
BPUIMetricClassType >> initialize [
	super initialize.
	elements := OrderedCollection new.
]

{ #category : #accessing }
BPUIMetricClassType >> key [
	^ classType
]

{ #category : #accessing }
BPUIMetricClassType >> name [
	^ classType name , ':#' , elements size asString 
]

{ #category : #accessing }
BPUIMetricClassType >> new [
	^ classType new
]
