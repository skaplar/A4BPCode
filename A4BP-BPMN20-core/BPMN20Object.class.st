Class {
	#name : #BPMN20Object,
	#superclass : #A4BPObject,
	#instVars : [
		'isCollection',
		'noIternalRelations',
		'myRoot',
		'myProcess'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20Object class >> annotation [
<MSEClass: #BPMN20Object  super: #A4BPObject >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #parser }
BPMN20Object class >> bpmn20Name [
	 ^ 'BPMN20Object'
]

{ #category : #parser }
BPMN20Object class >> fillElementsIn: aBPObject from: document visitor: visitor [
	self
		fillElementsIn: aBPObject
		from: document
		visitor: visitor
		tagRef: BPMN20ParserTagsXMLRef
]

{ #category : #parser }
BPMN20Object class >> fillElementsIn: obj from: document withMeta: metaDocument [
	self
		fillElementsIn: obj
		from: document
		withMeta: metaDocument
		tagRef: BPMN20ParserTagsXMLRef
]

{ #category : #parser }
BPMN20Object class >> fromXMLDescription: document in: parent [
	| aBPObj |
	aBPObj := self new.
	self fillBData: document in: aBPObj.
	aBPObj parent: parent.
	aBPObj myRoot: parent myRoot.
	self fillElementsIn: aBPObj from: document.
	^ aBPObj
	
]

{ #category : #parser }
BPMN20Object class >> fromXMLDescriptionNoInProcess: document in: parent [
	| aBPObj |
	aBPObj := self new.
	self fillBData: document in: aBPObj.
	aBPObj parent: parent.
	aBPObj myRoot: parent myRoot.
	self fillElementsIn: aBPObj from: document.
	^ aBPObj
]

{ #category : #visitor }
BPMN20Object >> accept: aVisitor [
	^ aVisitor visitBPMN20Object: self
]

{ #category : #dsl }
BPMN20Object >> flows [
	"Show a list of elements to be have flow with the element"
	| lst |
	lst := OrderedCollection new.
	lst addAll: self inFlows.
	lst addAll: self outFlows.
	^ lst
]

{ #category : #dsl }
BPMN20Object >> inFlows [
	^ OrderedCollection new
]

{ #category : #inout }
BPMN20Object >> incoming [
	"Show a list of elements to be have flow with the element"
	| lst |
	lst := OrderedCollection new.

	^ lst
]

{ #category : #inout }
BPMN20Object >> incomings [
	^ self incoming
]

{ #category : #initialization }
BPMN20Object >> initialize [
	super initialize.
	isCollection := false.
	noIternalRelations := 0.
]

{ #category : #questions }
BPMN20Object >> isSequence [
	^ false
]

{ #category : #getset }
BPMN20Object >> metaModelBaseClass [
	^ BPMN20Object
]

{ #category : #metrics }
BPMN20Object >> metricNOAC [
	 ^ 0
]

{ #category : #accessing }
BPMN20Object >> myProcess [
	^ myProcess
]

{ #category : #accessing }
BPMN20Object >> myProcess: anObject [
	myProcess := anObject
]

{ #category : #getset }
BPMN20Object >> myRoot [
	"comment stating purpose of message"
	^ myRoot
]

{ #category : #getset }
BPMN20Object >> myRoot: anMyRoot [
	"comment stating purpose of message"
	^ myRoot := anMyRoot.
]

{ #category : #accessing }
BPMN20Object >> noIternalRelations: anObject [
	noIternalRelations := anObject
]

{ #category : #metrics }
BPMN20Object >> numberOfInternalRelations [
	^ noIternalRelations
]

{ #category : #metrics }
BPMN20Object >> numberOfRelations [
	^ self numberOfInternalRelations 
]

{ #category : #dsl }
BPMN20Object >> outFlows [
	^ OrderedCollection new
]

{ #category : #inout }
BPMN20Object >> outgoing [
	"Show a list of elements to be have flow with the element"
	| lst |
	lst := OrderedCollection new.
	^ lst
]

{ #category : #inout }
BPMN20Object >> outgoings [
	^ self outgoing
]

{ #category : #dsl }
BPMN20Object >> shape [
	^ nil
]

{ #category : #getset }
BPMN20Object >> value: aValue [

]
