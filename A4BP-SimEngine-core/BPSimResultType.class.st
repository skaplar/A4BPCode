Class {
	#name : #BPSimResultType,
	#superclass : #BPSimObject,
	#instVars : [
		'value',
		'pv'
	],
	#category : #'A4BP-SimEngine-core-model'
}

{ #category : #'as yet unclassified' }
BPSimResultType class >> COUNT [
	^ BPSimResultTypeCOUNT type
]

{ #category : #'as yet unclassified' }
BPSimResultType class >> MAX [
	^ BPSimResultTypeMAX type
]

{ #category : #'as yet unclassified' }
BPSimResultType class >> MEAN [
	^ BPSimResultTypeMEAN type
]

{ #category : #'as yet unclassified' }
BPSimResultType class >> MIN [
	^ BPSimResultTypeMIN type
]

{ #category : #'as yet unclassified' }
BPSimResultType class >> SUM [
	^ BPSimResultTypeSUM type
]

{ #category : #'as yet unclassified' }
BPSimResultType class >> VALUE [
	^ BPSimResultTypeVALUE type
]

{ #category : #'as yet unclassified' }
BPSimResultType class >> annotation [
<MSEClass: #BPSimResultType  super: #BPSimObject >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #'as yet unclassified' }
BPSimResultType class >> type [
	^ ''
]

{ #category : #'as yet unclassified' }
BPSimResultType class >> typesClass [
	^ Array
		with: BPSimResultTypeVALUE
		with: BPSimResultTypeMIN
		with: BPSimResultTypeMAX
		with: BPSimResultTypeMEAN
		with: BPSimResultTypeCOUNT
		with: BPSimResultTypeSUM
]

{ #category : #'as yet unclassified' }
BPSimResultType class >> typesInstances [
	^ Array
		with: BPSimResultTypeVALUE new
		with: BPSimResultTypeMIN new
		with: BPSimResultTypeMAX  new
		with: BPSimResultTypeMEAN  new
		with: BPSimResultTypeCOUNT  new
		with: BPSimResultTypeSUM  new
]

{ #category : #accessing }
BPSimResultType >> calculate: result [

]

{ #category : #initialization }
BPSimResultType >> initialize [
	super initialize.
	value := 0
]

{ #category : #getset }
BPSimResultType >> nextValue [
	^ pv nextValue
]

{ #category : #accessing }
BPSimResultType >> pv [
	^ pv
]

{ #category : #accessing }
BPSimResultType >> pv: anPv [
	pv := anPv
]

{ #category : #accessing }
BPSimResultType >> type [
	^ self class type
]

{ #category : #accessing }
BPSimResultType >> v [
	^ value
]

{ #category : #accessing }
BPSimResultType >> v: v [
	self value:v
]

{ #category : #accessing }
BPSimResultType >> value: anObject [
	value := anObject
]
