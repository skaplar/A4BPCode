Class {
	#name : #BPSimParserBPSimPriorityParametersVisitor,
	#superclass : #BPSimParserAbstractVisitor,
	#category : #'A4BP-SimEngine-core-parser-builder-visitors'
}

{ #category : #'as yet unclassified' }
BPSimParserBPSimPriorityParametersVisitor class >> annotation [
<MSEClass: #BPSimParserBPSimPriorityParametersVisitor  super: #BPSimParserAbstractVisitor >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #'as yet unclassified' }
BPSimParserBPSimPriorityParametersVisitor >> visitBPSimPriorityParameters: aElement [
	^ self visitBPSimObject: aElement
]
