Class {
	#name : #BPSimParserBPSimUniformDistributionVisitor,
	#superclass : #BPSimParserAbstractVisitor,
	#category : #'A4BP-SimEngine-core-parser-builder-visitors'
}

{ #category : #'as yet unclassified' }
BPSimParserBPSimUniformDistributionVisitor class >> annotation [
<MSEClass: #BPSimParserBPSimUniformDistributionVisitor  super: #BPSimParserAbstractVisitor >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #'as yet unclassified' }
BPSimParserBPSimUniformDistributionVisitor >> visitBPSimUniformDistribution: aElement [
	^ self visitBPSimObject: aElement
]
