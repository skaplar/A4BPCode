Class {
	#name : #BPMN20MessageEventDefinitionImpl,
	#superclass : #BPMN20EventDefinitionImpl,
	#instVars : [
		'messageRef',
		'operationRef'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20MessageEventDefinitionImpl class >> annotation [
<MSEClass: #BPMN20MessageEventDefinitionImpl  super: #BPMN20EventDefinitionImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20MessageEventDefinitionImpl class >> fillElementsIn: aModel from: document [
	| visitor |
	visitor := BPMN20ParserSetinBPMN20MessageEventDefinitionImplVisitor new.
	visitor element: aModel.
	self fillElementsIn: aModel from: document visitor: visitor.
]

{ #category : #'as yet unclassified' }
BPMN20MessageEventDefinitionImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20MessageEventDefinitionImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20MessageEventDefinitionImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20MessageEventDefinitionImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20MessageEventDefinitionImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20MessageEventDefinitionImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20MessageEventDefinitionImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20MessageEventDefinitionImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20MessageEventDefinitionImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20MessageEventDefinitionImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20MessageEventDefinitionImpl >> messageRef [
^ messageRef
]

{ #category : #'as yet unclassified' }
BPMN20MessageEventDefinitionImpl >> messageRef: amessageRef [
^ messageRef := amessageRef
]

{ #category : #'as yet unclassified' }
BPMN20MessageEventDefinitionImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20MessageEventDefinitionImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20MessageEventDefinitionImpl >> operationRef [
^ operationRef
]

{ #category : #'as yet unclassified' }
BPMN20MessageEventDefinitionImpl >> operationRef: aoperationRef [
^ operationRef := aoperationRef
]

{ #category : #'as yet unclassified' }
BPMN20MessageEventDefinitionImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20MessageEventDefinitionImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20MessageEventDefinitionImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20MessageEventDefinitionImpl >> text: atext [
	^ text := atext
]
