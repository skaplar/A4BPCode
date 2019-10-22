Class {
	#name : #BPMN20TerminateEventDefinitionImpl,
	#superclass : #BPMN20EventDefinitionImpl,
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20TerminateEventDefinitionImpl class >> annotation [
<MSEClass: #BPMN20TerminateEventDefinitionImpl  super: #BPMN20EventDefinitionImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20TerminateEventDefinitionImpl class >> fillElementsIn: aModel from: document [
	| visitor |
	visitor := BPMN20ParserSetinBPMN20TerminateEventDefinitionImplVisitor new.
	visitor element: aModel.
	self fillElementsIn: aModel from: document visitor: visitor.
]

{ #category : #'as yet unclassified' }
BPMN20TerminateEventDefinitionImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20TerminateEventDefinitionImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20TerminateEventDefinitionImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20TerminateEventDefinitionImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20TerminateEventDefinitionImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20TerminateEventDefinitionImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20TerminateEventDefinitionImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20TerminateEventDefinitionImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20TerminateEventDefinitionImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20TerminateEventDefinitionImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20TerminateEventDefinitionImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20TerminateEventDefinitionImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20TerminateEventDefinitionImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20TerminateEventDefinitionImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20TerminateEventDefinitionImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20TerminateEventDefinitionImpl >> text: atext [
	^ text := atext
]
