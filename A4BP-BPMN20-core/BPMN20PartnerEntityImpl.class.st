Class {
	#name : #BPMN20PartnerEntityImpl,
	#superclass : #BPMN20RootElementImpl,
	#instVars : [
		'NAME_EDEFAULT',
		'participantRef',
		'name'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20PartnerEntityImpl class >> annotation [
<MSEClass: #BPMN20PartnerEntityImpl  super: #BPMN20RootElementImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20PartnerEntityImpl >> NAME_EDEFAULT [
^ NAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20PartnerEntityImpl >> NAME_EDEFAULT: aNAME_EDEFAULT [
^ NAME_EDEFAULT := aNAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20PartnerEntityImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20PartnerEntityImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20PartnerEntityImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20PartnerEntityImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20PartnerEntityImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20PartnerEntityImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20PartnerEntityImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20PartnerEntityImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20PartnerEntityImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20PartnerEntityImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20PartnerEntityImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20PartnerEntityImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20PartnerEntityImpl >> participantRef [
^ participantRef
]

{ #category : #'as yet unclassified' }
BPMN20PartnerEntityImpl >> participantRef: aparticipantRef [
^ participantRef := aparticipantRef
]

{ #category : #'as yet unclassified' }
BPMN20PartnerEntityImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20PartnerEntityImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20PartnerEntityImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20PartnerEntityImpl >> text: atext [
	^ text := atext
]
