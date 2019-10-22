Class {
	#name : #BPXSDSchema,
	#superclass : #BPXSDNamedElement,
	#instVars : [
		'lstComplexTypes',
		'lstSimpleTypes',
		'fileName',
		'fullPath',
		'lstElements',
		'targetNamespace',
		'nsNameSpaces',
		'import',
		'include',
		'schemaLocation',
		'iInternalReference'
	],
	#category : #'A4BP-XSD-core-model'
}

{ #category : #'as yet unclassified' }
BPXSDSchema class >> annotation [
<MSEClass: #BPXSDSchema  super: #BPXSDNamedElement >
<package: #'A4BP-XSD-core' >
]

{ #category : #builder }
BPXSDSchema class >> fillElementsIn: aBPXSDSchema from: document [
	| visitor |
	aBPXSDSchema targetNamespace: (self readString: document at: BPBPELParserTagsXMLRef atrTargetNamespace).
	visitor := BPBuilderSetNodesinBPXSDSchemaVisitor new.
	visitor element: aBPXSDSchema.
	self fillElementsIn: aBPXSDSchema from: document visitor: visitor.
	aBPXSDSchema nsNameSpaces: document nameSpaces.
	aBPXSDSchema buildMeRelations.
	^ aBPXSDSchema
]

{ #category : #getset }
BPXSDSchema >> aName [
	aName = ''
		ifTrue: [ ^ self fileName ];
		ifFalse: [ ^ aName ]
]

{ #category : #visitor }
BPXSDSchema >> accept: aVisitor [
	^ aVisitor visitBPXSDSchema: self
]

{ #category : #adding }
BPXSDSchema >> addComplexType: aXSDComplexType [
	lstComplexTypes at: aXSDComplexType aName put: aXSDComplexType
]

{ #category : #adding }
BPXSDSchema >> addElement: aElement [
	lstElements at: aElement aName put:aElement 
]

{ #category : #adding }
BPXSDSchema >> addImport: aWSDLImport [
	import := aWSDLImport
]

{ #category : #adding }
BPXSDSchema >> addSimpleType: aXSDSimpleType [
	lstSimpleTypes at: aXSDSimpleType aName put: aXSDSimpleType
]

{ #category : #'build-relations' }
BPXSDSchema >> buildMeRelations [
	"Message to start to build my relations into my elements and my types"

	lstElements do: [ :el | el buildMeRelations ].
]

{ #category : #'build-relations' }
BPXSDSchema >> buildRelations: aRelation [
	aRelation buildRelationsBpXSDSchema: self
]

{ #category : #'build-relations' }
BPXSDSchema >> buildRelationsBpProcess: aBPProcess [
	aBPProcess buildRelationsBpXSDSchema: self
]

{ #category : #'build-relations' }
BPXSDSchema >> buildRelationsBpWsdls: aBPWSDL [
	aBPWSDL buildRelationsBpXSDSchema: self.
]

{ #category : #'build-relations' }
BPXSDSchema >> buildRelationsBpXSDSchema: aBPXSDSchema [
	| matchPattern |
	self isInternalReference 
		ifTrue: [ 
			matchPattern := '*' , aBPXSDSchema fileName , '*'.
			(matchPattern match: self schemaLocation)
				ifTrue: [ parent addRelation: aBPXSDSchema ] ]
]

{ #category : #getset }
BPXSDSchema >> elements [
	^ lstElements
]

{ #category : #getset }
BPXSDSchema >> elements: aLstElements [
	lstElements := aLstElements 
]

{ #category : #getset }
BPXSDSchema >> fileName [
	^ fileName
]

{ #category : #getset }
BPXSDSchema >> fileName: aFileName [
	fileName := aFileName
]

{ #category : #finder }
BPXSDSchema >> findDefType: aDefType [
	^ self findNameElement: aDefType element
]

{ #category : #finder }
BPXSDSchema >> findElementByType: bpGType [
	^ self findNameElement: bpGType element.
]

{ #category : #finder }
BPXSDSchema >> findNameElement: aKeyName [
	| el |
	el := A4BPEmptyObj instance.
	[ ^ el := self lstElements at: aKeyName ]
		on: KeyNotFound
		do: [  ].
	[ ^ el := self lstComplexTypes at: aKeyName ]
		on: KeyNotFound
		do: [  ].
	[ ^ el := self lstSimpleTypes at: aKeyName ]
		on: KeyNotFound
		do: [  ].
	^ el
]

{ #category : #getset }
BPXSDSchema >> fullPath [
	^ fullPath
]

{ #category : #getset }
BPXSDSchema >> fullPath: aFullPath [
	fullPath := aFullPath
]

{ #category : #getset }
BPXSDSchema >> iInternalReference: aBool [
	^ iInternalReference := aBool
]

{ #category : #getset }
BPXSDSchema >> import [
	^ import
]

{ #category : #getset }
BPXSDSchema >> import: aImport [
	import := aImport
]

{ #category : #getset }
BPXSDSchema >> include [
	^ include
]

{ #category : #getset }
BPXSDSchema >> include: aInclude [
	^ include :=aInclude 
]

{ #category : #initialization }
BPXSDSchema >> initialize [
	super initialize.
	lstComplexTypes := Dictionary new.
	lstSimpleTypes := Dictionary new.
	lstElements := Dictionary new.
	iInternalReference:=false.
	import := A4BPEmptyObj instance.
	include := A4BPEmptyObj instance.
	mySchema := self.
]

{ #category : #getset }
BPXSDSchema >> isInternalReference [
	^ iInternalReference 
]

{ #category : #questions }
BPXSDSchema >> isSchema [
	^ true
]

{ #category : #getset }
BPXSDSchema >> label [
	^ aName , '>' , self fileName
]

{ #category : #getset }
BPXSDSchema >> lstComplexTypes [
	^ lstComplexTypes
]

{ #category : #getset }
BPXSDSchema >> lstElements [
	^ lstElements
]

{ #category : #getset }
BPXSDSchema >> lstSimpleTypes [
	^ lstSimpleTypes
]

{ #category : #getset }
BPXSDSchema >> namespace [
	^ targetNamespace
]

{ #category : #getset }
BPXSDSchema >> nsNameSpaces [
	^ nsNameSpaces
]

{ #category : #getset }
BPXSDSchema >> nsNameSpaces: aDictionary [
	nsNameSpaces := aDictionary
]

{ #category : #metrics }
BPXSDSchema >> numberOfComplexTypes [
	^ lstComplexTypes size
]

{ #category : #metrics }
BPXSDSchema >> numberOfSimpleTypes [
	^ lstSimpleTypes size
]

{ #category : #getset }
BPXSDSchema >> schemaLocation [
	import isEmptyObj ifFalse: [ ^ import schemaLocation ].
	include isEmptyObj ifFalse: [ ^ include schemaLocation ].
	^ ''
	
]

{ #category : #getset }
BPXSDSchema >> targetNamespace [
	^ targetNamespace
]

{ #category : #getset }
BPXSDSchema >> targetNamespace: aString [
	targetNamespace := aString 
]
