Class {
	#name : #BPMN20RenderingImpl,
	#superclass : #BPMN20BaseElementImpl,
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20RenderingImpl class >> annotation [
<MSEClass: #BPMN20RenderingImpl  super: #BPMN20BaseElementImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20RenderingImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20RenderingImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20RenderingImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20RenderingImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20RenderingImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20RenderingImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20RenderingImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20RenderingImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20RenderingImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20RenderingImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20RenderingImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20RenderingImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20RenderingImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20RenderingImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20RenderingImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20RenderingImpl >> text: atext [
	^ text := atext
]
