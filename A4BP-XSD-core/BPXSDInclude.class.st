Class {
	#name : #BPXSDInclude,
	#superclass : #BPXSDNamedElement,
	#instVars : [
		'namespace',
		'schemaLocation'
	],
	#category : #'A4BP-XSD-core-model'
}

{ #category : #'as yet unclassified' }
BPXSDInclude class >> annotation [
<MSEClass: #BPXSDInclude  super: #BPXSDNamedElement >
<package: #'A4BP-XSD-core' >
]

{ #category : #builder }
BPXSDInclude class >> fillElementsIn: aBPObj from: document [
	aBPObj namespace: (document attributeAt: BPBPELParserTagsXMLRef atrNamespace).
	aBPObj schemaLocation: (document attributeAt: BPBPELParserTagsXMLRef atrSchemaLocation).
	^ aBPObj
]

{ #category : #visitor }
BPXSDInclude >> accept: aVisitor [
	^ aVisitor visitBPXSDInclude: self
]

{ #category : #getset }
BPXSDInclude >> namespace [
	^ namespace
]

{ #category : #getset }
BPXSDInclude >> namespace: aString [
	^ namespace := aString
]

{ #category : #getset }
BPXSDInclude >> schemaLocation [
	^ schemaLocation
]

{ #category : #getset }
BPXSDInclude >> schemaLocation: aString [
	^ schemaLocation := aString
]
