Class {
	#name : #BPWSDLDefinition,
	#superclass : #BPWSDLObject,
	#instVars : [
		'targetNamespace',
		'lstPartnertLinkTypes',
		'lstXmlns',
		'types',
		'lstMessages',
		'lstPortTypes'
	],
	#category : #'A4BP-WSDL-core-model'
}

{ #category : #'as yet unclassified' }
BPWSDLDefinition class >> annotation [
<MSEClass: #BPWSDLDefinition  super: #BPWSDLObject >
<package: #'A4BP-WSDL-core' >
]

{ #category : #builder }
BPWSDLDefinition class >> fillElementsIn: aBPObj from: document [
	| visitor |
	visitor := BPBuilderSetNodesinBPWSDLDefinitionVisitor new.
	visitor element: aBPObj.
	self fillElementsIn: aBPObj from: document visitor: visitor.
	
	aBPObj targetNamespace:(document attributeAt: 'targetNamespace').

	^ aBPObj 
]

{ #category : #visitor }
BPWSDLDefinition >> accept: aVisitor [
	^ aVisitor visitBPWSDLDefinition: self
]

{ #category : #adding }
BPWSDLDefinition >> addMessage: aMessage [
	lstMessages at: aMessage aName put: aMessage
]

{ #category : #adding }
BPWSDLDefinition >> addPartnerLinkType: aPartnerLink [
	lstPartnertLinkTypes at: aPartnerLink aName put: aPartnerLink
]

{ #category : #adding }
BPWSDLDefinition >> addPortType: aPortType [
	lstPortTypes at: aPortType aName put: aPortType
]

{ #category : #adding }
BPWSDLDefinition >> addType: aType [
	types := aType
]

{ #category : #'build-relations' }
BPWSDLDefinition >> buildRelations: aModel [
	self halt.
]

{ #category : #'build-relations' }
BPWSDLDefinition >> buildRelationsBpXSDSchema: aBPXSDSchema [
	types ~= nil
		ifTrue: [ types buildRelationsBpXSDSchema: aBPXSDSchema ]
]

{ #category : #'build-relations' }
BPWSDLDefinition >> findDefType: aDefType [
	| col |
	col := OrderedCollection new.
	col addAll: lstMessages.
	types ifNotNil:[col add: types].
	col
		do: [ :m | 
			| def |
			def := m findDefType: aDefType.
			def isBPEmtyObj
				ifFalse: [ ^ def ] ].
	^ A4BPEmptyObj instance
]

{ #category : #questions }
BPWSDLDefinition >> haveLazyRefLikeAt: aRef [
	lstPartnertLinkTypes
		do: [ :plnkType | 
			(plnkType isARefOf: aRef)
				ifTrue: [ ^ true ] ].
	^ false
]

{ #category : #initialization }
BPWSDLDefinition >> initialize [
	super initialize.
	lstPartnertLinkTypes := Dictionary new.
	lstXmlns:= Dictionary new.
	lstTypes:= Dictionary new.
	lstMessages:= Dictionary new.
	lstPortTypes:= Dictionary new.
]

{ #category : #getset }
BPWSDLDefinition >> lstMessages [
	^ lstMessages 
]

{ #category : #getset }
BPWSDLDefinition >> lstMessages: aMessages [
	^ lstMessages := aMessages
]

{ #category : #getset }
BPWSDLDefinition >> lstPartnertLinkTypes [
^	lstPartnertLinkTypes
]

{ #category : #getset }
BPWSDLDefinition >> lstPartnertLinkTypes: alstPartnertLinkTypes [
 lstPartnertLinkTypes := alstPartnertLinkTypes.
]

{ #category : #getset }
BPWSDLDefinition >> lstPortTypes [
	^ lstPortTypes
]

{ #category : #getset }
BPWSDLDefinition >> lstPortTypes: aPortTypes [
	^ lstPortTypes := aPortTypes
]

{ #category : #getset }
BPWSDLDefinition >> lstTypes [
	^ types lstSchemas
]

{ #category : #getset }
BPWSDLDefinition >> partnertLinkTypeByName: aPlkName [
	|rel|
	[ rel := lstPartnertLinkTypes at: aPlkName ]
		on: KeyNotFound
		do: [ ^ A4BPEmptyObj instance ].
	^ rel
]

{ #category : #getset }
BPWSDLDefinition >> targetNamespace [
^ targetNamespace
]

{ #category : #getset }
BPWSDLDefinition >> targetNamespace:ptargetNamespace [
 targetNamespace :=ptargetNamespace.
]
