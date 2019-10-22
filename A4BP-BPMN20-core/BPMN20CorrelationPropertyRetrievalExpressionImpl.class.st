Class {
	#name : #BPMN20CorrelationPropertyRetrievalExpressionImpl,
	#superclass : #BPMN20BaseElementImpl,
	#instVars : [
		'messagePath',
		'messageRef'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20CorrelationPropertyRetrievalExpressionImpl class >> annotation [
<MSEClass: #BPMN20CorrelationPropertyRetrievalExpressionImpl  super: #BPMN20BaseElementImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationPropertyRetrievalExpressionImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20CorrelationPropertyRetrievalExpressionImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationPropertyRetrievalExpressionImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationPropertyRetrievalExpressionImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationPropertyRetrievalExpressionImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationPropertyRetrievalExpressionImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationPropertyRetrievalExpressionImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationPropertyRetrievalExpressionImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationPropertyRetrievalExpressionImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationPropertyRetrievalExpressionImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationPropertyRetrievalExpressionImpl >> messagePath [
^ messagePath
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationPropertyRetrievalExpressionImpl >> messagePath: amessagePath [
^ messagePath := amessagePath
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationPropertyRetrievalExpressionImpl >> messageRef [
^ messageRef
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationPropertyRetrievalExpressionImpl >> messageRef: amessageRef [
^ messageRef := amessageRef
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationPropertyRetrievalExpressionImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationPropertyRetrievalExpressionImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationPropertyRetrievalExpressionImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationPropertyRetrievalExpressionImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationPropertyRetrievalExpressionImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationPropertyRetrievalExpressionImpl >> text: atext [
	^ text := atext
]
