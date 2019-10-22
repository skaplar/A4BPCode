Class {
	#name : #BPMN20ConditionalEventDefinitionImpl,
	#superclass : #BPMN20EventDefinitionImpl,
	#instVars : [
		'condition'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20ConditionalEventDefinitionImpl class >> annotation [
<MSEClass: #BPMN20ConditionalEventDefinitionImpl  super: #BPMN20EventDefinitionImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20ConditionalEventDefinitionImpl class >> fillElementsIn: aModel from: document [
	| visitor |
	visitor := BPMN20ParserSetinBPMN20ConditionalEventDefinitionImplVisitor new.
	visitor element: aModel.
	self fillElementsIn: aModel from: document visitor: visitor.
]

{ #category : #'as yet unclassified' }
BPMN20ConditionalEventDefinitionImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20ConditionalEventDefinitionImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20ConditionalEventDefinitionImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20ConditionalEventDefinitionImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20ConditionalEventDefinitionImpl >> condition [
^ condition
]

{ #category : #'as yet unclassified' }
BPMN20ConditionalEventDefinitionImpl >> condition: acondition [
^ condition := acondition
]

{ #category : #'as yet unclassified' }
BPMN20ConditionalEventDefinitionImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20ConditionalEventDefinitionImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20ConditionalEventDefinitionImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20ConditionalEventDefinitionImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20ConditionalEventDefinitionImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20ConditionalEventDefinitionImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20ConditionalEventDefinitionImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20ConditionalEventDefinitionImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20ConditionalEventDefinitionImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20ConditionalEventDefinitionImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20ConditionalEventDefinitionImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20ConditionalEventDefinitionImpl >> text: atext [
	^ text := atext
]
