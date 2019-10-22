Class {
	#name : #BPMN20GlobalChoreographyTaskImpl,
	#superclass : #BPMN20ChoreographyImpl,
	#instVars : [
		'initiatingParticipantRef'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20GlobalChoreographyTaskImpl class >> annotation [
<MSEClass: #BPMN20GlobalChoreographyTaskImpl  super: #BPMN20ChoreographyImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20GlobalChoreographyTaskImpl >> IS_CLOSED_EDEFAULT [
	^ IS_CLOSED_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20GlobalChoreographyTaskImpl >> IS_CLOSED_EDEFAULT: aIS_CLOSED_EDEFAULT [
	^ IS_CLOSED_EDEFAULT := aIS_CLOSED_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20GlobalChoreographyTaskImpl >> NAME_EDEFAULT [
	^ NAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20GlobalChoreographyTaskImpl >> NAME_EDEFAULT: aNAME_EDEFAULT [
	^ NAME_EDEFAULT := aNAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20GlobalChoreographyTaskImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20GlobalChoreographyTaskImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20GlobalChoreographyTaskImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20GlobalChoreographyTaskImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20GlobalChoreographyTaskImpl >> artifacts [
	^ artifacts
]

{ #category : #'as yet unclassified' }
BPMN20GlobalChoreographyTaskImpl >> artifacts: aartifacts [
	^ artifacts := aartifacts
]

{ #category : #'as yet unclassified' }
BPMN20GlobalChoreographyTaskImpl >> choreographyRef [
	^ choreographyRef
]

{ #category : #'as yet unclassified' }
BPMN20GlobalChoreographyTaskImpl >> choreographyRef: achoreographyRef [
	^ choreographyRef := achoreographyRef
]

{ #category : #'as yet unclassified' }
BPMN20GlobalChoreographyTaskImpl >> conversationAssociations [
	^ conversationAssociations
]

{ #category : #'as yet unclassified' }
BPMN20GlobalChoreographyTaskImpl >> conversationAssociations: aconversationAssociations [
	^ conversationAssociations := aconversationAssociations
]

{ #category : #'as yet unclassified' }
BPMN20GlobalChoreographyTaskImpl >> conversationLinks [
	^ conversationLinks
]

{ #category : #'as yet unclassified' }
BPMN20GlobalChoreographyTaskImpl >> conversationLinks: aconversationLinks [
	^ conversationLinks := aconversationLinks
]

{ #category : #'as yet unclassified' }
BPMN20GlobalChoreographyTaskImpl >> conversations [
	^ conversations
]

{ #category : #'as yet unclassified' }
BPMN20GlobalChoreographyTaskImpl >> conversations: aconversations [
	^ conversations := aconversations
]

{ #category : #'as yet unclassified' }
BPMN20GlobalChoreographyTaskImpl >> correlationKeys [
	^ correlationKeys
]

{ #category : #'as yet unclassified' }
BPMN20GlobalChoreographyTaskImpl >> correlationKeys: acorrelationKeys [
	^ correlationKeys := acorrelationKeys
]

{ #category : #'as yet unclassified' }
BPMN20GlobalChoreographyTaskImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20GlobalChoreographyTaskImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20GlobalChoreographyTaskImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20GlobalChoreographyTaskImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20GlobalChoreographyTaskImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20GlobalChoreographyTaskImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20GlobalChoreographyTaskImpl >> flowElements [
	^ flowElements
]

{ #category : #'as yet unclassified' }
BPMN20GlobalChoreographyTaskImpl >> flowElements: aflowElements [
	^ flowElements := aflowElements
]

{ #category : #'as yet unclassified' }
BPMN20GlobalChoreographyTaskImpl >> initiatingParticipantRef [
^ initiatingParticipantRef
]

{ #category : #'as yet unclassified' }
BPMN20GlobalChoreographyTaskImpl >> initiatingParticipantRef: ainitiatingParticipantRef [
^ initiatingParticipantRef := ainitiatingParticipantRef
]

{ #category : #'as yet unclassified' }
BPMN20GlobalChoreographyTaskImpl >> isClosed [
	^ isClosed
]

{ #category : #'as yet unclassified' }
BPMN20GlobalChoreographyTaskImpl >> isClosed: aisClosed [
	^ isClosed := aisClosed
]

{ #category : #'as yet unclassified' }
BPMN20GlobalChoreographyTaskImpl >> laneSets [
	^ laneSets
]

{ #category : #'as yet unclassified' }
BPMN20GlobalChoreographyTaskImpl >> laneSets: alaneSets [
	^ laneSets := alaneSets
]

{ #category : #'as yet unclassified' }
BPMN20GlobalChoreographyTaskImpl >> messageFlowAssociations [
	^ messageFlowAssociations
]

{ #category : #'as yet unclassified' }
BPMN20GlobalChoreographyTaskImpl >> messageFlowAssociations: amessageFlowAssociations [
	^ messageFlowAssociations := amessageFlowAssociations
]

{ #category : #'as yet unclassified' }
BPMN20GlobalChoreographyTaskImpl >> messageFlows [
	^ messageFlows
]

{ #category : #'as yet unclassified' }
BPMN20GlobalChoreographyTaskImpl >> messageFlows: amessageFlows [
	^ messageFlows := amessageFlows
]

{ #category : #'as yet unclassified' }
BPMN20GlobalChoreographyTaskImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20GlobalChoreographyTaskImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20GlobalChoreographyTaskImpl >> participantAssociations [
	^ participantAssociations
]

{ #category : #'as yet unclassified' }
BPMN20GlobalChoreographyTaskImpl >> participantAssociations: aparticipantAssociations [
	^ participantAssociations := aparticipantAssociations
]

{ #category : #'as yet unclassified' }
BPMN20GlobalChoreographyTaskImpl >> participants [
	^ participants
]

{ #category : #'as yet unclassified' }
BPMN20GlobalChoreographyTaskImpl >> participants: aparticipants [
	^ participants := aparticipants
]

{ #category : #'as yet unclassified' }
BPMN20GlobalChoreographyTaskImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20GlobalChoreographyTaskImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20GlobalChoreographyTaskImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20GlobalChoreographyTaskImpl >> text: atext [
	^ text := atext
]
