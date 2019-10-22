Class {
	#name : #BPMN20CorrelationSubscriptionImpl,
	#superclass : #BPMN20BaseElementImpl,
	#instVars : [
		'correlationKeyRef',
		'correlationPropertyBinding'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20CorrelationSubscriptionImpl class >> annotation [
<MSEClass: #BPMN20CorrelationSubscriptionImpl  super: #BPMN20BaseElementImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationSubscriptionImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20CorrelationSubscriptionImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationSubscriptionImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationSubscriptionImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationSubscriptionImpl >> correlationKeyRef [
^ correlationKeyRef
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationSubscriptionImpl >> correlationKeyRef: acorrelationKeyRef [
^ correlationKeyRef := acorrelationKeyRef
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationSubscriptionImpl >> correlationPropertyBinding [
^ correlationPropertyBinding
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationSubscriptionImpl >> correlationPropertyBinding: acorrelationPropertyBinding [
^ correlationPropertyBinding := acorrelationPropertyBinding
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationSubscriptionImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationSubscriptionImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationSubscriptionImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationSubscriptionImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationSubscriptionImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationSubscriptionImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationSubscriptionImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationSubscriptionImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationSubscriptionImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationSubscriptionImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationSubscriptionImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationSubscriptionImpl >> text: atext [
	^ text := atext
]
