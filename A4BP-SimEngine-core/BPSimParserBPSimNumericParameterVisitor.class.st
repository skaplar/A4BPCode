Class {
	#name : #BPSimParserBPSimNumericParameterVisitor,
	#superclass : #BPSimParserAbstractVisitor,
	#category : #'A4BP-SimEngine-core-parser-builder-visitors'
}

{ #category : #'as yet unclassified' }
BPSimParserBPSimNumericParameterVisitor class >> annotation [
<MSEClass: #BPSimParserBPSimNumericParameterVisitor  super: #BPSimParserAbstractVisitor >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #'as yet unclassified' }
BPSimParserBPSimNumericParameterVisitor >> visitBPSimNumericParameter: aElement [
	^ self visitBPSimObject: aElement
]
