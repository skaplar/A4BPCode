Class {
	#name : #BPEL20PartnerActivityImpl,
	#superclass : #BPEL20ActivityImpl,
	#instVars : [
		'correlations',
		'operation',
		'portType',
		'operationName',
		'partnerLink'
	],
	#category : #'A4BP-BPEL20-core-model'
}

{ #category : #'as yet unclassified' }
BPEL20PartnerActivityImpl class >> annotation [
<MSEClass: #BPEL20PartnerActivityImpl  super: #BPEL20ActivityImpl >
<package: #'A4BP-BPEL20-core' >
]

{ #category : #'as yet unclassified' }
BPEL20PartnerActivityImpl >> correlations [
^ correlations
]

{ #category : #'as yet unclassified' }
BPEL20PartnerActivityImpl >> correlations: acorrelations [
^ correlations := acorrelations
]

{ #category : #'as yet unclassified' }
BPEL20PartnerActivityImpl >> operation [
^ operation
]

{ #category : #'as yet unclassified' }
BPEL20PartnerActivityImpl >> operation: aoperation [
^ operation := aoperation
]

{ #category : #'as yet unclassified' }
BPEL20PartnerActivityImpl >> operationName [
^ operationName
]

{ #category : #'as yet unclassified' }
BPEL20PartnerActivityImpl >> operationName: aoperationName [
^ operationName := aoperationName
]

{ #category : #'as yet unclassified' }
BPEL20PartnerActivityImpl >> partnerLink [
^ partnerLink
]

{ #category : #'as yet unclassified' }
BPEL20PartnerActivityImpl >> partnerLink: apartnerLink [
^ partnerLink := apartnerLink
]

{ #category : #'as yet unclassified' }
BPEL20PartnerActivityImpl >> portType [
^ portType
]

{ #category : #'as yet unclassified' }
BPEL20PartnerActivityImpl >> portType: aportType [
^ portType := aportType
]
