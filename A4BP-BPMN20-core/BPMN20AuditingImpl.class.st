Class {
	#name : #BPMN20AuditingImpl,
	#superclass : #BPMN20BaseElementImpl,
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20AuditingImpl class >> annotation [
<MSEClass: #BPMN20AuditingImpl  super: #BPMN20BaseElementImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20AuditingImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20AuditingImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20AuditingImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20AuditingImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20AuditingImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20AuditingImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20AuditingImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20AuditingImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20AuditingImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20AuditingImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20AuditingImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20AuditingImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20AuditingImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20AuditingImpl >> text: atext [
	^ text := atext
]
