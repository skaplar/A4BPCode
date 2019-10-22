Class {
	#name : #BPSimParserBPSimNormalDistributionVisitor,
	#superclass : #BPSimParserAbstractVisitor,
	#category : #'A4BP-SimEngine-core-parser-builder-visitors'
}

{ #category : #'as yet unclassified' }
BPSimParserBPSimNormalDistributionVisitor class >> annotation [
<MSEClass: #BPSimParserBPSimNormalDistributionVisitor  super: #BPSimParserAbstractVisitor >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #'as yet unclassified' }
BPSimParserBPSimNormalDistributionVisitor >> visitBPSimNormalDistribution: aElement [
	^ self visitBPSimObject: aElement
]
