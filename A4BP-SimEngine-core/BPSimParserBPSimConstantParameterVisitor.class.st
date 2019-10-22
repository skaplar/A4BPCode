Class {
	#name : #BPSimParserBPSimConstantParameterVisitor,
	#superclass : #BPSimParserAbstractVisitor,
	#category : #'A4BP-SimEngine-core-parser-builder-visitors'
}

{ #category : #'as yet unclassified' }
BPSimParserBPSimConstantParameterVisitor class >> annotation [
<MSEClass: #BPSimParserBPSimConstantParameterVisitor  super: #BPSimParserAbstractVisitor >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #'as yet unclassified' }
BPSimParserBPSimConstantParameterVisitor >> visitBPSimConstantParameter: aElement [
	^ self visitBPSimObject: aElement
]
