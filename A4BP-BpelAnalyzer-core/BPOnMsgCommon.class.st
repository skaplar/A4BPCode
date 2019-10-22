"
A BPOnMsgCommon is xxxxxxxxx.

Instance Variables
	messageExchange:		<Object>
	operation:		<Object>
	portType:		<Object>

messageExchange
	- xxxxx

operation
	- xxxxx

portType
	- xxxxx

"
Class {
	#name : #BPOnMsgCommon,
	#superclass : #BPBPELObject,
	#instVars : [
		'portType',
		'operation',
		'messageExchange'
	],
	#category : #'A4BP-BpelAnalyzer-core-model-bpel'
}

{ #category : #'as yet unclassified' }
BPOnMsgCommon class >> annotation [
<MSEClass: #BPOnMsgCommon  super: #BPBPELObject >
<package: #'A4BP-BpelAnalyzer-core' >
]

{ #category : #visitor }
BPOnMsgCommon >> accept: aVisitor [
	^ aVisitor visitBPOnMsgCommon: self
]

{ #category : #getset }
BPOnMsgCommon >> messageExchange [
	^ messageExchange
]

{ #category : #accessing }
BPOnMsgCommon >> messageExchange: anObject [
	messageExchange := anObject
]

{ #category : #getset }
BPOnMsgCommon >> operation [
	^ operation
]

{ #category : #accessing }
BPOnMsgCommon >> operation: anObject [
	operation := anObject
]

{ #category : #getset }
BPOnMsgCommon >> portType [
	^ portType
]

{ #category : #accessing }
BPOnMsgCommon >> portType: anObject [
	portType := anObject
]
