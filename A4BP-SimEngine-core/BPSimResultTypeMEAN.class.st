Class {
	#name : #BPSimResultTypeMEAN,
	#superclass : #BPSimResultType,
	#instVars : [
		'sum',
		'count'
	],
	#category : #'A4BP-SimEngine-core-model'
}

{ #category : #'as yet unclassified' }
BPSimResultTypeMEAN class >> annotation [
<MSEClass: #BPSimResultTypeMEAN  super: #BPSimResultType >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #'as yet unclassified' }
BPSimResultTypeMEAN class >> type [
	^ 'MEAN'
]

{ #category : #calculate }
BPSimResultTypeMEAN >> calculate: result [
	| rtValue |
	rtValue := result  nextValue.
	sum := sum + rtValue.
	count := count + 1.
	value := sum / count
]

{ #category : #accessing }
BPSimResultTypeMEAN >> count [
	^ count
]

{ #category : #accessing }
BPSimResultTypeMEAN >> count: anObject [
	count := anObject
]

{ #category : #initialization }
BPSimResultTypeMEAN >> initialize [
	super initialize.
	count := 0.
	sum := 0.
]

{ #category : #accessing }
BPSimResultTypeMEAN >> sum [
	^ sum
]

{ #category : #accessing }
BPSimResultTypeMEAN >> sum: anObject [
	sum := anObject
]
