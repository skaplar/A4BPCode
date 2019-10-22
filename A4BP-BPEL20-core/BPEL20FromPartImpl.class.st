Class {
	#name : #BPEL20FromPartImpl,
	#superclass : #BPEL20BPELExtensibleElementImpl,
	#instVars : [
		'partName',
		'toVariable',
		'part'
	],
	#category : #'A4BP-BPEL20-core-model'
}

{ #category : #'as yet unclassified' }
BPEL20FromPartImpl class >> annotation [
<MSEClass: #BPEL20FromPartImpl  super: #BPEL20BPELExtensibleElementImpl >
<package: #'A4BP-BPEL20-core' >
]

{ #category : #'as yet unclassified' }
BPEL20FromPartImpl >> part [
^ part
]

{ #category : #'as yet unclassified' }
BPEL20FromPartImpl >> part: apart [
^ part := apart
]

{ #category : #'as yet unclassified' }
BPEL20FromPartImpl >> partName [
^ partName
]

{ #category : #'as yet unclassified' }
BPEL20FromPartImpl >> partName: apartName [
^ partName := apartName
]

{ #category : #'as yet unclassified' }
BPEL20FromPartImpl >> toVariable [
^ toVariable
]

{ #category : #'as yet unclassified' }
BPEL20FromPartImpl >> toVariable: atoVariable [
^ toVariable := atoVariable
]
