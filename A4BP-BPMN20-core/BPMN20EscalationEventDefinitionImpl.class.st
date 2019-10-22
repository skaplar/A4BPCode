Class {
	#name : #BPMN20EscalationEventDefinitionImpl,
	#superclass : #BPMN20EventDefinitionImpl,
	#instVars : [
		'escalationRef'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20EscalationEventDefinitionImpl class >> annotation [
<MSEClass: #BPMN20EscalationEventDefinitionImpl  super: #BPMN20EventDefinitionImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20EscalationEventDefinitionImpl class >> fillElementsIn: aModel from: document [
	| visitor |
	visitor := BPMN20ParserSetinBPMN20EscalationEventDefinitionImplVisitor new.
	visitor element: aModel.
	self fillElementsIn: aModel from: document visitor: visitor.
]

{ #category : #'as yet unclassified' }
BPMN20EscalationEventDefinitionImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20EscalationEventDefinitionImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20EscalationEventDefinitionImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20EscalationEventDefinitionImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20EscalationEventDefinitionImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20EscalationEventDefinitionImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20EscalationEventDefinitionImpl >> escalationRef [
^ escalationRef
]

{ #category : #'as yet unclassified' }
BPMN20EscalationEventDefinitionImpl >> escalationRef: aescalationRef [
^ escalationRef := aescalationRef
]

{ #category : #'as yet unclassified' }
BPMN20EscalationEventDefinitionImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20EscalationEventDefinitionImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20EscalationEventDefinitionImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20EscalationEventDefinitionImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20EscalationEventDefinitionImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20EscalationEventDefinitionImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20EscalationEventDefinitionImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20EscalationEventDefinitionImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20EscalationEventDefinitionImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20EscalationEventDefinitionImpl >> text: atext [
	^ text := atext
]
