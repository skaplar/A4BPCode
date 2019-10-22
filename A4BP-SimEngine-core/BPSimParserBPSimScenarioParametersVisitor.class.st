Class {
	#name : #BPSimParserBPSimScenarioParametersVisitor,
	#superclass : #BPSimParserAbstractVisitor,
	#category : #'A4BP-SimEngine-core-parser-builder-visitors'
}

{ #category : #'as yet unclassified' }
BPSimParserBPSimScenarioParametersVisitor class >> annotation [
<MSEClass: #BPSimParserBPSimScenarioParametersVisitor  super: #BPSimParserAbstractVisitor >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #'as yet unclassified' }
BPSimParserBPSimScenarioParametersVisitor >> visitBPDuration: aModel [ 
	element duration: aModel constantParameter.
]

{ #category : #'as yet unclassified' }
BPSimParserBPSimScenarioParametersVisitor >> visitBPSimScenarioParameters: aElement [
	^ self visitBPSimObject: aElement
]
