Class {
	#name : #BPSimParserBPSimTruncatedNormalDistributionVisitor,
	#superclass : #BPSimParserAbstractVisitor,
	#category : #'A4BP-SimEngine-core-parser-builder-visitors'
}

{ #category : #'as yet unclassified' }
BPSimParserBPSimTruncatedNormalDistributionVisitor class >> annotation [
<MSEClass: #BPSimParserBPSimTruncatedNormalDistributionVisitor  super: #BPSimParserAbstractVisitor >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #'as yet unclassified' }
BPSimParserBPSimTruncatedNormalDistributionVisitor >> visitBPSimTruncatedNormalDistribution: aElement [
	^ self visitBPSimObject: aElement
]
