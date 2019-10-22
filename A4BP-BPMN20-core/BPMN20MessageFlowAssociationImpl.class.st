Class {
	#name : #BPMN20MessageFlowAssociationImpl,
	#superclass : #BPMN20BaseElementImpl,
	#instVars : [
		'innerMessageFlowRef',
		'outerMessageFlowRef'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20MessageFlowAssociationImpl class >> annotation [
<MSEClass: #BPMN20MessageFlowAssociationImpl  super: #BPMN20BaseElementImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20MessageFlowAssociationImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20MessageFlowAssociationImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20MessageFlowAssociationImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20MessageFlowAssociationImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20MessageFlowAssociationImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20MessageFlowAssociationImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20MessageFlowAssociationImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20MessageFlowAssociationImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20MessageFlowAssociationImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20MessageFlowAssociationImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20MessageFlowAssociationImpl >> innerMessageFlowRef [
^ innerMessageFlowRef
]

{ #category : #'as yet unclassified' }
BPMN20MessageFlowAssociationImpl >> innerMessageFlowRef: ainnerMessageFlowRef [
^ innerMessageFlowRef := ainnerMessageFlowRef
]

{ #category : #'as yet unclassified' }
BPMN20MessageFlowAssociationImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20MessageFlowAssociationImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20MessageFlowAssociationImpl >> outerMessageFlowRef [
^ outerMessageFlowRef
]

{ #category : #'as yet unclassified' }
BPMN20MessageFlowAssociationImpl >> outerMessageFlowRef: aouterMessageFlowRef [
^ outerMessageFlowRef := aouterMessageFlowRef
]

{ #category : #'as yet unclassified' }
BPMN20MessageFlowAssociationImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20MessageFlowAssociationImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20MessageFlowAssociationImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20MessageFlowAssociationImpl >> text: atext [
	^ text := atext
]
