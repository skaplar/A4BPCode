Class {
	#name : #BPMN20CancelEventDefinitionImpl,
	#superclass : #BPMN20EventDefinitionImpl,
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20CancelEventDefinitionImpl class >> annotation [
<MSEClass: #BPMN20CancelEventDefinitionImpl  super: #BPMN20EventDefinitionImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20CancelEventDefinitionImpl class >> fillElementsIn: aModel from: document [
	| visitor |
	visitor := BPMN20ParserSetinBPMN20CancelEventDefinitionImplVisitor new.
	visitor element: aModel.
	self fillElementsIn: aModel from: document visitor: visitor.
]

{ #category : #'as yet unclassified' }
BPMN20CancelEventDefinitionImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20CancelEventDefinitionImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20CancelEventDefinitionImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20CancelEventDefinitionImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20CancelEventDefinitionImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20CancelEventDefinitionImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20CancelEventDefinitionImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20CancelEventDefinitionImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20CancelEventDefinitionImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20CancelEventDefinitionImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20CancelEventDefinitionImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20CancelEventDefinitionImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20CancelEventDefinitionImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20CancelEventDefinitionImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20CancelEventDefinitionImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20CancelEventDefinitionImpl >> text: atext [
	^ text := atext
]
