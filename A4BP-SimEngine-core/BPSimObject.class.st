"
I'm the abstract superclass of all BPSim meta-model classes.
"
Class {
	#name : #BPSimObject,
	#superclass : #A4BPObject,
	#category : #'A4BP-SimEngine-core-model'
}

{ #category : #'as yet unclassified' }
BPSimObject class >> annotation [
<MSEClass: #BPSimObject  super: #A4BPObject >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #parser }
BPSimObject class >> fillElementsIn: aBPObject from: document visitor: visitor [
	self
		fillElementsIn: aBPObject
		from: document
		visitor: visitor
		tagRef: BPSimParserTagsXMLRef
]

{ #category : #parser }
BPSimObject class >> fillElementsIn: obj from: document withMeta: metaDocument [
	self
		fillElementsIn: obj
		from: document
		withMeta: metaDocument
		tagRef: BPSimParserTagsXMLRef
]

{ #category : #visitor }
BPSimObject >> accept: aVisitor [
	^ aVisitor visitBPSimObject: self
]
