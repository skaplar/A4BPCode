Class {
	#name : #BPMN20EndEventImpl,
	#superclass : #BPMN20ThrowEventImpl,
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20EndEventImpl class >> annotation [
<MSEClass: #BPMN20EndEventImpl  super: #BPMN20ThrowEventImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #getset }
BPMN20EndEventImpl class >> bpmn20Name [
	^ 'End Event'
]

{ #category : #'as yet unclassified' }
BPMN20EndEventImpl class >> fillElementsIn: aModel from: document [
	| visitor |
	visitor := BPMN20ParserSetinBPMN20EndEventImplVisitor new.
	visitor element: aModel.
	self fillFlowNode: aModel from: document.
	self fillElementsIn: aModel from: document visitor: visitor.
]

{ #category : #getset }
BPMN20EndEventImpl >> aName [
	aName size > 0 ifTrue:[ ^ aName].
	^ self class bpmn20Name 
]

{ #category : #visitor }
BPMN20EndEventImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20EndEventImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20EndEventImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20EndEventImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20EndEventImpl >> auditing [
	^ auditing
]

{ #category : #'as yet unclassified' }
BPMN20EndEventImpl >> auditing: aauditing [
	^ auditing := aauditing
]

{ #category : #'as yet unclassified' }
BPMN20EndEventImpl >> categoryValueRef [
	^ categoryValueRef
]

{ #category : #'as yet unclassified' }
BPMN20EndEventImpl >> categoryValueRef: acategoryValueRef [
	^ categoryValueRef := acategoryValueRef
]

{ #category : #'as yet unclassified' }
BPMN20EndEventImpl >> dataInputAssociation [
	^ dataInputAssociation
]

{ #category : #'as yet unclassified' }
BPMN20EndEventImpl >> dataInputAssociation: adataInputAssociation [
	^ dataInputAssociation := adataInputAssociation
]

{ #category : #'as yet unclassified' }
BPMN20EndEventImpl >> dataInputs [
	^ dataInputs
]

{ #category : #'as yet unclassified' }
BPMN20EndEventImpl >> dataInputs: adataInputs [
	^ dataInputs := adataInputs
]

{ #category : #'as yet unclassified' }
BPMN20EndEventImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20EndEventImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20EndEventImpl >> eventDefinitionRefs [
	^ eventDefinitionRefs
]

{ #category : #'as yet unclassified' }
BPMN20EndEventImpl >> eventDefinitionRefs: aeventDefinitionRefs [
	^ eventDefinitionRefs := aeventDefinitionRefs
]

{ #category : #'as yet unclassified' }
BPMN20EndEventImpl >> eventDefinitions [
	^ eventDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20EndEventImpl >> eventDefinitions: aeventDefinitions [
	^ eventDefinitions := aeventDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20EndEventImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20EndEventImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20EndEventImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20EndEventImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20EndEventImpl >> incoming [
	^ incoming
]

{ #category : #'as yet unclassified' }
BPMN20EndEventImpl >> incoming: aincoming [
	^ incoming := aincoming
]

{ #category : #'as yet unclassified' }
BPMN20EndEventImpl >> inputSet [
	^ inputSet
]

{ #category : #'as yet unclassified' }
BPMN20EndEventImpl >> inputSet: ainputSet [
	^ inputSet := ainputSet
]

{ #category : #'as yet unclassified' }
BPMN20EndEventImpl >> lanes [
	^ lanes
]

{ #category : #'as yet unclassified' }
BPMN20EndEventImpl >> lanes: alanes [
	^ lanes := alanes
]

{ #category : #'as yet unclassified' }
BPMN20EndEventImpl >> monitoring [
	^ monitoring
]

{ #category : #'as yet unclassified' }
BPMN20EndEventImpl >> monitoring: amonitoring [
	^ monitoring := amonitoring
]

{ #category : #'as yet unclassified' }
BPMN20EndEventImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20EndEventImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20EndEventImpl >> outgoing [
	^ outgoing
]

{ #category : #'as yet unclassified' }
BPMN20EndEventImpl >> outgoing: aoutgoing [
	^ outgoing := aoutgoing
]

{ #category : #'as yet unclassified' }
BPMN20EndEventImpl >> properties [
	^ properties
]

{ #category : #'as yet unclassified' }
BPMN20EndEventImpl >> properties: aproperties [
	^ properties := aproperties
]

{ #category : #'as yet unclassified' }
BPMN20EndEventImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20EndEventImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20EndEventImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20EndEventImpl >> text: atext [
	^ text := atext
]
