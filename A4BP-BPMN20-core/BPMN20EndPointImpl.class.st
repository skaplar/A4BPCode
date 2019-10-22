Class {
	#name : #BPMN20EndPointImpl,
	#superclass : #BPMN20RootElementImpl,
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20EndPointImpl class >> annotation [
<MSEClass: #BPMN20EndPointImpl  super: #BPMN20RootElementImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20EndPointImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20EndPointImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20EndPointImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20EndPointImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20EndPointImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20EndPointImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20EndPointImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20EndPointImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20EndPointImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20EndPointImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20EndPointImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20EndPointImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20EndPointImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20EndPointImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20EndPointImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20EndPointImpl >> text: atext [
	^ text := atext
]
