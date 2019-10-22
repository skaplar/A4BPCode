Class {
	#name : #BPMN20ChoreographyImpl,
	#superclass : #BPMN20CollaborationImpl,
	#instVars : [
		'flowElements',
		'laneSets'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20ChoreographyImpl class >> annotation [
<MSEClass: #BPMN20ChoreographyImpl  super: #BPMN20CollaborationImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyImpl >> IS_CLOSED_EDEFAULT [
	^ IS_CLOSED_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyImpl >> IS_CLOSED_EDEFAULT: aIS_CLOSED_EDEFAULT [
	^ IS_CLOSED_EDEFAULT := aIS_CLOSED_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyImpl >> NAME_EDEFAULT [
	^ NAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyImpl >> NAME_EDEFAULT: aNAME_EDEFAULT [
	^ NAME_EDEFAULT := aNAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20ChoreographyImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyImpl >> artifacts [
	^ artifacts
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyImpl >> artifacts: aartifacts [
	^ artifacts := aartifacts
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyImpl >> choreographyRef [
	^ choreographyRef
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyImpl >> choreographyRef: achoreographyRef [
	^ choreographyRef := achoreographyRef
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyImpl >> conversationAssociations [
	^ conversationAssociations
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyImpl >> conversationAssociations: aconversationAssociations [
	^ conversationAssociations := aconversationAssociations
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyImpl >> conversationLinks [
	^ conversationLinks
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyImpl >> conversationLinks: aconversationLinks [
	^ conversationLinks := aconversationLinks
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyImpl >> conversations [
	^ conversations
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyImpl >> conversations: aconversations [
	^ conversations := aconversations
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyImpl >> correlationKeys [
	^ correlationKeys
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyImpl >> correlationKeys: acorrelationKeys [
	^ correlationKeys := acorrelationKeys
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyImpl >> flowElements [
^ flowElements
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyImpl >> flowElements: aflowElements [
^ flowElements := aflowElements
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyImpl >> initiatingParticipantRef [
	^ initiatingParticipantRef
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyImpl >> initiatingParticipantRef: ainitiatingParticipantRef [
	^ initiatingParticipantRef := ainitiatingParticipantRef
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyImpl >> isClosed [
	^ isClosed
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyImpl >> isClosed: aisClosed [
	^ isClosed := aisClosed
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyImpl >> laneSets [
^ laneSets
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyImpl >> laneSets: alaneSets [
^ laneSets := alaneSets
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyImpl >> messageFlowAssociations [
	^ messageFlowAssociations
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyImpl >> messageFlowAssociations: amessageFlowAssociations [
	^ messageFlowAssociations := amessageFlowAssociations
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyImpl >> messageFlows [
	^ messageFlows
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyImpl >> messageFlows: amessageFlows [
	^ messageFlows := amessageFlows
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyImpl >> participantAssociations [
	^ participantAssociations
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyImpl >> participantAssociations: aparticipantAssociations [
	^ participantAssociations := aparticipantAssociations
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyImpl >> participants [
	^ participants
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyImpl >> participants: aparticipants [
	^ participants := aparticipants
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyImpl >> text: atext [
	^ text := atext
]
