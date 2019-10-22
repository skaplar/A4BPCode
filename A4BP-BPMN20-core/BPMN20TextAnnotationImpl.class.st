Class {
	#name : #BPMN20TextAnnotationImpl,
	#superclass : #BPMN20ArtifactImpl,
	#instVars : [
		'textFormat'
	],
	#classVars : [
		'TEXT_FORMAT_EDEFAULT'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20TextAnnotationImpl class >> annotation [
<MSEClass: #BPMN20TextAnnotationImpl  super: #BPMN20ArtifactImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20TextAnnotationImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20TextAnnotationImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20TextAnnotationImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20TextAnnotationImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20TextAnnotationImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20TextAnnotationImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20TextAnnotationImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20TextAnnotationImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20TextAnnotationImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20TextAnnotationImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20TextAnnotationImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20TextAnnotationImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20TextAnnotationImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20TextAnnotationImpl >> state: astate [
	^ state := astate
]

{ #category : #getset }
BPMN20TextAnnotationImpl >> text [
	^ text
]

{ #category : #getset }
BPMN20TextAnnotationImpl >> text: atext [
	^ text := atext
]

{ #category : #getset }
BPMN20TextAnnotationImpl >> textFormat [
^ textFormat
]

{ #category : #getset }
BPMN20TextAnnotationImpl >> textFormat: atextFormat [
^ textFormat := atextFormat
]
