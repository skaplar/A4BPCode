Class {
	#name : #BPWSDLPart,
	#superclass : #BPWSDLObject,
	#instVars : [
		'element',
		'bpWSDLElement'
	],
	#category : #'A4BP-WSDL-core-model'
}

{ #category : #'as yet unclassified' }
BPWSDLPart class >> annotation [
<MSEClass: #BPWSDLPart  super: #BPWSDLObject >
<package: #'A4BP-WSDL-core' >
]

{ #category : #builder }
BPWSDLPart class >> fillElementsIn: aBPObj from: document [
	| visitor |
	visitor := BPBuilderSetNodesinBPWSDLPartVisitor new.
	visitor element: aBPObj.
	self fillElementsIn: aBPObj from: document visitor: visitor.
	aBPObj element: (document attributeAt: BPBPELParserTagsXMLRef atrElement).
	^ aBPObj
]

{ #category : #visitor }
BPWSDLPart >> accept: aVisitor [
	^ aVisitor visitBPWSDLPart: self
]

{ #category : #getset }
BPWSDLPart >> element [
	^ element
]

{ #category : #getset }
BPWSDLPart >> element: aElement [
	element := aElement
]

{ #category : #'build-relations' }
BPWSDLPart >> findDefType: aDef [
	| array |
	"Example: element='client:process'"
	array := element subStrings: ':'.
	aDef element = (array at: 2)
		ifTrue: [ 
			aDef prefix: (array at: 1).
			^ myWSDL findDefTypeInXSD: aDef ].
	^ nil
]

{ #category : #getset }
BPWSDLPart >> stType [
	^ element
]
