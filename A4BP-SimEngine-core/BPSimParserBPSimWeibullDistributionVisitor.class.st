Class {
	#name : #BPSimParserBPSimWeibullDistributionVisitor,
	#superclass : #BPSimParserAbstractVisitor,
	#category : #'A4BP-SimEngine-core-parser-builder-visitors'
}

{ #category : #'as yet unclassified' }
BPSimParserBPSimWeibullDistributionVisitor class >> annotation [
<MSEClass: #BPSimParserBPSimWeibullDistributionVisitor  super: #BPSimParserAbstractVisitor >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #'as yet unclassified' }
BPSimParserBPSimWeibullDistributionVisitor >> visitBPSimWeibullDistribution: aElement [
	^ self visitBPSimObject: aElement
]
