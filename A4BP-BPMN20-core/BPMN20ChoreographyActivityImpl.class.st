Class {
	#name : #BPMN20ChoreographyActivityImpl,
	#superclass : #BPMN20FlowNodeImpl,
	#instVars : [
		'initiatingParticipantRef',
		'loopType',
		'correlationKeys',
		'participantRefs'
	],
	#classVars : [
		'LOOP_TYPE_EDEFAULT'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20ChoreographyActivityImpl class >> annotation [
<MSEClass: #BPMN20ChoreographyActivityImpl  super: #BPMN20FlowNodeImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyActivityImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20ChoreographyActivityImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyActivityImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyActivityImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyActivityImpl >> artifacts [
	^ artifacts
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyActivityImpl >> artifacts: aartifacts [
	^ artifacts := aartifacts
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyActivityImpl >> auditing [
	^ auditing
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyActivityImpl >> auditing: aauditing [
	^ auditing := aauditing
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyActivityImpl >> calledChoreographyRef [
	^ calledChoreographyRef
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyActivityImpl >> calledChoreographyRef: acalledChoreographyRef [
	^ calledChoreographyRef := acalledChoreographyRef
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyActivityImpl >> categoryValueRef [
	^ categoryValueRef
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyActivityImpl >> categoryValueRef: acategoryValueRef [
	^ categoryValueRef := acategoryValueRef
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyActivityImpl >> correlationKeys [
^ correlationKeys
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyActivityImpl >> correlationKeys: acorrelationKeys [
^ correlationKeys := acorrelationKeys
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyActivityImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyActivityImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyActivityImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyActivityImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyActivityImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyActivityImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyActivityImpl >> flowElements [
	^ flowElements
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyActivityImpl >> flowElements: aflowElements [
	^ flowElements := aflowElements
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyActivityImpl >> incoming [
	^ incoming
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyActivityImpl >> incoming: aincoming [
	^ incoming := aincoming
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyActivityImpl >> initiatingParticipantRef [
^ initiatingParticipantRef
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyActivityImpl >> initiatingParticipantRef: ainitiatingParticipantRef [
^ initiatingParticipantRef := ainitiatingParticipantRef
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyActivityImpl >> laneSets [
	^ laneSets
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyActivityImpl >> laneSets: alaneSets [
	^ laneSets := alaneSets
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyActivityImpl >> lanes [
	^ lanes
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyActivityImpl >> lanes: alanes [
	^ lanes := alanes
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyActivityImpl >> loopType [
^ loopType
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyActivityImpl >> loopType: aloopType [
^ loopType := aloopType
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyActivityImpl >> messageFlowRef [
	^ messageFlowRef
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyActivityImpl >> messageFlowRef: amessageFlowRef [
	^ messageFlowRef := amessageFlowRef
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyActivityImpl >> monitoring [
	^ monitoring
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyActivityImpl >> monitoring: amonitoring [
	^ monitoring := amonitoring
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyActivityImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyActivityImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyActivityImpl >> outgoing [
	^ outgoing
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyActivityImpl >> outgoing: aoutgoing [
	^ outgoing := aoutgoing
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyActivityImpl >> participantAssociations [
	^ participantAssociations
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyActivityImpl >> participantAssociations: aparticipantAssociations [
	^ participantAssociations := aparticipantAssociations
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyActivityImpl >> participantRefs [
^ participantRefs
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyActivityImpl >> participantRefs: aparticipantRefs [
^ participantRefs := aparticipantRefs
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyActivityImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyActivityImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyActivityImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20ChoreographyActivityImpl >> text: atext [
	^ text := atext
]
