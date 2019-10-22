Class {
	#name : #BPSimParserBPSimCostParametersVisitor,
	#superclass : #BPSimParserAbstractVisitor,
	#category : #'A4BP-SimEngine-core-parser-builder-visitors'
}

{ #category : #'as yet unclassified' }
BPSimParserBPSimCostParametersVisitor class >> annotation [
<MSEClass: #BPSimParserBPSimCostParametersVisitor  super: #BPSimParserAbstractVisitor >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #'as yet unclassified' }
BPSimParserBPSimCostParametersVisitor >> visitBPSimCostParameters: aElement [
	^ self visitBPSimObject: aElement
]
