Class {
	#name : #BPEL20TerminationHandlerImpl,
	#superclass : #BPEL20BPELExtensibleElementImpl,
	#instVars : [
		'activity'
	],
	#category : #'A4BP-BPEL20-core-model'
}

{ #category : #'as yet unclassified' }
BPEL20TerminationHandlerImpl class >> annotation [
<MSEClass: #BPEL20TerminationHandlerImpl  super: #BPEL20BPELExtensibleElementImpl >
<package: #'A4BP-BPEL20-core' >
]

{ #category : #'as yet unclassified' }
BPEL20TerminationHandlerImpl >> activity [
^ activity
]

{ #category : #'as yet unclassified' }
BPEL20TerminationHandlerImpl >> activity: aactivity [
^ activity := aactivity
]
