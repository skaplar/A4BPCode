Class {
	#name : #BPMN20DataStoreReferenceImpl,
	#superclass : #BPMN20FlowElementImpl,
	#instVars : [
		'dataState',
		'dataStoreRef',
		'itemSubjectRef'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20DataStoreReferenceImpl class >> annotation [
<MSEClass: #BPMN20DataStoreReferenceImpl  super: #BPMN20FlowElementImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #visitor }
BPMN20DataStoreReferenceImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20DataStoreReferenceImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20DataStoreReferenceImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20DataStoreReferenceImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20DataStoreReferenceImpl >> auditing [
	^ auditing
]

{ #category : #'as yet unclassified' }
BPMN20DataStoreReferenceImpl >> auditing: aauditing [
	^ auditing := aauditing
]

{ #category : #'as yet unclassified' }
BPMN20DataStoreReferenceImpl >> categoryValueRef [
	^ categoryValueRef
]

{ #category : #'as yet unclassified' }
BPMN20DataStoreReferenceImpl >> categoryValueRef: acategoryValueRef [
	^ categoryValueRef := acategoryValueRef
]

{ #category : #'as yet unclassified' }
BPMN20DataStoreReferenceImpl >> dataState [
^ dataState
]

{ #category : #'as yet unclassified' }
BPMN20DataStoreReferenceImpl >> dataState: adataState [
^ dataState := adataState
]

{ #category : #'as yet unclassified' }
BPMN20DataStoreReferenceImpl >> dataStoreRef [
^ dataStoreRef
]

{ #category : #'as yet unclassified' }
BPMN20DataStoreReferenceImpl >> dataStoreRef: adataStoreRef [
^ dataStoreRef := adataStoreRef
]

{ #category : #'as yet unclassified' }
BPMN20DataStoreReferenceImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20DataStoreReferenceImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20DataStoreReferenceImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20DataStoreReferenceImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20DataStoreReferenceImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20DataStoreReferenceImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20DataStoreReferenceImpl >> itemSubjectRef [
^ itemSubjectRef
]

{ #category : #'as yet unclassified' }
BPMN20DataStoreReferenceImpl >> itemSubjectRef: aitemSubjectRef [
^ itemSubjectRef := aitemSubjectRef
]

{ #category : #'as yet unclassified' }
BPMN20DataStoreReferenceImpl >> monitoring [
	^ monitoring
]

{ #category : #'as yet unclassified' }
BPMN20DataStoreReferenceImpl >> monitoring: amonitoring [
	^ monitoring := amonitoring
]

{ #category : #'as yet unclassified' }
BPMN20DataStoreReferenceImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20DataStoreReferenceImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20DataStoreReferenceImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20DataStoreReferenceImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20DataStoreReferenceImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20DataStoreReferenceImpl >> text: atext [
	^ text := atext
]
