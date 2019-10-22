Class {
	#name : #A4BPUnParserObj,
	#superclass : #A4BPObject,
	#instVars : [
		'tagName',
		'value',
		'fileName',
		'fullPath',
		'error'
	],
	#classInstVars : [
		'instance'
	],
	#category : #'A4BP-core-parser'
}

{ #category : #instance }
A4BPUnParserObj class >> annotation [
<MSEClass: #A4BPUnParserObj  super: #A4BPObject >
<package: #'A4BP-core' >
]

{ #category : #builder }
A4BPUnParserObj class >> endfromXMLDescription: document in: parent [
	| aBPObj |
	aBPObj := self new.
	aBPObj parent: parent.
	self fillBData: document in: aBPObj.
	^ aBPObj
]

{ #category : #builder }
A4BPUnParserObj class >> fillElementsIn: aModel from: document [
	| visitor |
	visitor := BPMN20ParserSetinA4BPUnParserObjVisitor new.
	visitor element: aModel.
	aModel tagName: document name.
	self fillElementsIn: aModel from: document visitor: visitor.
]

{ #category : #builder }
A4BPUnParserObj class >> fillElementsIn: aBPObject from: document visitor: visitor tagRef: aTagRef [
	| bpElement refTag typeName nodes |
	[ 
	nodes := document nodes nodes
		do: [ :docAtr | 
			typeName := docAtr name.
			refTag := aTagRef getClassBPBaseOnTypeName: typeName.
			bpElement := refTag objclass fromXMLDescription: docAtr in: aBPObject.
			bpElement accept: visitor ] ]
		on: Error
		do: [ 
			typeName := document name.
			refTag := aTagRef getClassBPBaseOnTypeName: typeName.
			bpElement := refTag objclass endfromXMLDescription: document in: aBPObject.
			bpElement accept: visitor ]
]

{ #category : #instance }
A4BPUnParserObj class >> new [
	^ super new.
]

{ #category : #visitor }
A4BPUnParserObj >> accept: aVisitor [
	^ aVisitor visitA4BPUnParserObj: self
]

{ #category : #all }
A4BPUnParserObj >> allElements [
	^ OrderedCollection new
]

{ #category : #'as yet unclassified' }
A4BPUnParserObj >> bpwsdl [
	^ nil
]

{ #category : #builder }
A4BPUnParserObj >> buildInterRelations [
	
]

{ #category : #builder }
A4BPUnParserObj >> buildRelations: aModel [
	
]

{ #category : #'as yet unclassified' }
A4BPUnParserObj >> childrens [
	^ childrens
]

{ #category : #'as yet unclassified' }
A4BPUnParserObj >> childrens: achildrens [
	^ childrens := achildrens
]

{ #category : #accessing }
A4BPUnParserObj >> error [
	^ error
]

{ #category : #accessing }
A4BPUnParserObj >> error: anError [
	error := anError
]

{ #category : #accessing }
A4BPUnParserObj >> fileName [
	^ fileName
]

{ #category : #accessing }
A4BPUnParserObj >> fileName: anObject [
	fileName := anObject
]

{ #category : #accessing }
A4BPUnParserObj >> fullPath [
	^ fullPath
]

{ #category : #accessing }
A4BPUnParserObj >> fullPath: anObject [
	fullPath := anObject
]

{ #category : #'as yet unclassified' }
A4BPUnParserObj >> getChildrenNodes [
	^ nil
]

{ #category : #builder }
A4BPUnParserObj >> haveLazyRefLikeAt: aRef [
	^ false
]

{ #category : #initialization }
A4BPUnParserObj >> initialize [
	super initialize.
	aName := 'Empty'.
	childrens := OrderedCollection new.
	id := UUID new asString
]

{ #category : #'as yet unclassified' }
A4BPUnParserObj >> isBPEmtyObj [
 ^ true
]

{ #category : #question }
A4BPUnParserObj >> isUnparseObj [
 ^ true
]

{ #category : #all }
A4BPUnParserObj >> link [
	^ self
]

{ #category : #'as yet unclassified' }
A4BPUnParserObj >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
A4BPUnParserObj >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #getset }
A4BPUnParserObj >> nameSpaces [
	^ ''
]

{ #category : #'as yet unclassified' }
A4BPUnParserObj >> parent [
	^ parent
]

{ #category : #'as yet unclassified' }
A4BPUnParserObj >> parent: aparent [
	^ parent := aparent
]

{ #category : #'as yet unclassified' }
A4BPUnParserObj >> state [
	^ state
]

{ #category : #'as yet unclassified' }
A4BPUnParserObj >> state: astate [
	^ state := astate
]

{ #category : #accessing }
A4BPUnParserObj >> tagName [
	^ tagName
]

{ #category : #accessing }
A4BPUnParserObj >> tagName1: anObject [
	tagName := anObject
]

{ #category : #getset }
A4BPUnParserObj >> tagName: value [
	tagName := value.
	aName := value.
]

{ #category : #builder }
A4BPUnParserObj >> targetNamespace [
	^ ''
]

{ #category : #'as yet unclassified' }
A4BPUnParserObj >> text [
	^ text
]

{ #category : #'as yet unclassified' }
A4BPUnParserObj >> text: atext [
	^ text := atext
]

{ #category : #getset }
A4BPUnParserObj >> v [
	^ value
]

{ #category : #getset }
A4BPUnParserObj >> value: anValue [
	value := anValue
]
