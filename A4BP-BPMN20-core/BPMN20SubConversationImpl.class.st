Class {
	#name : #BPMN20SubConversationImpl,
	#superclass : #BPMN20ConversationNodeImpl,
	#instVars : [
		'conversationNodes'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20SubConversationImpl class >> annotation [
<MSEClass: #BPMN20SubConversationImpl  super: #BPMN20ConversationNodeImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20SubConversationImpl >> NAME_EDEFAULT [
	^ NAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20SubConversationImpl >> NAME_EDEFAULT: aNAME_EDEFAULT [
	^ NAME_EDEFAULT := aNAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20SubConversationImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20SubConversationImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20SubConversationImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20SubConversationImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20SubConversationImpl >> conversationNodes [
^ conversationNodes
]

{ #category : #'as yet unclassified' }
BPMN20SubConversationImpl >> conversationNodes: aconversationNodes [
^ conversationNodes := aconversationNodes
]

{ #category : #'as yet unclassified' }
BPMN20SubConversationImpl >> correlationKeys [
	^ correlationKeys
]

{ #category : #'as yet unclassified' }
BPMN20SubConversationImpl >> correlationKeys: acorrelationKeys [
	^ correlationKeys := acorrelationKeys
]

{ #category : #'as yet unclassified' }
BPMN20SubConversationImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20SubConversationImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20SubConversationImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20SubConversationImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20SubConversationImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20SubConversationImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20SubConversationImpl >> messageFlowRefs [
	^ messageFlowRefs
]

{ #category : #'as yet unclassified' }
BPMN20SubConversationImpl >> messageFlowRefs: amessageFlowRefs [
	^ messageFlowRefs := amessageFlowRefs
]

{ #category : #'as yet unclassified' }
BPMN20SubConversationImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20SubConversationImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20SubConversationImpl >> participantRefs [
	^ participantRefs
]

{ #category : #'as yet unclassified' }
BPMN20SubConversationImpl >> participantRefs: aparticipantRefs [
	^ participantRefs := aparticipantRefs
]

{ #category : #'as yet unclassified' }
BPMN20SubConversationImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20SubConversationImpl >> text: atext [
	^ text := atext
]
