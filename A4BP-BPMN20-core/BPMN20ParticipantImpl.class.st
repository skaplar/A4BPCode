"
A Participant represents a specific PartnerEntity (e.g., a company) and/or a more general PartnerRole (e.g., a buyer, seller, or manufacturer) that are Participants in a Collaboration. A Participant is often responsible for the execution of the Process enclosed in a Pool; however, a Pool MAY be defined without a Process.
"
Class {
	#name : #BPMN20ParticipantImpl,
	#superclass : #BPMN20BaseElementImpl,
	#instVars : [
		'processRef',
		'participantMultiplicity',
		'name',
		'NAME_EDEFAULT',
		'endPointRefs',
		'interfaceRefs'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20ParticipantImpl class >> annotation [
<MSEClass: #BPMN20ParticipantImpl  super: #BPMN20BaseElementImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20ParticipantImpl class >> fromXMLDescription: document in: parent [
	^ self fromXMLDescriptionNoInProcess: document in: parent
]

{ #category : #'as yet unclassified' }
BPMN20ParticipantImpl >> NAME_EDEFAULT [
^ NAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20ParticipantImpl >> NAME_EDEFAULT: aNAME_EDEFAULT [
^ NAME_EDEFAULT := aNAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20ParticipantImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20ParticipantImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20ParticipantImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20ParticipantImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20ParticipantImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20ParticipantImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20ParticipantImpl >> endPointRefs [
^ endPointRefs
]

{ #category : #'as yet unclassified' }
BPMN20ParticipantImpl >> endPointRefs: aendPointRefs [
^ endPointRefs := aendPointRefs
]

{ #category : #'as yet unclassified' }
BPMN20ParticipantImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20ParticipantImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20ParticipantImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20ParticipantImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20ParticipantImpl >> interfaceRefs [
^ interfaceRefs
]

{ #category : #'as yet unclassified' }
BPMN20ParticipantImpl >> interfaceRefs: ainterfaceRefs [
^ interfaceRefs := ainterfaceRefs
]

{ #category : #'as yet unclassified' }
BPMN20ParticipantImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20ParticipantImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20ParticipantImpl >> participantMultiplicity [
^ participantMultiplicity
]

{ #category : #'as yet unclassified' }
BPMN20ParticipantImpl >> participantMultiplicity: aparticipantMultiplicity [
^ participantMultiplicity := aparticipantMultiplicity
]

{ #category : #'as yet unclassified' }
BPMN20ParticipantImpl >> processRef [
^ processRef
]

{ #category : #'as yet unclassified' }
BPMN20ParticipantImpl >> processRef: aprocessRef [
^ processRef := aprocessRef
]

{ #category : #'as yet unclassified' }
BPMN20ParticipantImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20ParticipantImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20ParticipantImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20ParticipantImpl >> text: atext [
	^ text := atext
]
