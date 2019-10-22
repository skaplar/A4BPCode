Class {
	#name : #BPMN20DataInputAssociationImpl,
	#superclass : #BPMN20DataAssociationImpl,
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20DataInputAssociationImpl class >> annotation [
<MSEClass: #BPMN20DataInputAssociationImpl  super: #BPMN20DataAssociationImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20DataInputAssociationImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20DataInputAssociationImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20DataInputAssociationImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20DataInputAssociationImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20DataInputAssociationImpl >> assignment [
	^ assignment
]

{ #category : #'as yet unclassified' }
BPMN20DataInputAssociationImpl >> assignment: aassignment [
	^ assignment := aassignment
]

{ #category : #'as yet unclassified' }
BPMN20DataInputAssociationImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20DataInputAssociationImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20DataInputAssociationImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20DataInputAssociationImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20DataInputAssociationImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20DataInputAssociationImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20DataInputAssociationImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20DataInputAssociationImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20DataInputAssociationImpl >> sourceRef [
	^ sourceRef
]

{ #category : #'as yet unclassified' }
BPMN20DataInputAssociationImpl >> sourceRef: asourceRef [
	^ sourceRef := asourceRef
]

{ #category : #'as yet unclassified' }
BPMN20DataInputAssociationImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20DataInputAssociationImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20DataInputAssociationImpl >> targetRef [
	^ targetRef
]

{ #category : #'as yet unclassified' }
BPMN20DataInputAssociationImpl >> targetRef: atargetRef [
	^ targetRef := atargetRef
]

{ #category : #'as yet unclassified' }
BPMN20DataInputAssociationImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20DataInputAssociationImpl >> text: atext [
	^ text := atext
]

{ #category : #'as yet unclassified' }
BPMN20DataInputAssociationImpl >> transformation [
	^ transformation
]

{ #category : #'as yet unclassified' }
BPMN20DataInputAssociationImpl >> transformation: atransformation [
	^ transformation := atransformation
]
