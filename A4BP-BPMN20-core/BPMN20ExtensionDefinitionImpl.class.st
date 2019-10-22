Class {
	#name : #BPMN20ExtensionDefinitionImpl,
	#superclass : #BPMN20Object,
	#instVars : [
		'name',
		'NAME_EDEFAULT',
		'extensionAttributeDefinitions'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20ExtensionDefinitionImpl class >> annotation [
<MSEClass: #BPMN20ExtensionDefinitionImpl  super: #BPMN20Object >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20ExtensionDefinitionImpl >> NAME_EDEFAULT [
^ NAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20ExtensionDefinitionImpl >> NAME_EDEFAULT: aNAME_EDEFAULT [
^ NAME_EDEFAULT := aNAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20ExtensionDefinitionImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20ExtensionDefinitionImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20ExtensionDefinitionImpl >> extensionAttributeDefinitions [
^ extensionAttributeDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20ExtensionDefinitionImpl >> extensionAttributeDefinitions: aextensionAttributeDefinitions [
^ extensionAttributeDefinitions := aextensionAttributeDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20ExtensionDefinitionImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20ExtensionDefinitionImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20ExtensionDefinitionImpl >> parent [
	^ parent
]

{ #category : #'as yet unclassified' }
BPMN20ExtensionDefinitionImpl >> parent: aparent [
	^ parent := aparent
]

{ #category : #'as yet unclassified' }
BPMN20ExtensionDefinitionImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20ExtensionDefinitionImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20ExtensionDefinitionImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20ExtensionDefinitionImpl >> text: atext [
	^ text := atext
]
