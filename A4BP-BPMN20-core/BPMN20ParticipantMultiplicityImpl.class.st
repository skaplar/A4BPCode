Class {
	#name : #BPMN20ParticipantMultiplicityImpl,
	#superclass : #BPMN20BaseElementImpl,
	#instVars : [
		'MAXIMUM_EDEFAULT',
		'maximum',
		'MINIMUM_EDEFAULT',
		'minimum'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20ParticipantMultiplicityImpl class >> annotation [
<MSEClass: #BPMN20ParticipantMultiplicityImpl  super: #BPMN20BaseElementImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20ParticipantMultiplicityImpl >> MAXIMUM_EDEFAULT [
^ MAXIMUM_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20ParticipantMultiplicityImpl >> MAXIMUM_EDEFAULT: aMAXIMUM_EDEFAULT [
^ MAXIMUM_EDEFAULT := aMAXIMUM_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20ParticipantMultiplicityImpl >> MINIMUM_EDEFAULT [
^ MINIMUM_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20ParticipantMultiplicityImpl >> MINIMUM_EDEFAULT: aMINIMUM_EDEFAULT [
^ MINIMUM_EDEFAULT := aMINIMUM_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20ParticipantMultiplicityImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20ParticipantMultiplicityImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20ParticipantMultiplicityImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20ParticipantMultiplicityImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20ParticipantMultiplicityImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20ParticipantMultiplicityImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20ParticipantMultiplicityImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20ParticipantMultiplicityImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20ParticipantMultiplicityImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20ParticipantMultiplicityImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20ParticipantMultiplicityImpl >> maximum [
^ maximum
]

{ #category : #'as yet unclassified' }
BPMN20ParticipantMultiplicityImpl >> maximum: amaximum [
^ maximum := amaximum
]

{ #category : #'as yet unclassified' }
BPMN20ParticipantMultiplicityImpl >> minimum [
^ minimum
]

{ #category : #'as yet unclassified' }
BPMN20ParticipantMultiplicityImpl >> minimum: aminimum [
^ minimum := aminimum
]

{ #category : #'as yet unclassified' }
BPMN20ParticipantMultiplicityImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20ParticipantMultiplicityImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20ParticipantMultiplicityImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20ParticipantMultiplicityImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20ParticipantMultiplicityImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20ParticipantMultiplicityImpl >> text: atext [
	^ text := atext
]
