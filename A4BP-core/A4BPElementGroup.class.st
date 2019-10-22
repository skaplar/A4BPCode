Class {
	#name : #A4BPElementGroup,
	#superclass : #A4BPObject,
	#category : #'A4BP-core-model'
}

{ #category : #adding }
A4BPElementGroup >> addElement: aElement [
	childrens add: aElement
]

{ #category : #adding }
A4BPElementGroup >> addElements: aCollection [
	childrens addAll: aCollection
]

{ #category : #initialization }
A4BPElementGroup >> initialize [
	aName := ''.
	childrens := A4BPCollection new.
]
