Class {
	#name : #BPMN20PotentialOwnerImpl,
	#superclass : #BPMN20HumanPerformerImpl,
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20PotentialOwnerImpl class >> annotation [
<MSEClass: #BPMN20PotentialOwnerImpl  super: #BPMN20HumanPerformerImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20PotentialOwnerImpl >> NAME_EDEFAULT [
	^ NAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20PotentialOwnerImpl >> NAME_EDEFAULT: aNAME_EDEFAULT [
	^ NAME_EDEFAULT := aNAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20PotentialOwnerImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20PotentialOwnerImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20PotentialOwnerImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20PotentialOwnerImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20PotentialOwnerImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20PotentialOwnerImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20PotentialOwnerImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20PotentialOwnerImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20PotentialOwnerImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20PotentialOwnerImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20PotentialOwnerImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20PotentialOwnerImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20PotentialOwnerImpl >> resourceAssignmentExpression [
	^ resourceAssignmentExpression
]

{ #category : #'as yet unclassified' }
BPMN20PotentialOwnerImpl >> resourceAssignmentExpression: aresourceAssignmentExpression [
	^ resourceAssignmentExpression := aresourceAssignmentExpression
]

{ #category : #'as yet unclassified' }
BPMN20PotentialOwnerImpl >> resourceParameterBindings [
	^ resourceParameterBindings
]

{ #category : #'as yet unclassified' }
BPMN20PotentialOwnerImpl >> resourceParameterBindings: aresourceParameterBindings [
	^ resourceParameterBindings := aresourceParameterBindings
]

{ #category : #'as yet unclassified' }
BPMN20PotentialOwnerImpl >> resourceRef [
	^ resourceRef
]

{ #category : #'as yet unclassified' }
BPMN20PotentialOwnerImpl >> resourceRef: aresourceRef [
	^ resourceRef := aresourceRef
]

{ #category : #'as yet unclassified' }
BPMN20PotentialOwnerImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20PotentialOwnerImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20PotentialOwnerImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20PotentialOwnerImpl >> text: atext [
	^ text := atext
]
