Class {
	#name : #BPEL20InvokeImpl,
	#superclass : #BPEL20PartnerActivityImpl,
	#instVars : [
		'faultHandler',
		'outputVariable',
		'fromParts',
		'compensationHandler',
		'toParts',
		'inputVariable'
	],
	#category : #'A4BP-BPEL20-core-model'
}

{ #category : #'as yet unclassified' }
BPEL20InvokeImpl class >> annotation [
<MSEClass: #BPEL20InvokeImpl  super: #BPEL20PartnerActivityImpl >
<package: #'A4BP-BPEL20-core' >
]

{ #category : #'as yet unclassified' }
BPEL20InvokeImpl >> compensationHandler [
^ compensationHandler
]

{ #category : #'as yet unclassified' }
BPEL20InvokeImpl >> compensationHandler: acompensationHandler [
^ compensationHandler := acompensationHandler
]

{ #category : #'as yet unclassified' }
BPEL20InvokeImpl >> faultHandler [
^ faultHandler
]

{ #category : #'as yet unclassified' }
BPEL20InvokeImpl >> faultHandler: afaultHandler [
^ faultHandler := afaultHandler
]

{ #category : #'as yet unclassified' }
BPEL20InvokeImpl >> fromParts [
^ fromParts
]

{ #category : #'as yet unclassified' }
BPEL20InvokeImpl >> fromParts: afromParts [
^ fromParts := afromParts
]

{ #category : #'as yet unclassified' }
BPEL20InvokeImpl >> inputVariable [
^ inputVariable
]

{ #category : #'as yet unclassified' }
BPEL20InvokeImpl >> inputVariable: ainputVariable [
^ inputVariable := ainputVariable
]

{ #category : #'as yet unclassified' }
BPEL20InvokeImpl >> outputVariable [
^ outputVariable
]

{ #category : #'as yet unclassified' }
BPEL20InvokeImpl >> outputVariable: aoutputVariable [
^ outputVariable := aoutputVariable
]

{ #category : #'as yet unclassified' }
BPEL20InvokeImpl >> toParts [
^ toParts
]

{ #category : #'as yet unclassified' }
BPEL20InvokeImpl >> toParts: atoParts [
^ toParts := atoParts
]
