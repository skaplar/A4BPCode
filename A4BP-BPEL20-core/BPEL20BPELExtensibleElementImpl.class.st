Class {
	#name : #BPEL20BPELExtensibleElementImpl,
	#superclass : #BPEL20Object,
	#instVars : [
		'fTransients',
		'documentationESet',
		'documentation'
	],
	#category : #'A4BP-BPEL20-core-model'
}

{ #category : #'as yet unclassified' }
BPEL20BPELExtensibleElementImpl class >> annotation [
<MSEClass: #BPEL20BPELExtensibleElementImpl  super: #BPEL20Object >
<package: #'A4BP-BPEL20-core' >
]

{ #category : #'as yet unclassified' }
BPEL20BPELExtensibleElementImpl >> documentation [
^ documentation
]

{ #category : #'as yet unclassified' }
BPEL20BPELExtensibleElementImpl >> documentation: adocumentation [
^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPEL20BPELExtensibleElementImpl >> documentationESet [
^ documentationESet
]

{ #category : #'as yet unclassified' }
BPEL20BPELExtensibleElementImpl >> documentationESet: adocumentationESet [
^ documentationESet := adocumentationESet
]

{ #category : #'as yet unclassified' }
BPEL20BPELExtensibleElementImpl >> fTransients [
^ fTransients
]

{ #category : #'as yet unclassified' }
BPEL20BPELExtensibleElementImpl >> fTransients: afTransients [
^ fTransients := afTransients
]
