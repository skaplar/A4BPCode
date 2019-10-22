Class {
	#name : #BPMN20SubChoreographyImpl,
	#superclass : #BPMN20ChoreographyActivityImpl,
	#instVars : [
		'laneSets',
		'artifacts',
		'flowElements'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20SubChoreographyImpl class >> annotation [
<MSEClass: #BPMN20SubChoreographyImpl  super: #BPMN20ChoreographyActivityImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20SubChoreographyImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20SubChoreographyImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20SubChoreographyImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20SubChoreographyImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20SubChoreographyImpl >> artifacts [
^ artifacts
]

{ #category : #'as yet unclassified' }
BPMN20SubChoreographyImpl >> artifacts: aartifacts [
^ artifacts := aartifacts
]

{ #category : #'as yet unclassified' }
BPMN20SubChoreographyImpl >> auditing [
	^ auditing
]

{ #category : #'as yet unclassified' }
BPMN20SubChoreographyImpl >> auditing: aauditing [
	^ auditing := aauditing
]

{ #category : #'as yet unclassified' }
BPMN20SubChoreographyImpl >> categoryValueRef [
	^ categoryValueRef
]

{ #category : #'as yet unclassified' }
BPMN20SubChoreographyImpl >> categoryValueRef: acategoryValueRef [
	^ categoryValueRef := acategoryValueRef
]

{ #category : #'as yet unclassified' }
BPMN20SubChoreographyImpl >> correlationKeys [
	^ correlationKeys
]

{ #category : #'as yet unclassified' }
BPMN20SubChoreographyImpl >> correlationKeys: acorrelationKeys [
	^ correlationKeys := acorrelationKeys
]

{ #category : #'as yet unclassified' }
BPMN20SubChoreographyImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20SubChoreographyImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20SubChoreographyImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20SubChoreographyImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20SubChoreographyImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20SubChoreographyImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20SubChoreographyImpl >> flowElements [
^ flowElements
]

{ #category : #'as yet unclassified' }
BPMN20SubChoreographyImpl >> flowElements: aflowElements [
^ flowElements := aflowElements
]

{ #category : #'as yet unclassified' }
BPMN20SubChoreographyImpl >> incoming [
	^ incoming
]

{ #category : #'as yet unclassified' }
BPMN20SubChoreographyImpl >> incoming: aincoming [
	^ incoming := aincoming
]

{ #category : #'as yet unclassified' }
BPMN20SubChoreographyImpl >> initiatingParticipantRef [
	^ initiatingParticipantRef
]

{ #category : #'as yet unclassified' }
BPMN20SubChoreographyImpl >> initiatingParticipantRef: ainitiatingParticipantRef [
	^ initiatingParticipantRef := ainitiatingParticipantRef
]

{ #category : #'as yet unclassified' }
BPMN20SubChoreographyImpl >> laneSets [
^ laneSets
]

{ #category : #'as yet unclassified' }
BPMN20SubChoreographyImpl >> laneSets: alaneSets [
^ laneSets := alaneSets
]

{ #category : #'as yet unclassified' }
BPMN20SubChoreographyImpl >> lanes [
	^ lanes
]

{ #category : #'as yet unclassified' }
BPMN20SubChoreographyImpl >> lanes: alanes [
	^ lanes := alanes
]

{ #category : #'as yet unclassified' }
BPMN20SubChoreographyImpl >> loopType [
	^ loopType
]

{ #category : #'as yet unclassified' }
BPMN20SubChoreographyImpl >> loopType: aloopType [
	^ loopType := aloopType
]

{ #category : #'as yet unclassified' }
BPMN20SubChoreographyImpl >> monitoring [
	^ monitoring
]

{ #category : #'as yet unclassified' }
BPMN20SubChoreographyImpl >> monitoring: amonitoring [
	^ monitoring := amonitoring
]

{ #category : #'as yet unclassified' }
BPMN20SubChoreographyImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20SubChoreographyImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20SubChoreographyImpl >> outgoing [
	^ outgoing
]

{ #category : #'as yet unclassified' }
BPMN20SubChoreographyImpl >> outgoing: aoutgoing [
	^ outgoing := aoutgoing
]

{ #category : #'as yet unclassified' }
BPMN20SubChoreographyImpl >> participantRefs [
	^ participantRefs
]

{ #category : #'as yet unclassified' }
BPMN20SubChoreographyImpl >> participantRefs: aparticipantRefs [
	^ participantRefs := aparticipantRefs
]

{ #category : #'as yet unclassified' }
BPMN20SubChoreographyImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20SubChoreographyImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20SubChoreographyImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20SubChoreographyImpl >> text: atext [
	^ text := atext
]
