Class {
	#name : #BPMN20AdHocSubProcessImpl,
	#superclass : #BPMN20SubProcessImpl,
	#instVars : [
		'ORDERING_EDEFAULT',
		'completionCondition',
		'ordering',
		'cancelRemainingInstances',
		'CANCEL_REMAINING_INSTANCES_EDEFAULT'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20AdHocSubProcessImpl class >> annotation [
<MSEClass: #BPMN20AdHocSubProcessImpl  super: #BPMN20SubProcessImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20AdHocSubProcessImpl >> CANCEL_REMAINING_INSTANCES_EDEFAULT [
^ CANCEL_REMAINING_INSTANCES_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20AdHocSubProcessImpl >> CANCEL_REMAINING_INSTANCES_EDEFAULT: aCANCEL_REMAINING_INSTANCES_EDEFAULT [
^ CANCEL_REMAINING_INSTANCES_EDEFAULT := aCANCEL_REMAINING_INSTANCES_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20AdHocSubProcessImpl >> ORDERING_EDEFAULT [
^ ORDERING_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20AdHocSubProcessImpl >> ORDERING_EDEFAULT: aORDERING_EDEFAULT [
^ ORDERING_EDEFAULT := aORDERING_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20AdHocSubProcessImpl >> TRIGGERED_BY_EVENT_EDEFAULT [
	^ TRIGGERED_BY_EVENT_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20AdHocSubProcessImpl >> TRIGGERED_BY_EVENT_EDEFAULT: aTRIGGERED_BY_EVENT_EDEFAULT [
	^ TRIGGERED_BY_EVENT_EDEFAULT := aTRIGGERED_BY_EVENT_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20AdHocSubProcessImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20AdHocSubProcessImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20AdHocSubProcessImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20AdHocSubProcessImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20AdHocSubProcessImpl >> artifacts [
	^ artifacts
]

{ #category : #'as yet unclassified' }
BPMN20AdHocSubProcessImpl >> artifacts: aartifacts [
	^ artifacts := aartifacts
]

{ #category : #'as yet unclassified' }
BPMN20AdHocSubProcessImpl >> auditing [
	^ auditing
]

{ #category : #'as yet unclassified' }
BPMN20AdHocSubProcessImpl >> auditing: aauditing [
	^ auditing := aauditing
]

{ #category : #'as yet unclassified' }
BPMN20AdHocSubProcessImpl >> boundaryEventRefs [
	^ boundaryEventRefs
]

{ #category : #'as yet unclassified' }
BPMN20AdHocSubProcessImpl >> boundaryEventRefs: aboundaryEventRefs [
	^ boundaryEventRefs := aboundaryEventRefs
]

{ #category : #'as yet unclassified' }
BPMN20AdHocSubProcessImpl >> cancelRemainingInstances [
^ cancelRemainingInstances
]

{ #category : #'as yet unclassified' }
BPMN20AdHocSubProcessImpl >> cancelRemainingInstances: acancelRemainingInstances [
^ cancelRemainingInstances := acancelRemainingInstances
]

{ #category : #'as yet unclassified' }
BPMN20AdHocSubProcessImpl >> categoryValueRef [
	^ categoryValueRef
]

{ #category : #'as yet unclassified' }
BPMN20AdHocSubProcessImpl >> categoryValueRef: acategoryValueRef [
	^ categoryValueRef := acategoryValueRef
]

{ #category : #'as yet unclassified' }
BPMN20AdHocSubProcessImpl >> completionCondition [
^ completionCondition
]

{ #category : #'as yet unclassified' }
BPMN20AdHocSubProcessImpl >> completionCondition: acompletionCondition [
^ completionCondition := acompletionCondition
]

{ #category : #'as yet unclassified' }
BPMN20AdHocSubProcessImpl >> completionQuantity [
	^ completionQuantity
]

{ #category : #'as yet unclassified' }
BPMN20AdHocSubProcessImpl >> completionQuantity: acompletionQuantity [
	^ completionQuantity := acompletionQuantity
]

{ #category : #'as yet unclassified' }
BPMN20AdHocSubProcessImpl >> dataInputAssociations [
	^ dataInputAssociations
]

{ #category : #'as yet unclassified' }
BPMN20AdHocSubProcessImpl >> dataInputAssociations: adataInputAssociations [
	^ dataInputAssociations := adataInputAssociations
]

{ #category : #'as yet unclassified' }
BPMN20AdHocSubProcessImpl >> dataOutputAssociations [
	^ dataOutputAssociations
]

{ #category : #'as yet unclassified' }
BPMN20AdHocSubProcessImpl >> dataOutputAssociations: adataOutputAssociations [
	^ dataOutputAssociations := adataOutputAssociations
]

{ #category : #'as yet unclassified' }
BPMN20AdHocSubProcessImpl >> default_ [
	^ default_
]

{ #category : #'as yet unclassified' }
BPMN20AdHocSubProcessImpl >> default_: adefault_ [
	^ default_ := adefault_
]

{ #category : #'as yet unclassified' }
BPMN20AdHocSubProcessImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20AdHocSubProcessImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20AdHocSubProcessImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20AdHocSubProcessImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20AdHocSubProcessImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20AdHocSubProcessImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20AdHocSubProcessImpl >> flowElements [
	^ flowElements
]

{ #category : #'as yet unclassified' }
BPMN20AdHocSubProcessImpl >> flowElements: aflowElements [
	^ flowElements := aflowElements
]

{ #category : #'as yet unclassified' }
BPMN20AdHocSubProcessImpl >> incoming [
	^ incoming
]

{ #category : #'as yet unclassified' }
BPMN20AdHocSubProcessImpl >> incoming: aincoming [
	^ incoming := aincoming
]

{ #category : #'as yet unclassified' }
BPMN20AdHocSubProcessImpl >> ioSpecification [
	^ ioSpecification
]

{ #category : #'as yet unclassified' }
BPMN20AdHocSubProcessImpl >> ioSpecification: aioSpecification [
	^ ioSpecification := aioSpecification
]

{ #category : #'as yet unclassified' }
BPMN20AdHocSubProcessImpl >> isForCompensation [
	^ isForCompensation
]

{ #category : #'as yet unclassified' }
BPMN20AdHocSubProcessImpl >> isForCompensation: aisForCompensation [
	^ isForCompensation := aisForCompensation
]

{ #category : #'as yet unclassified' }
BPMN20AdHocSubProcessImpl >> laneSets [
	^ laneSets
]

{ #category : #'as yet unclassified' }
BPMN20AdHocSubProcessImpl >> laneSets: alaneSets [
	^ laneSets := alaneSets
]

{ #category : #'as yet unclassified' }
BPMN20AdHocSubProcessImpl >> lanes [
	^ lanes
]

{ #category : #'as yet unclassified' }
BPMN20AdHocSubProcessImpl >> lanes: alanes [
	^ lanes := alanes
]

{ #category : #'as yet unclassified' }
BPMN20AdHocSubProcessImpl >> loopCharacteristics [
	^ loopCharacteristics
]

{ #category : #'as yet unclassified' }
BPMN20AdHocSubProcessImpl >> loopCharacteristics: aloopCharacteristics [
	^ loopCharacteristics := aloopCharacteristics
]

{ #category : #'as yet unclassified' }
BPMN20AdHocSubProcessImpl >> monitoring [
	^ monitoring
]

{ #category : #'as yet unclassified' }
BPMN20AdHocSubProcessImpl >> monitoring: amonitoring [
	^ monitoring := amonitoring
]

{ #category : #'as yet unclassified' }
BPMN20AdHocSubProcessImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20AdHocSubProcessImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20AdHocSubProcessImpl >> ordering [
^ ordering
]

{ #category : #'as yet unclassified' }
BPMN20AdHocSubProcessImpl >> ordering: aordering [
^ ordering := aordering
]

{ #category : #'as yet unclassified' }
BPMN20AdHocSubProcessImpl >> outgoing [
	^ outgoing
]

{ #category : #'as yet unclassified' }
BPMN20AdHocSubProcessImpl >> outgoing: aoutgoing [
	^ outgoing := aoutgoing
]

{ #category : #'as yet unclassified' }
BPMN20AdHocSubProcessImpl >> properties [
	^ properties
]

{ #category : #'as yet unclassified' }
BPMN20AdHocSubProcessImpl >> properties: aproperties [
	^ properties := aproperties
]

{ #category : #'as yet unclassified' }
BPMN20AdHocSubProcessImpl >> resources [
	^ resources
]

{ #category : #'as yet unclassified' }
BPMN20AdHocSubProcessImpl >> resources: aresources [
	^ resources := aresources
]

{ #category : #'as yet unclassified' }
BPMN20AdHocSubProcessImpl >> startQuantity [
	^ startQuantity
]

{ #category : #'as yet unclassified' }
BPMN20AdHocSubProcessImpl >> startQuantity: astartQuantity [
	^ startQuantity := astartQuantity
]

{ #category : #'as yet unclassified' }
BPMN20AdHocSubProcessImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20AdHocSubProcessImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20AdHocSubProcessImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20AdHocSubProcessImpl >> text: atext [
	^ text := atext
]

{ #category : #'as yet unclassified' }
BPMN20AdHocSubProcessImpl >> triggeredByEvent [
	^ triggeredByEvent
]

{ #category : #'as yet unclassified' }
BPMN20AdHocSubProcessImpl >> triggeredByEvent: atriggeredByEvent [
	^ triggeredByEvent := atriggeredByEvent
]
