Class {
	#name : #BPEL20CatchAllImpl,
	#superclass : #BPEL20BPELExtensibleElementImpl,
	#instVars : [
		'activity'
	],
	#category : #'A4BP-BPEL20-core-model'
}

{ #category : #'as yet unclassified' }
BPEL20CatchAllImpl class >> annotation [
<MSEClass: #BPEL20CatchAllImpl  super: #BPEL20BPELExtensibleElementImpl >
<package: #'A4BP-BPEL20-core' >
]

{ #category : #'as yet unclassified' }
BPEL20CatchAllImpl >> activity [
^ activity
]

{ #category : #'as yet unclassified' }
BPEL20CatchAllImpl >> activity: aactivity [
^ activity := aactivity
]
