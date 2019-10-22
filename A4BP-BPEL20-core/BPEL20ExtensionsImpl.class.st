Class {
	#name : #BPEL20ExtensionsImpl,
	#superclass : #BPEL20BPELExtensibleElementImpl,
	#instVars : [
		'children'
	],
	#category : #'A4BP-BPEL20-core-model'
}

{ #category : #'as yet unclassified' }
BPEL20ExtensionsImpl class >> annotation [
<MSEClass: #BPEL20ExtensionsImpl  super: #BPEL20BPELExtensibleElementImpl >
<package: #'A4BP-BPEL20-core' >
]

{ #category : #'as yet unclassified' }
BPEL20ExtensionsImpl >> children [
^ children
]

{ #category : #'as yet unclassified' }
BPEL20ExtensionsImpl >> children: achildren [
^ children := achildren
]
