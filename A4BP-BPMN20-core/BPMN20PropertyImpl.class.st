Class {
	#name : #BPMN20PropertyImpl,
	#superclass : #BPMN20ItemAwareElementImpl,
	#instVars : [
		'name',
		'NAME_EDEFAULT'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20PropertyImpl class >> annotation [
<MSEClass: #BPMN20PropertyImpl  super: #BPMN20ItemAwareElementImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20PropertyImpl >> NAME_EDEFAULT [
^ NAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20PropertyImpl >> NAME_EDEFAULT: aNAME_EDEFAULT [
^ NAME_EDEFAULT := aNAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20PropertyImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20PropertyImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20PropertyImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20PropertyImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20PropertyImpl >> dataState [
	^ dataState
]

{ #category : #'as yet unclassified' }
BPMN20PropertyImpl >> dataState: adataState [
	^ dataState := adataState
]

{ #category : #'as yet unclassified' }
BPMN20PropertyImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20PropertyImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20PropertyImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20PropertyImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20PropertyImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20PropertyImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20PropertyImpl >> itemSubjectRef [
	^ itemSubjectRef
]

{ #category : #'as yet unclassified' }
BPMN20PropertyImpl >> itemSubjectRef: aitemSubjectRef [
	^ itemSubjectRef := aitemSubjectRef
]

{ #category : #'as yet unclassified' }
BPMN20PropertyImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20PropertyImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20PropertyImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20PropertyImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20PropertyImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20PropertyImpl >> text: atext [
	^ text := atext
]
