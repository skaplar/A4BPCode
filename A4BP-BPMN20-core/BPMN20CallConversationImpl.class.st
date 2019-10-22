Class {
	#name : #BPMN20CallConversationImpl,
	#superclass : #BPMN20ConversationNodeImpl,
	#instVars : [
		'participantAssociations',
		'calledCollaborationRef'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20CallConversationImpl class >> annotation [
<MSEClass: #BPMN20CallConversationImpl  super: #BPMN20ConversationNodeImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20CallConversationImpl >> NAME_EDEFAULT [
	^ NAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20CallConversationImpl >> NAME_EDEFAULT: aNAME_EDEFAULT [
	^ NAME_EDEFAULT := aNAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20CallConversationImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20CallConversationImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20CallConversationImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20CallConversationImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20CallConversationImpl >> calledCollaborationRef [
^ calledCollaborationRef
]

{ #category : #'as yet unclassified' }
BPMN20CallConversationImpl >> calledCollaborationRef: acalledCollaborationRef [
^ calledCollaborationRef := acalledCollaborationRef
]

{ #category : #'as yet unclassified' }
BPMN20CallConversationImpl >> correlationKeys [
	^ correlationKeys
]

{ #category : #'as yet unclassified' }
BPMN20CallConversationImpl >> correlationKeys: acorrelationKeys [
	^ correlationKeys := acorrelationKeys
]

{ #category : #'as yet unclassified' }
BPMN20CallConversationImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20CallConversationImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20CallConversationImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20CallConversationImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20CallConversationImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20CallConversationImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20CallConversationImpl >> messageFlowRefs [
	^ messageFlowRefs
]

{ #category : #'as yet unclassified' }
BPMN20CallConversationImpl >> messageFlowRefs: amessageFlowRefs [
	^ messageFlowRefs := amessageFlowRefs
]

{ #category : #'as yet unclassified' }
BPMN20CallConversationImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20CallConversationImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20CallConversationImpl >> participantAssociations [
^ participantAssociations
]

{ #category : #'as yet unclassified' }
BPMN20CallConversationImpl >> participantAssociations: aparticipantAssociations [
^ participantAssociations := aparticipantAssociations
]

{ #category : #'as yet unclassified' }
BPMN20CallConversationImpl >> participantRefs [
	^ participantRefs
]

{ #category : #'as yet unclassified' }
BPMN20CallConversationImpl >> participantRefs: aparticipantRefs [
	^ participantRefs := aparticipantRefs
]

{ #category : #'as yet unclassified' }
BPMN20CallConversationImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20CallConversationImpl >> text: atext [
	^ text := atext
]
