"
I serialize  the iCalendar format.
"
Class {
	#name : #BPSimCalendar,
	#superclass : #BPSimObject,
	#instVars : [
		'value',
		'name'
	],
	#category : #'A4BP-SimEngine-core-model'
}

{ #category : #'as yet unclassified' }
BPSimCalendar class >> annotation [
<MSEClass: #BPSimCalendar  super: #BPSimObject >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #visitor }
BPSimCalendar >> accept: aVisitor [
	^ aVisitor visitBPSimCalendar: self
]

{ #category : #accessing }
BPSimCalendar >> v [
	^ value
]

{ #category : #accessing }
BPSimCalendar >> value: avalue [
^ value := avalue
]
