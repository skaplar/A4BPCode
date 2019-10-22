Class {
	#name : #BPSimParserBPSimDataVisitor,
	#superclass : #BPSimParserAbstractVisitor,
	#category : #'A4BP-SimEngine-core-parser-builder-visitors'
}

{ #category : #'as yet unclassified' }
BPSimParserBPSimDataVisitor class >> annotation [
<MSEClass: #BPSimParserBPSimDataVisitor  super: #BPSimParserAbstractVisitor >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #'as yet unclassified' }
BPSimParserBPSimDataVisitor >> visitBPSimData: aElement [
	^ self visitBPSimObject: aElement
]

{ #category : #'as yet unclassified' }
BPSimParserBPSimDataVisitor >> visitBPSimScenario: aModel [ 
	element addScenario: aModel
]
