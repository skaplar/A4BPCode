Class {
	#name : #BPMN20CollaborationImpl,
	#superclass : #BPMN20RootElementImpl,
	#instVars : [
		'artifacts',
		'conversationLinks',
		'messageFlows',
		'isClosed',
		'conversationAssociations',
		'conversations',
		'name',
		'correlationKeys',
		'choreographyRef',
		'messageFlowAssociations',
		'participantAssociations',
		'participants'
	],
	#classVars : [
		'IS_CLOSED_EDEFAULT',
		'NAME_EDEFAULT'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20CollaborationImpl class >> annotation [
<MSEClass: #BPMN20CollaborationImpl  super: #BPMN20RootElementImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20CollaborationImpl class >> fillElementsIn: aModel from: document [
	| visitor |
	visitor := BPMN20ParserSetinBPMN20CollaborationImplVisitor new.
	visitor element: aModel.
	self fillElementsIn: aModel from: document visitor: visitor.
]

{ #category : #'as yet unclassified' }
BPMN20CollaborationImpl class >> fromXMLDescription: document in: parent [
	^ self fromXMLDescriptionNoInProcess: document in: parent
]

{ #category : #'as yet unclassified' }
BPMN20CollaborationImpl >> IS_CLOSED_EDEFAULT [
^ IS_CLOSED_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20CollaborationImpl >> IS_CLOSED_EDEFAULT: aIS_CLOSED_EDEFAULT [
^ IS_CLOSED_EDEFAULT := aIS_CLOSED_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20CollaborationImpl >> NAME_EDEFAULT [
^ NAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20CollaborationImpl >> NAME_EDEFAULT: aNAME_EDEFAULT [
^ NAME_EDEFAULT := aNAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20CollaborationImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20CollaborationImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20CollaborationImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20CollaborationImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20CollaborationImpl >> artifacts [
^ artifacts
]

{ #category : #'as yet unclassified' }
BPMN20CollaborationImpl >> artifacts: aartifacts [
^ artifacts := aartifacts
]

{ #category : #'as yet unclassified' }
BPMN20CollaborationImpl >> choreographyRef [
^ choreographyRef
]

{ #category : #'as yet unclassified' }
BPMN20CollaborationImpl >> choreographyRef: achoreographyRef [
^ choreographyRef := achoreographyRef
]

{ #category : #'as yet unclassified' }
BPMN20CollaborationImpl >> conversationAssociations [
^ conversationAssociations
]

{ #category : #'as yet unclassified' }
BPMN20CollaborationImpl >> conversationAssociations: aconversationAssociations [
^ conversationAssociations := aconversationAssociations
]

{ #category : #'as yet unclassified' }
BPMN20CollaborationImpl >> conversationLinks [
^ conversationLinks
]

{ #category : #'as yet unclassified' }
BPMN20CollaborationImpl >> conversationLinks: aconversationLinks [
^ conversationLinks := aconversationLinks
]

{ #category : #'as yet unclassified' }
BPMN20CollaborationImpl >> conversations [
^ conversations
]

{ #category : #'as yet unclassified' }
BPMN20CollaborationImpl >> conversations: aconversations [
^ conversations := aconversations
]

{ #category : #'as yet unclassified' }
BPMN20CollaborationImpl >> correlationKeys [
^ correlationKeys
]

{ #category : #'as yet unclassified' }
BPMN20CollaborationImpl >> correlationKeys: acorrelationKeys [
^ correlationKeys := acorrelationKeys
]

{ #category : #'as yet unclassified' }
BPMN20CollaborationImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20CollaborationImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20CollaborationImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20CollaborationImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20CollaborationImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20CollaborationImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20CollaborationImpl >> flowElements [
	^ flowElements
]

{ #category : #'as yet unclassified' }
BPMN20CollaborationImpl >> flowElements: aflowElements [
	^ flowElements := aflowElements
]

{ #category : #initialization }
BPMN20CollaborationImpl >> initialize [
	super initialize.
	messageFlows := Dictionary new.
	participants := Dictionary new.
]

{ #category : #'as yet unclassified' }
BPMN20CollaborationImpl >> initiatingParticipantRef [
	^ initiatingParticipantRef
]

{ #category : #'as yet unclassified' }
BPMN20CollaborationImpl >> initiatingParticipantRef: ainitiatingParticipantRef [
	^ initiatingParticipantRef := ainitiatingParticipantRef
]

{ #category : #'as yet unclassified' }
BPMN20CollaborationImpl >> isClosed [
^ isClosed
]

{ #category : #'as yet unclassified' }
BPMN20CollaborationImpl >> isClosed: aisClosed [
^ isClosed := aisClosed
]

{ #category : #'as yet unclassified' }
BPMN20CollaborationImpl >> laneSets [
	^ laneSets
]

{ #category : #'as yet unclassified' }
BPMN20CollaborationImpl >> laneSets: alaneSets [
	^ laneSets := alaneSets
]

{ #category : #'as yet unclassified' }
BPMN20CollaborationImpl >> messageFlowAssociations [
^ messageFlowAssociations
]

{ #category : #'as yet unclassified' }
BPMN20CollaborationImpl >> messageFlowAssociations: amessageFlowAssociations [
^ messageFlowAssociations := amessageFlowAssociations
]

{ #category : #'as yet unclassified' }
BPMN20CollaborationImpl >> messageFlows [
^ messageFlows
]

{ #category : #'as yet unclassified' }
BPMN20CollaborationImpl >> messageFlows: amessageFlows [
^ messageFlows := amessageFlows
]

{ #category : #'as yet unclassified' }
BPMN20CollaborationImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20CollaborationImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20CollaborationImpl >> participantAssociations [
^ participantAssociations
]

{ #category : #'as yet unclassified' }
BPMN20CollaborationImpl >> participantAssociations: aparticipantAssociations [
^ participantAssociations := aparticipantAssociations
]

{ #category : #'as yet unclassified' }
BPMN20CollaborationImpl >> participants [
^ participants
]

{ #category : #'as yet unclassified' }
BPMN20CollaborationImpl >> participants: aparticipants [
^ participants := aparticipants
]

{ #category : #'as yet unclassified' }
BPMN20CollaborationImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20CollaborationImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20CollaborationImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20CollaborationImpl >> text: atext [
	^ text := atext
]
