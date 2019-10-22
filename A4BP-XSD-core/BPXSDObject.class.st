Class {
	#name : #BPXSDObject,
	#superclass : #A4BPObject,
	#instVars : [
		'mySchema'
	],
	#category : #'A4BP-XSD-core-model'
}

{ #category : #'as yet unclassified' }
BPXSDObject class >> annotation [
<MSEClass: #BPXSDObject  super: #A4BPObject >
<package: #'A4BP-XSD-core' >
<abstract>
]

{ #category : #parser }
BPXSDObject class >> fillElementsIn: aBPObject from: document visitor: visitor [
	self fillElementsIn: aBPObject from: document visitor: visitor tagRef:BPParserXSDTagsXMLRef
]

{ #category : #visitor }
BPXSDObject >> accept: aVisitor [
	^ aVisitor visitBPXSDObject: self
]

{ #category : #adding }
BPXSDObject >> mySchema [
	^ mySchema
]

{ #category : #adding }
BPXSDObject >> mySchema: aSchema [
	mySchema :=aSchema 
]
