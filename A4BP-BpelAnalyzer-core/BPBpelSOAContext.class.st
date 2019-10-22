Class {
	#name : #BPBpelSOAContext,
	#superclass : #A4BPSOAContext,
	#category : #'A4BP-BpelAnalyzer-core-model-a4bp'
}

{ #category : #'as yet unclassified' }
BPBpelSOAContext class >> annotation [
<MSEClass: #BPBpelSOAContext  super: #A4BPSOAContext >
<package: #'A4BP-BpelAnalyzer-core' >
]

{ #category : #creator }
BPBpelSOAContext >> getParsers [
	| parsers |
	parsers := super getParsers.
	parsers add: BPBPELParser new.
	^ parsers
]
