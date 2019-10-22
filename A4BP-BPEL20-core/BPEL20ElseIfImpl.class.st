Class {
	#name : #BPEL20ElseIfImpl,
	#superclass : #BPEL20BPELExtensibleElementImpl,
	#instVars : [
		'condition',
		'activity'
	],
	#category : #'A4BP-BPEL20-core-model'
}

{ #category : #'as yet unclassified' }
BPEL20ElseIfImpl class >> annotation [
<MSEClass: #BPEL20ElseIfImpl  super: #BPEL20BPELExtensibleElementImpl >
<package: #'A4BP-BPEL20-core' >
]

{ #category : #'as yet unclassified' }
BPEL20ElseIfImpl >> activity [
^ activity
]

{ #category : #'as yet unclassified' }
BPEL20ElseIfImpl >> activity: aactivity [
^ activity := aactivity
]

{ #category : #'as yet unclassified' }
BPEL20ElseIfImpl >> condition [
^ condition
]

{ #category : #'as yet unclassified' }
BPEL20ElseIfImpl >> condition: acondition [
^ condition := acondition
]
