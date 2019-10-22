Class {
	#name : #BPSimParserBPSimDistributionParameterVisitor,
	#superclass : #BPSimParserAbstractVisitor,
	#category : #'A4BP-SimEngine-core-parser-builder-visitors'
}

{ #category : #'as yet unclassified' }
BPSimParserBPSimDistributionParameterVisitor class >> annotation [
<MSEClass: #BPSimParserBPSimDistributionParameterVisitor  super: #BPSimParserAbstractVisitor >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #'as yet unclassified' }
BPSimParserBPSimDistributionParameterVisitor >> visitBPSimDistributionParameter: aElement [
	^ self visitBPSimObject: aElement
]
