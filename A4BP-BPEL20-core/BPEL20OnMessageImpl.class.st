Class {
	#name : #BPEL20OnMessageImpl,
	#superclass : #BPEL20BPELExtensibleElementImpl,
	#instVars : [
		'fromParts',
		'correlations',
		'partnerLink',
		'operationName',
		'activity',
		'variable',
		'portType',
		'messageExchange',
		'operation'
	],
	#category : #'A4BP-BPEL20-core-model'
}

{ #category : #'as yet unclassified' }
BPEL20OnMessageImpl class >> annotation [
<MSEClass: #BPEL20OnMessageImpl  super: #BPEL20BPELExtensibleElementImpl >
<package: #'A4BP-BPEL20-core' >
]

{ #category : #'as yet unclassified' }
BPEL20OnMessageImpl >> activity [
^ activity
]

{ #category : #'as yet unclassified' }
BPEL20OnMessageImpl >> activity: aactivity [
^ activity := aactivity
]

{ #category : #'as yet unclassified' }
BPEL20OnMessageImpl >> correlations [
^ correlations
]

{ #category : #'as yet unclassified' }
BPEL20OnMessageImpl >> correlations: acorrelations [
^ correlations := acorrelations
]

{ #category : #'as yet unclassified' }
BPEL20OnMessageImpl >> fromParts [
^ fromParts
]

{ #category : #'as yet unclassified' }
BPEL20OnMessageImpl >> fromParts: afromParts [
^ fromParts := afromParts
]

{ #category : #'as yet unclassified' }
BPEL20OnMessageImpl >> messageExchange [
^ messageExchange
]

{ #category : #'as yet unclassified' }
BPEL20OnMessageImpl >> messageExchange: amessageExchange [
^ messageExchange := amessageExchange
]

{ #category : #'as yet unclassified' }
BPEL20OnMessageImpl >> operation [
^ operation
]

{ #category : #'as yet unclassified' }
BPEL20OnMessageImpl >> operation: aoperation [
^ operation := aoperation
]

{ #category : #'as yet unclassified' }
BPEL20OnMessageImpl >> operationName [
^ operationName
]

{ #category : #'as yet unclassified' }
BPEL20OnMessageImpl >> operationName: aoperationName [
^ operationName := aoperationName
]

{ #category : #'as yet unclassified' }
BPEL20OnMessageImpl >> partnerLink [
^ partnerLink
]

{ #category : #'as yet unclassified' }
BPEL20OnMessageImpl >> partnerLink: apartnerLink [
^ partnerLink := apartnerLink
]

{ #category : #'as yet unclassified' }
BPEL20OnMessageImpl >> portType [
^ portType
]

{ #category : #'as yet unclassified' }
BPEL20OnMessageImpl >> portType: aportType [
^ portType := aportType
]

{ #category : #'as yet unclassified' }
BPEL20OnMessageImpl >> variable [
^ variable
]

{ #category : #'as yet unclassified' }
BPEL20OnMessageImpl >> variable: avariable [
^ variable := avariable
]
