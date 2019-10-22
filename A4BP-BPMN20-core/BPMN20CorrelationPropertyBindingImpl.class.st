Class {
	#name : #BPMN20CorrelationPropertyBindingImpl,
	#superclass : #BPMN20BaseElementImpl,
	#instVars : [
		'correlationPropertyRef',
		'dataPath'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20CorrelationPropertyBindingImpl class >> annotation [
<MSEClass: #BPMN20CorrelationPropertyBindingImpl  super: #BPMN20BaseElementImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationPropertyBindingImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20CorrelationPropertyBindingImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationPropertyBindingImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationPropertyBindingImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationPropertyBindingImpl >> correlationPropertyRef [
^ correlationPropertyRef
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationPropertyBindingImpl >> correlationPropertyRef: acorrelationPropertyRef [
^ correlationPropertyRef := acorrelationPropertyRef
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationPropertyBindingImpl >> dataPath [
^ dataPath
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationPropertyBindingImpl >> dataPath: adataPath [
^ dataPath := adataPath
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationPropertyBindingImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationPropertyBindingImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationPropertyBindingImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationPropertyBindingImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationPropertyBindingImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationPropertyBindingImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationPropertyBindingImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationPropertyBindingImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationPropertyBindingImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationPropertyBindingImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationPropertyBindingImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationPropertyBindingImpl >> text: atext [
	^ text := atext
]
