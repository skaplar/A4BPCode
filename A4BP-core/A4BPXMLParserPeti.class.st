"
Please comment me using the following template inspired by Class Responsibility Collaborator (CRC) design:

For the Class part:  State the name of the class with one line description: For example, I'm xxx the root of the hierarchy of visitor objects.

For the Responsibility part: Three sentences about my main responsibility, what I'm doing, what services do I offer.

For the Collaborators Part: State my main collaborators and one line about how I interact with them. 

Public API and Key Messages

- message one   
- message two 
- what is the way to create instances is a plus.

   One simple example is simply gorgeous.
 
Internal Representation and Key Implementation Points.


    Implementation Points
"
Class {
	#name : #A4BPXMLParserPeti,
	#superclass : #A4BPAbstractXML,
	#category : #'A4BP-core-parser'
}

{ #category : #'as yet unclassified' }
A4BPXMLParserPeti class >> annotation [
<MSEClass: #A4BPXMLParserPeti  super: #A4BPAbstractXML >
<package: #'A4BP-core' >
]

{ #category : #actions }
A4BPXMLParserPeti >> allElementsNamed: key [
	| col returnCol |
	returnCol := OrderedCollection new.
	col := parser findXPath: key.
	col children do: [ :n | returnCol add: (A4BPXMLParserPeti createBaseOn: n) ].
	^ returnCol
]

{ #category : #actions }
A4BPXMLParserPeti >> attributeAt: aAtribute [
	^ parser attributes collect:[ :a | a = aAtribute ].
]

{ #category : #actions }
A4BPXMLParserPeti >> name [
	^ parser name
]

{ #category : #actions }
A4BPXMLParserPeti >> nameSpaces [
	"^ node namespaceScope prefixMappings dictionary"
	^ OrderedCollection new.
]

{ #category : #actions }
A4BPXMLParserPeti >> nodes [
	| col returnCol |
	returnCol := OrderedCollection new.
	col := parser childNodes.
	col do: [ :n | returnCol add: (BPXMLParserPeti createBaseOn: n) ].
	^ returnCol
]

{ #category : #actions }
A4BPXMLParserPeti >> parse: aStream [
	|document bpNode|
	document := PPXmlParser new end parse:aStream.
	bpNode := A4BPXMLParserPeti createBaseOn: document.
	^ bpNode
]
