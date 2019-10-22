Class {
	#name : #BPXSDComplexType,
	#superclass : #BPXSDNamedElement,
	#instVars : [
		'lstAtributes',
		'xsdSequence'
	],
	#category : #'A4BP-XSD-core-model'
}

{ #category : #'as yet unclassified' }
BPXSDComplexType class >> annotation [
<MSEClass: #BPXSDComplexType  super: #BPXSDNamedElement >
<package: #'A4BP-XSD-core' >
]

{ #category : #builder }
BPXSDComplexType class >> fillElementsIn: aBPObj from: document [
	| visitor |
	"for each element find tags xml"
	visitor := BPBuilderSetNodesinBPXSDComplexTypeVisitor new.
	visitor element: aBPObj.
	self fillElementsIn: aBPObj from: document visitor: visitor.
]

{ #category : #visitor }
BPXSDComplexType >> accept: aVisitor [
	^ aVisitor visitBPXSDComplexType: self
]

{ #category : #adding }
BPXSDComplexType >> addSimpleType: aXSDSimpleType [
	lstElements at: aXSDSimpleType aName put: aXSDSimpleType
]

{ #category : #all }
BPXSDComplexType >> allElements [
	| lst |
	lst := OrderedCollection new.
	lst addAll: xsdSequence allElements.
	^ lst
]

{ #category : #getset }
BPXSDComplexType >> fillElementsIn: lst [
	lst addAll: self xsdSequence allElements
]

{ #category : #adding }
BPXSDComplexType >> xsdSequence [
	^ xsdSequence
]

{ #category : #adding }
BPXSDComplexType >> xsdSequence: aSequence [
	xsdSequence := aSequence
]
