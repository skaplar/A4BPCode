Class {
	#name : #BPEL20ThrowImpl,
	#superclass : #BPEL20ActivityImpl,
	#instVars : [
		'FAULT_NAME_EDEFAULT',
		'faultName',
		'faultVariable'
	],
	#category : #'A4BP-BPEL20-core-model'
}

{ #category : #'as yet unclassified' }
BPEL20ThrowImpl class >> annotation [
<MSEClass: #BPEL20ThrowImpl  super: #BPEL20ActivityImpl >
<package: #'A4BP-BPEL20-core' >
]

{ #category : #'as yet unclassified' }
BPEL20ThrowImpl >> FAULT_NAME_EDEFAULT [
^ FAULT_NAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPEL20ThrowImpl >> FAULT_NAME_EDEFAULT: aFAULT_NAME_EDEFAULT [
^ FAULT_NAME_EDEFAULT := aFAULT_NAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPEL20ThrowImpl >> faultName [
^ faultName
]

{ #category : #'as yet unclassified' }
BPEL20ThrowImpl >> faultName: afaultName [
^ faultName := afaultName
]

{ #category : #'as yet unclassified' }
BPEL20ThrowImpl >> faultVariable [
^ faultVariable
]

{ #category : #'as yet unclassified' }
BPEL20ThrowImpl >> faultVariable: afaultVariable [
^ faultVariable := afaultVariable
]
