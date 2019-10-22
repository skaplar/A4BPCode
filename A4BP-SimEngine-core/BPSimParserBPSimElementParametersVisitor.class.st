Class {
	#name : #BPSimParserBPSimElementParametersVisitor,
	#superclass : #BPSimParserAbstractVisitor,
	#category : #'A4BP-SimEngine-core-parser-builder-visitors'
}

{ #category : #'as yet unclassified' }
BPSimParserBPSimElementParametersVisitor class >> annotation [
<MSEClass: #BPSimParserBPSimElementParametersVisitor  super: #BPSimParserAbstractVisitor >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #'as yet unclassified' }
BPSimParserBPSimElementParametersVisitor >> visitBPSimControlParameters: aModel [ 
	element controlParameters: aModel 
]

{ #category : #'as yet unclassified' }
BPSimParserBPSimElementParametersVisitor >> visitBPSimElementParameters: aElement [
	^ self visitBPSimObject: aElement
]

{ #category : #'as yet unclassified' }
BPSimParserBPSimElementParametersVisitor >> visitBPSimPropertyParameters: aModel [
	element propertyParameters: aModel
]
