Class {
	#name : #A4BPAbstractCollection,
	#superclass : #Object,
	#instVars : [
		'collection'
	],
	#category : #'A4BP-core-model-collections'
}

{ #category : #'as yet unclassified' }
A4BPAbstractCollection class >> annotation [
<abstract>
<MSEClass: #A4BPAbstractCollection  super: #Object >
<package: #'A4BP-core' >
]

{ #category : #adding }
A4BPAbstractCollection >> add: anObject [
	^ collection add: anObject
]

{ #category : #adding }
A4BPAbstractCollection >> at: anKey [
	^ collection collect:[ :e | e = anKey].
]

{ #category : #adding }
A4BPAbstractCollection >> collect:aBlock [
	^ collection collect:aBlock
]

{ #category : #adding }
A4BPAbstractCollection >> collect: aBlock as: value [
	^ collection collect: aBlock as: value
]

{ #category : #adding }
A4BPAbstractCollection >> collection [
	^ collection
]

{ #category : #adding }
A4BPAbstractCollection >> collection: anObject [
	collection := anObject
]

{ #category : #adding }
A4BPAbstractCollection >> do: aBlock [
	collection do: aBlock
]

{ #category : #adding }
A4BPAbstractCollection >> first [
	^ collection values first
]

{ #category : #adding }
A4BPAbstractCollection >> isCollection [
	^ collection isCollection
]

{ #category : #'as yet unclassified' }
A4BPAbstractCollection >> isEmpty [
	^ self collection isEmpty 
]

{ #category : #adding }
A4BPAbstractCollection >> select:aBlock [
	^ collection select:aBlock
]

{ #category : #adding }
A4BPAbstractCollection >> size [
	^ self collection size
]

{ #category : #adding }
A4BPAbstractCollection >> values [
	^ self collection values
]
