Class {
	#name : #BPEL20LinkImpl,
	#superclass : #BPEL20BPELExtensibleElementImpl,
	#instVars : [
		'name',
		'NAME_EDEFAULT',
		'sources',
		'targets'
	],
	#category : #'A4BP-BPEL20-core-model'
}

{ #category : #'as yet unclassified' }
BPEL20LinkImpl class >> annotation [
<MSEClass: #BPEL20LinkImpl  super: #BPEL20BPELExtensibleElementImpl >
<package: #'A4BP-BPEL20-core' >
]

{ #category : #'as yet unclassified' }
BPEL20LinkImpl >> NAME_EDEFAULT [
^ NAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPEL20LinkImpl >> NAME_EDEFAULT: aNAME_EDEFAULT [
^ NAME_EDEFAULT := aNAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPEL20LinkImpl >> sources [
^ sources
]

{ #category : #'as yet unclassified' }
BPEL20LinkImpl >> sources: asources [
^ sources := asources
]

{ #category : #'as yet unclassified' }
BPEL20LinkImpl >> targets [
^ targets
]

{ #category : #'as yet unclassified' }
BPEL20LinkImpl >> targets: atargets [
^ targets := atargets
]
