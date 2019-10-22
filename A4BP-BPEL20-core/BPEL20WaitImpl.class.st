Class {
	#name : #BPEL20WaitImpl,
	#superclass : #BPEL20ActivityImpl,
	#instVars : [
		'until',
		'for_'
	],
	#category : #'A4BP-BPEL20-core-model'
}

{ #category : #'as yet unclassified' }
BPEL20WaitImpl class >> annotation [
<MSEClass: #BPEL20WaitImpl  super: #BPEL20ActivityImpl >
<package: #'A4BP-BPEL20-core' >
]

{ #category : #'as yet unclassified' }
BPEL20WaitImpl >> for_ [
^ for_
]

{ #category : #'as yet unclassified' }
BPEL20WaitImpl >> for_: afor_ [
^ for_ := afor_
]

{ #category : #'as yet unclassified' }
BPEL20WaitImpl >> until [
^ until
]

{ #category : #'as yet unclassified' }
BPEL20WaitImpl >> until: auntil [
^ until := auntil
]
