Class {
	#name : #BPEL20SequenceImpl,
	#superclass : #BPEL20ActivityImpl,
	#instVars : [
		'activities'
	],
	#category : #'A4BP-BPEL20-core-model'
}

{ #category : #'as yet unclassified' }
BPEL20SequenceImpl class >> annotation [
<MSEClass: #BPEL20SequenceImpl  super: #BPEL20ActivityImpl >
<package: #'A4BP-BPEL20-core' >
]

{ #category : #'as yet unclassified' }
BPEL20SequenceImpl >> activities [
^ activities
]

{ #category : #'as yet unclassified' }
BPEL20SequenceImpl >> activities: aactivities [
^ activities := aactivities
]
