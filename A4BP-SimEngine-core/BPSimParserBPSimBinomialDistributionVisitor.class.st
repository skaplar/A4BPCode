Class {
	#name : #BPSimParserBPSimBinomialDistributionVisitor,
	#superclass : #BPSimParserAbstractVisitor,
	#category : #'A4BP-SimEngine-core-parser-builder-visitors'
}

{ #category : #'as yet unclassified' }
BPSimParserBPSimBinomialDistributionVisitor class >> annotation [
<MSEClass: #BPSimParserBPSimBinomialDistributionVisitor  super: #BPSimParserAbstractVisitor >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #'as yet unclassified' }
BPSimParserBPSimBinomialDistributionVisitor >> visitBPSimBinomialDistribution: aElement [
	^ self visitBPSimObject: aElement
]
