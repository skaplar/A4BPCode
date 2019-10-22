Class {
	#name : #BPMN20CompensateEventDefinitionImpl,
	#superclass : #BPMN20EventDefinitionImpl,
	#instVars : [
		'waitForCompletion',
		'activityRef',
		'WAIT_FOR_COMPLETION_EDEFAULT'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20CompensateEventDefinitionImpl class >> annotation [
<MSEClass: #BPMN20CompensateEventDefinitionImpl  super: #BPMN20EventDefinitionImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20CompensateEventDefinitionImpl class >> fillElementsIn: aModel from: document [
	| visitor |
	visitor := BPMN20ParserSetinBPMN20CompensateEventDefinitionImplVisitor new.
	visitor element: aModel.
	self fillElementsIn: aModel from: document visitor: visitor.
]

{ #category : #'as yet unclassified' }
BPMN20CompensateEventDefinitionImpl >> WAIT_FOR_COMPLETION_EDEFAULT [
^ WAIT_FOR_COMPLETION_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20CompensateEventDefinitionImpl >> WAIT_FOR_COMPLETION_EDEFAULT: aWAIT_FOR_COMPLETION_EDEFAULT [
^ WAIT_FOR_COMPLETION_EDEFAULT := aWAIT_FOR_COMPLETION_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20CompensateEventDefinitionImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20CompensateEventDefinitionImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20CompensateEventDefinitionImpl >> activityRef [
^ activityRef
]

{ #category : #'as yet unclassified' }
BPMN20CompensateEventDefinitionImpl >> activityRef: aactivityRef [
^ activityRef := aactivityRef
]

{ #category : #'as yet unclassified' }
BPMN20CompensateEventDefinitionImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20CompensateEventDefinitionImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20CompensateEventDefinitionImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20CompensateEventDefinitionImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20CompensateEventDefinitionImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20CompensateEventDefinitionImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20CompensateEventDefinitionImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20CompensateEventDefinitionImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20CompensateEventDefinitionImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20CompensateEventDefinitionImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20CompensateEventDefinitionImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20CompensateEventDefinitionImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20CompensateEventDefinitionImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20CompensateEventDefinitionImpl >> text: atext [
	^ text := atext
]

{ #category : #'as yet unclassified' }
BPMN20CompensateEventDefinitionImpl >> waitForCompletion [
^ waitForCompletion
]

{ #category : #'as yet unclassified' }
BPMN20CompensateEventDefinitionImpl >> waitForCompletion: awaitForCompletion [
^ waitForCompletion := awaitForCompletion
]
