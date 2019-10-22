Class {
	#name : #BPWSDLContext,
	#superclass : #A4BPSOAContext,
	#category : #'A4BP-WSDL-core-model-a4bp'
}

{ #category : #'as yet unclassified' }
BPWSDLContext class >> annotation [
<MSEClass: #BPWSDLContext  super: #A4BPSOAContext >
<package: #'A4BP-WSDL-core' >
]

{ #category : #creator }
BPWSDLContext >> getParsers [
	| parsers |
	parsers := super getParsers.
	parsers add: BPParserWSDL new.
	^ parsers
]
