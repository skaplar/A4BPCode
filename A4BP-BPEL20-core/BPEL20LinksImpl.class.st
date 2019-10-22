Class {
	#name : #BPEL20LinksImpl,
	#superclass : #BPEL20BPELExtensibleElementImpl,
	#instVars : [
		'children'
	],
	#category : #'A4BP-BPEL20-core-model'
}

{ #category : #'as yet unclassified' }
BPEL20LinksImpl class >> annotation [
<MSEClass: #BPEL20LinksImpl  super: #BPEL20BPELExtensibleElementImpl >
<package: #'A4BP-BPEL20-core' >
]

{ #category : #'as yet unclassified' }
BPEL20LinksImpl >> children [
^ children
]

{ #category : #'as yet unclassified' }
BPEL20LinksImpl >> children: achildren [
^ children := achildren
]
