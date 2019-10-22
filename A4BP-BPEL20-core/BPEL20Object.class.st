"
A BPEL20Object is base class objet to promote the codification implementation

"
Class {
	#name : #BPEL20Object,
	#superclass : #A4BPObject,
	#instVars : [
		'value',
		'statebp'
	],
	#category : #'A4BP-BPEL20-core-model'
}

{ #category : #'as yet unclassified' }
BPEL20Object class >> annotation [
<MSEClass: #BPEL20Object  super: #A4BPObject >
<package: #'A4BP-BPEL20-core' >
]

{ #category : #'as yet unclassified' }
BPEL20Object class >> fillElementsIn: aBPObject from: document visitor: visitor [
	self
		fillElementsIn: aBPObject
		from: document
		visitor: visitor
		tagRef: BPEL20ParserBPELTagsXMLRef
]

{ #category : #'as yet unclassified' }
BPEL20Object class >> fillElementsIn: obj from: document withMeta: metaDocument [
	self
		fillElementsIn: obj
		from: document
		withMeta: metaDocument
		tagRef: BPEL20ParserBPELTagsXMLRef
]

{ #category : #'as yet unclassified' }
BPEL20Object >> childrens [
	^ childrens
]

{ #category : #'as yet unclassified' }
BPEL20Object >> childrens: achildrens [
	^ childrens := achildrens
]

{ #category : #'as yet unclassified' }
BPEL20Object >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPEL20Object >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPEL20Object >> parent [
	^ parent
]

{ #category : #'as yet unclassified' }
BPEL20Object >> parent: aparent [
	^ parent := aparent
]

{ #category : #accessing }
BPEL20Object >> statebp [
	^ statebp
]

{ #category : #accessing }
BPEL20Object >> statebp: anObject [
	statebp := anObject
]

{ #category : #'as yet unclassified' }
BPEL20Object >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPEL20Object >> text: atext [
	^ text := atext
]

{ #category : #'as yet unclassified' }
BPEL20Object >> v [
	^ value
]

{ #category : #accessing }
BPEL20Object >> value1 [
	^ value
]

{ #category : #accessing }
BPEL20Object >> value1: anObject [
	value := anObject
]

{ #category : #'as yet unclassified' }
BPEL20Object >> value: anValue [
	 value := anValue 
]
