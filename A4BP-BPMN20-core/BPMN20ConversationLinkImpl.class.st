Class {
	#name : #BPMN20ConversationLinkImpl,
	#superclass : #BPMN20BaseElementImpl,
	#instVars : [
		'name',
		'targetRef',
		'sourceRef',
		'NAME_EDEFAULT'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20ConversationLinkImpl class >> annotation [
<MSEClass: #BPMN20ConversationLinkImpl  super: #BPMN20BaseElementImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20ConversationLinkImpl >> NAME_EDEFAULT [
^ NAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20ConversationLinkImpl >> NAME_EDEFAULT: aNAME_EDEFAULT [
^ NAME_EDEFAULT := aNAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20ConversationLinkImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20ConversationLinkImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20ConversationLinkImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20ConversationLinkImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20ConversationLinkImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20ConversationLinkImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20ConversationLinkImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20ConversationLinkImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20ConversationLinkImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20ConversationLinkImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20ConversationLinkImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20ConversationLinkImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20ConversationLinkImpl >> sourceRef [
^ sourceRef
]

{ #category : #'as yet unclassified' }
BPMN20ConversationLinkImpl >> sourceRef: asourceRef [
^ sourceRef := asourceRef
]

{ #category : #'as yet unclassified' }
BPMN20ConversationLinkImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20ConversationLinkImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20ConversationLinkImpl >> targetRef [
^ targetRef
]

{ #category : #'as yet unclassified' }
BPMN20ConversationLinkImpl >> targetRef: atargetRef [
^ targetRef := atargetRef
]

{ #category : #'as yet unclassified' }
BPMN20ConversationLinkImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20ConversationLinkImpl >> text: atext [
	^ text := atext
]
