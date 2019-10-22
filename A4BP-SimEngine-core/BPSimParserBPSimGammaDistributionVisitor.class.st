Class {
	#name : #BPSimParserBPSimGammaDistributionVisitor,
	#superclass : #BPSimParserAbstractVisitor,
	#category : #'A4BP-SimEngine-core-parser-builder-visitors'
}

{ #category : #'as yet unclassified' }
BPSimParserBPSimGammaDistributionVisitor class >> annotation [
<MSEClass: #BPSimParserBPSimGammaDistributionVisitor  super: #BPSimParserAbstractVisitor >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #'as yet unclassified' }
BPSimParserBPSimGammaDistributionVisitor >> visitBPSimGammaDistribution: aElement [
	^ self visitBPSimObject: aElement
]
