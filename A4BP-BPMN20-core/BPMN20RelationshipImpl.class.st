Class {
	#name : #BPMN20RelationshipImpl,
	#superclass : #BPMN20BaseElementImpl,
	#instVars : [
		'DIRECTION_EDEFAULT',
		'targets',
		'TYPE_EDEFAULT',
		'direction',
		'sources',
		'type'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20RelationshipImpl class >> annotation [
<MSEClass: #BPMN20RelationshipImpl  super: #BPMN20BaseElementImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20RelationshipImpl >> DIRECTION_EDEFAULT [
^ DIRECTION_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20RelationshipImpl >> DIRECTION_EDEFAULT: aDIRECTION_EDEFAULT [
^ DIRECTION_EDEFAULT := aDIRECTION_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20RelationshipImpl >> TYPE_EDEFAULT [
^ TYPE_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20RelationshipImpl >> TYPE_EDEFAULT: aTYPE_EDEFAULT [
^ TYPE_EDEFAULT := aTYPE_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20RelationshipImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20RelationshipImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20RelationshipImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20RelationshipImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20RelationshipImpl >> direction [
^ direction
]

{ #category : #'as yet unclassified' }
BPMN20RelationshipImpl >> direction: adirection [
^ direction := adirection
]

{ #category : #'as yet unclassified' }
BPMN20RelationshipImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20RelationshipImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20RelationshipImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20RelationshipImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20RelationshipImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20RelationshipImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20RelationshipImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20RelationshipImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20RelationshipImpl >> sources [
^ sources
]

{ #category : #'as yet unclassified' }
BPMN20RelationshipImpl >> sources: asources [
^ sources := asources
]

{ #category : #'as yet unclassified' }
BPMN20RelationshipImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20RelationshipImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20RelationshipImpl >> targets [
^ targets
]

{ #category : #'as yet unclassified' }
BPMN20RelationshipImpl >> targets: atargets [
^ targets := atargets
]

{ #category : #'as yet unclassified' }
BPMN20RelationshipImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20RelationshipImpl >> text: atext [
	^ text := atext
]

{ #category : #'as yet unclassified' }
BPMN20RelationshipImpl >> type [
^ type
]

{ #category : #'as yet unclassified' }
BPMN20RelationshipImpl >> type: atype [
^ type := atype
]
