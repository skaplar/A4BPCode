Class {
	#name : #BPSimParserBPSimDateTimeParameterVisitor,
	#superclass : #BPSimParserAbstractVisitor,
	#category : #'A4BP-SimEngine-core-parser-builder-visitors'
}

{ #category : #'as yet unclassified' }
BPSimParserBPSimDateTimeParameterVisitor class >> annotation [
<MSEClass: #BPSimParserBPSimDateTimeParameterVisitor  super: #BPSimParserAbstractVisitor >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #'as yet unclassified' }
BPSimParserBPSimDateTimeParameterVisitor >> visitBPSimDateTimeParameter: aElement [
	^ self visitBPSimObject: aElement
]
