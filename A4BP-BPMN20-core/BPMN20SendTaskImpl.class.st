Class {
	#name : #BPMN20SendTaskImpl,
	#superclass : #BPMN20TaskImpl,
	#instVars : [
		'operationRef',
		'IMPLEMENTATION_EDEFAULT',
		'messageRef',
		'implementation'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20SendTaskImpl class >> annotation [
<MSEClass: #BPMN20SendTaskImpl  super: #BPMN20TaskImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20SendTaskImpl >> IMPLEMENTATION_EDEFAULT [
^ IMPLEMENTATION_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20SendTaskImpl >> IMPLEMENTATION_EDEFAULT: aIMPLEMENTATION_EDEFAULT [
^ IMPLEMENTATION_EDEFAULT := aIMPLEMENTATION_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20SendTaskImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20SendTaskImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20SendTaskImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20SendTaskImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20SendTaskImpl >> auditing [
	^ auditing
]

{ #category : #'as yet unclassified' }
BPMN20SendTaskImpl >> auditing: aauditing [
	^ auditing := aauditing
]

{ #category : #'as yet unclassified' }
BPMN20SendTaskImpl >> boundaryEventRefs [
	^ boundaryEventRefs
]

{ #category : #'as yet unclassified' }
BPMN20SendTaskImpl >> boundaryEventRefs: aboundaryEventRefs [
	^ boundaryEventRefs := aboundaryEventRefs
]

{ #category : #'as yet unclassified' }
BPMN20SendTaskImpl >> categoryValueRef [
	^ categoryValueRef
]

{ #category : #'as yet unclassified' }
BPMN20SendTaskImpl >> categoryValueRef: acategoryValueRef [
	^ categoryValueRef := acategoryValueRef
]

{ #category : #'as yet unclassified' }
BPMN20SendTaskImpl >> completionQuantity [
	^ completionQuantity
]

{ #category : #'as yet unclassified' }
BPMN20SendTaskImpl >> completionQuantity: acompletionQuantity [
	^ completionQuantity := acompletionQuantity
]

{ #category : #'as yet unclassified' }
BPMN20SendTaskImpl >> dataInputAssociations [
	^ dataInputAssociations
]

{ #category : #'as yet unclassified' }
BPMN20SendTaskImpl >> dataInputAssociations: adataInputAssociations [
	^ dataInputAssociations := adataInputAssociations
]

{ #category : #'as yet unclassified' }
BPMN20SendTaskImpl >> dataOutputAssociations [
	^ dataOutputAssociations
]

{ #category : #'as yet unclassified' }
BPMN20SendTaskImpl >> dataOutputAssociations: adataOutputAssociations [
	^ dataOutputAssociations := adataOutputAssociations
]

{ #category : #'as yet unclassified' }
BPMN20SendTaskImpl >> default_ [
	^ default_
]

{ #category : #'as yet unclassified' }
BPMN20SendTaskImpl >> default_: adefault_ [
	^ default_ := adefault_
]

{ #category : #'as yet unclassified' }
BPMN20SendTaskImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20SendTaskImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20SendTaskImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20SendTaskImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20SendTaskImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20SendTaskImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20SendTaskImpl >> implementation [
^ implementation
]

{ #category : #'as yet unclassified' }
BPMN20SendTaskImpl >> implementation: aimplementation [
^ implementation := aimplementation
]

{ #category : #'as yet unclassified' }
BPMN20SendTaskImpl >> incoming [
	^ incoming
]

{ #category : #'as yet unclassified' }
BPMN20SendTaskImpl >> incoming: aincoming [
	^ incoming := aincoming
]

{ #category : #'as yet unclassified' }
BPMN20SendTaskImpl >> ioSpecification [
	^ ioSpecification
]

{ #category : #'as yet unclassified' }
BPMN20SendTaskImpl >> ioSpecification: aioSpecification [
	^ ioSpecification := aioSpecification
]

{ #category : #'as yet unclassified' }
BPMN20SendTaskImpl >> isForCompensation [
	^ isForCompensation
]

{ #category : #'as yet unclassified' }
BPMN20SendTaskImpl >> isForCompensation: aisForCompensation [
	^ isForCompensation := aisForCompensation
]

{ #category : #'as yet unclassified' }
BPMN20SendTaskImpl >> lanes [
	^ lanes
]

{ #category : #'as yet unclassified' }
BPMN20SendTaskImpl >> lanes: alanes [
	^ lanes := alanes
]

{ #category : #'as yet unclassified' }
BPMN20SendTaskImpl >> loopCharacteristics [
	^ loopCharacteristics
]

{ #category : #'as yet unclassified' }
BPMN20SendTaskImpl >> loopCharacteristics: aloopCharacteristics [
	^ loopCharacteristics := aloopCharacteristics
]

{ #category : #'as yet unclassified' }
BPMN20SendTaskImpl >> messageRef [
^ messageRef
]

{ #category : #'as yet unclassified' }
BPMN20SendTaskImpl >> messageRef: amessageRef [
^ messageRef := amessageRef
]

{ #category : #'as yet unclassified' }
BPMN20SendTaskImpl >> monitoring [
	^ monitoring
]

{ #category : #'as yet unclassified' }
BPMN20SendTaskImpl >> monitoring: amonitoring [
	^ monitoring := amonitoring
]

{ #category : #'as yet unclassified' }
BPMN20SendTaskImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20SendTaskImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20SendTaskImpl >> operationRef [
^ operationRef
]

{ #category : #'as yet unclassified' }
BPMN20SendTaskImpl >> operationRef: aoperationRef [
^ operationRef := aoperationRef
]

{ #category : #'as yet unclassified' }
BPMN20SendTaskImpl >> outgoing [
	^ outgoing
]

{ #category : #'as yet unclassified' }
BPMN20SendTaskImpl >> outgoing: aoutgoing [
	^ outgoing := aoutgoing
]

{ #category : #'as yet unclassified' }
BPMN20SendTaskImpl >> properties [
	^ properties
]

{ #category : #'as yet unclassified' }
BPMN20SendTaskImpl >> properties: aproperties [
	^ properties := aproperties
]

{ #category : #'as yet unclassified' }
BPMN20SendTaskImpl >> resources [
	^ resources
]

{ #category : #'as yet unclassified' }
BPMN20SendTaskImpl >> resources: aresources [
	^ resources := aresources
]

{ #category : #'as yet unclassified' }
BPMN20SendTaskImpl >> startQuantity [
	^ startQuantity
]

{ #category : #'as yet unclassified' }
BPMN20SendTaskImpl >> startQuantity: astartQuantity [
	^ startQuantity := astartQuantity
]

{ #category : #'as yet unclassified' }
BPMN20SendTaskImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20SendTaskImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20SendTaskImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20SendTaskImpl >> text: atext [
	^ text := atext
]
