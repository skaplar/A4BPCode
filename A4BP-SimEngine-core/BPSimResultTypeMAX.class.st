Class {
	#name : #BPSimResultTypeMAX,
	#superclass : #BPSimResultType,
	#category : #'A4BP-SimEngine-core-model'
}

{ #category : #'as yet unclassified' }
BPSimResultTypeMAX class >> annotation [
<MSEClass: #BPSimResultTypeMAX  super: #BPSimResultType >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #'as yet unclassified' }
BPSimResultTypeMAX class >> type [
	^ 'MAX'
]

{ #category : #calculate }
BPSimResultTypeMAX >> calculate: result [
	| tValue |
	tValue := result nextValue.
	tValue > value
		ifTrue: [ value:= tValue ]
]
