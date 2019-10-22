Class {
	#name : #BPSimParserBPSimEnumParameterVisitor,
	#superclass : #BPSimParserAbstractVisitor,
	#category : #'A4BP-SimEngine-core-parser-builder-visitors'
}

{ #category : #'as yet unclassified' }
BPSimParserBPSimEnumParameterVisitor class >> annotation [
<MSEClass: #BPSimParserBPSimEnumParameterVisitor  super: #BPSimParserAbstractVisitor >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #'as yet unclassified' }
BPSimParserBPSimEnumParameterVisitor >> visitBPSimEnumParameter: aElement [
	^ self visitBPSimObject: aElement
]
