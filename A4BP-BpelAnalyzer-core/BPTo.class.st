"
A BPTo is xxxxxxxxx.

Instance Variables
	bpPartnerLink:		<Object>
	bpVariable:		<Object>
	endPointReference:		<Object>
	expressionLanguage:		<Object>
	part:		<Object>
	property:		<Object>
	query:		<Object>
	queryLanguage:		<Object>

bpPartnerLink
	- xxxxx

bpVariable
	- xxxxx

endPointReference
	- xxxxx

expressionLanguage
	- xxxxx

part
	- xxxxx

property
	- xxxxx

query
	- xxxxx

queryLanguage
	- xxxxx

"
Class {
	#name : #BPTo,
	#superclass : #BPBPELObject,
	#instVars : [
		'query',
		'queryLanguage',
		'endPointReference',
		'expressionLanguage',
		'property',
		'part',
		'bpPartnerLink',
		'bpVariable'
	],
	#category : #'A4BP-BpelAnalyzer-core-model-bpel'
}

{ #category : #'as yet unclassified' }
BPTo class >> annotation [
<MSEClass: #BPTo  super: #BPBPELObject >
<package: #'A4BP-BpelAnalyzer-core' >
]

{ #category : #visitor }
BPTo >> aName [
	aName = ''
		ifTrue: [ ^ A4BPUII18n msg msgBPToName ].
	^ aName
]

{ #category : #visitor }
BPTo >> accept: aVisitor [
	^ aVisitor visitBPTo: self
]
