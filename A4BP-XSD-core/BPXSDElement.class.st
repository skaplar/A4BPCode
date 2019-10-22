Class {
	#name : #BPXSDElement,
	#superclass : #BPXSDNamedElement,
	#instVars : [
		'type',
		'stType',
		'lstElements'
	],
	#category : #'A4BP-XSD-core-model'
}

{ #category : #'as yet unclassified' }
BPXSDElement class >> annotation [
<MSEClass: #BPXSDElement  super: #BPXSDNamedElement >
<package: #'A4BP-XSD-core' >
]

{ #category : #builder }
BPXSDElement class >> fillElementsIn: aBPObj from: document [
	| visitor |
	aBPObj stType: (self readString: document at: BPBPELParserTagsXMLRef atrType).
	"for each element find tags xml"
	visitor := BPBuilderSetNodesinBPXSDElementVisitor new.
	visitor element: aBPObj.
	self fillElementsIn: aBPObj from: document visitor: visitor.
]

{ #category : #visitor }
BPXSDElement >> accept: aVisitor [
	^ aVisitor visitBPXSDElement: self.
]

{ #category : #addding }
BPXSDElement >> addElement: aElement [
	lstElements add: aElement.
	type := aElement
]

{ #category : #all }
BPXSDElement >> allElements [
	| lst |
	lst := OrderedCollection new.
	lst addAll: lstElements.
	lstElements do: [ :el | el fillElementsIn: lst ].
	lst addAll: type allElements.
	^ lst
]

{ #category : #'build-relations' }
BPXSDElement >> buildMeRelations [
	| nameElement bpGType |
	"if the code dont find the type is probably that the definitions is primitive element like xsd:String"
	type = A4BPEmptyObj instance
		ifTrue: [ 
			(stType ~= nil or: (stType ~= ''))
				ifTrue: [ 
					bpGType := BPGenericType newGenericType: self.
					nameElement := mySchema findElementByType: bpGType.
					nameElement ifNotNil: [ type := nameElement ] ] ].
	
]

{ #category : #all }
BPXSDElement >> fillElementsIn: lst [
	lst addAll: self allElements.
	^ lst
]

{ #category : #initialization }
BPXSDElement >> initialize [
	super initialize.
	lstElements := OrderedCollection new.
	type := A4BPEmptyObj instance
]

{ #category : #getset }
BPXSDElement >> stType [
	^ stType
]

{ #category : #getset }
BPXSDElement >> stType: aString [
	stType := aString
]

{ #category : #getset }
BPXSDElement >> type [
	^ type
]

{ #category : #getset }
BPXSDElement >> type: aType [
	type:=aType
]
