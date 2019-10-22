Class {
	#name : #A4BPObject,
	#superclass : #Object,
	#instVars : [
		'aName',
		'parent',
		'childrens',
		'text',
		'myDocument',
		'id',
		'localName'
	],
	#category : #'A4BP-core-model'
}

{ #category : #meta }
A4BPObject class >> annotation [
	<abstract>
	<MSEClass: #A4BPObject super: #MooseEntity>
	<package: #A4BP>
]

{ #category : #doForAllChield }
A4BPObject class >> fillBData: document in: aBPObject [
	aBPObject myDocument: document.
	aBPObject aName: (self readName: document).
	aBPObject id: (self readId: document).
	aBPObject id = '' ifTrue: [ aBPObject id: UUID new asString ].
	aBPObject text: document asString.
	^ aBPObject
]

{ #category : #doForAllChield }
A4BPObject class >> fillBDataUsingReflection: document in: obj [
	obj localName: document localName.
	self
		instanceVariableNamesDo: [ :v | 
			| value |
			value := self readStringOrEmpty: document at: v asString.
			value = '' ifFalse: [ 				
				obj setUsingReflection: v obj: value ] ].
	^ obj 
]

{ #category : #doForAllChield }
A4BPObject class >> fillElementsIn: aBPObj from: document [
	^ aBPObj 
]

{ #category : #doForAllChield }
A4BPObject class >> fillElementsIn: aBPObject from: document visitor: visitor [
	self
		fillElementsIn: aBPObject
		from: document
		visitor: visitor
		tagRef: A4BPParserTagsXMLRef
]

{ #category : #doForAllChield }
A4BPObject class >> fillElementsIn: obj from: document visitor: visitor tagRef: aTagRef [
	document nodes do: [ :n | 
		n isStringValue
		ifTrue: [ obj value: n string ];
		ifFalse: [ 
			|refTag bpElement localName|
			localName := n localName.
			"localName = 'userTask' ifTrue:[self halt.]."
			refTag := aTagRef getClassBPBaseOnTypeName: localName.
			bpElement := refTag objclass fromXMLDescription: n in: obj.
			bpElement accept: visitor 
		]
	]
]

{ #category : #doForAllChield }
A4BPObject class >> fillElementsIn: obj from: document withMeta: metaDocument [
	self
		fillElementsIn: obj
		from: document
		withMeta: metaDocument
		tagRef: A4BPParserTagsXMLRef
]

{ #category : #doForAllChield }
A4BPObject class >> fillElementsIn: obj from: document withMeta: metaDocument  tagRef: aTagRef [
	document nodes
		do: [ :n | 
			n isStringValue
				ifTrue: [ obj value: n string ];
				ifFalse: [ 
						| nName nType refTag bpElement |
						nName := n localName.
						nType := metaDocument getTypeName: nName.
						refTag := aTagRef getClassBPBaseOnTypeName: nType.
						bpElement := refTag objclass fromXMLDescription: n withMeta: metaDocument.
						obj setUsingReflection: nName obj: bpElement.
						obj setUsingReflection: nName obj: bpElement withMeta: metaDocument
						] ].
	^ obj
]

{ #category : #parser }
A4BPObject class >> fromXMLDescription: document [
	| obj |
	obj := self new.
	self fillBData: document in: obj.
	self fillElementsIn: obj from: document.
	^ obj
]

{ #category : #parser }
A4BPObject class >> fromXMLDescription: document in: parent [
	| aBPObj |
	aBPObj := self new.
	self fillBData: document in: aBPObj.
	aBPObj parent: parent.
	self fillElementsIn: aBPObj from: document.
	^ aBPObj
]

{ #category : #parser }
A4BPObject class >> fromXMLDescription: document withMeta: metaDocument [
	| obj |
	obj := self new.
	self fillBData: document in: obj.
	self fillBDataUsingReflection: document in: obj.
	self fillElementsIn: obj from: document withMeta: metaDocument.
	^ obj
]

{ #category : #parser }
A4BPObject class >> readBoolean: document at: tag [
	^ [ (document attributeAt: tag) = 'true']
		on: MessageNotUnderstood
		do: [ ^ false ]
]

{ #category : #doForAllChield }
A4BPObject class >> readContentString: document [
	^ [ document contentString ]
		on: MessageNotUnderstood
		do: [ ^ document asString ]
]

{ #category : #doForAllChield }
A4BPObject class >> readId: document [
	^ [ document attributeAt: 'id' ]
		on: MessageNotUnderstood
		do: [ ^ document asString ]
]

{ #category : #parser }
A4BPObject class >> readInt: document at: tag [
	^ [ (document attributeAt: tag) asInteger ]
		on: MessageNotUnderstood
		do: [ ^ 0 ]
]

{ #category : #doForAllChield }
A4BPObject class >> readName: document [
	^ [ document attributeAt: 'name' ]
		on: MessageNotUnderstood
		do: [ ^ document asString ]
]

{ #category : #parser }
A4BPObject class >> readString: document at: tag [
	^ [ document attributeAt: tag ]
		on: Error
		do: [ ^ document asString ]
]

{ #category : #parser }
A4BPObject class >> readStringOrEmpty: document at: tag [
	^ [ document attributeAt: tag ]
		on: Error
		do: [ ^ '' ]
]

{ #category : #getset }
A4BPObject >> aName [
	^ aName
]

{ #category : #getset }
A4BPObject >> aName: pname [
	aName := pname
]

{ #category : #visitor }
A4BPObject >> accept: aVisitor [
	^ aVisitor visitA4BPObject: self
]

{ #category : #doNothing }
A4BPObject >> addActivity: aBPActivity [
]

{ #category : #getset }
A4BPObject >> addChildren: aModel [
	self childrens add:aModel.
]

{ #category : #doNothing }
A4BPObject >> addRelation: aRel [
]

{ #category : #getset }
A4BPObject >> allChildrenNodes [
	^ self allChildrens
]

{ #category : #getset }
A4BPObject >> allChildrens [
	|lst|
	lst:=OrderedCollection new.
	lst addAll:self childrens.
	self childrens do:[ :e| lst addAll: e allNodes ].
	^ lst.
]

{ #category : #getset }
A4BPObject >> allNodes [
	^ self allChildrens
]

{ #category : #doNothing }
A4BPObject >> allRelations [
	^ OrderedCollection new
]

{ #category : #getset }
A4BPObject >> asString [
	"
	^ aName , '[', self hash asString,'],',super asString.
	"
	^ self aName
]

{ #category : #builder }
A4BPObject >> buildInternalRelations [
	" Use to make relations with self,probably use after the parser process done "

	
]

{ #category : #getset }
A4BPObject >> childrenNodes [
	^ self childrens values
]

{ #category : #getset }
A4BPObject >> childrens [
	"leazy initialization"
	^ childrens ifNil:[childrens:=OrderedCollection new].
]

{ #category : #getset }
A4BPObject >> childrens: aCollection [
	childrens := aCollection
]

{ #category : #getset }
A4BPObject >> cnodes [
	^ self childrens 
]

{ #category : #dsl }
A4BPObject >> elements [
	^ self allNodes
]

{ #category : #dsl }
A4BPObject >> flowElements [
	^ self flows
]

{ #category : #dsl }
A4BPObject >> flows [
	^ OrderedCollection new
]

{ #category : #getset }
A4BPObject >> getChildrenNodes [
	^ self childrens values
]

{ #category : #questions }
A4BPObject >> iHaveRelationWith: aRelation [
	^ false
]

{ #category : #getset }
A4BPObject >> id [
	id ifNil:[ id := UUID new asString ].
	^ id
]

{ #category : #getset }
A4BPObject >> id: anId [
	^ id := anId
]

{ #category : #initialization }
A4BPObject >> initialize [
	aName := ''.
	childrens := A4BPDictionary new.
]

{ #category : #getset }
A4BPObject >> isAProcess [
	^ false
]

{ #category : #questions }
A4BPObject >> isEmptyObj [
 ^ false
]

{ #category : #questions }
A4BPObject >> isProcess [
	^ false
]

{ #category : #questions }
A4BPObject >> isSchema [
	^ false
]

{ #category : #questions }
A4BPObject >> isUnparseObj [
 ^ false
]

{ #category : #questions }
A4BPObject >> isWSDL [
	^ false
]

{ #category : #getset }
A4BPObject >> key [
	^ self id
]

{ #category : #getset }
A4BPObject >> label [
	^ self aName
]

{ #category : #getset }
A4BPObject >> localName [
	^ localName
]

{ #category : #getset }
A4BPObject >> localName: anLocalName [
	^ localName := anLocalName
]

{ #category : #getset }
A4BPObject >> metaModelBaseClass [
	^ A4BPObject 
]

{ #category : #metric }
A4BPObject >> metricCFC [
	^ 0
]

{ #category : #metric }
A4BPObject >> metricCFCAbs [
	^ 0
]

{ #category : #moose }
A4BPObject >> mooseNameOn: aStream [ 
	aStream nextPutAll: self aName
]

{ #category : #getset }
A4BPObject >> myDocument [
	^ myDocument
]

{ #category : #getset }
A4BPObject >> myDocument: document [
	myDocument := document
]

{ #category : #getset }
A4BPObject >> name [
	^ self aName
]

{ #category : #getset }
A4BPObject >> nameSpaces [
	^ self myDocument nameSpaces
]

{ #category : #getset }
A4BPObject >> parent [
	^ parent
]

{ #category : #getset }
A4BPObject >> parent: aModel [
	parent
		ifNil: [ 
			parent := aModel.
			parent addChildren: self ]
]

{ #category : #getset }
A4BPObject >> process [
	^ A4BPCollection new
]

{ #category : #builder }
A4BPObject >> relations [
	^ A4BPCollection new
]

{ #category : #getset }
A4BPObject >> setNilParent [
	parent := nil
]

{ #category : #reflection }
A4BPObject >> setUsingReflection: var obj: obj [
	[ 
	| varName variable value tvariable |
	varName := var first asLowercase asString , (var last: var size - 1).
	variable := self instVarNamed: varName.
	value := obj.
		
	variable ifNil: [ ^ self instVarNamed: varName put: value ].
	
	variable class = Dictionary
		ifTrue: [ ^ variable at: value key put: value ].
		
	tvariable := Dictionary new.
	tvariable at: variable key put: variable.
	tvariable at: value key put: value.
	value := tvariable.
	self instVarNamed: varName put: value ]
		on: Error
		do: [ 
			"do nothing because the model dont support the tag "
			 ]
]

{ #category : #reflection }
A4BPObject >> setUsingReflection: var obj: obj withMeta: metaDocument [
	| subTitutionGroup |
	subTitutionGroup := metaDocument getSubstitutionGroupName: obj localName.
	self class
		instanceVariableNamesDo: [ :v | 
			| ref |
			"(obj localName = 'FloatingParameter' and: v = 'parameterValue') ifTrue:[ self halt ]."
			ref := metaDocument getRefName: v asString.
			subTitutionGroup = ref
				ifTrue: [ self setUsingReflection: v obj: obj ] ]
]

{ #category : #metric }
A4BPObject >> size [
	^ 1
]

{ #category : #getset }
A4BPObject >> text [
	^ text
]

{ #category : #getset }
A4BPObject >> text: aText [
	text := aText
]

{ #category : #getset }
A4BPObject >> value: aValue [
	
]

{ #category : #'as yet unclassified' }
A4BPObject >> xml [
	myDocument ifNotNil: [ ^ myDocument parser asString ].
	^ ''
]
