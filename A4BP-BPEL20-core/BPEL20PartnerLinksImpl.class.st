Class {
	#name : #BPEL20PartnerLinksImpl,
	#superclass : #BPEL20BPELExtensibleElementImpl,
	#instVars : [
		'children'
	],
	#category : #'A4BP-BPEL20-core-model'
}

{ #category : #'as yet unclassified' }
BPEL20PartnerLinksImpl class >> annotation [
<MSEClass: #BPEL20PartnerLinksImpl  super: #BPEL20BPELExtensibleElementImpl >
<package: #'A4BP-BPEL20-core' >
]

{ #category : #'as yet unclassified' }
BPEL20PartnerLinksImpl >> children [
^ children
]

{ #category : #'as yet unclassified' }
BPEL20PartnerLinksImpl >> children: achildren [
^ children := achildren
]
