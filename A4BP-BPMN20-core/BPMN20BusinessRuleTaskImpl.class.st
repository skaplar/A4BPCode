Class {
	#name : #BPMN20BusinessRuleTaskImpl,
	#superclass : #BPMN20TaskImpl,
	#instVars : [
		'implementation'
	],
	#classVars : [
		'IMPLEMENTATION_EDEFAULT'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20BusinessRuleTaskImpl class >> annotation [
<MSEClass: #BPMN20BusinessRuleTaskImpl  super: #BPMN20TaskImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20BusinessRuleTaskImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20BusinessRuleTaskImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20BusinessRuleTaskImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20BusinessRuleTaskImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20BusinessRuleTaskImpl >> auditing [
	^ auditing
]

{ #category : #'as yet unclassified' }
BPMN20BusinessRuleTaskImpl >> auditing: aauditing [
	^ auditing := aauditing
]

{ #category : #'as yet unclassified' }
BPMN20BusinessRuleTaskImpl >> boundaryEventRefs [
	^ boundaryEventRefs
]

{ #category : #'as yet unclassified' }
BPMN20BusinessRuleTaskImpl >> boundaryEventRefs: aboundaryEventRefs [
	^ boundaryEventRefs := aboundaryEventRefs
]

{ #category : #'as yet unclassified' }
BPMN20BusinessRuleTaskImpl >> categoryValueRef [
	^ categoryValueRef
]

{ #category : #'as yet unclassified' }
BPMN20BusinessRuleTaskImpl >> categoryValueRef: acategoryValueRef [
	^ categoryValueRef := acategoryValueRef
]

{ #category : #'as yet unclassified' }
BPMN20BusinessRuleTaskImpl >> completionQuantity [
	^ completionQuantity
]

{ #category : #'as yet unclassified' }
BPMN20BusinessRuleTaskImpl >> completionQuantity: acompletionQuantity [
	^ completionQuantity := acompletionQuantity
]

{ #category : #'as yet unclassified' }
BPMN20BusinessRuleTaskImpl >> dataInputAssociations [
	^ dataInputAssociations
]

{ #category : #'as yet unclassified' }
BPMN20BusinessRuleTaskImpl >> dataInputAssociations: adataInputAssociations [
	^ dataInputAssociations := adataInputAssociations
]

{ #category : #'as yet unclassified' }
BPMN20BusinessRuleTaskImpl >> dataOutputAssociations [
	^ dataOutputAssociations
]

{ #category : #'as yet unclassified' }
BPMN20BusinessRuleTaskImpl >> dataOutputAssociations: adataOutputAssociations [
	^ dataOutputAssociations := adataOutputAssociations
]

{ #category : #'as yet unclassified' }
BPMN20BusinessRuleTaskImpl >> default_ [
	^ default_
]

{ #category : #'as yet unclassified' }
BPMN20BusinessRuleTaskImpl >> default_: adefault_ [
	^ default_ := adefault_
]

{ #category : #'as yet unclassified' }
BPMN20BusinessRuleTaskImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20BusinessRuleTaskImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20BusinessRuleTaskImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20BusinessRuleTaskImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20BusinessRuleTaskImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20BusinessRuleTaskImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20BusinessRuleTaskImpl >> implementation [
^ implementation
]

{ #category : #'as yet unclassified' }
BPMN20BusinessRuleTaskImpl >> implementation: aimplementation [
^ implementation := aimplementation
]

{ #category : #'as yet unclassified' }
BPMN20BusinessRuleTaskImpl >> incoming [
	^ incoming
]

{ #category : #'as yet unclassified' }
BPMN20BusinessRuleTaskImpl >> incoming: aincoming [
	^ incoming := aincoming
]

{ #category : #'as yet unclassified' }
BPMN20BusinessRuleTaskImpl >> ioSpecification [
	^ ioSpecification
]

{ #category : #'as yet unclassified' }
BPMN20BusinessRuleTaskImpl >> ioSpecification: aioSpecification [
	^ ioSpecification := aioSpecification
]

{ #category : #'as yet unclassified' }
BPMN20BusinessRuleTaskImpl >> isForCompensation [
	^ isForCompensation
]

{ #category : #'as yet unclassified' }
BPMN20BusinessRuleTaskImpl >> isForCompensation: aisForCompensation [
	^ isForCompensation := aisForCompensation
]

{ #category : #'as yet unclassified' }
BPMN20BusinessRuleTaskImpl >> lanes [
	^ lanes
]

{ #category : #'as yet unclassified' }
BPMN20BusinessRuleTaskImpl >> lanes: alanes [
	^ lanes := alanes
]

{ #category : #'as yet unclassified' }
BPMN20BusinessRuleTaskImpl >> loopCharacteristics [
	^ loopCharacteristics
]

{ #category : #'as yet unclassified' }
BPMN20BusinessRuleTaskImpl >> loopCharacteristics: aloopCharacteristics [
	^ loopCharacteristics := aloopCharacteristics
]

{ #category : #'as yet unclassified' }
BPMN20BusinessRuleTaskImpl >> monitoring [
	^ monitoring
]

{ #category : #'as yet unclassified' }
BPMN20BusinessRuleTaskImpl >> monitoring: amonitoring [
	^ monitoring := amonitoring
]

{ #category : #'as yet unclassified' }
BPMN20BusinessRuleTaskImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20BusinessRuleTaskImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20BusinessRuleTaskImpl >> outgoing [
	^ outgoing
]

{ #category : #'as yet unclassified' }
BPMN20BusinessRuleTaskImpl >> outgoing: aoutgoing [
	^ outgoing := aoutgoing
]

{ #category : #'as yet unclassified' }
BPMN20BusinessRuleTaskImpl >> properties [
	^ properties
]

{ #category : #'as yet unclassified' }
BPMN20BusinessRuleTaskImpl >> properties: aproperties [
	^ properties := aproperties
]

{ #category : #'as yet unclassified' }
BPMN20BusinessRuleTaskImpl >> resources [
	^ resources
]

{ #category : #'as yet unclassified' }
BPMN20BusinessRuleTaskImpl >> resources: aresources [
	^ resources := aresources
]

{ #category : #'as yet unclassified' }
BPMN20BusinessRuleTaskImpl >> startQuantity [
	^ startQuantity
]

{ #category : #'as yet unclassified' }
BPMN20BusinessRuleTaskImpl >> startQuantity: astartQuantity [
	^ startQuantity := astartQuantity
]

{ #category : #'as yet unclassified' }
BPMN20BusinessRuleTaskImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20BusinessRuleTaskImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20BusinessRuleTaskImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20BusinessRuleTaskImpl >> text: atext [
	^ text := atext
]
