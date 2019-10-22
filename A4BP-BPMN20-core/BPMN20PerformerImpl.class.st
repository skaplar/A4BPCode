Class {
	#name : #BPMN20PerformerImpl,
	#superclass : #BPMN20ResourceRoleImpl,
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20PerformerImpl class >> annotation [
<MSEClass: #BPMN20PerformerImpl  super: #BPMN20ResourceRoleImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20PerformerImpl >> NAME_EDEFAULT [
	^ NAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20PerformerImpl >> NAME_EDEFAULT: aNAME_EDEFAULT [
	^ NAME_EDEFAULT := aNAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20PerformerImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20PerformerImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20PerformerImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20PerformerImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20PerformerImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20PerformerImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20PerformerImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20PerformerImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20PerformerImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20PerformerImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20PerformerImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20PerformerImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20PerformerImpl >> resourceAssignmentExpression [
	^ resourceAssignmentExpression
]

{ #category : #'as yet unclassified' }
BPMN20PerformerImpl >> resourceAssignmentExpression: aresourceAssignmentExpression [
	^ resourceAssignmentExpression := aresourceAssignmentExpression
]

{ #category : #'as yet unclassified' }
BPMN20PerformerImpl >> resourceParameterBindings [
	^ resourceParameterBindings
]

{ #category : #'as yet unclassified' }
BPMN20PerformerImpl >> resourceParameterBindings: aresourceParameterBindings [
	^ resourceParameterBindings := aresourceParameterBindings
]

{ #category : #'as yet unclassified' }
BPMN20PerformerImpl >> resourceRef [
	^ resourceRef
]

{ #category : #'as yet unclassified' }
BPMN20PerformerImpl >> resourceRef: aresourceRef [
	^ resourceRef := aresourceRef
]

{ #category : #'as yet unclassified' }
BPMN20PerformerImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20PerformerImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20PerformerImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20PerformerImpl >> text: atext [
	^ text := atext
]
