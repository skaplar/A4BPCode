Class {
	#name : #BPMN20AssociationImpl,
	#superclass : #BPMN20ArtifactImpl,
	#instVars : [
		'associationDirection',
		'targetRef',
		'sourceRef'
	],
	#classVars : [
		'ASSOCIATION_DIRECTION_EDEFAULT'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20AssociationImpl class >> annotation [
<MSEClass: #BPMN20AssociationImpl  super: #BPMN20ArtifactImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20AssociationImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20AssociationImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20AssociationImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20AssociationImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #getset }
BPMN20AssociationImpl >> associationDirection [
^ associationDirection
]

{ #category : #getset }
BPMN20AssociationImpl >> associationDirection: aassociationDirection [
^ associationDirection := aassociationDirection
]

{ #category : #'as yet unclassified' }
BPMN20AssociationImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20AssociationImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20AssociationImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20AssociationImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20AssociationImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20AssociationImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20AssociationImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20AssociationImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20AssociationImpl >> sourceRef [
^ sourceRef
]

{ #category : #'as yet unclassified' }
BPMN20AssociationImpl >> sourceRef: asourceRef [
^ sourceRef := asourceRef
]

{ #category : #'as yet unclassified' }
BPMN20AssociationImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20AssociationImpl >> state: astate [
	^ state := astate
]

{ #category : #getset }
BPMN20AssociationImpl >> targetRef [
^ targetRef
]

{ #category : #getset }
BPMN20AssociationImpl >> targetRef: atargetRef [
^ targetRef := atargetRef
]

{ #category : #'as yet unclassified' }
BPMN20AssociationImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20AssociationImpl >> text: atext [
	^ text := atext
]
