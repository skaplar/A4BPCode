Class {
	#name : #BPMN20DataOutputAssociationImpl,
	#superclass : #BPMN20DataAssociationImpl,
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20DataOutputAssociationImpl class >> annotation [
<MSEClass: #BPMN20DataOutputAssociationImpl  super: #BPMN20DataAssociationImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20DataOutputAssociationImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20DataOutputAssociationImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20DataOutputAssociationImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20DataOutputAssociationImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20DataOutputAssociationImpl >> assignment [
	^ assignment
]

{ #category : #'as yet unclassified' }
BPMN20DataOutputAssociationImpl >> assignment: aassignment [
	^ assignment := aassignment
]

{ #category : #'as yet unclassified' }
BPMN20DataOutputAssociationImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20DataOutputAssociationImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20DataOutputAssociationImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20DataOutputAssociationImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20DataOutputAssociationImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20DataOutputAssociationImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20DataOutputAssociationImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20DataOutputAssociationImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20DataOutputAssociationImpl >> sourceRef [
	^ sourceRef
]

{ #category : #'as yet unclassified' }
BPMN20DataOutputAssociationImpl >> sourceRef: asourceRef [
	^ sourceRef := asourceRef
]

{ #category : #'as yet unclassified' }
BPMN20DataOutputAssociationImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20DataOutputAssociationImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20DataOutputAssociationImpl >> targetRef [
	^ targetRef
]

{ #category : #'as yet unclassified' }
BPMN20DataOutputAssociationImpl >> targetRef: atargetRef [
	^ targetRef := atargetRef
]

{ #category : #'as yet unclassified' }
BPMN20DataOutputAssociationImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20DataOutputAssociationImpl >> text: atext [
	^ text := atext
]

{ #category : #'as yet unclassified' }
BPMN20DataOutputAssociationImpl >> transformation [
	^ transformation
]

{ #category : #'as yet unclassified' }
BPMN20DataOutputAssociationImpl >> transformation: atransformation [
	^ transformation := atransformation
]
