Class {
	#name : #BPMN20InputOutputBindingImpl,
	#superclass : #BPMN20BaseElementImpl,
	#instVars : [
		'inputDataRef',
		'outputDataRef',
		'operationRef'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20InputOutputBindingImpl class >> annotation [
<MSEClass: #BPMN20InputOutputBindingImpl  super: #BPMN20BaseElementImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20InputOutputBindingImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20InputOutputBindingImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20InputOutputBindingImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20InputOutputBindingImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20InputOutputBindingImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20InputOutputBindingImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20InputOutputBindingImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20InputOutputBindingImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20InputOutputBindingImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20InputOutputBindingImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20InputOutputBindingImpl >> inputDataRef [
^ inputDataRef
]

{ #category : #'as yet unclassified' }
BPMN20InputOutputBindingImpl >> inputDataRef: ainputDataRef [
^ inputDataRef := ainputDataRef
]

{ #category : #'as yet unclassified' }
BPMN20InputOutputBindingImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20InputOutputBindingImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20InputOutputBindingImpl >> operationRef [
^ operationRef
]

{ #category : #'as yet unclassified' }
BPMN20InputOutputBindingImpl >> operationRef: aoperationRef [
^ operationRef := aoperationRef
]

{ #category : #'as yet unclassified' }
BPMN20InputOutputBindingImpl >> outputDataRef [
^ outputDataRef
]

{ #category : #'as yet unclassified' }
BPMN20InputOutputBindingImpl >> outputDataRef: aoutputDataRef [
^ outputDataRef := aoutputDataRef
]

{ #category : #'as yet unclassified' }
BPMN20InputOutputBindingImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20InputOutputBindingImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20InputOutputBindingImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20InputOutputBindingImpl >> text: atext [
	^ text := atext
]
