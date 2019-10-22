Class {
	#name : #BPXSDContext,
	#superclass : #A4BPSOAContext,
	#category : #'A4BP-XSD-core-model-a4bp'
}

{ #category : #'as yet unclassified' }
BPXSDContext class >> annotation [
<MSEClass: #BPXSDContext  super: #A4BPSOAContext >
<package: #'A4BP-XSD-core' >
]

{ #category : #creator }
BPXSDContext >> getParsers [
	| parsers |
	parsers := super getParsers.
	parsers add: BPParserXSDSchema new.
	^ parsers
]
