Class {
	#name : #BPEL20ToImpl,
	#superclass : #BPEL20BPELExtensibleElementImpl,
	#instVars : [
		'variable',
		'property',
		'expression',
		'partName',
		'part',
		'query',
		'partnerLink'
	],
	#category : #'A4BP-BPEL20-core-model'
}

{ #category : #'as yet unclassified' }
BPEL20ToImpl class >> annotation [
<MSEClass: #BPEL20ToImpl  super: #BPEL20BPELExtensibleElementImpl >
<package: #'A4BP-BPEL20-core' >
]

{ #category : #'as yet unclassified' }
BPEL20ToImpl >> expression [
^ expression
]

{ #category : #'as yet unclassified' }
BPEL20ToImpl >> expression: aexpression [
^ expression := aexpression
]

{ #category : #'as yet unclassified' }
BPEL20ToImpl >> part [
^ part
]

{ #category : #'as yet unclassified' }
BPEL20ToImpl >> part: apart [
^ part := apart
]

{ #category : #'as yet unclassified' }
BPEL20ToImpl >> partName [
^ partName
]

{ #category : #'as yet unclassified' }
BPEL20ToImpl >> partName: apartName [
^ partName := apartName
]

{ #category : #'as yet unclassified' }
BPEL20ToImpl >> partnerLink [
^ partnerLink
]

{ #category : #'as yet unclassified' }
BPEL20ToImpl >> partnerLink: apartnerLink [
^ partnerLink := apartnerLink
]

{ #category : #'as yet unclassified' }
BPEL20ToImpl >> property [
^ property
]

{ #category : #'as yet unclassified' }
BPEL20ToImpl >> property: aproperty [
^ property := aproperty
]

{ #category : #'as yet unclassified' }
BPEL20ToImpl >> query [
^ query
]

{ #category : #'as yet unclassified' }
BPEL20ToImpl >> query: aquery [
^ query := aquery
]

{ #category : #'as yet unclassified' }
BPEL20ToImpl >> variable [
^ variable
]

{ #category : #'as yet unclassified' }
BPEL20ToImpl >> variable: avariable [
^ variable := avariable
]
