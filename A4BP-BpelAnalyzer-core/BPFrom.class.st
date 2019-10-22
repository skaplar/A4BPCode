Class {
	#name : #BPFrom,
	#superclass : #BPBPELObject,
	#instVars : [
		'literal',
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
BPFrom class >> annotation [
<MSEClass: #BPFrom  super: #BPBPELObject >
<package: #'A4BP-BpelAnalyzer-core' >
]

{ #category : #'as yet unclassified' }
BPFrom >> aName [
	aName = ''
		ifTrue: [ ^ A4BPUII18n msg msgBPFromName ].
	^ aName
]

{ #category : #visitor }
BPFrom >> accept: aVisitor [
	^ aVisitor visitBPFrom: self
]
