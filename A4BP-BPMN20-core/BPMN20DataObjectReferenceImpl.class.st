Class {
	#name : #BPMN20DataObjectReferenceImpl,
	#superclass : #BPMN20FlowElementImpl,
	#instVars : [
		'dataState',
		'itemSubjectRef',
		'dataObjectRef'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20DataObjectReferenceImpl class >> annotation [
<MSEClass: #BPMN20DataObjectReferenceImpl  super: #BPMN20FlowElementImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20DataObjectReferenceImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20DataObjectReferenceImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20DataObjectReferenceImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20DataObjectReferenceImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20DataObjectReferenceImpl >> auditing [
	^ auditing
]

{ #category : #'as yet unclassified' }
BPMN20DataObjectReferenceImpl >> auditing: aauditing [
	^ auditing := aauditing
]

{ #category : #'as yet unclassified' }
BPMN20DataObjectReferenceImpl >> categoryValueRef [
	^ categoryValueRef
]

{ #category : #'as yet unclassified' }
BPMN20DataObjectReferenceImpl >> categoryValueRef: acategoryValueRef [
	^ categoryValueRef := acategoryValueRef
]

{ #category : #'as yet unclassified' }
BPMN20DataObjectReferenceImpl >> dataObjectRef [
^ dataObjectRef
]

{ #category : #'as yet unclassified' }
BPMN20DataObjectReferenceImpl >> dataObjectRef: adataObjectRef [
^ dataObjectRef := adataObjectRef
]

{ #category : #'as yet unclassified' }
BPMN20DataObjectReferenceImpl >> dataState [
^ dataState
]

{ #category : #'as yet unclassified' }
BPMN20DataObjectReferenceImpl >> dataState: adataState [
^ dataState := adataState
]

{ #category : #'as yet unclassified' }
BPMN20DataObjectReferenceImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20DataObjectReferenceImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20DataObjectReferenceImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20DataObjectReferenceImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20DataObjectReferenceImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20DataObjectReferenceImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20DataObjectReferenceImpl >> itemSubjectRef [
^ itemSubjectRef
]

{ #category : #'as yet unclassified' }
BPMN20DataObjectReferenceImpl >> itemSubjectRef: aitemSubjectRef [
^ itemSubjectRef := aitemSubjectRef
]

{ #category : #'as yet unclassified' }
BPMN20DataObjectReferenceImpl >> monitoring [
	^ monitoring
]

{ #category : #'as yet unclassified' }
BPMN20DataObjectReferenceImpl >> monitoring: amonitoring [
	^ monitoring := amonitoring
]

{ #category : #'as yet unclassified' }
BPMN20DataObjectReferenceImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20DataObjectReferenceImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20DataObjectReferenceImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20DataObjectReferenceImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20DataObjectReferenceImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20DataObjectReferenceImpl >> text: atext [
	^ text := atext
]
