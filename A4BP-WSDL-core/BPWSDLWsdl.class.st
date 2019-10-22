Class {
	#name : #BPWSDLWsdl,
	#superclass : #BPWSDLObject,
	#traits : 'TBPRelations',
	#classTraits : 'TBPRelations classTrait',
	#instVars : [
		'wsdlDefinition',
		'bpRelations',
		'nsNameSpaces',
		'callRelations',
		'implementRelations'
	],
	#category : #'A4BP-WSDL-core-model'
}

{ #category : #'as yet unclassified' }
BPWSDLWsdl class >> annotation [
<MSEClass: #BPWSDLWsdl  super: #BPWSDLObject >
<package: #'A4BP-WSDL-core' >
]

{ #category : #builder }
BPWSDLWsdl class >> fillElementsIn: aBPWSDLWsdl from: document [
	|wsdlDef|
	wsdlDef :=BPWSDLDefinition fromXMLDescription: document in: aBPWSDLWsdl.
	aBPWSDLWsdl wsdlDefinition: wsdlDef.
	aBPWSDLWsdl nsNameSpaces: document nameSpaces.

]

{ #category : #builder }
BPWSDLWsdl class >> fromXMLDescription: document [
	"The argument is a complete description of an XML process"
	| wsdl |
	"is an instante of on WSDLWsdl"
	wsdl := self new.
	self fillBData: document in: wsdl.
	self fillElementsIn: wsdl from: document.
	^ wsdl
]

{ #category : #'as yet unclassified' }
BPWSDLWsdl >> aName [
	aName = ''
		ifTrue: [ ^ self fileName ];
		ifFalse: [ ^ aName ]
]

{ #category : #visitor }
BPWSDLWsdl >> accept: aVisitor [
	^ aVisitor visitBPWSDLwsdl:self.
]

{ #category : #adding }
BPWSDLWsdl >> addCallRelation: aRelation [
	callRelations addRelation: aRelation 
]

{ #category : #adding }
BPWSDLWsdl >> addImplementRelation: aRelation [
	implementRelations addRelation: aRelation 
]

{ #category : #adding }
BPWSDLWsdl >> addRelation: aRelation [
	bpRelations addRelation: aRelation 
]

{ #category : #getset }
BPWSDLWsdl >> allRelations [
	^ bpRelations lstRelations
]

{ #category : #getset }
BPWSDLWsdl >> asString [
	^ self aName
]

{ #category : #accessing }
BPWSDLWsdl >> bpRelations [
	^ bpRelations
]

{ #category : #accessing }
BPWSDLWsdl >> bpRelations: anObject [
	bpRelations := anObject
]

{ #category : #'build-relations' }
BPWSDLWsdl >> buildRelations: aRelation [
	aRelation buildRelationsBpWsdls: self.

]

{ #category : #'build-relations' }
BPWSDLWsdl >> buildRelationsBpPartnerLink: aRelBpPartnerLink [
	"If I have a rel with bpPnlk finish"
	(aRelBpPartnerLink haveLazyRefLikeAt: self)
		ifFalse: [ ^ self ].
	self addRelation: aRelBpPartnerLink bpProcess.
	self addRelation: aRelBpPartnerLink.
	aRelBpPartnerLink buildRelationsBpWsdls: self
]

{ #category : #'build-relations' }
BPWSDLWsdl >> buildRelationsBpProcess: aRelation [
	"the responsability of builRelations is of the process"

	aRelation buildRelationsBpWsdls: self
]

{ #category : #'build-relations' }
BPWSDLWsdl >> buildRelationsBpWsdls: aRelation [
"nothing to do because a relation between wsdls does not make sense for now"
]

{ #category : #'build-relations' }
BPWSDLWsdl >> buildRelationsBpXSDSchema: aBPXSDSchema [
	"find if the xsdSChema have the nameSpace in the reference of the wsdl"
	[ 
	nsNameSpaces at: aBPXSDSchema targetNamespace.
	bpRelations addRelation: aBPXSDSchema ]
		on: Error
		do: [ 
	"when the name space don found in the lst of namespaces is posible that have bean import as a alias in the types"
			self wsdlDefinition buildRelationsBpXSDSchema: aBPXSDSchema.
			 ]
]

{ #category : #getset }
BPWSDLWsdl >> callRelations [
	^ callRelations lstRelations
]

{ #category : #accessing }
BPWSDLWsdl >> callRelations: anObject [
	callRelations := anObject
]

{ #category : #'build-relations' }
BPWSDLWsdl >> findDefType: aDefType [
	^ wsdlDefinition findDefType: aDefType
]

{ #category : #private }
BPWSDLWsdl >> findDefTypeInXSD: aDef [
	"this private method is to find for each xsd schema relations the definition"

	| lstSchema def |
	def := A4BPEmptyObj instance.
	lstSchema := self lstRelations select: [ :rel | rel class = BPXSDSchema ].
	lstSchema
		do: [ :xsd | 
			def := xsd findDefType: aDef.
			def isBPEmtyObj
				ifFalse: [ ^ def ] ].
	^ def
]

{ #category : #getset }
BPWSDLWsdl >> getChildrenNodes [
	| nodes |
	nodes := OrderedCollection new.
	nodes add: bpRelations.
	^ nodes
]

{ #category : #getset }
BPWSDLWsdl >> getRelationAt: aRelation [
	^ self getRelationAtName: aRelation aName
]

{ #category : #getset }
BPWSDLWsdl >> getRelationAtName: pName [
	| rel |
	[ rel := self lstRelations at: pName ]
		on: KeyNotFound
		do: [ ^ A4BPEmptyObj instance ].
	^ rel
]

{ #category : #question }
BPWSDLWsdl >> haveLazyRefLikeAt: aRef [
	^ wsdlDefinition haveLazyRefLikeAt: aRef
	
]

{ #category : #question }
BPWSDLWsdl >> iHaveRelationWith: aRelation [
	^ (self getRelationAt: aRelation ) = aRelation.
]

{ #category : #accessing }
BPWSDLWsdl >> implementRelations [
	^ implementRelations
]

{ #category : #accessing }
BPWSDLWsdl >> implementRelations: anObject [
	implementRelations := anObject
]

{ #category : #initialization }
BPWSDLWsdl >> initialize [
	super initialize.
	bpRelations  := BPRelationsElementsInBPObject new.
	callRelations := BPRelationsElementsInBPObject new.
	implementRelations := BPRelationsElementsInBPObject new.
	nsNameSpaces := Dictionary new.
	fileName:=''.
	myWSDL:= self.
]

{ #category : #question }
BPWSDLWsdl >> isWSDL [
	^ true
]

{ #category : #getset }
BPWSDLWsdl >> label [
	^ aName , '>' , self fileName
]

{ #category : #getset }
BPWSDLWsdl >> lstRelations [
	^ bpRelations lstRelations
]

{ #category : #getset }
BPWSDLWsdl >> nsNameSpaces [
	^ nsNameSpaces
]

{ #category : #getset }
BPWSDLWsdl >> nsNameSpaces: aDictionary [
	nsNameSpaces := aDictionary
]

{ #category : #metrics }
BPWSDLWsdl >> numberOfRelations [
	^ self relations size
]

{ #category : #dsl }
BPWSDLWsdl >> relations [
	^ self lstRelations 
]

{ #category : #getset }
BPWSDLWsdl >> targetNamespace [
	^ wsdlDefinition targetNamespace
]

{ #category : #getset }
BPWSDLWsdl >> wsdlDefinition [
^	wsdlDefinition
]

{ #category : #accessing }
BPWSDLWsdl >> wsdlDefinition: anObject [
	wsdlDefinition := anObject
]
