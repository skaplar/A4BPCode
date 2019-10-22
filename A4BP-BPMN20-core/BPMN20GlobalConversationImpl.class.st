Class {
	#name : #BPMN20GlobalConversationImpl,
	#superclass : #BPMN20CollaborationImpl,
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20GlobalConversationImpl class >> annotation [
<MSEClass: #BPMN20GlobalConversationImpl  super: #BPMN20CollaborationImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20GlobalConversationImpl >> IS_CLOSED_EDEFAULT [
	^ IS_CLOSED_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20GlobalConversationImpl >> IS_CLOSED_EDEFAULT: aIS_CLOSED_EDEFAULT [
	^ IS_CLOSED_EDEFAULT := aIS_CLOSED_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20GlobalConversationImpl >> NAME_EDEFAULT [
	^ NAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20GlobalConversationImpl >> NAME_EDEFAULT: aNAME_EDEFAULT [
	^ NAME_EDEFAULT := aNAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20GlobalConversationImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20GlobalConversationImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20GlobalConversationImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20GlobalConversationImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20GlobalConversationImpl >> artifacts [
	^ artifacts
]

{ #category : #'as yet unclassified' }
BPMN20GlobalConversationImpl >> artifacts: aartifacts [
	^ artifacts := aartifacts
]

{ #category : #'as yet unclassified' }
BPMN20GlobalConversationImpl >> choreographyRef [
	^ choreographyRef
]

{ #category : #'as yet unclassified' }
BPMN20GlobalConversationImpl >> choreographyRef: achoreographyRef [
	^ choreographyRef := achoreographyRef
]

{ #category : #'as yet unclassified' }
BPMN20GlobalConversationImpl >> conversationAssociations [
	^ conversationAssociations
]

{ #category : #'as yet unclassified' }
BPMN20GlobalConversationImpl >> conversationAssociations: aconversationAssociations [
	^ conversationAssociations := aconversationAssociations
]

{ #category : #'as yet unclassified' }
BPMN20GlobalConversationImpl >> conversationLinks [
	^ conversationLinks
]

{ #category : #'as yet unclassified' }
BPMN20GlobalConversationImpl >> conversationLinks: aconversationLinks [
	^ conversationLinks := aconversationLinks
]

{ #category : #'as yet unclassified' }
BPMN20GlobalConversationImpl >> conversations [
	^ conversations
]

{ #category : #'as yet unclassified' }
BPMN20GlobalConversationImpl >> conversations: aconversations [
	^ conversations := aconversations
]

{ #category : #'as yet unclassified' }
BPMN20GlobalConversationImpl >> correlationKeys [
	^ correlationKeys
]

{ #category : #'as yet unclassified' }
BPMN20GlobalConversationImpl >> correlationKeys: acorrelationKeys [
	^ correlationKeys := acorrelationKeys
]

{ #category : #'as yet unclassified' }
BPMN20GlobalConversationImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20GlobalConversationImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20GlobalConversationImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20GlobalConversationImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20GlobalConversationImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20GlobalConversationImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20GlobalConversationImpl >> isClosed [
	^ isClosed
]

{ #category : #'as yet unclassified' }
BPMN20GlobalConversationImpl >> isClosed: aisClosed [
	^ isClosed := aisClosed
]

{ #category : #'as yet unclassified' }
BPMN20GlobalConversationImpl >> messageFlowAssociations [
	^ messageFlowAssociations
]

{ #category : #'as yet unclassified' }
BPMN20GlobalConversationImpl >> messageFlowAssociations: amessageFlowAssociations [
	^ messageFlowAssociations := amessageFlowAssociations
]

{ #category : #'as yet unclassified' }
BPMN20GlobalConversationImpl >> messageFlows [
	^ messageFlows
]

{ #category : #'as yet unclassified' }
BPMN20GlobalConversationImpl >> messageFlows: amessageFlows [
	^ messageFlows := amessageFlows
]

{ #category : #'as yet unclassified' }
BPMN20GlobalConversationImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20GlobalConversationImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20GlobalConversationImpl >> participantAssociations [
	^ participantAssociations
]

{ #category : #'as yet unclassified' }
BPMN20GlobalConversationImpl >> participantAssociations: aparticipantAssociations [
	^ participantAssociations := aparticipantAssociations
]

{ #category : #'as yet unclassified' }
BPMN20GlobalConversationImpl >> participants [
	^ participants
]

{ #category : #'as yet unclassified' }
BPMN20GlobalConversationImpl >> participants: aparticipants [
	^ participants := aparticipants
]

{ #category : #'as yet unclassified' }
BPMN20GlobalConversationImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20GlobalConversationImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20GlobalConversationImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20GlobalConversationImpl >> text: atext [
	^ text := atext
]
