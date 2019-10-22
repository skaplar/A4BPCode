Class {
	#name : #BPSimParserBPSimControlParametersVisitor,
	#superclass : #BPSimParserAbstractVisitor,
	#category : #'A4BP-SimEngine-core-parser-builder-visitors'
}

{ #category : #'as yet unclassified' }
BPSimParserBPSimControlParametersVisitor class >> annotation [
<MSEClass: #BPSimParserBPSimControlParametersVisitor  super: #BPSimParserAbstractVisitor >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #'as yet unclassified' }
BPSimParserBPSimControlParametersVisitor >> visitBPSimControlParameters: aElement [
	^ self visitBPSimObject: aElement
]
