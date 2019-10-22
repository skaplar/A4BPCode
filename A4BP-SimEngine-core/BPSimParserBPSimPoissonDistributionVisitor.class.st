Class {
	#name : #BPSimParserBPSimPoissonDistributionVisitor,
	#superclass : #BPSimParserAbstractVisitor,
	#category : #'A4BP-SimEngine-core-parser-builder-visitors'
}

{ #category : #'as yet unclassified' }
BPSimParserBPSimPoissonDistributionVisitor class >> annotation [
<MSEClass: #BPSimParserBPSimPoissonDistributionVisitor  super: #BPSimParserAbstractVisitor >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #'as yet unclassified' }
BPSimParserBPSimPoissonDistributionVisitor >> visitBPSimPoissonDistribution: aElement [
	^ self visitBPSimObject: aElement
]
