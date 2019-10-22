Class {
	#name : #BPMN20ChoreographyTaskImpl,
	#superclass : #BPMN20ChoreographyActivityImpl,
	#instVars : [
		'messageFlowRef'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20ChoreographyTaskImpl class >> annotation [
<MSEClass: #BPMN20ChoreographyTaskImpl  super: #BPMN20ChoreographyActivityImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyTaskImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20ChoreographyTaskImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyTaskImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyTaskImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyTaskImpl >> auditing [
	^ auditing
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyTaskImpl >> auditing: aauditing [
	^ auditing := aauditing
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyTaskImpl >> categoryValueRef [
	^ categoryValueRef
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyTaskImpl >> categoryValueRef: acategoryValueRef [
	^ categoryValueRef := acategoryValueRef
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyTaskImpl >> correlationKeys [
	^ correlationKeys
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyTaskImpl >> correlationKeys: acorrelationKeys [
	^ correlationKeys := acorrelationKeys
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyTaskImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyTaskImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyTaskImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyTaskImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyTaskImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyTaskImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyTaskImpl >> incoming [
	^ incoming
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyTaskImpl >> incoming: aincoming [
	^ incoming := aincoming
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyTaskImpl >> initiatingParticipantRef [
	^ initiatingParticipantRef
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyTaskImpl >> initiatingParticipantRef: ainitiatingParticipantRef [
	^ initiatingParticipantRef := ainitiatingParticipantRef
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyTaskImpl >> lanes [
	^ lanes
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyTaskImpl >> lanes: alanes [
	^ lanes := alanes
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyTaskImpl >> loopType [
	^ loopType
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyTaskImpl >> loopType: aloopType [
	^ loopType := aloopType
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyTaskImpl >> messageFlowRef [
^ messageFlowRef
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyTaskImpl >> messageFlowRef: amessageFlowRef [
^ messageFlowRef := amessageFlowRef
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyTaskImpl >> monitoring [
	^ monitoring
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyTaskImpl >> monitoring: amonitoring [
	^ monitoring := amonitoring
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyTaskImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyTaskImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyTaskImpl >> outgoing [
	^ outgoing
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyTaskImpl >> outgoing: aoutgoing [
	^ outgoing := aoutgoing
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyTaskImpl >> participantRefs [
	^ participantRefs
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyTaskImpl >> participantRefs: aparticipantRefs [
	^ participantRefs := aparticipantRefs
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyTaskImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyTaskImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyTaskImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyTaskImpl >> text: atext [
	^ text := atext
]
