"
A BPOnEvent is xxxxxxxxx.

Instance Variables
	element:		<Object>
	messageType:		<Object>

element
	- xxxxx

messageType
	- xxxxx

"
Class {
	#name : #BPOnEvent,
	#superclass : #BPOnMsgCommon,
	#instVars : [
		'messageType',
		'element'
	],
	#category : #'A4BP-BpelAnalyzer-core-model-bpel'
}

{ #category : #'as yet unclassified' }
BPOnEvent class >> annotation [
<MSEClass: #BPOnEvent  super: #BPOnMsgCommon >
<package: #'A4BP-BpelAnalyzer-core' >
]

{ #category : #visitor }
BPOnEvent >> accept: aVisitor [
	^ aVisitor visitBPOnEvent: self
]
