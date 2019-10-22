Class {
	#name : #BPEL20SourceImpl,
	#superclass : #BPEL20BPELExtensibleElementImpl,
	#instVars : [
		'transitionCondition',
		'activity',
		'link'
	],
	#category : #'A4BP-BPEL20-core-model'
}

{ #category : #'as yet unclassified' }
BPEL20SourceImpl class >> annotation [
<MSEClass: #BPEL20SourceImpl  super: #BPEL20BPELExtensibleElementImpl >
<package: #'A4BP-BPEL20-core' >
]

{ #category : #'as yet unclassified' }
BPEL20SourceImpl >> activity [
^ activity
]

{ #category : #'as yet unclassified' }
BPEL20SourceImpl >> activity: aactivity [
^ activity := aactivity
]

{ #category : #'as yet unclassified' }
BPEL20SourceImpl >> link [
^ link
]

{ #category : #'as yet unclassified' }
BPEL20SourceImpl >> link: alink [
^ link := alink
]

{ #category : #'as yet unclassified' }
BPEL20SourceImpl >> transitionCondition [
^ transitionCondition
]

{ #category : #'as yet unclassified' }
BPEL20SourceImpl >> transitionCondition: atransitionCondition [
^ transitionCondition := atransitionCondition
]
