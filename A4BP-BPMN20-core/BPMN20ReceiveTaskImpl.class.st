Class {
	#name : #BPMN20ReceiveTaskImpl,
	#superclass : #BPMN20TaskImpl,
	#instVars : [
		'IMPLEMENTATION_EDEFAULT',
		'operationRef',
		'implementation',
		'instantiate',
		'INSTANTIATE_EDEFAULT',
		'messageRef'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20ReceiveTaskImpl class >> annotation [
<MSEClass: #BPMN20ReceiveTaskImpl  super: #BPMN20TaskImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20ReceiveTaskImpl >> IMPLEMENTATION_EDEFAULT [
^ IMPLEMENTATION_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20ReceiveTaskImpl >> IMPLEMENTATION_EDEFAULT: aIMPLEMENTATION_EDEFAULT [
^ IMPLEMENTATION_EDEFAULT := aIMPLEMENTATION_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20ReceiveTaskImpl >> INSTANTIATE_EDEFAULT [
^ INSTANTIATE_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20ReceiveTaskImpl >> INSTANTIATE_EDEFAULT: aINSTANTIATE_EDEFAULT [
^ INSTANTIATE_EDEFAULT := aINSTANTIATE_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20ReceiveTaskImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20ReceiveTaskImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20ReceiveTaskImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20ReceiveTaskImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20ReceiveTaskImpl >> auditing [
	^ auditing
]

{ #category : #'as yet unclassified' }
BPMN20ReceiveTaskImpl >> auditing: aauditing [
	^ auditing := aauditing
]

{ #category : #'as yet unclassified' }
BPMN20ReceiveTaskImpl >> boundaryEventRefs [
	^ boundaryEventRefs
]

{ #category : #'as yet unclassified' }
BPMN20ReceiveTaskImpl >> boundaryEventRefs: aboundaryEventRefs [
	^ boundaryEventRefs := aboundaryEventRefs
]

{ #category : #'as yet unclassified' }
BPMN20ReceiveTaskImpl >> categoryValueRef [
	^ categoryValueRef
]

{ #category : #'as yet unclassified' }
BPMN20ReceiveTaskImpl >> categoryValueRef: acategoryValueRef [
	^ categoryValueRef := acategoryValueRef
]

{ #category : #'as yet unclassified' }
BPMN20ReceiveTaskImpl >> completionQuantity [
	^ completionQuantity
]

{ #category : #'as yet unclassified' }
BPMN20ReceiveTaskImpl >> completionQuantity: acompletionQuantity [
	^ completionQuantity := acompletionQuantity
]

{ #category : #'as yet unclassified' }
BPMN20ReceiveTaskImpl >> dataInputAssociations [
	^ dataInputAssociations
]

{ #category : #'as yet unclassified' }
BPMN20ReceiveTaskImpl >> dataInputAssociations: adataInputAssociations [
	^ dataInputAssociations := adataInputAssociations
]

{ #category : #'as yet unclassified' }
BPMN20ReceiveTaskImpl >> dataOutputAssociations [
	^ dataOutputAssociations
]

{ #category : #'as yet unclassified' }
BPMN20ReceiveTaskImpl >> dataOutputAssociations: adataOutputAssociations [
	^ dataOutputAssociations := adataOutputAssociations
]

{ #category : #'as yet unclassified' }
BPMN20ReceiveTaskImpl >> default_ [
	^ default_
]

{ #category : #'as yet unclassified' }
BPMN20ReceiveTaskImpl >> default_: adefault_ [
	^ default_ := adefault_
]

{ #category : #'as yet unclassified' }
BPMN20ReceiveTaskImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20ReceiveTaskImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20ReceiveTaskImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20ReceiveTaskImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20ReceiveTaskImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20ReceiveTaskImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20ReceiveTaskImpl >> implementation [
^ implementation
]

{ #category : #'as yet unclassified' }
BPMN20ReceiveTaskImpl >> implementation: aimplementation [
^ implementation := aimplementation
]

{ #category : #'as yet unclassified' }
BPMN20ReceiveTaskImpl >> incoming [
	^ incoming
]

{ #category : #'as yet unclassified' }
BPMN20ReceiveTaskImpl >> incoming: aincoming [
	^ incoming := aincoming
]

{ #category : #'as yet unclassified' }
BPMN20ReceiveTaskImpl >> instantiate [
^ instantiate
]

{ #category : #'as yet unclassified' }
BPMN20ReceiveTaskImpl >> instantiate: ainstantiate [
^ instantiate := ainstantiate
]

{ #category : #'as yet unclassified' }
BPMN20ReceiveTaskImpl >> ioSpecification [
	^ ioSpecification
]

{ #category : #'as yet unclassified' }
BPMN20ReceiveTaskImpl >> ioSpecification: aioSpecification [
	^ ioSpecification := aioSpecification
]

{ #category : #'as yet unclassified' }
BPMN20ReceiveTaskImpl >> isForCompensation [
	^ isForCompensation
]

{ #category : #'as yet unclassified' }
BPMN20ReceiveTaskImpl >> isForCompensation: aisForCompensation [
	^ isForCompensation := aisForCompensation
]

{ #category : #'as yet unclassified' }
BPMN20ReceiveTaskImpl >> lanes [
	^ lanes
]

{ #category : #'as yet unclassified' }
BPMN20ReceiveTaskImpl >> lanes: alanes [
	^ lanes := alanes
]

{ #category : #'as yet unclassified' }
BPMN20ReceiveTaskImpl >> loopCharacteristics [
	^ loopCharacteristics
]

{ #category : #'as yet unclassified' }
BPMN20ReceiveTaskImpl >> loopCharacteristics: aloopCharacteristics [
	^ loopCharacteristics := aloopCharacteristics
]

{ #category : #'as yet unclassified' }
BPMN20ReceiveTaskImpl >> messageRef [
^ messageRef
]

{ #category : #'as yet unclassified' }
BPMN20ReceiveTaskImpl >> messageRef: amessageRef [
^ messageRef := amessageRef
]

{ #category : #'as yet unclassified' }
BPMN20ReceiveTaskImpl >> monitoring [
	^ monitoring
]

{ #category : #'as yet unclassified' }
BPMN20ReceiveTaskImpl >> monitoring: amonitoring [
	^ monitoring := amonitoring
]

{ #category : #'as yet unclassified' }
BPMN20ReceiveTaskImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20ReceiveTaskImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20ReceiveTaskImpl >> operationRef [
^ operationRef
]

{ #category : #'as yet unclassified' }
BPMN20ReceiveTaskImpl >> operationRef: aoperationRef [
^ operationRef := aoperationRef
]

{ #category : #'as yet unclassified' }
BPMN20ReceiveTaskImpl >> outgoing [
	^ outgoing
]

{ #category : #'as yet unclassified' }
BPMN20ReceiveTaskImpl >> outgoing: aoutgoing [
	^ outgoing := aoutgoing
]

{ #category : #'as yet unclassified' }
BPMN20ReceiveTaskImpl >> properties [
	^ properties
]

{ #category : #'as yet unclassified' }
BPMN20ReceiveTaskImpl >> properties: aproperties [
	^ properties := aproperties
]

{ #category : #'as yet unclassified' }
BPMN20ReceiveTaskImpl >> resources [
	^ resources
]

{ #category : #'as yet unclassified' }
BPMN20ReceiveTaskImpl >> resources: aresources [
	^ resources := aresources
]

{ #category : #'as yet unclassified' }
BPMN20ReceiveTaskImpl >> startQuantity [
	^ startQuantity
]

{ #category : #'as yet unclassified' }
BPMN20ReceiveTaskImpl >> startQuantity: astartQuantity [
	^ startQuantity := astartQuantity
]

{ #category : #'as yet unclassified' }
BPMN20ReceiveTaskImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20ReceiveTaskImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20ReceiveTaskImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20ReceiveTaskImpl >> text: atext [
	^ text := atext
]
