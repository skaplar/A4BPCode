Class {
	#name : #BPSimParserBPSimDurationParameterVisitor,
	#superclass : #BPSimParserAbstractVisitor,
	#category : #'A4BP-SimEngine-core-parser-builder-visitors'
}

{ #category : #'as yet unclassified' }
BPSimParserBPSimDurationParameterVisitor class >> annotation [
<MSEClass: #BPSimParserBPSimDurationParameterVisitor  super: #BPSimParserAbstractVisitor >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #'as yet unclassified' }
BPSimParserBPSimDurationParameterVisitor >> visitBPSimDurationParameter: aElement [
	^ self visitBPSimObject: aElement
]
