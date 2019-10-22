Class {
	#name : #BPSimParserBPSimFloatingParameterVisitor,
	#superclass : #BPSimParserAbstractVisitor,
	#category : #'A4BP-SimEngine-core-parser-builder-visitors'
}

{ #category : #'as yet unclassified' }
BPSimParserBPSimFloatingParameterVisitor class >> annotation [
<MSEClass: #BPSimParserBPSimFloatingParameterVisitor  super: #BPSimParserAbstractVisitor >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #'as yet unclassified' }
BPSimParserBPSimFloatingParameterVisitor >> visitBPSimFloatingParameter: aElement [
	^ self visitBPSimObject: aElement
]
