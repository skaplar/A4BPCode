Class {
	#name : #BPMN20CallChoreographyImpl,
	#superclass : #BPMN20ChoreographyActivityImpl,
	#instVars : [
		'calledChoreographyRef',
		'participantAssociations'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20CallChoreographyImpl class >> annotation [
<MSEClass: #BPMN20CallChoreographyImpl  super: #BPMN20ChoreographyActivityImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20CallChoreographyImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20CallChoreographyImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20CallChoreographyImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20CallChoreographyImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20CallChoreographyImpl >> auditing [
	^ auditing
]

{ #category : #'as yet unclassified' }
BPMN20CallChoreographyImpl >> auditing: aauditing [
	^ auditing := aauditing
]

{ #category : #'as yet unclassified' }
BPMN20CallChoreographyImpl >> calledChoreographyRef [
^ calledChoreographyRef
]

{ #category : #'as yet unclassified' }
BPMN20CallChoreographyImpl >> calledChoreographyRef: acalledChoreographyRef [
^ calledChoreographyRef := acalledChoreographyRef
]

{ #category : #'as yet unclassified' }
BPMN20CallChoreographyImpl >> categoryValueRef [
	^ categoryValueRef
]

{ #category : #'as yet unclassified' }
BPMN20CallChoreographyImpl >> categoryValueRef: acategoryValueRef [
	^ categoryValueRef := acategoryValueRef
]

{ #category : #'as yet unclassified' }
BPMN20CallChoreographyImpl >> correlationKeys [
	^ correlationKeys
]

{ #category : #'as yet unclassified' }
BPMN20CallChoreographyImpl >> correlationKeys: acorrelationKeys [
	^ correlationKeys := acorrelationKeys
]

{ #category : #'as yet unclassified' }
BPMN20CallChoreographyImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20CallChoreographyImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20CallChoreographyImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20CallChoreographyImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20CallChoreographyImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20CallChoreographyImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20CallChoreographyImpl >> incoming [
	^ incoming
]

{ #category : #'as yet unclassified' }
BPMN20CallChoreographyImpl >> incoming: aincoming [
	^ incoming := aincoming
]

{ #category : #'as yet unclassified' }
BPMN20CallChoreographyImpl >> initiatingParticipantRef [
	^ initiatingParticipantRef
]

{ #category : #'as yet unclassified' }
BPMN20CallChoreographyImpl >> initiatingParticipantRef: ainitiatingParticipantRef [
	^ initiatingParticipantRef := ainitiatingParticipantRef
]

{ #category : #'as yet unclassified' }
BPMN20CallChoreographyImpl >> lanes [
	^ lanes
]

{ #category : #'as yet unclassified' }
BPMN20CallChoreographyImpl >> lanes: alanes [
	^ lanes := alanes
]

{ #category : #'as yet unclassified' }
BPMN20CallChoreographyImpl >> loopType [
	^ loopType
]

{ #category : #'as yet unclassified' }
BPMN20CallChoreographyImpl >> loopType: aloopType [
	^ loopType := aloopType
]

{ #category : #'as yet unclassified' }
BPMN20CallChoreographyImpl >> monitoring [
	^ monitoring
]

{ #category : #'as yet unclassified' }
BPMN20CallChoreographyImpl >> monitoring: amonitoring [
	^ monitoring := amonitoring
]

{ #category : #'as yet unclassified' }
BPMN20CallChoreographyImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20CallChoreographyImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20CallChoreographyImpl >> outgoing [
	^ outgoing
]

{ #category : #'as yet unclassified' }
BPMN20CallChoreographyImpl >> outgoing: aoutgoing [
	^ outgoing := aoutgoing
]

{ #category : #'as yet unclassified' }
BPMN20CallChoreographyImpl >> participantAssociations [
^ participantAssociations
]

{ #category : #'as yet unclassified' }
BPMN20CallChoreographyImpl >> participantAssociations: aparticipantAssociations [
^ participantAssociations := aparticipantAssociations
]

{ #category : #'as yet unclassified' }
BPMN20CallChoreographyImpl >> participantRefs [
	^ participantRefs
]

{ #category : #'as yet unclassified' }
BPMN20CallChoreographyImpl >> participantRefs: aparticipantRefs [
	^ participantRefs := aparticipantRefs
]

{ #category : #'as yet unclassified' }
BPMN20CallChoreographyImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20CallChoreographyImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20CallChoreographyImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20CallChoreographyImpl >> text: atext [
	^ text := atext
]
