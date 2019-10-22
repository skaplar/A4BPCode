Class {
	#name : #BPEL20CompensateScopeImpl,
	#superclass : #BPEL20ActivityImpl,
	#instVars : [
		'target'
	],
	#category : #'A4BP-BPEL20-core-model'
}

{ #category : #'as yet unclassified' }
BPEL20CompensateScopeImpl class >> annotation [
<MSEClass: #BPEL20CompensateScopeImpl  super: #BPEL20ActivityImpl >
<package: #'A4BP-BPEL20-core' >
]

{ #category : #'as yet unclassified' }
BPEL20CompensateScopeImpl >> target [
^ target
]

{ #category : #'as yet unclassified' }
BPEL20CompensateScopeImpl >> target: atarget [
^ target := atarget
]
