"
ConversationNode is the abstract super class for all elements that can comprise the Conversation elements of a Collaboration diagram, which are Conversation, Sub-Conversation, and Call Conversation.
"
Class {
	#name : #BPMN20ConversationNodeImpl,
	#superclass : #BPMN20BaseElementImpl,
	#instVars : [
		'correlationKeys',
		'NAME_EDEFAULT',
		'participantRefs',
		'name',
		'messageFlowRefs'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20ConversationNodeImpl class >> annotation [
<MSEClass: #BPMN20ConversationNodeImpl  super: #BPMN20BaseElementImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20ConversationNodeImpl >> NAME_EDEFAULT [
^ NAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20ConversationNodeImpl >> NAME_EDEFAULT: aNAME_EDEFAULT [
^ NAME_EDEFAULT := aNAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20ConversationNodeImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20ConversationNodeImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20ConversationNodeImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20ConversationNodeImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20ConversationNodeImpl >> calledCollaborationRef [
	^ calledCollaborationRef
]

{ #category : #'as yet unclassified' }
BPMN20ConversationNodeImpl >> calledCollaborationRef: acalledCollaborationRef [
	^ calledCollaborationRef := acalledCollaborationRef
]

{ #category : #'as yet unclassified' }
BPMN20ConversationNodeImpl >> conversationNodes [
	^ conversationNodes
]

{ #category : #'as yet unclassified' }
BPMN20ConversationNodeImpl >> conversationNodes: aconversationNodes [
	^ conversationNodes := aconversationNodes
]

{ #category : #'as yet unclassified' }
BPMN20ConversationNodeImpl >> correlationKeys [
^ correlationKeys
]

{ #category : #'as yet unclassified' }
BPMN20ConversationNodeImpl >> correlationKeys: acorrelationKeys [
^ correlationKeys := acorrelationKeys
]

{ #category : #'as yet unclassified' }
BPMN20ConversationNodeImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20ConversationNodeImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20ConversationNodeImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20ConversationNodeImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20ConversationNodeImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20ConversationNodeImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20ConversationNodeImpl >> messageFlowRefs [
^ messageFlowRefs
]

{ #category : #'as yet unclassified' }
BPMN20ConversationNodeImpl >> messageFlowRefs: amessageFlowRefs [
^ messageFlowRefs := amessageFlowRefs
]

{ #category : #'as yet unclassified' }
BPMN20ConversationNodeImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20ConversationNodeImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20ConversationNodeImpl >> participantAssociations [
	^ participantAssociations
]

{ #category : #'as yet unclassified' }
BPMN20ConversationNodeImpl >> participantAssociations: aparticipantAssociations [
	^ participantAssociations := aparticipantAssociations
]

{ #category : #'as yet unclassified' }
BPMN20ConversationNodeImpl >> participantRefs [
^ participantRefs
]

{ #category : #'as yet unclassified' }
BPMN20ConversationNodeImpl >> participantRefs: aparticipantRefs [
^ participantRefs := aparticipantRefs
]

{ #category : #'as yet unclassified' }
BPMN20ConversationNodeImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20ConversationNodeImpl >> text: atext [
	^ text := atext
]
