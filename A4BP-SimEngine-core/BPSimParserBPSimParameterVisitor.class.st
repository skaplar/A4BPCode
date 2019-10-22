Class {
	#name : #BPSimParserBPSimParameterVisitor,
	#superclass : #BPSimParserAbstractVisitor,
	#category : #'A4BP-SimEngine-core-parser-builder-visitors'
}

{ #category : #'as yet unclassified' }
BPSimParserBPSimParameterVisitor class >> annotation [
<MSEClass: #BPSimParserBPSimParameterVisitor  super: #BPSimParserAbstractVisitor >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #'as yet unclassified' }
BPSimParserBPSimParameterVisitor >> visitBPSimParameter: aElement [
	^ self visitBPSimObject: aElement
]
