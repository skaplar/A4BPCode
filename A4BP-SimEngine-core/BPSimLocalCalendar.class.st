Class {
	#name : #BPSimLocalCalendar,
	#superclass : #Object,
	#instVars : [
		'date'
	],
	#category : #'A4BP-SimEngine-core-execution-resource-jbpm'
}

{ #category : #initialization }
BPSimLocalCalendar >> initialize [
	super initialize.
	date := TimeStamp new
]
