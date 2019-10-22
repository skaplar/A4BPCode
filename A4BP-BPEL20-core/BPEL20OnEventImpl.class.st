Class {
	#name : #BPEL20OnEventImpl,
	#superclass : #BPEL20BPELExtensibleElementImpl,
	#instVars : [
		'messageType',
		'partnerLink',
		'fromParts',
		'activity',
		'correlations',
		'xsdElement',
		'portType',
		'messageExchange',
		'correlationSets',
		'variable',
		'operation',
		'operationName'
	],
	#category : #'A4BP-BPEL20-core-model'
}

{ #category : #'as yet unclassified' }
BPEL20OnEventImpl class >> annotation [
<MSEClass: #BPEL20OnEventImpl  super: #BPEL20BPELExtensibleElementImpl >
<package: #'A4BP-BPEL20-core' >
]

{ #category : #'as yet unclassified' }
BPEL20OnEventImpl >> activity [
^ activity
]

{ #category : #'as yet unclassified' }
BPEL20OnEventImpl >> activity: aactivity [
^ activity := aactivity
]

{ #category : #'as yet unclassified' }
BPEL20OnEventImpl >> correlationSets [
^ correlationSets
]

{ #category : #'as yet unclassified' }
BPEL20OnEventImpl >> correlationSets: acorrelationSets [
^ correlationSets := acorrelationSets
]

{ #category : #'as yet unclassified' }
BPEL20OnEventImpl >> correlations [
^ correlations
]

{ #category : #'as yet unclassified' }
BPEL20OnEventImpl >> correlations: acorrelations [
^ correlations := acorrelations
]

{ #category : #'as yet unclassified' }
BPEL20OnEventImpl >> fromParts [
^ fromParts
]

{ #category : #'as yet unclassified' }
BPEL20OnEventImpl >> fromParts: afromParts [
^ fromParts := afromParts
]

{ #category : #'as yet unclassified' }
BPEL20OnEventImpl >> messageExchange [
^ messageExchange
]

{ #category : #'as yet unclassified' }
BPEL20OnEventImpl >> messageExchange: amessageExchange [
^ messageExchange := amessageExchange
]

{ #category : #'as yet unclassified' }
BPEL20OnEventImpl >> messageType [
^ messageType
]

{ #category : #'as yet unclassified' }
BPEL20OnEventImpl >> messageType: amessageType [
^ messageType := amessageType
]

{ #category : #'as yet unclassified' }
BPEL20OnEventImpl >> operation [
^ operation
]

{ #category : #'as yet unclassified' }
BPEL20OnEventImpl >> operation: aoperation [
^ operation := aoperation
]

{ #category : #'as yet unclassified' }
BPEL20OnEventImpl >> operationName [
^ operationName
]

{ #category : #'as yet unclassified' }
BPEL20OnEventImpl >> operationName: aoperationName [
^ operationName := aoperationName
]

{ #category : #'as yet unclassified' }
BPEL20OnEventImpl >> partnerLink [
^ partnerLink
]

{ #category : #'as yet unclassified' }
BPEL20OnEventImpl >> partnerLink: apartnerLink [
^ partnerLink := apartnerLink
]

{ #category : #'as yet unclassified' }
BPEL20OnEventImpl >> portType [
^ portType
]

{ #category : #'as yet unclassified' }
BPEL20OnEventImpl >> portType: aportType [
^ portType := aportType
]

{ #category : #'as yet unclassified' }
BPEL20OnEventImpl >> variable [
^ variable
]

{ #category : #'as yet unclassified' }
BPEL20OnEventImpl >> variable: avariable [
^ variable := avariable
]

{ #category : #'as yet unclassified' }
BPEL20OnEventImpl >> xsdElement [
^ xsdElement
]

{ #category : #'as yet unclassified' }
BPEL20OnEventImpl >> xsdElement: axsdElement [
^ xsdElement := axsdElement
]
