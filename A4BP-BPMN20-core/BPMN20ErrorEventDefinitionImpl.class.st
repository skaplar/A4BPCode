Class {
	#name : #BPMN20ErrorEventDefinitionImpl,
	#superclass : #BPMN20EventDefinitionImpl,
	#instVars : [
		'errorRef'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20ErrorEventDefinitionImpl class >> annotation [
<MSEClass: #BPMN20ErrorEventDefinitionImpl  super: #BPMN20EventDefinitionImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20ErrorEventDefinitionImpl class >> fillElementsIn: aModel from: document [
	| visitor |
	visitor := BPMN20ParserSetinBPMN20ErrorEventDefinitionImplVisitor new.
	visitor element: aModel.
	self fillElementsIn: aModel from: document visitor: visitor.
]

{ #category : #'as yet unclassified' }
BPMN20ErrorEventDefinitionImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20ErrorEventDefinitionImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20ErrorEventDefinitionImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20ErrorEventDefinitionImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20ErrorEventDefinitionImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20ErrorEventDefinitionImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20ErrorEventDefinitionImpl >> errorRef [
^ errorRef
]

{ #category : #'as yet unclassified' }
BPMN20ErrorEventDefinitionImpl >> errorRef: aerrorRef [
^ errorRef := aerrorRef
]

{ #category : #'as yet unclassified' }
BPMN20ErrorEventDefinitionImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20ErrorEventDefinitionImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20ErrorEventDefinitionImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20ErrorEventDefinitionImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20ErrorEventDefinitionImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20ErrorEventDefinitionImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20ErrorEventDefinitionImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20ErrorEventDefinitionImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20ErrorEventDefinitionImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20ErrorEventDefinitionImpl >> text: atext [
	^ text := atext
]
