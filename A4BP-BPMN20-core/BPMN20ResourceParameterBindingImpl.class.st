Class {
	#name : #BPMN20ResourceParameterBindingImpl,
	#superclass : #BPMN20BaseElementImpl,
	#instVars : [
		'parameterRef',
		'expression'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20ResourceParameterBindingImpl class >> annotation [
<MSEClass: #BPMN20ResourceParameterBindingImpl  super: #BPMN20BaseElementImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20ResourceParameterBindingImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20ResourceParameterBindingImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20ResourceParameterBindingImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20ResourceParameterBindingImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20ResourceParameterBindingImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20ResourceParameterBindingImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20ResourceParameterBindingImpl >> expression [
^ expression
]

{ #category : #'as yet unclassified' }
BPMN20ResourceParameterBindingImpl >> expression: aexpression [
^ expression := aexpression
]

{ #category : #'as yet unclassified' }
BPMN20ResourceParameterBindingImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20ResourceParameterBindingImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20ResourceParameterBindingImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20ResourceParameterBindingImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20ResourceParameterBindingImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20ResourceParameterBindingImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20ResourceParameterBindingImpl >> parameterRef [
^ parameterRef
]

{ #category : #'as yet unclassified' }
BPMN20ResourceParameterBindingImpl >> parameterRef: aparameterRef [
^ parameterRef := aparameterRef
]

{ #category : #'as yet unclassified' }
BPMN20ResourceParameterBindingImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20ResourceParameterBindingImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20ResourceParameterBindingImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20ResourceParameterBindingImpl >> text: atext [
	^ text := atext
]
