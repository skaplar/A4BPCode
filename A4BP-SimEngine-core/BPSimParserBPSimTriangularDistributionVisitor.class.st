Class {
	#name : #BPSimParserBPSimTriangularDistributionVisitor,
	#superclass : #BPSimParserAbstractVisitor,
	#category : #'A4BP-SimEngine-core-parser-builder-visitors'
}

{ #category : #'as yet unclassified' }
BPSimParserBPSimTriangularDistributionVisitor class >> annotation [
<MSEClass: #BPSimParserBPSimTriangularDistributionVisitor  super: #BPSimParserAbstractVisitor >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #'as yet unclassified' }
BPSimParserBPSimTriangularDistributionVisitor >> visitBPSimTriangularDistribution: aElement [
	^ self visitBPSimObject: aElement
]
