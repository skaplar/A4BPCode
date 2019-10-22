Class {
	#name : #BPMN20ParticipantAssociationImpl,
	#superclass : #BPMN20BaseElementImpl,
	#instVars : [
		'innerParticipantRef',
		'outerParticipantRef'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20ParticipantAssociationImpl class >> annotation [
<MSEClass: #BPMN20ParticipantAssociationImpl  super: #BPMN20BaseElementImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20ParticipantAssociationImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20ParticipantAssociationImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20ParticipantAssociationImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20ParticipantAssociationImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20ParticipantAssociationImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20ParticipantAssociationImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20ParticipantAssociationImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20ParticipantAssociationImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20ParticipantAssociationImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20ParticipantAssociationImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20ParticipantAssociationImpl >> innerParticipantRef [
^ innerParticipantRef
]

{ #category : #'as yet unclassified' }
BPMN20ParticipantAssociationImpl >> innerParticipantRef: ainnerParticipantRef [
^ innerParticipantRef := ainnerParticipantRef
]

{ #category : #'as yet unclassified' }
BPMN20ParticipantAssociationImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20ParticipantAssociationImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20ParticipantAssociationImpl >> outerParticipantRef [
^ outerParticipantRef
]

{ #category : #'as yet unclassified' }
BPMN20ParticipantAssociationImpl >> outerParticipantRef: aouterParticipantRef [
^ outerParticipantRef := aouterParticipantRef
]

{ #category : #'as yet unclassified' }
BPMN20ParticipantAssociationImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20ParticipantAssociationImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20ParticipantAssociationImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20ParticipantAssociationImpl >> text: atext [
	^ text := atext
]
