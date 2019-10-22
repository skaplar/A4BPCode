Class {
	#name : #BPEL20ImportImpl,
	#superclass : #BPEL20BPELExtensibleElementImpl,
	#instVars : [
		'NAMESPACE_EDEFAULT',
		'LOCATION_EDEFAULT',
		'namespace',
		'IMPORT_TYPE_EDEFAULT',
		'location',
		'importType'
	],
	#category : #'A4BP-BPEL20-core-model'
}

{ #category : #'as yet unclassified' }
BPEL20ImportImpl class >> annotation [
<MSEClass: #BPEL20ImportImpl  super: #BPEL20BPELExtensibleElementImpl >
<package: #'A4BP-BPEL20-core' >
]

{ #category : #'as yet unclassified' }
BPEL20ImportImpl >> IMPORT_TYPE_EDEFAULT [
^ IMPORT_TYPE_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPEL20ImportImpl >> IMPORT_TYPE_EDEFAULT: aIMPORT_TYPE_EDEFAULT [
^ IMPORT_TYPE_EDEFAULT := aIMPORT_TYPE_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPEL20ImportImpl >> LOCATION_EDEFAULT [
^ LOCATION_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPEL20ImportImpl >> LOCATION_EDEFAULT: aLOCATION_EDEFAULT [
^ LOCATION_EDEFAULT := aLOCATION_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPEL20ImportImpl >> NAMESPACE_EDEFAULT [
^ NAMESPACE_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPEL20ImportImpl >> NAMESPACE_EDEFAULT: aNAMESPACE_EDEFAULT [
^ NAMESPACE_EDEFAULT := aNAMESPACE_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPEL20ImportImpl >> importType [
^ importType
]

{ #category : #'as yet unclassified' }
BPEL20ImportImpl >> importType: aimportType [
^ importType := aimportType
]

{ #category : #'as yet unclassified' }
BPEL20ImportImpl >> location [
^ location
]

{ #category : #'as yet unclassified' }
BPEL20ImportImpl >> location: alocation [
^ location := alocation
]

{ #category : #'as yet unclassified' }
BPEL20ImportImpl >> namespace [
^ namespace
]

{ #category : #'as yet unclassified' }
BPEL20ImportImpl >> namespace: anamespace [
^ namespace := anamespace
]
