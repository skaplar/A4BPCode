Class {
	#name : #BPEL20ElseImpl,
	#superclass : #BPEL20BPELExtensibleElementImpl,
	#instVars : [
		'activity'
	],
	#category : #'A4BP-BPEL20-core-model'
}

{ #category : #'as yet unclassified' }
BPEL20ElseImpl class >> annotation [
<MSEClass: #BPEL20ElseImpl  super: #BPEL20BPELExtensibleElementImpl >
<package: #'A4BP-BPEL20-core' >
]

{ #category : #'as yet unclassified' }
BPEL20ElseImpl >> activity [
^ activity
]

{ #category : #'as yet unclassified' }
BPEL20ElseImpl >> activity: aactivity [
^ activity := aactivity
]
