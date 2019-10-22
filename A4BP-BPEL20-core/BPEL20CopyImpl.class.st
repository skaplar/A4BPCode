Class {
	#name : #BPEL20CopyImpl,
	#superclass : #BPEL20BPELExtensibleElementImpl,
	#instVars : [
		'from',
		'KEEP_SRC_ELEMENT_NAME_EDEFAULT',
		'to',
		'keepSrcElementName',
		'IGNORE_MISSING_FROM_DATA_EDEFAULT',
		'ignoreMissingFromDataESet',
		'keepSrcElementNameESet',
		'ignoreMissingFromData'
	],
	#category : #'A4BP-BPEL20-core-model'
}

{ #category : #'as yet unclassified' }
BPEL20CopyImpl class >> annotation [
<MSEClass: #BPEL20CopyImpl  super: #BPEL20BPELExtensibleElementImpl >
<package: #'A4BP-BPEL20-core' >
]

{ #category : #'as yet unclassified' }
BPEL20CopyImpl >> IGNORE_MISSING_FROM_DATA_EDEFAULT [
^ IGNORE_MISSING_FROM_DATA_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPEL20CopyImpl >> IGNORE_MISSING_FROM_DATA_EDEFAULT: aIGNORE_MISSING_FROM_DATA_EDEFAULT [
^ IGNORE_MISSING_FROM_DATA_EDEFAULT := aIGNORE_MISSING_FROM_DATA_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPEL20CopyImpl >> KEEP_SRC_ELEMENT_NAME_EDEFAULT [
^ KEEP_SRC_ELEMENT_NAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPEL20CopyImpl >> KEEP_SRC_ELEMENT_NAME_EDEFAULT: aKEEP_SRC_ELEMENT_NAME_EDEFAULT [
^ KEEP_SRC_ELEMENT_NAME_EDEFAULT := aKEEP_SRC_ELEMENT_NAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPEL20CopyImpl >> from [
^ from
]

{ #category : #'as yet unclassified' }
BPEL20CopyImpl >> from: afrom [
^ from := afrom
]

{ #category : #'as yet unclassified' }
BPEL20CopyImpl >> ignoreMissingFromData [
^ ignoreMissingFromData
]

{ #category : #'as yet unclassified' }
BPEL20CopyImpl >> ignoreMissingFromData: aignoreMissingFromData [
^ ignoreMissingFromData := aignoreMissingFromData
]

{ #category : #'as yet unclassified' }
BPEL20CopyImpl >> ignoreMissingFromDataESet [
^ ignoreMissingFromDataESet
]

{ #category : #'as yet unclassified' }
BPEL20CopyImpl >> ignoreMissingFromDataESet: aignoreMissingFromDataESet [
^ ignoreMissingFromDataESet := aignoreMissingFromDataESet
]

{ #category : #'as yet unclassified' }
BPEL20CopyImpl >> keepSrcElementName [
^ keepSrcElementName
]

{ #category : #'as yet unclassified' }
BPEL20CopyImpl >> keepSrcElementName: akeepSrcElementName [
^ keepSrcElementName := akeepSrcElementName
]

{ #category : #'as yet unclassified' }
BPEL20CopyImpl >> keepSrcElementNameESet [
^ keepSrcElementNameESet
]

{ #category : #'as yet unclassified' }
BPEL20CopyImpl >> keepSrcElementNameESet: akeepSrcElementNameESet [
^ keepSrcElementNameESet := akeepSrcElementNameESet
]

{ #category : #'as yet unclassified' }
BPEL20CopyImpl >> to [
^ to
]

{ #category : #'as yet unclassified' }
BPEL20CopyImpl >> to: ato [
^ to := ato
]
