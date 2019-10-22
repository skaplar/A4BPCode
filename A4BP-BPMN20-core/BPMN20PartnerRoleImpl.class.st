Class {
	#name : #BPMN20PartnerRoleImpl,
	#superclass : #BPMN20RootElementImpl,
	#instVars : [
		'name',
		'NAME_EDEFAULT',
		'participantRef'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20PartnerRoleImpl class >> annotation [
<MSEClass: #BPMN20PartnerRoleImpl  super: #BPMN20RootElementImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20PartnerRoleImpl >> NAME_EDEFAULT [
^ NAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20PartnerRoleImpl >> NAME_EDEFAULT: aNAME_EDEFAULT [
^ NAME_EDEFAULT := aNAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20PartnerRoleImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20PartnerRoleImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20PartnerRoleImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20PartnerRoleImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20PartnerRoleImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20PartnerRoleImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20PartnerRoleImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20PartnerRoleImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20PartnerRoleImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20PartnerRoleImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20PartnerRoleImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20PartnerRoleImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20PartnerRoleImpl >> participantRef [
^ participantRef
]

{ #category : #'as yet unclassified' }
BPMN20PartnerRoleImpl >> participantRef: aparticipantRef [
^ participantRef := aparticipantRef
]

{ #category : #'as yet unclassified' }
BPMN20PartnerRoleImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20PartnerRoleImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20PartnerRoleImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20PartnerRoleImpl >> text: atext [
	^ text := atext
]
