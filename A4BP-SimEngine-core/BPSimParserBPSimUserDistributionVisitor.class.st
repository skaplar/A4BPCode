Class {
	#name : #BPSimParserBPSimUserDistributionVisitor,
	#superclass : #BPSimParserAbstractVisitor,
	#category : #'A4BP-SimEngine-core-parser-builder-visitors'
}

{ #category : #'as yet unclassified' }
BPSimParserBPSimUserDistributionVisitor class >> annotation [
<MSEClass: #BPSimParserBPSimUserDistributionVisitor  super: #BPSimParserAbstractVisitor >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #'as yet unclassified' }
BPSimParserBPSimUserDistributionVisitor >> visitBPSimUserDistribution: aElement [
	^ self visitBPSimObject: aElement
]
