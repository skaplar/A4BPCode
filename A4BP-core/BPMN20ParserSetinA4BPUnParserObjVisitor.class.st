Class {
	#name : #BPMN20ParserSetinA4BPUnParserObjVisitor,
	#superclass : #Object,
	#instVars : [
		'element'
	],
	#category : #'A4BP-core-parser-builder'
}

{ #category : #'as yet unclassified' }
BPMN20ParserSetinA4BPUnParserObjVisitor >> element [
	^ element
]

{ #category : #'as yet unclassified' }
BPMN20ParserSetinA4BPUnParserObjVisitor >> element: aElement [
	^ element := aElement
]

{ #category : #visitor }
BPMN20ParserSetinA4BPUnParserObjVisitor >> visitA4BPEmptyObj: aModel [
	element addChildren: aModel
]

{ #category : #visitor }
BPMN20ParserSetinA4BPUnParserObjVisitor >> visitA4BPUnParserObj: aModel [
	element addChildren: aModel
]

{ #category : #visitor }
BPMN20ParserSetinA4BPUnParserObjVisitor >> visitBPObject: aModel [
	element addChildren: aModel
]
