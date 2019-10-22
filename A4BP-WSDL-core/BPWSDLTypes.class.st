Class {
	#name : #BPWSDLTypes,
	#superclass : #BPWSDLObject,
	#instVars : [
		'lstSchemas'
	],
	#category : #'A4BP-WSDL-core-model'
}

{ #category : #'as yet unclassified' }
BPWSDLTypes class >> annotation [
<MSEClass: #BPWSDLTypes  super: #BPWSDLObject >
<package: #'A4BP-WSDL-core' >
]

{ #category : #builder }
BPWSDLTypes class >> fillElementsIn: aBPObj from: document [
	| visitor |
	visitor := BPBuilderSetNodesinBPWSDLTypesVisitor new.
	visitor element: aBPObj.
	self fillElementsIn: aBPObj from: document visitor: visitor.
	^ aBPObj
]

{ #category : #visitor }
BPWSDLTypes >> accept: aVisitor [
	^ aVisitor visitBPWSDLTypes: self
]

{ #category : #'build-relations' }
BPWSDLTypes >> addRelation: aRel [
	myWSDL addRelation: aRel
]

{ #category : #getset }
BPWSDLTypes >> addSchema: aXSDSchema [
	lstSchemas at: aXSDSchema namespace put:aXSDSchema 
]

{ #category : #'build-relations' }
BPWSDLTypes >> buildRelationsBpXSDSchema: aBPXSDSchema [
	lstSchemas do: [ :xsd | xsd buildRelationsBpXSDSchema: aBPXSDSchema ]
]

{ #category : #'build-relations' }
BPWSDLTypes >> findDefType: aDefType [
	lstSchemas
		do: [ :schema | 
			| def |
			def := schema findDefType: aDefType.
			def isBPEmtyObj
				ifFalse: [ ^ def ] ].
	^ A4BPEmptyObj instance
]

{ #category : #initialization }
BPWSDLTypes >> initialize [
	super initialize.
	lstSchemas := Dictionary new.
]

{ #category : #getset }
BPWSDLTypes >> lstSchemas [
	lstSchemas 
]
