Class {
	#name : #BPEL20TargetImpl,
	#superclass : #BPEL20BPELExtensibleElementImpl,
	#instVars : [
		'link',
		'activity'
	],
	#category : #'A4BP-BPEL20-core-model'
}

{ #category : #'as yet unclassified' }
BPEL20TargetImpl class >> annotation [
<MSEClass: #BPEL20TargetImpl  super: #BPEL20BPELExtensibleElementImpl >
<package: #'A4BP-BPEL20-core' >
]

{ #category : #'as yet unclassified' }
BPEL20TargetImpl >> activity [
^ activity
]

{ #category : #'as yet unclassified' }
BPEL20TargetImpl >> activity: aactivity [
^ activity := aactivity
]

{ #category : #'as yet unclassified' }
BPEL20TargetImpl >> link [
^ link
]

{ #category : #'as yet unclassified' }
BPEL20TargetImpl >> link: alink [
^ link := alink
]
