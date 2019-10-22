Class {
	#name : #BPMN20ResourceRoleImpl,
	#superclass : #BPMN20BaseElementImpl,
	#instVars : [
		'resourceRef',
		'name',
		'resourceParameterBindings',
		'resourceAssignmentExpression',
		'NAME_EDEFAULT'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20ResourceRoleImpl class >> annotation [
<MSEClass: #BPMN20ResourceRoleImpl  super: #BPMN20BaseElementImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20ResourceRoleImpl >> NAME_EDEFAULT [
^ NAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20ResourceRoleImpl >> NAME_EDEFAULT: aNAME_EDEFAULT [
^ NAME_EDEFAULT := aNAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20ResourceRoleImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20ResourceRoleImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20ResourceRoleImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20ResourceRoleImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20ResourceRoleImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20ResourceRoleImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20ResourceRoleImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20ResourceRoleImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20ResourceRoleImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20ResourceRoleImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20ResourceRoleImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20ResourceRoleImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20ResourceRoleImpl >> resourceAssignmentExpression [
^ resourceAssignmentExpression
]

{ #category : #'as yet unclassified' }
BPMN20ResourceRoleImpl >> resourceAssignmentExpression: aresourceAssignmentExpression [
^ resourceAssignmentExpression := aresourceAssignmentExpression
]

{ #category : #'as yet unclassified' }
BPMN20ResourceRoleImpl >> resourceParameterBindings [
^ resourceParameterBindings
]

{ #category : #'as yet unclassified' }
BPMN20ResourceRoleImpl >> resourceParameterBindings: aresourceParameterBindings [
^ resourceParameterBindings := aresourceParameterBindings
]

{ #category : #'as yet unclassified' }
BPMN20ResourceRoleImpl >> resourceRef [
^ resourceRef
]

{ #category : #'as yet unclassified' }
BPMN20ResourceRoleImpl >> resourceRef: aresourceRef [
^ resourceRef := aresourceRef
]

{ #category : #'as yet unclassified' }
BPMN20ResourceRoleImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20ResourceRoleImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20ResourceRoleImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20ResourceRoleImpl >> text: atext [
	^ text := atext
]
