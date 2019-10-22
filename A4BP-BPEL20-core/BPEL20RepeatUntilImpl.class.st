Class {
	#name : #BPEL20RepeatUntilImpl,
	#superclass : #BPEL20ActivityImpl,
	#instVars : [
		'condition',
		'activity'
	],
	#category : #'A4BP-BPEL20-core-model'
}

{ #category : #'as yet unclassified' }
BPEL20RepeatUntilImpl class >> annotation [
<MSEClass: #BPEL20RepeatUntilImpl  super: #BPEL20ActivityImpl >
<package: #'A4BP-BPEL20-core' >
]

{ #category : #'as yet unclassified' }
BPEL20RepeatUntilImpl >> activity [
^ activity
]

{ #category : #'as yet unclassified' }
BPEL20RepeatUntilImpl >> activity: aactivity [
^ activity := aactivity
]

{ #category : #'as yet unclassified' }
BPEL20RepeatUntilImpl >> condition [
^ condition
]

{ #category : #'as yet unclassified' }
BPEL20RepeatUntilImpl >> condition: acondition [
^ condition := acondition
]
