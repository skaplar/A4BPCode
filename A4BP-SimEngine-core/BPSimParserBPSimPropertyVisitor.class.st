Class {
	#name : #BPSimParserBPSimPropertyVisitor,
	#superclass : #BPSimParserAbstractVisitor,
	#category : #'A4BP-SimEngine-core-parser-builder-visitors'
}

{ #category : #'as yet unclassified' }
BPSimParserBPSimPropertyVisitor class >> annotation [
<MSEClass: #BPSimParserBPSimPropertyVisitor  super: #BPSimParserAbstractVisitor >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #'as yet unclassified' }
BPSimParserBPSimPropertyVisitor >> visitBPSimProperty: aElement [
	^ self visitBPSimObject: aElement
]
