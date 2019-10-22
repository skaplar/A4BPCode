Class {
	#name : #BPEL20ExtensionImpl,
	#superclass : #BPEL20BPELExtensibleElementImpl,
	#instVars : [
		'namespace',
		'mustUnderstand',
		'mustUnderstandESet',
		'NAMESPACE_EDEFAULT',
		'MUST_UNDERSTAND_EDEFAULT'
	],
	#category : #'A4BP-BPEL20-core-model'
}

{ #category : #'as yet unclassified' }
BPEL20ExtensionImpl class >> annotation [
<MSEClass: #BPEL20ExtensionImpl  super: #BPEL20BPELExtensibleElementImpl >
<package: #'A4BP-BPEL20-core' >
]

{ #category : #'as yet unclassified' }
BPEL20ExtensionImpl >> MUST_UNDERSTAND_EDEFAULT [
^ MUST_UNDERSTAND_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPEL20ExtensionImpl >> MUST_UNDERSTAND_EDEFAULT: aMUST_UNDERSTAND_EDEFAULT [
^ MUST_UNDERSTAND_EDEFAULT := aMUST_UNDERSTAND_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPEL20ExtensionImpl >> NAMESPACE_EDEFAULT [
^ NAMESPACE_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPEL20ExtensionImpl >> NAMESPACE_EDEFAULT: aNAMESPACE_EDEFAULT [
^ NAMESPACE_EDEFAULT := aNAMESPACE_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPEL20ExtensionImpl >> mustUnderstand [
^ mustUnderstand
]

{ #category : #'as yet unclassified' }
BPEL20ExtensionImpl >> mustUnderstand: amustUnderstand [
^ mustUnderstand := amustUnderstand
]

{ #category : #'as yet unclassified' }
BPEL20ExtensionImpl >> mustUnderstandESet [
^ mustUnderstandESet
]

{ #category : #'as yet unclassified' }
BPEL20ExtensionImpl >> mustUnderstandESet: amustUnderstandESet [
^ mustUnderstandESet := amustUnderstandESet
]

{ #category : #'as yet unclassified' }
BPEL20ExtensionImpl >> namespace [
^ namespace
]

{ #category : #'as yet unclassified' }
BPEL20ExtensionImpl >> namespace: anamespace [
^ namespace := anamespace
]
