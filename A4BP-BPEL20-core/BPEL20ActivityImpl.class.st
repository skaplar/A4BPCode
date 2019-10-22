Class {
	#name : #BPEL20ActivityImpl,
	#superclass : #BPEL20BPELExtensibleElementImpl,
	#instVars : [
		'suppressJoinFailureESet',
		'NAME_EDEFAULT',
		'SUPPRESS_JOIN_FAILURE_EDEFAULT',
		'suppressJoinFailure',
		'sources',
		'name',
		'targets'
	],
	#category : #'A4BP-BPEL20-core-model'
}

{ #category : #'as yet unclassified' }
BPEL20ActivityImpl class >> annotation [
<MSEClass: #BPEL20ActivityImpl  super: #BPEL20BPELExtensibleElementImpl >
<package: #'A4BP-BPEL20-core' >
]

{ #category : #'as yet unclassified' }
BPEL20ActivityImpl >> NAME_EDEFAULT [
^ NAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPEL20ActivityImpl >> NAME_EDEFAULT: aNAME_EDEFAULT [
^ NAME_EDEFAULT := aNAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPEL20ActivityImpl >> SUPPRESS_JOIN_FAILURE_EDEFAULT [
^ SUPPRESS_JOIN_FAILURE_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPEL20ActivityImpl >> SUPPRESS_JOIN_FAILURE_EDEFAULT: aSUPPRESS_JOIN_FAILURE_EDEFAULT [
^ SUPPRESS_JOIN_FAILURE_EDEFAULT := aSUPPRESS_JOIN_FAILURE_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPEL20ActivityImpl >> sources [
^ sources
]

{ #category : #'as yet unclassified' }
BPEL20ActivityImpl >> sources: asources [
^ sources := asources
]

{ #category : #'as yet unclassified' }
BPEL20ActivityImpl >> suppressJoinFailure [
^ suppressJoinFailure
]

{ #category : #'as yet unclassified' }
BPEL20ActivityImpl >> suppressJoinFailure: asuppressJoinFailure [
^ suppressJoinFailure := asuppressJoinFailure
]

{ #category : #'as yet unclassified' }
BPEL20ActivityImpl >> suppressJoinFailureESet [
^ suppressJoinFailureESet
]

{ #category : #'as yet unclassified' }
BPEL20ActivityImpl >> suppressJoinFailureESet: asuppressJoinFailureESet [
^ suppressJoinFailureESet := asuppressJoinFailureESet
]

{ #category : #'as yet unclassified' }
BPEL20ActivityImpl >> targets [
^ targets
]

{ #category : #'as yet unclassified' }
BPEL20ActivityImpl >> targets: atargets [
^ targets := atargets
]
