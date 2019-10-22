Class {
	#name : #BPEL20EventHandlerImpl,
	#superclass : #BPEL20BPELExtensibleElementImpl,
	#instVars : [
		'events',
		'alarm'
	],
	#category : #'A4BP-BPEL20-core-model'
}

{ #category : #'as yet unclassified' }
BPEL20EventHandlerImpl class >> annotation [
<MSEClass: #BPEL20EventHandlerImpl  super: #BPEL20BPELExtensibleElementImpl >
<package: #'A4BP-BPEL20-core' >
]

{ #category : #'as yet unclassified' }
BPEL20EventHandlerImpl >> alarm [
^ alarm
]

{ #category : #'as yet unclassified' }
BPEL20EventHandlerImpl >> alarm: aalarm [
^ alarm := aalarm
]

{ #category : #'as yet unclassified' }
BPEL20EventHandlerImpl >> events [
^ events
]

{ #category : #'as yet unclassified' }
BPEL20EventHandlerImpl >> events: aevents [
^ events := aevents
]
