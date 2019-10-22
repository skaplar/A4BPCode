Class {
	#name : #BPMN20IntermediateThrowEventImpl,
	#superclass : #BPMN20ThrowEventImpl,
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20IntermediateThrowEventImpl class >> annotation [
<MSEClass: #BPMN20IntermediateThrowEventImpl  super: #BPMN20ThrowEventImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #getset }
BPMN20IntermediateThrowEventImpl class >> bpmn20Name [
	^ 'Intermediate Throw Event'
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateThrowEventImpl class >> fillElementsIn: aModel from: document [
	| visitor |
	visitor := BPMN20ParserSetinBPMN20IntermediateThrowEventImplVisitor new.
	visitor element: aModel.
	self fillFlowNode: aModel from: document.
	self fillElementsIn: aModel from: document visitor: visitor.
]

{ #category : #visitor }
BPMN20IntermediateThrowEventImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20IntermediateThrowEventImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateThrowEventImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateThrowEventImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateThrowEventImpl >> auditing [
	^ auditing
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateThrowEventImpl >> auditing: aauditing [
	^ auditing := aauditing
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateThrowEventImpl >> categoryValueRef [
	^ categoryValueRef
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateThrowEventImpl >> categoryValueRef: acategoryValueRef [
	^ categoryValueRef := acategoryValueRef
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateThrowEventImpl >> dataInputAssociation [
	^ dataInputAssociation
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateThrowEventImpl >> dataInputAssociation: adataInputAssociation [
	^ dataInputAssociation := adataInputAssociation
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateThrowEventImpl >> dataInputs [
	^ dataInputs
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateThrowEventImpl >> dataInputs: adataInputs [
	^ dataInputs := adataInputs
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateThrowEventImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateThrowEventImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateThrowEventImpl >> eventDefinitionRefs [
	^ eventDefinitionRefs
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateThrowEventImpl >> eventDefinitionRefs: aeventDefinitionRefs [
	^ eventDefinitionRefs := aeventDefinitionRefs
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateThrowEventImpl >> eventDefinitions [
	^ eventDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateThrowEventImpl >> eventDefinitions: aeventDefinitions [
	^ eventDefinitions := aeventDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateThrowEventImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateThrowEventImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateThrowEventImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateThrowEventImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateThrowEventImpl >> incoming [
	^ incoming
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateThrowEventImpl >> incoming: aincoming [
	^ incoming := aincoming
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateThrowEventImpl >> inputSet [
	^ inputSet
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateThrowEventImpl >> inputSet: ainputSet [
	^ inputSet := ainputSet
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateThrowEventImpl >> lanes [
	^ lanes
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateThrowEventImpl >> lanes: alanes [
	^ lanes := alanes
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateThrowEventImpl >> monitoring [
	^ monitoring
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateThrowEventImpl >> monitoring: amonitoring [
	^ monitoring := amonitoring
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateThrowEventImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateThrowEventImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateThrowEventImpl >> outgoing [
	^ outgoing
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateThrowEventImpl >> outgoing: aoutgoing [
	^ outgoing := aoutgoing
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateThrowEventImpl >> properties [
	^ properties
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateThrowEventImpl >> properties: aproperties [
	^ properties := aproperties
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateThrowEventImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateThrowEventImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateThrowEventImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateThrowEventImpl >> text: atext [
	^ text := atext
]
