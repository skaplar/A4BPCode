Class {
	#name : #A4BPDBController,
	#superclass : #Object,
	#classInstVars : [
		'currentRepo'
	],
	#category : #'A4BP-DB'
}

{ #category : #'as yet unclassified' }
A4BPDBController class >> annotation [
<MSEClass: #A4BPDBController  super: #Object >
<package: #'A4BP-DB' >
]

{ #category : #'as yet unclassified' }
A4BPDBController class >> current [
	currentRepo ifNil:[ currentRepo := nil].
	^ currentRepo 
]
