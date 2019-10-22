Class {
	#name : #BPEL20OnAlarmImpl,
	#superclass : #BPEL20BPELExtensibleElementImpl,
	#instVars : [
		'repeatEvery',
		'until',
		'for_',
		'activity'
	],
	#category : #'A4BP-BPEL20-core-model'
}

{ #category : #'as yet unclassified' }
BPEL20OnAlarmImpl class >> annotation [
<MSEClass: #BPEL20OnAlarmImpl  super: #BPEL20BPELExtensibleElementImpl >
<package: #'A4BP-BPEL20-core' >
]

{ #category : #'as yet unclassified' }
BPEL20OnAlarmImpl >> activity [
^ activity
]

{ #category : #'as yet unclassified' }
BPEL20OnAlarmImpl >> activity: aactivity [
^ activity := aactivity
]

{ #category : #'as yet unclassified' }
BPEL20OnAlarmImpl >> for_ [
^ for_
]

{ #category : #'as yet unclassified' }
BPEL20OnAlarmImpl >> for_: afor_ [
^ for_ := afor_
]

{ #category : #'as yet unclassified' }
BPEL20OnAlarmImpl >> repeatEvery [
^ repeatEvery
]

{ #category : #'as yet unclassified' }
BPEL20OnAlarmImpl >> repeatEvery: arepeatEvery [
^ repeatEvery := arepeatEvery
]

{ #category : #'as yet unclassified' }
BPEL20OnAlarmImpl >> until [
^ until
]

{ #category : #'as yet unclassified' }
BPEL20OnAlarmImpl >> until: auntil [
^ until := auntil
]
