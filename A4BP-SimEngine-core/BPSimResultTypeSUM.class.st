Class {
	#name : #BPSimResultTypeSUM,
	#superclass : #BPSimResultType,
	#category : #'A4BP-SimEngine-core-model'
}

{ #category : #'as yet unclassified' }
BPSimResultTypeSUM class >> annotation [
<MSEClass: #BPSimResultTypeSUM  super: #BPSimResultType >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #'as yet unclassified' }
BPSimResultTypeSUM class >> type [
	^ 'SUM'
]

{ #category : #calculate }
BPSimResultTypeSUM >> calculate: result [
	| tValue |
	tValue := result nextValue.
	value:= value + tValue.
]
