Class {
	#name : #BPMN20GroupImpl,
	#superclass : #BPMN20ArtifactImpl,
	#instVars : [
		'categoryValueRef'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20GroupImpl class >> annotation [
<MSEClass: #BPMN20GroupImpl  super: #BPMN20ArtifactImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20GroupImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20GroupImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20GroupImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20GroupImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #getset }
BPMN20GroupImpl >> categoryValueRef [
^ categoryValueRef
]

{ #category : #getset }
BPMN20GroupImpl >> categoryValueRef: acategoryValueRef [
^ categoryValueRef := acategoryValueRef
]

{ #category : #'as yet unclassified' }
BPMN20GroupImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20GroupImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20GroupImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20GroupImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20GroupImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20GroupImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20GroupImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20GroupImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20GroupImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20GroupImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20GroupImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20GroupImpl >> text: atext [
	^ text := atext
]
