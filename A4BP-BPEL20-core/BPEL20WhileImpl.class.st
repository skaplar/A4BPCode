Class {
	#name : #BPEL20WhileImpl,
	#superclass : #BPEL20ActivityImpl,
	#instVars : [
		'condition',
		'activity'
	],
	#category : #'A4BP-BPEL20-core-model'
}

{ #category : #'as yet unclassified' }
BPEL20WhileImpl class >> annotation [
<MSEClass: #BPEL20WhileImpl  super: #BPEL20ActivityImpl >
<package: #'A4BP-BPEL20-core' >
]

{ #category : #'as yet unclassified' }
BPEL20WhileImpl >> activity [
^ activity
]

{ #category : #'as yet unclassified' }
BPEL20WhileImpl >> activity: aactivity [
^ activity := aactivity
]

{ #category : #'as yet unclassified' }
BPEL20WhileImpl >> condition [
^ condition
]

{ #category : #'as yet unclassified' }
BPEL20WhileImpl >> condition: acondition [
^ condition := acondition
]
