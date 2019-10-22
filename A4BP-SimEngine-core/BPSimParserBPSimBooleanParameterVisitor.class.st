Class {
	#name : #BPSimParserBPSimBooleanParameterVisitor,
	#superclass : #BPSimParserAbstractVisitor,
	#category : #'A4BP-SimEngine-core-parser-builder-visitors'
}

{ #category : #'as yet unclassified' }
BPSimParserBPSimBooleanParameterVisitor class >> annotation [
<MSEClass: #BPSimParserBPSimBooleanParameterVisitor  super: #BPSimParserAbstractVisitor >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #'as yet unclassified' }
BPSimParserBPSimBooleanParameterVisitor >> visitBPSimBooleanParameter: aElement [
	^ self visitBPSimObject: aElement
]
