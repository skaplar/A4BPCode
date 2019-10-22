Class {
	#name : #BPEL20FlowImpl,
	#superclass : #BPEL20ActivityImpl,
	#instVars : [
		'links',
		'completionCondition',
		'activities'
	],
	#category : #'A4BP-BPEL20-core-model'
}

{ #category : #'as yet unclassified' }
BPEL20FlowImpl class >> annotation [
<MSEClass: #BPEL20FlowImpl  super: #BPEL20ActivityImpl >
<package: #'A4BP-BPEL20-core' >
]

{ #category : #'as yet unclassified' }
BPEL20FlowImpl >> activities [
^ activities
]

{ #category : #'as yet unclassified' }
BPEL20FlowImpl >> activities: aactivities [
^ activities := aactivities
]

{ #category : #'as yet unclassified' }
BPEL20FlowImpl >> completionCondition [
^ completionCondition
]

{ #category : #'as yet unclassified' }
BPEL20FlowImpl >> completionCondition: acompletionCondition [
^ completionCondition := acompletionCondition
]

{ #category : #'as yet unclassified' }
BPEL20FlowImpl >> links [
^ links
]

{ #category : #'as yet unclassified' }
BPEL20FlowImpl >> links: alinks [
^ links := alinks
]
