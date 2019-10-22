Class {
	#name : #BPXSDSequence,
	#superclass : #BPXSDNamedElement,
	#instVars : [
		'lstElements'
	],
	#category : #'A4BP-XSD-core-model'
}

{ #category : #'as yet unclassified' }
BPXSDSequence class >> annotation [
<MSEClass: #BPXSDSequence  super: #BPXSDNamedElement >
<package: #'A4BP-XSD-core' >
]

{ #category : #builder }
BPXSDSequence class >> fillElementsIn: aBPObj from: document [
	| visitor |
	"for each element find tags xml"
	visitor := BPBuilderSetNodesinBPXSDSequenceVisitor new.
	visitor element: aBPObj.
	self fillElementsIn: aBPObj from: document visitor: visitor.
]

{ #category : #visitor }
BPXSDSequence >> accept: aVisitor [
	^ aVisitor visitBPXSDSequence: self
]

{ #category : #adding }
BPXSDSequence >> addElement: aElement [
	lstElements add: aElement
]

{ #category : #all }
BPXSDSequence >> allElements [
	| lst |
	lst := OrderedCollection new.
	lst addAll: lstElements.
	lstElements do: [ :el | el fillElementsIn: lst ].
	^ lst
]

{ #category : #adding }
BPXSDSequence >> elements [
	^ lstElements
]

{ #category : #initialization }
BPXSDSequence >> initialize [
	super initialize.
	lstElements := OrderedCollection new.
]

{ #category : #adding }
BPXSDSequence >> lstElements [
	^ lstElements
]

{ #category : #adding }
BPXSDSequence >> lstElements: aLstElements [
	lstElements:=aLstElements 
]
