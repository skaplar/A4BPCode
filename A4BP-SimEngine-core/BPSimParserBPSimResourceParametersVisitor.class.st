Class {
	#name : #BPSimParserBPSimResourceParametersVisitor,
	#superclass : #BPSimParserAbstractVisitor,
	#category : #'A4BP-SimEngine-core-parser-builder-visitors'
}

{ #category : #'as yet unclassified' }
BPSimParserBPSimResourceParametersVisitor class >> annotation [
<MSEClass: #BPSimParserBPSimResourceParametersVisitor  super: #BPSimParserAbstractVisitor >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #'as yet unclassified' }
BPSimParserBPSimResourceParametersVisitor >> visitBPSimResourceParameters: aElement [
	^ self visitBPSimObject: aElement
]
