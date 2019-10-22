Class {
	#name : #BPEL20CompensationHandlerImpl,
	#superclass : #BPEL20BPELExtensibleElementImpl,
	#instVars : [
		'activity'
	],
	#category : #'A4BP-BPEL20-core-model'
}

{ #category : #'as yet unclassified' }
BPEL20CompensationHandlerImpl class >> annotation [
<MSEClass: #BPEL20CompensationHandlerImpl  super: #BPEL20BPELExtensibleElementImpl >
<package: #'A4BP-BPEL20-core' >
]

{ #category : #'as yet unclassified' }
BPEL20CompensationHandlerImpl >> activity [
^ activity
]

{ #category : #'as yet unclassified' }
BPEL20CompensationHandlerImpl >> activity: aactivity [
^ activity := aactivity
]
