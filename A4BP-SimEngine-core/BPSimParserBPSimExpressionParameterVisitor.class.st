Class {
	#name : #BPSimParserBPSimExpressionParameterVisitor,
	#superclass : #BPSimParserAbstractVisitor,
	#category : #'A4BP-SimEngine-core-parser-builder-visitors'
}

{ #category : #'as yet unclassified' }
BPSimParserBPSimExpressionParameterVisitor class >> annotation [
<MSEClass: #BPSimParserBPSimExpressionParameterVisitor  super: #BPSimParserAbstractVisitor >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #'as yet unclassified' }
BPSimParserBPSimExpressionParameterVisitor >> visitBPSimExpressionParameter: aElement [
	^ self visitBPSimObject: aElement
]
