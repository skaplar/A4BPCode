Class {
	#name : #BPMN20ThrowEventImpl,
	#superclass : #BPMN20EventImpl,
	#instVars : [
		'eventDefinitionRefs',
		'eventDefinitions',
		'dataInputAssociation',
		'dataInputs',
		'inputSet'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20ThrowEventImpl class >> annotation [
<MSEClass: #BPMN20ThrowEventImpl  super: #BPMN20EventImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #visitor }
BPMN20ThrowEventImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20ThrowEventImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20ThrowEventImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20ThrowEventImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20ThrowEventImpl >> auditing [
	^ auditing
]

{ #category : #'as yet unclassified' }
BPMN20ThrowEventImpl >> auditing: aauditing [
	^ auditing := aauditing
]

{ #category : #'as yet unclassified' }
BPMN20ThrowEventImpl >> categoryValueRef [
	^ categoryValueRef
]

{ #category : #'as yet unclassified' }
BPMN20ThrowEventImpl >> categoryValueRef: acategoryValueRef [
	^ categoryValueRef := acategoryValueRef
]

{ #category : #'as yet unclassified' }
BPMN20ThrowEventImpl >> dataInputAssociation [
^ dataInputAssociation
]

{ #category : #'as yet unclassified' }
BPMN20ThrowEventImpl >> dataInputAssociation: adataInputAssociation [
^ dataInputAssociation := adataInputAssociation
]

{ #category : #'as yet unclassified' }
BPMN20ThrowEventImpl >> dataInputs [
^ dataInputs
]

{ #category : #'as yet unclassified' }
BPMN20ThrowEventImpl >> dataInputs: adataInputs [
^ dataInputs := adataInputs
]

{ #category : #'as yet unclassified' }
BPMN20ThrowEventImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20ThrowEventImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20ThrowEventImpl >> eventDefinitionRefs [
^ eventDefinitionRefs
]

{ #category : #'as yet unclassified' }
BPMN20ThrowEventImpl >> eventDefinitionRefs: aeventDefinitionRefs [
^ eventDefinitionRefs := aeventDefinitionRefs
]

{ #category : #'as yet unclassified' }
BPMN20ThrowEventImpl >> eventDefinitions [
^ eventDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20ThrowEventImpl >> eventDefinitions: aeventDefinitions [
^ eventDefinitions := aeventDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20ThrowEventImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20ThrowEventImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20ThrowEventImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20ThrowEventImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20ThrowEventImpl >> incoming [
	^ incoming
]

{ #category : #'as yet unclassified' }
BPMN20ThrowEventImpl >> incoming: aincoming [
	^ incoming := aincoming
]

{ #category : #visitor }
BPMN20ThrowEventImpl >> initialize [
	super initialize.
	eventDefinitions := Dictionary new.
]

{ #category : #'as yet unclassified' }
BPMN20ThrowEventImpl >> inputSet [
^ inputSet
]

{ #category : #'as yet unclassified' }
BPMN20ThrowEventImpl >> inputSet: ainputSet [
^ inputSet := ainputSet
]

{ #category : #'as yet unclassified' }
BPMN20ThrowEventImpl >> lanes [
	^ lanes
]

{ #category : #'as yet unclassified' }
BPMN20ThrowEventImpl >> lanes: alanes [
	^ lanes := alanes
]

{ #category : #'as yet unclassified' }
BPMN20ThrowEventImpl >> monitoring [
	^ monitoring
]

{ #category : #'as yet unclassified' }
BPMN20ThrowEventImpl >> monitoring: amonitoring [
	^ monitoring := amonitoring
]

{ #category : #'as yet unclassified' }
BPMN20ThrowEventImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20ThrowEventImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20ThrowEventImpl >> outgoing [
	^ outgoing
]

{ #category : #'as yet unclassified' }
BPMN20ThrowEventImpl >> outgoing: aoutgoing [
	^ outgoing := aoutgoing
]

{ #category : #'as yet unclassified' }
BPMN20ThrowEventImpl >> properties [
	^ properties
]

{ #category : #'as yet unclassified' }
BPMN20ThrowEventImpl >> properties: aproperties [
	^ properties := aproperties
]

{ #category : #'as yet unclassified' }
BPMN20ThrowEventImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20ThrowEventImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20ThrowEventImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20ThrowEventImpl >> text: atext [
	^ text := atext
]
