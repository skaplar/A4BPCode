Class {
	#name : #BPMN20HumanPerformerImpl,
	#superclass : #BPMN20PerformerImpl,
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20HumanPerformerImpl class >> annotation [
<MSEClass: #BPMN20HumanPerformerImpl  super: #BPMN20PerformerImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20HumanPerformerImpl >> NAME_EDEFAULT [
	^ NAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20HumanPerformerImpl >> NAME_EDEFAULT: aNAME_EDEFAULT [
	^ NAME_EDEFAULT := aNAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20HumanPerformerImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20HumanPerformerImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20HumanPerformerImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20HumanPerformerImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20HumanPerformerImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20HumanPerformerImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20HumanPerformerImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20HumanPerformerImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20HumanPerformerImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20HumanPerformerImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20HumanPerformerImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20HumanPerformerImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20HumanPerformerImpl >> resourceAssignmentExpression [
	^ resourceAssignmentExpression
]

{ #category : #'as yet unclassified' }
BPMN20HumanPerformerImpl >> resourceAssignmentExpression: aresourceAssignmentExpression [
	^ resourceAssignmentExpression := aresourceAssignmentExpression
]

{ #category : #'as yet unclassified' }
BPMN20HumanPerformerImpl >> resourceParameterBindings [
	^ resourceParameterBindings
]

{ #category : #'as yet unclassified' }
BPMN20HumanPerformerImpl >> resourceParameterBindings: aresourceParameterBindings [
	^ resourceParameterBindings := aresourceParameterBindings
]

{ #category : #'as yet unclassified' }
BPMN20HumanPerformerImpl >> resourceRef [
	^ resourceRef
]

{ #category : #'as yet unclassified' }
BPMN20HumanPerformerImpl >> resourceRef: aresourceRef [
	^ resourceRef := aresourceRef
]

{ #category : #'as yet unclassified' }
BPMN20HumanPerformerImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20HumanPerformerImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20HumanPerformerImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20HumanPerformerImpl >> text: atext [
	^ text := atext
]
