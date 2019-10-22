Class {
	#name : #BPEL20ReplyImpl,
	#superclass : #BPEL20PartnerActivityImpl,
	#instVars : [
		'variable',
		'messageExchange',
		'FAULT_NAME_EDEFAULT',
		'toParts',
		'faultName'
	],
	#category : #'A4BP-BPEL20-core-model'
}

{ #category : #'as yet unclassified' }
BPEL20ReplyImpl class >> annotation [
<MSEClass: #BPEL20ReplyImpl  super: #BPEL20PartnerActivityImpl >
<package: #'A4BP-BPEL20-core' >
]

{ #category : #'as yet unclassified' }
BPEL20ReplyImpl >> FAULT_NAME_EDEFAULT [
^ FAULT_NAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPEL20ReplyImpl >> FAULT_NAME_EDEFAULT: aFAULT_NAME_EDEFAULT [
^ FAULT_NAME_EDEFAULT := aFAULT_NAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPEL20ReplyImpl >> faultName [
^ faultName
]

{ #category : #'as yet unclassified' }
BPEL20ReplyImpl >> faultName: afaultName [
^ faultName := afaultName
]

{ #category : #'as yet unclassified' }
BPEL20ReplyImpl >> messageExchange [
^ messageExchange
]

{ #category : #'as yet unclassified' }
BPEL20ReplyImpl >> messageExchange: amessageExchange [
^ messageExchange := amessageExchange
]

{ #category : #'as yet unclassified' }
BPEL20ReplyImpl >> toParts [
^ toParts
]

{ #category : #'as yet unclassified' }
BPEL20ReplyImpl >> toParts: atoParts [
^ toParts := atoParts
]

{ #category : #'as yet unclassified' }
BPEL20ReplyImpl >> variable [
^ variable
]

{ #category : #'as yet unclassified' }
BPEL20ReplyImpl >> variable: avariable [
^ variable := avariable
]
