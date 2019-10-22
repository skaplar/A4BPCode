Class {
	#name : #BPMN20DataObjectImpl,
	#superclass : #BPMN20FlowElementImpl,
	#instVars : [
		'IS_COLLECTION_EDEFAULT',
		'dataState',
		'itemSubjectRef'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20DataObjectImpl class >> annotation [
<MSEClass: #BPMN20DataObjectImpl  super: #BPMN20FlowElementImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20DataObjectImpl >> IS_COLLECTION_EDEFAULT [
^ IS_COLLECTION_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20DataObjectImpl >> IS_COLLECTION_EDEFAULT: aIS_COLLECTION_EDEFAULT [
^ IS_COLLECTION_EDEFAULT := aIS_COLLECTION_EDEFAULT
]

{ #category : #visitor }
BPMN20DataObjectImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20DataObjectImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20DataObjectImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20DataObjectImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20DataObjectImpl >> auditing [
	^ auditing
]

{ #category : #'as yet unclassified' }
BPMN20DataObjectImpl >> auditing: aauditing [
	^ auditing := aauditing
]

{ #category : #'as yet unclassified' }
BPMN20DataObjectImpl >> categoryValueRef [
	^ categoryValueRef
]

{ #category : #'as yet unclassified' }
BPMN20DataObjectImpl >> categoryValueRef: acategoryValueRef [
	^ categoryValueRef := acategoryValueRef
]

{ #category : #'as yet unclassified' }
BPMN20DataObjectImpl >> dataState [
^ dataState
]

{ #category : #'as yet unclassified' }
BPMN20DataObjectImpl >> dataState: adataState [
^ dataState := adataState
]

{ #category : #'as yet unclassified' }
BPMN20DataObjectImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20DataObjectImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20DataObjectImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20DataObjectImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20DataObjectImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20DataObjectImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20DataObjectImpl >> isCollection [
	^ isCollection
]

{ #category : #'as yet unclassified' }
BPMN20DataObjectImpl >> isCollection: aisCollection [
	^ isCollection := aisCollection
]

{ #category : #'as yet unclassified' }
BPMN20DataObjectImpl >> itemSubjectRef [
^ itemSubjectRef
]

{ #category : #'as yet unclassified' }
BPMN20DataObjectImpl >> itemSubjectRef: aitemSubjectRef [
^ itemSubjectRef := aitemSubjectRef
]

{ #category : #'as yet unclassified' }
BPMN20DataObjectImpl >> monitoring [
	^ monitoring
]

{ #category : #'as yet unclassified' }
BPMN20DataObjectImpl >> monitoring: amonitoring [
	^ monitoring := amonitoring
]

{ #category : #'as yet unclassified' }
BPMN20DataObjectImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20DataObjectImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20DataObjectImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20DataObjectImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20DataObjectImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20DataObjectImpl >> text: atext [
	^ text := atext
]
