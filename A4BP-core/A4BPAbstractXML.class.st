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
	parser:		<Object>
	writer:		<Object>


    Implementation Points
"
Class {
	#name : #A4BPAbstractXML,
	#superclass : #Object,
	#instVars : [
		'parser',
		'writer'
	],
	#category : #'A4BP-core-parser'
}

{ #category : #build }
A4BPAbstractXML class >> createBaseOn: aParser [
	| obj |
	obj := self new.
	obj parser: aParser.
	^ obj
]

{ #category : #actions }
A4BPAbstractXML >> allElementsNamed: key [
]

{ #category : #instrumentation }
A4BPAbstractXML >> insertAfter: aXML [
	
]

{ #category : #instrumentation }
A4BPAbstractXML >> insertBefore: aXML [

]

{ #category : #actions }
A4BPAbstractXML >> nameSpaces [
]

{ #category : #getset }
A4BPAbstractXML >> nodes [
]

{ #category : #actions }
A4BPAbstractXML >> parse: aStream [
]

{ #category : #getset }
A4BPAbstractXML >> parser [
	^ parser
]

{ #category : #getset }
A4BPAbstractXML >> parser: aParser [
	^ parser := aParser
]

{ #category : #actions }
A4BPAbstractXML >> xPath [
	^ self xpath
]

{ #category : #actions }
A4BPAbstractXML >> xpath [
	"return a string with the path of the node"
	^ '','/', parser name. 
]
