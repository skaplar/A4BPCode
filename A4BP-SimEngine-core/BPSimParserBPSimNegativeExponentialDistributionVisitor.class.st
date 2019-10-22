Class {
	#name : #BPSimParserBPSimNegativeExponentialDistributionVisitor,
	#superclass : #BPSimParserAbstractVisitor,
	#category : #'A4BP-SimEngine-core-parser-builder-visitors'
}

{ #category : #'as yet unclassified' }
BPSimParserBPSimNegativeExponentialDistributionVisitor class >> annotation [
<MSEClass: #BPSimParserBPSimNegativeExponentialDistributionVisitor  super: #BPSimParserAbstractVisitor >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #'as yet unclassified' }
BPSimParserBPSimNegativeExponentialDistributionVisitor >> visitBPSimNegativeExponentialDistribution: aElement [
	^ self visitBPSimObject: aElement
]
