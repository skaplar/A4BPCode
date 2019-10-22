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

    Instance Variables
	tagWriter:		<Object>


    Implementation Points
"
Class {
	#name : #A4BPXMLParserXMLDOM,
	#superclass : #A4BPAbstractXML,
	#instVars : [
		'tagWriter'
	],
	#classInstVars : [
		'node'
	],
	#category : #'A4BP-core-parser'
}

{ #category : #'as yet unclassified' }
A4BPXMLParserXMLDOM class >> annotation [
<MSEClass: #A4BPXMLParserXMLDOM  super: #A4BPAbstractXML >
<package: #'A4BP-core' >
]

{ #category : #actions }
A4BPXMLParserXMLDOM >> allElementsNamed: key [
	|col returnCol|
	returnCol := OrderedCollection new.
	col:= parser allElementsNamed: key.
	col do:[ :n| returnCol add: (A4BPXMLParserXMLDOM createBaseOn:n) ].
	^ returnCol.
]

{ #category : #writer }
A4BPXMLParserXMLDOM >> asString [
	^ parser fullPrintString
]

{ #category : #actions }
A4BPXMLParserXMLDOM >> attributeAt: aAtribute [
	^ parser attributeAt: aAtribute
]

{ #category : #actions }
A4BPXMLParserXMLDOM >> contentString [
 ^ parser contentString.
]

{ #category : #finder }
A4BPXMLParserXMLDOM >> getRefName: anName [
	| type |
	[ 
	| element |
	element := parser
		allElementsDetect: [ :n | 
			| e |
			e := nil.
			[ e := n attributeAt: 'name' ]
				on: Error
				do: [  ].
			e = anName ].
	type := element attributeAt: 'ref' ]
		on: Error
		do: [ type := anName ].
	type = ''
		ifTrue: [ type := anName ].
	^ type
]

{ #category : #finder }
A4BPXMLParserXMLDOM >> getSubstitutionGroupName: anName [
	| type |
	[ type := (parser allElementsDetect: [ :n | (n attributeAt: 'name') = anName ]) attributeAt: 'substitutionGroup' ]
		on: Error
		do: [ type := anName ].
	'' = type ifTrue:[type := anName].
	^ type
]

{ #category : #finder }
A4BPXMLParserXMLDOM >> getTypeName: anName [
	| type |
	[ type := (parser allElementsDetect: [ :n | (n attributeAt: 'name') = anName ]) attributeAt: 'type' ]
		on: Error
		do: [ type := anName ].
	'' = type ifTrue:[type := anName].
	^ type
]

{ #category : #writer }
A4BPXMLParserXMLDOM >> initWriter [
	writer := XMLWriter new.
]

{ #category : #initialization }
A4BPXMLParserXMLDOM >> initialize [
	super initialize.
	writer := XMLWriter new.
]

{ #category : #writer }
A4BPXMLParserXMLDOM >> insertAfter: aXML [
	|aNewDoc |
	aNewDoc := A4BPFactoryXMLParser parser parse: (ReadStream on: aXML).
	parser writeXMLWithOutChildrenOn: writer.
	aNewDoc parser writeXMLOn: writer.
	^ writer
]

{ #category : #writer }
A4BPXMLParserXMLDOM >> insertAfter: aXML on:aParser [
	|aNewDoc |
	aNewDoc := A4BPFactoryXMLParser parser parse: (ReadStream on: aXML).
	parser writeXMLWithOutChildrenOn: writer.
	aNewDoc parser writeXMLOn: writer.
	^ writer
]

{ #category : #writer }
A4BPXMLParserXMLDOM >> insertBefore: aXML [
	|aNewDoc |
	aNewDoc := A4BPFactoryXMLParser parser parse: (ReadStream on: aXML).
	aNewDoc parser writeXMLOn: writer.	
	parser writeXMLWithOutChildrenOn: writer.
	^ writer
]

{ #category : #testing }
A4BPXMLParserXMLDOM >> isStringValue [
	^ parser class = XMLString
]

{ #category : #actions }
A4BPXMLParserXMLDOM >> localName [
	^ parser localName
]

{ #category : #actions }
A4BPXMLParserXMLDOM >> name [
	^ parser name
]

{ #category : #actions }
A4BPXMLParserXMLDOM >> nameSpaces [
	^ parser namespaceScope prefixMappings dictionary
]

{ #category : #actions }
A4BPXMLParserXMLDOM >> nodes [
	|col returnCol|
	returnCol := OrderedCollection new.
	col:= parser nodes.
	col do:[ :n| returnCol add: (A4BPXMLParserXMLDOM createBaseOn:n) ].
	^ returnCol.
]

{ #category : #actions }
A4BPXMLParserXMLDOM >> parse: aStream [
	| document bpNode |
	document := (XMLDOMParser on: aStream) parseDocument.
	bpNode := A4BPXMLParserXMLDOM createBaseOn: document.
	^ bpNode
]

{ #category : #writer }
A4BPXMLParserXMLDOM >> startWriter [
	writer := XMLWriter new.
	self writeXMLOn: writer.
]

{ #category : #actions }
A4BPXMLParserXMLDOM >> string [
	^ parser string
]

{ #category : #writer }
A4BPXMLParserXMLDOM >> tag: aName [
	^ writer tag:aName
]

{ #category : #writer }
A4BPXMLParserXMLDOM >> writeChildren: aBlock [
	"use the sentence on XMLElement to execute similarity"
	tagWriter with: aBlock.
]

{ #category : #writer }
A4BPXMLParserXMLDOM >> writeOn: aWriter [
	parser writeXMLOn: aWriter.
	^ aWriter
]

{ #category : #writer }
A4BPXMLParserXMLDOM >> writeWithOutChildrenOn: aWriter [
	tagWriter:= parser writeXMLWithOutChildrenOn: aWriter.
	^ tagWriter
]

{ #category : #writer }
A4BPXMLParserXMLDOM >> writeXMLOn: aWriter [
	parser writeXMLOn: aWriter.
	^ aWriter
]

{ #category : #actions }
A4BPXMLParserXMLDOM >> xpath [
	"return a string with the path of the node"
	^ (self xpathOf: parser parent),'/',parser name.
]

{ #category : #actions }
A4BPXMLParserXMLDOM >> xpathOf: aDoc [
	aDoc parent ifNil: [ ^ '' ].
	^ (self xpathOf: aDoc parent) , '/' , aDoc name
]
