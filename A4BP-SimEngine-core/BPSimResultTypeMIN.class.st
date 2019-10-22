Class {
	#name : #BPSimResultTypeMIN,
	#superclass : #BPSimResultType,
	#category : #'A4BP-SimEngine-core-model'
}

{ #category : #'as yet unclassified' }
BPSimResultTypeMIN class >> annotation [
<MSEClass: #BPSimResultTypeMIN  super: #BPSimResultType >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #'as yet unclassified' }
BPSimResultTypeMIN class >> type [
	^ 'MIN'
]

{ #category : #calculate }
BPSimResultTypeMIN >> calculate: result [
	| tValue |
	tValue := result nextValue.
	tValue < value
		ifTrue: [ value:= tValue ]
]
