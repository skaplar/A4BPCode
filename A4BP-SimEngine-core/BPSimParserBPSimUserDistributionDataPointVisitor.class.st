Class {
	#name : #BPSimParserBPSimUserDistributionDataPointVisitor,
	#superclass : #BPSimParserAbstractVisitor,
	#category : #'A4BP-SimEngine-core-parser-builder-visitors'
}

{ #category : #'as yet unclassified' }
BPSimParserBPSimUserDistributionDataPointVisitor class >> annotation [
<MSEClass: #BPSimParserBPSimUserDistributionDataPointVisitor  super: #BPSimParserAbstractVisitor >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #'as yet unclassified' }
BPSimParserBPSimUserDistributionDataPointVisitor >> visitBPSimUserDistributionDataPoint: aElement [
	^ self visitBPSimObject: aElement
]
