Class {
	#name : #BPSimParserBPSimParameterValueVisitor,
	#superclass : #BPSimParserAbstractVisitor,
	#category : #'A4BP-SimEngine-core-parser-builder-visitors'
}

{ #category : #'as yet unclassified' }
BPSimParserBPSimParameterValueVisitor class >> annotation [
<MSEClass: #BPSimParserBPSimParameterValueVisitor  super: #BPSimParserAbstractVisitor >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #'as yet unclassified' }
BPSimParserBPSimParameterValueVisitor >> visitBPSimParameterValue: aElement [
	^ self visitBPSimObject: aElement
]
