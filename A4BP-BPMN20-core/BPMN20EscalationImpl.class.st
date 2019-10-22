Class {
	#name : #BPMN20EscalationImpl,
	#superclass : #BPMN20RootElementImpl,
	#instVars : [
		'name',
		'escalationCode',
		'ESCALATION_CODE_EDEFAULT',
		'structureRef',
		'NAME_EDEFAULT'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20EscalationImpl class >> annotation [
<MSEClass: #BPMN20EscalationImpl  super: #BPMN20RootElementImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20EscalationImpl >> ESCALATION_CODE_EDEFAULT [
^ ESCALATION_CODE_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20EscalationImpl >> ESCALATION_CODE_EDEFAULT: aESCALATION_CODE_EDEFAULT [
^ ESCALATION_CODE_EDEFAULT := aESCALATION_CODE_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20EscalationImpl >> NAME_EDEFAULT [
^ NAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20EscalationImpl >> NAME_EDEFAULT: aNAME_EDEFAULT [
^ NAME_EDEFAULT := aNAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20EscalationImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20EscalationImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20EscalationImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20EscalationImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20EscalationImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20EscalationImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20EscalationImpl >> escalationCode [
^ escalationCode
]

{ #category : #'as yet unclassified' }
BPMN20EscalationImpl >> escalationCode: aescalationCode [
^ escalationCode := aescalationCode
]

{ #category : #'as yet unclassified' }
BPMN20EscalationImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20EscalationImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20EscalationImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20EscalationImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20EscalationImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20EscalationImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20EscalationImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20EscalationImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20EscalationImpl >> structureRef [
^ structureRef
]

{ #category : #'as yet unclassified' }
BPMN20EscalationImpl >> structureRef: astructureRef [
^ structureRef := astructureRef
]

{ #category : #'as yet unclassified' }
BPMN20EscalationImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20EscalationImpl >> text: atext [
	^ text := atext
]
