Class {
	#name : #BPSimParserBPSimPropertyParametersVisitor,
	#superclass : #BPSimParserAbstractVisitor,
	#category : #'A4BP-SimEngine-core-parser-builder-visitors'
}

{ #category : #'as yet unclassified' }
BPSimParserBPSimPropertyParametersVisitor class >> annotation [
<MSEClass: #BPSimParserBPSimPropertyParametersVisitor  super: #BPSimParserAbstractVisitor >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #'as yet unclassified' }
BPSimParserBPSimPropertyParametersVisitor >> visitBPSimPropertyParameters: aElement [
	^ self visitBPSimObject: aElement
]
