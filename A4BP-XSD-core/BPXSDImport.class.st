Class {
	#name : #BPXSDImport,
	#superclass : #BPXSDNamedElement,
	#instVars : [
		'namespace',
		'schemaLocation'
	],
	#category : #'A4BP-XSD-core-model'
}

{ #category : #'as yet unclassified' }
BPXSDImport class >> annotation [
<MSEClass: #BPXSDImport  super: #BPXSDNamedElement >
<package: #'A4BP-XSD-core' >
]

{ #category : #builder }
BPXSDImport class >> fillElementsIn: aBPObj from: document [
	aBPObj namespace: (document attributeAt: BPBPELParserTagsXMLRef atrNamespace).
	aBPObj schemaLocation: (document attributeAt: BPBPELParserTagsXMLRef atrSchemaLocation).
	^ aBPObj
]

{ #category : #visitor }
BPXSDImport >> accept: aVisitor [
	^ aVisitor visitBPXSDImport: self
]

{ #category : #getset }
BPXSDImport >> namespace [
	^ namespace
]

{ #category : #getset }
BPXSDImport >> namespace: aString [
	^ namespace := aString
]

{ #category : #getset }
BPXSDImport >> schemaLocation [
	^ schemaLocation
]

{ #category : #getset }
BPXSDImport >> schemaLocation: aString [
	^ schemaLocation := aString
]
