Class {
	#name : #BPEL20CatchImpl,
	#superclass : #BPEL20BPELExtensibleElementImpl,
	#instVars : [
		'faultVariable',
		'faultName',
		'faultElement',
		'FAULT_NAME_EDEFAULT',
		'activity',
		'faultMessageType'
	],
	#category : #'A4BP-BPEL20-core-model'
}

{ #category : #'as yet unclassified' }
BPEL20CatchImpl class >> annotation [
<MSEClass: #BPEL20CatchImpl  super: #BPEL20BPELExtensibleElementImpl >
<package: #'A4BP-BPEL20-core' >
]

{ #category : #'as yet unclassified' }
BPEL20CatchImpl >> FAULT_NAME_EDEFAULT [
^ FAULT_NAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPEL20CatchImpl >> FAULT_NAME_EDEFAULT: aFAULT_NAME_EDEFAULT [
^ FAULT_NAME_EDEFAULT := aFAULT_NAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPEL20CatchImpl >> activity [
^ activity
]

{ #category : #'as yet unclassified' }
BPEL20CatchImpl >> activity: aactivity [
^ activity := aactivity
]

{ #category : #'as yet unclassified' }
BPEL20CatchImpl >> faultElement [
^ faultElement
]

{ #category : #'as yet unclassified' }
BPEL20CatchImpl >> faultElement: afaultElement [
^ faultElement := afaultElement
]

{ #category : #'as yet unclassified' }
BPEL20CatchImpl >> faultMessageType [
^ faultMessageType
]

{ #category : #'as yet unclassified' }
BPEL20CatchImpl >> faultMessageType: afaultMessageType [
^ faultMessageType := afaultMessageType
]

{ #category : #'as yet unclassified' }
BPEL20CatchImpl >> faultName [
^ faultName
]

{ #category : #'as yet unclassified' }
BPEL20CatchImpl >> faultName: afaultName [
^ faultName := afaultName
]

{ #category : #'as yet unclassified' }
BPEL20CatchImpl >> faultVariable [
^ faultVariable
]

{ #category : #'as yet unclassified' }
BPEL20CatchImpl >> faultVariable: afaultVariable [
^ faultVariable := afaultVariable
]
