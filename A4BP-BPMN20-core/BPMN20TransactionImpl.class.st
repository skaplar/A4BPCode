Class {
	#name : #BPMN20TransactionImpl,
	#superclass : #BPMN20SubProcessImpl,
	#instVars : [
		'METHOD_EDEFAULT',
		'method',
		'PROTOCOL_EDEFAULT',
		'protocol'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20TransactionImpl class >> annotation [
<MSEClass: #BPMN20TransactionImpl  super: #BPMN20SubProcessImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20TransactionImpl >> METHOD_EDEFAULT [
^ METHOD_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20TransactionImpl >> METHOD_EDEFAULT: aMETHOD_EDEFAULT [
^ METHOD_EDEFAULT := aMETHOD_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20TransactionImpl >> PROTOCOL_EDEFAULT [
^ PROTOCOL_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20TransactionImpl >> PROTOCOL_EDEFAULT: aPROTOCOL_EDEFAULT [
^ PROTOCOL_EDEFAULT := aPROTOCOL_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20TransactionImpl >> TRIGGERED_BY_EVENT_EDEFAULT [
	^ TRIGGERED_BY_EVENT_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20TransactionImpl >> TRIGGERED_BY_EVENT_EDEFAULT: aTRIGGERED_BY_EVENT_EDEFAULT [
	^ TRIGGERED_BY_EVENT_EDEFAULT := aTRIGGERED_BY_EVENT_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20TransactionImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20TransactionImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20TransactionImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20TransactionImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20TransactionImpl >> artifacts [
	^ artifacts
]

{ #category : #'as yet unclassified' }
BPMN20TransactionImpl >> artifacts: aartifacts [
	^ artifacts := aartifacts
]

{ #category : #'as yet unclassified' }
BPMN20TransactionImpl >> auditing [
	^ auditing
]

{ #category : #'as yet unclassified' }
BPMN20TransactionImpl >> auditing: aauditing [
	^ auditing := aauditing
]

{ #category : #'as yet unclassified' }
BPMN20TransactionImpl >> boundaryEventRefs [
	^ boundaryEventRefs
]

{ #category : #'as yet unclassified' }
BPMN20TransactionImpl >> boundaryEventRefs: aboundaryEventRefs [
	^ boundaryEventRefs := aboundaryEventRefs
]

{ #category : #'as yet unclassified' }
BPMN20TransactionImpl >> categoryValueRef [
	^ categoryValueRef
]

{ #category : #'as yet unclassified' }
BPMN20TransactionImpl >> categoryValueRef: acategoryValueRef [
	^ categoryValueRef := acategoryValueRef
]

{ #category : #'as yet unclassified' }
BPMN20TransactionImpl >> completionQuantity [
	^ completionQuantity
]

{ #category : #'as yet unclassified' }
BPMN20TransactionImpl >> completionQuantity: acompletionQuantity [
	^ completionQuantity := acompletionQuantity
]

{ #category : #'as yet unclassified' }
BPMN20TransactionImpl >> dataInputAssociations [
	^ dataInputAssociations
]

{ #category : #'as yet unclassified' }
BPMN20TransactionImpl >> dataInputAssociations: adataInputAssociations [
	^ dataInputAssociations := adataInputAssociations
]

{ #category : #'as yet unclassified' }
BPMN20TransactionImpl >> dataOutputAssociations [
	^ dataOutputAssociations
]

{ #category : #'as yet unclassified' }
BPMN20TransactionImpl >> dataOutputAssociations: adataOutputAssociations [
	^ dataOutputAssociations := adataOutputAssociations
]

{ #category : #'as yet unclassified' }
BPMN20TransactionImpl >> default_ [
	^ default_
]

{ #category : #'as yet unclassified' }
BPMN20TransactionImpl >> default_: adefault_ [
	^ default_ := adefault_
]

{ #category : #'as yet unclassified' }
BPMN20TransactionImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20TransactionImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20TransactionImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20TransactionImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20TransactionImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20TransactionImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20TransactionImpl >> flowElements [
	^ flowElements
]

{ #category : #'as yet unclassified' }
BPMN20TransactionImpl >> flowElements: aflowElements [
	^ flowElements := aflowElements
]

{ #category : #'as yet unclassified' }
BPMN20TransactionImpl >> incoming [
	^ incoming
]

{ #category : #'as yet unclassified' }
BPMN20TransactionImpl >> incoming: aincoming [
	^ incoming := aincoming
]

{ #category : #'as yet unclassified' }
BPMN20TransactionImpl >> ioSpecification [
	^ ioSpecification
]

{ #category : #'as yet unclassified' }
BPMN20TransactionImpl >> ioSpecification: aioSpecification [
	^ ioSpecification := aioSpecification
]

{ #category : #'as yet unclassified' }
BPMN20TransactionImpl >> isForCompensation [
	^ isForCompensation
]

{ #category : #'as yet unclassified' }
BPMN20TransactionImpl >> isForCompensation: aisForCompensation [
	^ isForCompensation := aisForCompensation
]

{ #category : #'as yet unclassified' }
BPMN20TransactionImpl >> laneSets [
	^ laneSets
]

{ #category : #'as yet unclassified' }
BPMN20TransactionImpl >> laneSets: alaneSets [
	^ laneSets := alaneSets
]

{ #category : #'as yet unclassified' }
BPMN20TransactionImpl >> lanes [
	^ lanes
]

{ #category : #'as yet unclassified' }
BPMN20TransactionImpl >> lanes: alanes [
	^ lanes := alanes
]

{ #category : #'as yet unclassified' }
BPMN20TransactionImpl >> loopCharacteristics [
	^ loopCharacteristics
]

{ #category : #'as yet unclassified' }
BPMN20TransactionImpl >> loopCharacteristics: aloopCharacteristics [
	^ loopCharacteristics := aloopCharacteristics
]

{ #category : #'as yet unclassified' }
BPMN20TransactionImpl >> method [
^ method
]

{ #category : #'as yet unclassified' }
BPMN20TransactionImpl >> method: amethod [
^ method := amethod
]

{ #category : #'as yet unclassified' }
BPMN20TransactionImpl >> monitoring [
	^ monitoring
]

{ #category : #'as yet unclassified' }
BPMN20TransactionImpl >> monitoring: amonitoring [
	^ monitoring := amonitoring
]

{ #category : #'as yet unclassified' }
BPMN20TransactionImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20TransactionImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20TransactionImpl >> outgoing [
	^ outgoing
]

{ #category : #'as yet unclassified' }
BPMN20TransactionImpl >> outgoing: aoutgoing [
	^ outgoing := aoutgoing
]

{ #category : #'as yet unclassified' }
BPMN20TransactionImpl >> properties [
	^ properties
]

{ #category : #'as yet unclassified' }
BPMN20TransactionImpl >> properties: aproperties [
	^ properties := aproperties
]

{ #category : #'as yet unclassified' }
BPMN20TransactionImpl >> protocol [
^ protocol
]

{ #category : #'as yet unclassified' }
BPMN20TransactionImpl >> protocol: aprotocol [
^ protocol := aprotocol
]

{ #category : #'as yet unclassified' }
BPMN20TransactionImpl >> resources [
	^ resources
]

{ #category : #'as yet unclassified' }
BPMN20TransactionImpl >> resources: aresources [
	^ resources := aresources
]

{ #category : #'as yet unclassified' }
BPMN20TransactionImpl >> startQuantity [
	^ startQuantity
]

{ #category : #'as yet unclassified' }
BPMN20TransactionImpl >> startQuantity: astartQuantity [
	^ startQuantity := astartQuantity
]

{ #category : #'as yet unclassified' }
BPMN20TransactionImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20TransactionImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20TransactionImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20TransactionImpl >> text: atext [
	^ text := atext
]

{ #category : #'as yet unclassified' }
BPMN20TransactionImpl >> triggeredByEvent [
	^ triggeredByEvent
]

{ #category : #'as yet unclassified' }
BPMN20TransactionImpl >> triggeredByEvent: atriggeredByEvent [
	^ triggeredByEvent := atriggeredByEvent
]
