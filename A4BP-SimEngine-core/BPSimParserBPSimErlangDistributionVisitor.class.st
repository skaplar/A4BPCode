Class {
	#name : #BPSimParserBPSimErlangDistributionVisitor,
	#superclass : #BPSimParserAbstractVisitor,
	#category : #'A4BP-SimEngine-core-parser-builder-visitors'
}

{ #category : #'as yet unclassified' }
BPSimParserBPSimErlangDistributionVisitor class >> annotation [
<MSEClass: #BPSimParserBPSimErlangDistributionVisitor  super: #BPSimParserAbstractVisitor >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #'as yet unclassified' }
BPSimParserBPSimErlangDistributionVisitor >> visitBPSimErlangDistribution: aElement [
	^ self visitBPSimObject: aElement
]
