Class {
	#name : #BPEL20ServiceRefImpl,
	#superclass : #BPEL20Object,
	#instVars : [
		'valueNode',
		'VALUE_EDEFAULT',
		'REFERENCE_SCHEME_EDEFAULT',
		'referenceScheme'
	],
	#category : #'A4BP-BPEL20-core-model'
}

{ #category : #'as yet unclassified' }
BPEL20ServiceRefImpl class >> annotation [
<MSEClass: #BPEL20ServiceRefImpl  super: #BPEL20Object >
<package: #'A4BP-BPEL20-core' >
]

{ #category : #'as yet unclassified' }
BPEL20ServiceRefImpl >> REFERENCE_SCHEME_EDEFAULT [
^ REFERENCE_SCHEME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPEL20ServiceRefImpl >> REFERENCE_SCHEME_EDEFAULT: aREFERENCE_SCHEME_EDEFAULT [
^ REFERENCE_SCHEME_EDEFAULT := aREFERENCE_SCHEME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPEL20ServiceRefImpl >> VALUE_EDEFAULT [
^ VALUE_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPEL20ServiceRefImpl >> VALUE_EDEFAULT: aVALUE_EDEFAULT [
^ VALUE_EDEFAULT := aVALUE_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPEL20ServiceRefImpl >> referenceScheme [
^ referenceScheme
]

{ #category : #'as yet unclassified' }
BPEL20ServiceRefImpl >> referenceScheme: areferenceScheme [
^ referenceScheme := areferenceScheme
]

{ #category : #'as yet unclassified' }
BPEL20ServiceRefImpl >> valueNode [
^ valueNode
]

{ #category : #'as yet unclassified' }
BPEL20ServiceRefImpl >> valueNode: avalueNode [
^ valueNode := avalueNode
]
