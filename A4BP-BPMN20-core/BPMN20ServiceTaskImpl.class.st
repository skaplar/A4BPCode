"
A Service Task is a Task that uses some sort of service, which could be a Web service or an automated application.
"
Class {
	#name : #BPMN20ServiceTaskImpl,
	#superclass : #BPMN20TaskImpl,
	#instVars : [
		'implementation',
		'operationRef'
	],
	#classVars : [
		'IMPLEMENTATION_EDEFAULT'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20ServiceTaskImpl class >> annotation [
<MSEClass: #BPMN20ServiceTaskImpl  super: #BPMN20TaskImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20ServiceTaskImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20ServiceTaskImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20ServiceTaskImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20ServiceTaskImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20ServiceTaskImpl >> auditing [
	^ auditing
]

{ #category : #'as yet unclassified' }
BPMN20ServiceTaskImpl >> auditing: aauditing [
	^ auditing := aauditing
]

{ #category : #'as yet unclassified' }
BPMN20ServiceTaskImpl >> boundaryEventRefs [
	^ boundaryEventRefs
]

{ #category : #'as yet unclassified' }
BPMN20ServiceTaskImpl >> boundaryEventRefs: aboundaryEventRefs [
	^ boundaryEventRefs := aboundaryEventRefs
]

{ #category : #'as yet unclassified' }
BPMN20ServiceTaskImpl >> categoryValueRef [
	^ categoryValueRef
]

{ #category : #'as yet unclassified' }
BPMN20ServiceTaskImpl >> categoryValueRef: acategoryValueRef [
	^ categoryValueRef := acategoryValueRef
]

{ #category : #'as yet unclassified' }
BPMN20ServiceTaskImpl >> completionQuantity [
	^ completionQuantity
]

{ #category : #'as yet unclassified' }
BPMN20ServiceTaskImpl >> completionQuantity: acompletionQuantity [
	^ completionQuantity := acompletionQuantity
]

{ #category : #'as yet unclassified' }
BPMN20ServiceTaskImpl >> dataInputAssociations [
	^ dataInputAssociations
]

{ #category : #'as yet unclassified' }
BPMN20ServiceTaskImpl >> dataInputAssociations: adataInputAssociations [
	^ dataInputAssociations := adataInputAssociations
]

{ #category : #'as yet unclassified' }
BPMN20ServiceTaskImpl >> dataOutputAssociations [
	^ dataOutputAssociations
]

{ #category : #'as yet unclassified' }
BPMN20ServiceTaskImpl >> dataOutputAssociations: adataOutputAssociations [
	^ dataOutputAssociations := adataOutputAssociations
]

{ #category : #'as yet unclassified' }
BPMN20ServiceTaskImpl >> default_ [
	^ default_
]

{ #category : #'as yet unclassified' }
BPMN20ServiceTaskImpl >> default_: adefault_ [
	^ default_ := adefault_
]

{ #category : #'as yet unclassified' }
BPMN20ServiceTaskImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20ServiceTaskImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20ServiceTaskImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20ServiceTaskImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20ServiceTaskImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20ServiceTaskImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20ServiceTaskImpl >> implementation [
^ implementation
]

{ #category : #'as yet unclassified' }
BPMN20ServiceTaskImpl >> implementation: aimplementation [
^ implementation := aimplementation
]

{ #category : #'as yet unclassified' }
BPMN20ServiceTaskImpl >> incoming [
	^ incoming
]

{ #category : #'as yet unclassified' }
BPMN20ServiceTaskImpl >> incoming: aincoming [
	^ incoming := aincoming
]

{ #category : #'as yet unclassified' }
BPMN20ServiceTaskImpl >> ioSpecification [
	^ ioSpecification
]

{ #category : #'as yet unclassified' }
BPMN20ServiceTaskImpl >> ioSpecification: aioSpecification [
	^ ioSpecification := aioSpecification
]

{ #category : #'as yet unclassified' }
BPMN20ServiceTaskImpl >> isForCompensation [
	^ isForCompensation
]

{ #category : #'as yet unclassified' }
BPMN20ServiceTaskImpl >> isForCompensation: aisForCompensation [
	^ isForCompensation := aisForCompensation
]

{ #category : #'as yet unclassified' }
BPMN20ServiceTaskImpl >> lanes [
	^ lanes
]

{ #category : #'as yet unclassified' }
BPMN20ServiceTaskImpl >> lanes: alanes [
	^ lanes := alanes
]

{ #category : #'as yet unclassified' }
BPMN20ServiceTaskImpl >> loopCharacteristics [
	^ loopCharacteristics
]

{ #category : #'as yet unclassified' }
BPMN20ServiceTaskImpl >> loopCharacteristics: aloopCharacteristics [
	^ loopCharacteristics := aloopCharacteristics
]

{ #category : #'as yet unclassified' }
BPMN20ServiceTaskImpl >> monitoring [
	^ monitoring
]

{ #category : #'as yet unclassified' }
BPMN20ServiceTaskImpl >> monitoring: amonitoring [
	^ monitoring := amonitoring
]

{ #category : #'as yet unclassified' }
BPMN20ServiceTaskImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20ServiceTaskImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20ServiceTaskImpl >> operationRef [
^ operationRef
]

{ #category : #'as yet unclassified' }
BPMN20ServiceTaskImpl >> operationRef: aoperationRef [
^ operationRef := aoperationRef
]

{ #category : #'as yet unclassified' }
BPMN20ServiceTaskImpl >> outgoing [
	^ outgoing
]

{ #category : #'as yet unclassified' }
BPMN20ServiceTaskImpl >> outgoing: aoutgoing [
	^ outgoing := aoutgoing
]

{ #category : #'as yet unclassified' }
BPMN20ServiceTaskImpl >> properties [
	^ properties
]

{ #category : #'as yet unclassified' }
BPMN20ServiceTaskImpl >> properties: aproperties [
	^ properties := aproperties
]

{ #category : #'as yet unclassified' }
BPMN20ServiceTaskImpl >> resources [
	^ resources
]

{ #category : #'as yet unclassified' }
BPMN20ServiceTaskImpl >> resources: aresources [
	^ resources := aresources
]

{ #category : #'as yet unclassified' }
BPMN20ServiceTaskImpl >> startQuantity [
	^ startQuantity
]

{ #category : #'as yet unclassified' }
BPMN20ServiceTaskImpl >> startQuantity: astartQuantity [
	^ startQuantity := astartQuantity
]

{ #category : #'as yet unclassified' }
BPMN20ServiceTaskImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20ServiceTaskImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20ServiceTaskImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20ServiceTaskImpl >> text: atext [
	^ text := atext
]
