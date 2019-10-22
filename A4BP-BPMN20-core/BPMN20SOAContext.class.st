"
A BPMN20SOAContext is basic representation of context that contain only BPMN process for load in the analysis.

"
Class {
	#name : #BPMN20SOAContext,
	#superclass : #A4BPSOAContext,
	#category : #'A4BP-BPMN20-core-model-a4bp'
}

{ #category : #'as yet unclassified' }
BPMN20SOAContext class >> annotation [
<MSEClass: #BPMN20SOAContext  super: #A4BPSOAContext >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #creator }
BPMN20SOAContext >> getParsers [
	| parsers |
	parsers := super getParsers.
	parsers add: BPMN20Parser new.
	^ parsers
]
