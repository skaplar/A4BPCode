Class {
	#name : #BPSimParserBPSimStringParameterVisitor,
	#superclass : #BPSimParserAbstractVisitor,
	#category : #'A4BP-SimEngine-core-parser-builder-visitors'
}

{ #category : #'as yet unclassified' }
BPSimParserBPSimStringParameterVisitor class >> annotation [
<MSEClass: #BPSimParserBPSimStringParameterVisitor  super: #BPSimParserAbstractVisitor >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #'as yet unclassified' }
BPSimParserBPSimStringParameterVisitor >> visitBPSimStringParameter: aElement [
	^ self visitBPSimObject: aElement
]
