Class {
	#name : #BPMN20ConversationAssociationImpl,
	#superclass : #BPMN20BaseElementImpl,
	#instVars : [
		'innerConversationNodeRef',
		'outerConversationNodeRef'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20ConversationAssociationImpl class >> annotation [
<MSEClass: #BPMN20ConversationAssociationImpl  super: #BPMN20BaseElementImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20ConversationAssociationImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20ConversationAssociationImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20ConversationAssociationImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20ConversationAssociationImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20ConversationAssociationImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20ConversationAssociationImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20ConversationAssociationImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20ConversationAssociationImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20ConversationAssociationImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20ConversationAssociationImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20ConversationAssociationImpl >> innerConversationNodeRef [
^ innerConversationNodeRef
]

{ #category : #'as yet unclassified' }
BPMN20ConversationAssociationImpl >> innerConversationNodeRef: ainnerConversationNodeRef [
^ innerConversationNodeRef := ainnerConversationNodeRef
]

{ #category : #'as yet unclassified' }
BPMN20ConversationAssociationImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20ConversationAssociationImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20ConversationAssociationImpl >> outerConversationNodeRef [
^ outerConversationNodeRef
]

{ #category : #'as yet unclassified' }
BPMN20ConversationAssociationImpl >> outerConversationNodeRef: aouterConversationNodeRef [
^ outerConversationNodeRef := aouterConversationNodeRef
]

{ #category : #'as yet unclassified' }
BPMN20ConversationAssociationImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20ConversationAssociationImpl >> text: atext [
	^ text := atext
]
