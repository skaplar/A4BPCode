Class {
	#name : #BPEL20FaultHandlerImpl,
	#superclass : #BPEL20BPELExtensibleElementImpl,
	#instVars : [
		'catchAll',
		'catchAllESet',
		'catch_'
	],
	#category : #'A4BP-BPEL20-core-model'
}

{ #category : #'as yet unclassified' }
BPEL20FaultHandlerImpl class >> annotation [
<MSEClass: #BPEL20FaultHandlerImpl  super: #BPEL20BPELExtensibleElementImpl >
<package: #'A4BP-BPEL20-core' >
]

{ #category : #'as yet unclassified' }
BPEL20FaultHandlerImpl >> catchAll [
^ catchAll
]

{ #category : #'as yet unclassified' }
BPEL20FaultHandlerImpl >> catchAll: acatchAll [
^ catchAll := acatchAll
]

{ #category : #'as yet unclassified' }
BPEL20FaultHandlerImpl >> catchAllESet [
^ catchAllESet
]

{ #category : #'as yet unclassified' }
BPEL20FaultHandlerImpl >> catchAllESet: acatchAllESet [
^ catchAllESet := acatchAllESet
]

{ #category : #'as yet unclassified' }
BPEL20FaultHandlerImpl >> catch_ [
^ catch_
]

{ #category : #'as yet unclassified' }
BPEL20FaultHandlerImpl >> catch_: acatch_ [
^ catch_ := acatch_
]
