Class {
	#name : #BPEL20ToPartImpl,
	#superclass : #BPEL20BPELExtensibleElementImpl,
	#instVars : [
		'part',
		'partName',
		'fromVariable'
	],
	#category : #'A4BP-BPEL20-core-model'
}

{ #category : #'as yet unclassified' }
BPEL20ToPartImpl class >> annotation [
<MSEClass: #BPEL20ToPartImpl  super: #BPEL20BPELExtensibleElementImpl >
<package: #'A4BP-BPEL20-core' >
]

{ #category : #'as yet unclassified' }
BPEL20ToPartImpl >> fromVariable [
^ fromVariable
]

{ #category : #'as yet unclassified' }
BPEL20ToPartImpl >> fromVariable: afromVariable [
^ fromVariable := afromVariable
]

{ #category : #'as yet unclassified' }
BPEL20ToPartImpl >> part [
^ part
]

{ #category : #'as yet unclassified' }
BPEL20ToPartImpl >> part: apart [
^ part := apart
]

{ #category : #'as yet unclassified' }
BPEL20ToPartImpl >> partName [
^ partName
]

{ #category : #'as yet unclassified' }
BPEL20ToPartImpl >> partName: apartName [
^ partName := apartName
]
