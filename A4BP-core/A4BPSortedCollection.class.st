Class {
	#name : #A4BPSortedCollection,
	#superclass : #A4BPAbstractCollection,
	#category : #'A4BP-core-model-collections'
}

{ #category : #'as yet unclassified' }
A4BPSortedCollection >> collection [
	collection ifNil:[ collection := SortedCollection new].
	^ collection
]

{ #category : #'as yet unclassified' }
A4BPSortedCollection >> initialize [
	super initialize.
	collection := SortedCollection new
]
