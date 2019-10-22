Class {
	#name : #BPMN20InterfaceImpl,
	#superclass : #BPMN20RootElementImpl,
	#instVars : [
		'NAME_EDEFAULT',
		'operations',
		'name',
		'implementationRef'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20InterfaceImpl class >> annotation [
<MSEClass: #BPMN20InterfaceImpl  super: #BPMN20RootElementImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20InterfaceImpl >> NAME_EDEFAULT [
^ NAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20InterfaceImpl >> NAME_EDEFAULT: aNAME_EDEFAULT [
^ NAME_EDEFAULT := aNAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20InterfaceImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20InterfaceImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20InterfaceImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20InterfaceImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20InterfaceImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20InterfaceImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20InterfaceImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20InterfaceImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20InterfaceImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20InterfaceImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20InterfaceImpl >> implementationRef [
^ implementationRef
]

{ #category : #'as yet unclassified' }
BPMN20InterfaceImpl >> implementationRef: aimplementationRef [
^ implementationRef := aimplementationRef
]

{ #category : #'as yet unclassified' }
BPMN20InterfaceImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20InterfaceImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20InterfaceImpl >> operations [
^ operations
]

{ #category : #'as yet unclassified' }
BPMN20InterfaceImpl >> operations: aoperations [
^ operations := aoperations
]

{ #category : #'as yet unclassified' }
BPMN20InterfaceImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20InterfaceImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20InterfaceImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20InterfaceImpl >> text: atext [
	^ text := atext
]
