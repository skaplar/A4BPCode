"
A Conversation is an atomic element for a Conversation (Collaboration) diagram. It represents a set of Message Flows grouped together based on a concept and/or a CorrelationKey. A Conversation will involve two or more Participants.
"
Class {
	#name : #BPMN20ConversationImpl,
	#superclass : #BPMN20ConversationNodeImpl,
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20ConversationImpl class >> annotation [
<MSEClass: #BPMN20ConversationImpl  super: #BPMN20ConversationNodeImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20ConversationImpl >> NAME_EDEFAULT [
	^ NAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20ConversationImpl >> NAME_EDEFAULT: aNAME_EDEFAULT [
	^ NAME_EDEFAULT := aNAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20ConversationImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20ConversationImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20ConversationImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20ConversationImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20ConversationImpl >> correlationKeys [
	^ correlationKeys
]

{ #category : #'as yet unclassified' }
BPMN20ConversationImpl >> correlationKeys: acorrelationKeys [
	^ correlationKeys := acorrelationKeys
]

{ #category : #'as yet unclassified' }
BPMN20ConversationImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20ConversationImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20ConversationImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20ConversationImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20ConversationImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20ConversationImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20ConversationImpl >> messageFlowRefs [
	^ messageFlowRefs
]

{ #category : #'as yet unclassified' }
BPMN20ConversationImpl >> messageFlowRefs: amessageFlowRefs [
	^ messageFlowRefs := amessageFlowRefs
]

{ #category : #'as yet unclassified' }
BPMN20ConversationImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20ConversationImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20ConversationImpl >> participantRefs [
	^ participantRefs
]

{ #category : #'as yet unclassified' }
BPMN20ConversationImpl >> participantRefs: aparticipantRefs [
	^ participantRefs := aparticipantRefs
]

{ #category : #'as yet unclassified' }
BPMN20ConversationImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20ConversationImpl >> text: atext [
	^ text := atext
]
