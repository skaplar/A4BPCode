Class {
	#name : #BPSimParserBPSimTimeParametersVisitor,
	#superclass : #BPSimParserAbstractVisitor,
	#category : #'A4BP-SimEngine-core-parser-builder-visitors'
}

{ #category : #'as yet unclassified' }
BPSimParserBPSimTimeParametersVisitor class >> annotation [
<MSEClass: #BPSimParserBPSimTimeParametersVisitor  super: #BPSimParserAbstractVisitor >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #'as yet unclassified' }
BPSimParserBPSimTimeParametersVisitor >> visitBPSimTimeParameters: aElement [
	^ self visitBPSimObject: aElement
]
