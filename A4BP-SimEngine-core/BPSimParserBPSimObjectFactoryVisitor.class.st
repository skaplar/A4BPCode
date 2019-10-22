Class {
	#name : #BPSimParserBPSimObjectFactoryVisitor,
	#superclass : #BPSimParserAbstractVisitor,
	#category : #'A4BP-SimEngine-core-parser-builder-visitors'
}

{ #category : #'as yet unclassified' }
BPSimParserBPSimObjectFactoryVisitor class >> annotation [
<MSEClass: #BPSimParserBPSimObjectFactoryVisitor  super: #BPSimParserAbstractVisitor >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #'as yet unclassified' }
BPSimParserBPSimObjectFactoryVisitor >> visitBPSimObjectFactory: aElement [
	^ self visitBPSimObject: aElement
]
