Class {
	#name : #BPMN20ImplicitThrowEventImpl,
	#superclass : #BPMN20ThrowEventImpl,
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20ImplicitThrowEventImpl class >> annotation [
<MSEClass: #BPMN20ImplicitThrowEventImpl  super: #BPMN20ThrowEventImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20ImplicitThrowEventImpl class >> fillElementsIn: aModel from: document [
	| visitor |
	visitor := BPMN20ParserSetinBPMN20ImplicitThrowEventImplVisitor new.
	visitor element: aModel.
	self fillFlowNode: aModel from: document.
	self fillElementsIn: aModel from: document visitor: visitor.
]

{ #category : #visitor }
BPMN20ImplicitThrowEventImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20ImplicitThrowEventImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20ImplicitThrowEventImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20ImplicitThrowEventImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20ImplicitThrowEventImpl >> auditing [
	^ auditing
]

{ #category : #'as yet unclassified' }
BPMN20ImplicitThrowEventImpl >> auditing: aauditing [
	^ auditing := aauditing
]

{ #category : #'as yet unclassified' }
BPMN20ImplicitThrowEventImpl >> categoryValueRef [
	^ categoryValueRef
]

{ #category : #'as yet unclassified' }
BPMN20ImplicitThrowEventImpl >> categoryValueRef: acategoryValueRef [
	^ categoryValueRef := acategoryValueRef
]

{ #category : #'as yet unclassified' }
BPMN20ImplicitThrowEventImpl >> dataInputAssociation [
	^ dataInputAssociation
]

{ #category : #'as yet unclassified' }
BPMN20ImplicitThrowEventImpl >> dataInputAssociation: adataInputAssociation [
	^ dataInputAssociation := adataInputAssociation
]

{ #category : #'as yet unclassified' }
BPMN20ImplicitThrowEventImpl >> dataInputs [
	^ dataInputs
]

{ #category : #'as yet unclassified' }
BPMN20ImplicitThrowEventImpl >> dataInputs: adataInputs [
	^ dataInputs := adataInputs
]

{ #category : #'as yet unclassified' }
BPMN20ImplicitThrowEventImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20ImplicitThrowEventImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20ImplicitThrowEventImpl >> eventDefinitionRefs [
	^ eventDefinitionRefs
]

{ #category : #'as yet unclassified' }
BPMN20ImplicitThrowEventImpl >> eventDefinitionRefs: aeventDefinitionRefs [
	^ eventDefinitionRefs := aeventDefinitionRefs
]

{ #category : #'as yet unclassified' }
BPMN20ImplicitThrowEventImpl >> eventDefinitions [
	^ eventDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20ImplicitThrowEventImpl >> eventDefinitions: aeventDefinitions [
	^ eventDefinitions := aeventDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20ImplicitThrowEventImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20ImplicitThrowEventImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20ImplicitThrowEventImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20ImplicitThrowEventImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20ImplicitThrowEventImpl >> incoming [
	^ incoming
]

{ #category : #'as yet unclassified' }
BPMN20ImplicitThrowEventImpl >> incoming: aincoming [
	^ incoming := aincoming
]

{ #category : #'as yet unclassified' }
BPMN20ImplicitThrowEventImpl >> inputSet [
	^ inputSet
]

{ #category : #'as yet unclassified' }
BPMN20ImplicitThrowEventImpl >> inputSet: ainputSet [
	^ inputSet := ainputSet
]

{ #category : #'as yet unclassified' }
BPMN20ImplicitThrowEventImpl >> lanes [
	^ lanes
]

{ #category : #'as yet unclassified' }
BPMN20ImplicitThrowEventImpl >> lanes: alanes [
	^ lanes := alanes
]

{ #category : #'as yet unclassified' }
BPMN20ImplicitThrowEventImpl >> monitoring [
	^ monitoring
]

{ #category : #'as yet unclassified' }
BPMN20ImplicitThrowEventImpl >> monitoring: amonitoring [
	^ monitoring := amonitoring
]

{ #category : #'as yet unclassified' }
BPMN20ImplicitThrowEventImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20ImplicitThrowEventImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20ImplicitThrowEventImpl >> outgoing [
	^ outgoing
]

{ #category : #'as yet unclassified' }
BPMN20ImplicitThrowEventImpl >> outgoing: aoutgoing [
	^ outgoing := aoutgoing
]

{ #category : #'as yet unclassified' }
BPMN20ImplicitThrowEventImpl >> properties [
	^ properties
]

{ #category : #'as yet unclassified' }
BPMN20ImplicitThrowEventImpl >> properties: aproperties [
	^ properties := aproperties
]

{ #category : #'as yet unclassified' }
BPMN20ImplicitThrowEventImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20ImplicitThrowEventImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20ImplicitThrowEventImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20ImplicitThrowEventImpl >> text: atext [
	^ text := atext
]
