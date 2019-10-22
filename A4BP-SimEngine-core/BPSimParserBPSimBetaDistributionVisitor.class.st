"
A BPSimParserBPSimBetaDistributionVisitor is xxxxxxxxx.

"
Class {
	#name : #BPSimParserBPSimBetaDistributionVisitor,
	#superclass : #BPSimParserAbstractVisitor,
	#category : #'A4BP-SimEngine-core-parser-builder-visitors'
}

{ #category : #'as yet unclassified' }
BPSimParserBPSimBetaDistributionVisitor class >> annotation [
<MSEClass: #BPSimParserBPSimBetaDistributionVisitor  super: #BPSimParserAbstractVisitor >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #'as yet unclassified' }
BPSimParserBPSimBetaDistributionVisitor >> visitBPSimBetaDistribution: aElement [
	^ self visitBPSimObject: aElement
]
