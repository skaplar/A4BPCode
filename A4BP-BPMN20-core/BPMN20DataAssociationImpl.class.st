Class {
	#name : #BPMN20DataAssociationImpl,
	#superclass : #BPMN20BaseElementImpl,
	#instVars : [
		'transformation',
		'assignment',
		'targetRef',
		'sourceRef'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20DataAssociationImpl class >> annotation [
<MSEClass: #BPMN20DataAssociationImpl  super: #BPMN20BaseElementImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20DataAssociationImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20DataAssociationImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20DataAssociationImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20DataAssociationImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20DataAssociationImpl >> assignment [
^ assignment
]

{ #category : #'as yet unclassified' }
BPMN20DataAssociationImpl >> assignment: aassignment [
^ assignment := aassignment
]

{ #category : #'as yet unclassified' }
BPMN20DataAssociationImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20DataAssociationImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20DataAssociationImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20DataAssociationImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20DataAssociationImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20DataAssociationImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20DataAssociationImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20DataAssociationImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20DataAssociationImpl >> sourceRef [
^ sourceRef
]

{ #category : #'as yet unclassified' }
BPMN20DataAssociationImpl >> sourceRef: asourceRef [
^ sourceRef := asourceRef
]

{ #category : #'as yet unclassified' }
BPMN20DataAssociationImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20DataAssociationImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20DataAssociationImpl >> targetRef [
^ targetRef
]

{ #category : #'as yet unclassified' }
BPMN20DataAssociationImpl >> targetRef: atargetRef [
^ targetRef := atargetRef
]

{ #category : #'as yet unclassified' }
BPMN20DataAssociationImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20DataAssociationImpl >> text: atext [
	^ text := atext
]

{ #category : #'as yet unclassified' }
BPMN20DataAssociationImpl >> transformation [
^ transformation
]

{ #category : #'as yet unclassified' }
BPMN20DataAssociationImpl >> transformation: atransformation [
^ transformation := atransformation
]
