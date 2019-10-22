Class {
	#name : #BPSimParserBPSimLogNormalDistributionVisitor,
	#superclass : #BPSimParserAbstractVisitor,
	#category : #'A4BP-SimEngine-core-parser-builder-visitors'
}

{ #category : #'as yet unclassified' }
BPSimParserBPSimLogNormalDistributionVisitor class >> annotation [
<MSEClass: #BPSimParserBPSimLogNormalDistributionVisitor  super: #BPSimParserAbstractVisitor >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #'as yet unclassified' }
BPSimParserBPSimLogNormalDistributionVisitor >> visitBPSimLogNormalDistribution: aElement [
	^ self visitBPSimObject: aElement
]
