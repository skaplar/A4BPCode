Class {
	#name : #BPMN20SubProcessImpl,
	#superclass : #BPMN20ActivityImpl,
	#instVars : [
		'laneSets',
		'flowElements',
		'TRIGGERED_BY_EVENT_EDEFAULT',
		'triggeredByEvent',
		'artifacts'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20SubProcessImpl class >> annotation [
<MSEClass: #BPMN20SubProcessImpl  super: #BPMN20ActivityImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20SubProcessImpl >> CANCEL_REMAINING_INSTANCES_EDEFAULT [
	^ CANCEL_REMAINING_INSTANCES_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20SubProcessImpl >> CANCEL_REMAINING_INSTANCES_EDEFAULT: aCANCEL_REMAINING_INSTANCES_EDEFAULT [
	^ CANCEL_REMAINING_INSTANCES_EDEFAULT := aCANCEL_REMAINING_INSTANCES_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20SubProcessImpl >> METHOD_EDEFAULT [
	^ METHOD_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20SubProcessImpl >> METHOD_EDEFAULT: aMETHOD_EDEFAULT [
	^ METHOD_EDEFAULT := aMETHOD_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20SubProcessImpl >> ORDERING_EDEFAULT [
	^ ORDERING_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20SubProcessImpl >> ORDERING_EDEFAULT: aORDERING_EDEFAULT [
	^ ORDERING_EDEFAULT := aORDERING_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20SubProcessImpl >> PROTOCOL_EDEFAULT [
	^ PROTOCOL_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20SubProcessImpl >> PROTOCOL_EDEFAULT: aPROTOCOL_EDEFAULT [
	^ PROTOCOL_EDEFAULT := aPROTOCOL_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20SubProcessImpl >> TRIGGERED_BY_EVENT_EDEFAULT [
^ TRIGGERED_BY_EVENT_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20SubProcessImpl >> TRIGGERED_BY_EVENT_EDEFAULT: aTRIGGERED_BY_EVENT_EDEFAULT [
^ TRIGGERED_BY_EVENT_EDEFAULT := aTRIGGERED_BY_EVENT_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20SubProcessImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20SubProcessImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20SubProcessImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20SubProcessImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20SubProcessImpl >> artifacts [
^ artifacts
]

{ #category : #'as yet unclassified' }
BPMN20SubProcessImpl >> artifacts: aartifacts [
^ artifacts := aartifacts
]

{ #category : #'as yet unclassified' }
BPMN20SubProcessImpl >> auditing [
	^ auditing
]

{ #category : #'as yet unclassified' }
BPMN20SubProcessImpl >> auditing: aauditing [
	^ auditing := aauditing
]

{ #category : #'as yet unclassified' }
BPMN20SubProcessImpl >> boundaryEventRefs [
	^ boundaryEventRefs
]

{ #category : #'as yet unclassified' }
BPMN20SubProcessImpl >> boundaryEventRefs: aboundaryEventRefs [
	^ boundaryEventRefs := aboundaryEventRefs
]

{ #category : #'as yet unclassified' }
BPMN20SubProcessImpl >> cancelRemainingInstances [
	^ cancelRemainingInstances
]

{ #category : #'as yet unclassified' }
BPMN20SubProcessImpl >> cancelRemainingInstances: acancelRemainingInstances [
	^ cancelRemainingInstances := acancelRemainingInstances
]

{ #category : #'as yet unclassified' }
BPMN20SubProcessImpl >> categoryValueRef [
	^ categoryValueRef
]

{ #category : #'as yet unclassified' }
BPMN20SubProcessImpl >> categoryValueRef: acategoryValueRef [
	^ categoryValueRef := acategoryValueRef
]

{ #category : #'as yet unclassified' }
BPMN20SubProcessImpl >> completionCondition [
	^ completionCondition
]

{ #category : #'as yet unclassified' }
BPMN20SubProcessImpl >> completionCondition: acompletionCondition [
	^ completionCondition := acompletionCondition
]

{ #category : #'as yet unclassified' }
BPMN20SubProcessImpl >> completionQuantity [
	^ completionQuantity
]

{ #category : #'as yet unclassified' }
BPMN20SubProcessImpl >> completionQuantity: acompletionQuantity [
	^ completionQuantity := acompletionQuantity
]

{ #category : #'as yet unclassified' }
BPMN20SubProcessImpl >> dataInputAssociations [
	^ dataInputAssociations
]

{ #category : #'as yet unclassified' }
BPMN20SubProcessImpl >> dataInputAssociations: adataInputAssociations [
	^ dataInputAssociations := adataInputAssociations
]

{ #category : #'as yet unclassified' }
BPMN20SubProcessImpl >> dataOutputAssociations [
	^ dataOutputAssociations
]

{ #category : #'as yet unclassified' }
BPMN20SubProcessImpl >> dataOutputAssociations: adataOutputAssociations [
	^ dataOutputAssociations := adataOutputAssociations
]

{ #category : #'as yet unclassified' }
BPMN20SubProcessImpl >> default_ [
	^ default_
]

{ #category : #'as yet unclassified' }
BPMN20SubProcessImpl >> default_: adefault_ [
	^ default_ := adefault_
]

{ #category : #'as yet unclassified' }
BPMN20SubProcessImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20SubProcessImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20SubProcessImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20SubProcessImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20SubProcessImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20SubProcessImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20SubProcessImpl >> flowElements [
^ flowElements
]

{ #category : #'as yet unclassified' }
BPMN20SubProcessImpl >> flowElements: aflowElements [
^ flowElements := aflowElements
]

{ #category : #'as yet unclassified' }
BPMN20SubProcessImpl >> incoming [
	^ incoming
]

{ #category : #'as yet unclassified' }
BPMN20SubProcessImpl >> incoming: aincoming [
	^ incoming := aincoming
]

{ #category : #'as yet unclassified' }
BPMN20SubProcessImpl >> ioSpecification [
	^ ioSpecification
]

{ #category : #'as yet unclassified' }
BPMN20SubProcessImpl >> ioSpecification: aioSpecification [
	^ ioSpecification := aioSpecification
]

{ #category : #'as yet unclassified' }
BPMN20SubProcessImpl >> isForCompensation [
	^ isForCompensation
]

{ #category : #'as yet unclassified' }
BPMN20SubProcessImpl >> isForCompensation: aisForCompensation [
	^ isForCompensation := aisForCompensation
]

{ #category : #'as yet unclassified' }
BPMN20SubProcessImpl >> laneSets [
^ laneSets
]

{ #category : #'as yet unclassified' }
BPMN20SubProcessImpl >> laneSets: alaneSets [
^ laneSets := alaneSets
]

{ #category : #'as yet unclassified' }
BPMN20SubProcessImpl >> lanes [
	^ lanes
]

{ #category : #'as yet unclassified' }
BPMN20SubProcessImpl >> lanes: alanes [
	^ lanes := alanes
]

{ #category : #'as yet unclassified' }
BPMN20SubProcessImpl >> loopCharacteristics [
	^ loopCharacteristics
]

{ #category : #'as yet unclassified' }
BPMN20SubProcessImpl >> loopCharacteristics: aloopCharacteristics [
	^ loopCharacteristics := aloopCharacteristics
]

{ #category : #'as yet unclassified' }
BPMN20SubProcessImpl >> method [
	^ method
]

{ #category : #'as yet unclassified' }
BPMN20SubProcessImpl >> method: amethod [
	^ method := amethod
]

{ #category : #'as yet unclassified' }
BPMN20SubProcessImpl >> monitoring [
	^ monitoring
]

{ #category : #'as yet unclassified' }
BPMN20SubProcessImpl >> monitoring: amonitoring [
	^ monitoring := amonitoring
]

{ #category : #'as yet unclassified' }
BPMN20SubProcessImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20SubProcessImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20SubProcessImpl >> ordering [
	^ ordering
]

{ #category : #'as yet unclassified' }
BPMN20SubProcessImpl >> ordering: aordering [
	^ ordering := aordering
]

{ #category : #'as yet unclassified' }
BPMN20SubProcessImpl >> outgoing [
	^ outgoing
]

{ #category : #'as yet unclassified' }
BPMN20SubProcessImpl >> outgoing: aoutgoing [
	^ outgoing := aoutgoing
]

{ #category : #'as yet unclassified' }
BPMN20SubProcessImpl >> properties [
	^ properties
]

{ #category : #'as yet unclassified' }
BPMN20SubProcessImpl >> properties: aproperties [
	^ properties := aproperties
]

{ #category : #'as yet unclassified' }
BPMN20SubProcessImpl >> protocol [
	^ protocol
]

{ #category : #'as yet unclassified' }
BPMN20SubProcessImpl >> protocol: aprotocol [
	^ protocol := aprotocol
]

{ #category : #'as yet unclassified' }
BPMN20SubProcessImpl >> resources [
	^ resources
]

{ #category : #'as yet unclassified' }
BPMN20SubProcessImpl >> resources: aresources [
	^ resources := aresources
]

{ #category : #'as yet unclassified' }
BPMN20SubProcessImpl >> startQuantity [
	^ startQuantity
]

{ #category : #'as yet unclassified' }
BPMN20SubProcessImpl >> startQuantity: astartQuantity [
	^ startQuantity := astartQuantity
]

{ #category : #'as yet unclassified' }
BPMN20SubProcessImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20SubProcessImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20SubProcessImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20SubProcessImpl >> text: atext [
	^ text := atext
]

{ #category : #'as yet unclassified' }
BPMN20SubProcessImpl >> triggeredByEvent [
^ triggeredByEvent
]

{ #category : #'as yet unclassified' }
BPMN20SubProcessImpl >> triggeredByEvent: atriggeredByEvent [
^ triggeredByEvent := atriggeredByEvent
]
