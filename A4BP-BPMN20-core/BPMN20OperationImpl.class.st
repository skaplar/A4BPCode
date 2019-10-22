Class {
	#name : #BPMN20OperationImpl,
	#superclass : #BPMN20BaseElementImpl,
	#instVars : [
		'errorRefs',
		'outMessageRef',
		'name',
		'implementationRef',
		'NAME_EDEFAULT',
		'inMessageRef'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20OperationImpl class >> annotation [
<MSEClass: #BPMN20OperationImpl  super: #BPMN20BaseElementImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20OperationImpl >> NAME_EDEFAULT [
^ NAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20OperationImpl >> NAME_EDEFAULT: aNAME_EDEFAULT [
^ NAME_EDEFAULT := aNAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20OperationImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20OperationImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20OperationImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20OperationImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20OperationImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20OperationImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20OperationImpl >> errorRefs [
^ errorRefs
]

{ #category : #'as yet unclassified' }
BPMN20OperationImpl >> errorRefs: aerrorRefs [
^ errorRefs := aerrorRefs
]

{ #category : #'as yet unclassified' }
BPMN20OperationImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20OperationImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20OperationImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20OperationImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20OperationImpl >> implementationRef [
^ implementationRef
]

{ #category : #'as yet unclassified' }
BPMN20OperationImpl >> implementationRef: aimplementationRef [
^ implementationRef := aimplementationRef
]

{ #category : #'as yet unclassified' }
BPMN20OperationImpl >> inMessageRef [
^ inMessageRef
]

{ #category : #'as yet unclassified' }
BPMN20OperationImpl >> inMessageRef: ainMessageRef [
^ inMessageRef := ainMessageRef
]

{ #category : #'as yet unclassified' }
BPMN20OperationImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20OperationImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20OperationImpl >> outMessageRef [
^ outMessageRef
]

{ #category : #'as yet unclassified' }
BPMN20OperationImpl >> outMessageRef: aoutMessageRef [
^ outMessageRef := aoutMessageRef
]

{ #category : #'as yet unclassified' }
BPMN20OperationImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20OperationImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20OperationImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20OperationImpl >> text: atext [
	^ text := atext
]
