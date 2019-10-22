Class {
	#name : #BPSimParserBPSimDurationVisitor,
	#superclass : #BPSimParserAbstractVisitor,
	#category : #'A4BP-SimEngine-core-parser-builder-visitors'
}

{ #category : #'as yet unclassified' }
BPSimParserBPSimDurationVisitor class >> annotation [
<MSEClass: #BPSimParserBPSimDurationVisitor  super: #BPSimParserAbstractVisitor >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #'as yet unclassified' }
BPSimParserBPSimDurationVisitor >> visitBPSimDuration: aElement [
	^ self visitBPSimObject: aElement
]

{ #category : #'as yet unclassified' }
BPSimParserBPSimDurationVisitor >> visitBPSimDurationParameter: aModel [
	element constantParameter: aModel
]
