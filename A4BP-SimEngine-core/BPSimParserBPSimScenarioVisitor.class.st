Class {
	#name : #BPSimParserBPSimScenarioVisitor,
	#superclass : #BPSimParserAbstractVisitor,
	#category : #'A4BP-SimEngine-core-parser-builder-visitors'
}

{ #category : #'as yet unclassified' }
BPSimParserBPSimScenarioVisitor class >> annotation [
<MSEClass: #BPSimParserBPSimScenarioVisitor  super: #BPSimParserAbstractVisitor >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #'as yet unclassified' }
BPSimParserBPSimScenarioVisitor >> visitBPSimElementParameters: aModel [ 
	element addElementParameters: aModel.

]

{ #category : #'as yet unclassified' }
BPSimParserBPSimScenarioVisitor >> visitBPSimScenario: aElement [
	^ self visitBPSimObject: aElement
]

{ #category : #'as yet unclassified' }
BPSimParserBPSimScenarioVisitor >> visitBPSimScenarioParameters: aModel [ 
	element scenarioParameters: aModel.

]
