Class {
	#name : #BPMN20ExtensionAttributeDefinitionImpl,
	#superclass : #BPMN20Object,
	#instVars : [
		'IS_REFERENCE_EDEFAULT',
		'isReference',
		'type',
		'NAME_EDEFAULT',
		'name',
		'TYPE_EDEFAULT'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20ExtensionAttributeDefinitionImpl class >> annotation [
<MSEClass: #BPMN20ExtensionAttributeDefinitionImpl  super: #BPMN20Object >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20ExtensionAttributeDefinitionImpl >> IS_REFERENCE_EDEFAULT [
^ IS_REFERENCE_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20ExtensionAttributeDefinitionImpl >> IS_REFERENCE_EDEFAULT: aIS_REFERENCE_EDEFAULT [
^ IS_REFERENCE_EDEFAULT := aIS_REFERENCE_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20ExtensionAttributeDefinitionImpl >> NAME_EDEFAULT [
^ NAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20ExtensionAttributeDefinitionImpl >> NAME_EDEFAULT: aNAME_EDEFAULT [
^ NAME_EDEFAULT := aNAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20ExtensionAttributeDefinitionImpl >> TYPE_EDEFAULT [
^ TYPE_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20ExtensionAttributeDefinitionImpl >> TYPE_EDEFAULT: aTYPE_EDEFAULT [
^ TYPE_EDEFAULT := aTYPE_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20ExtensionAttributeDefinitionImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20ExtensionAttributeDefinitionImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20ExtensionAttributeDefinitionImpl >> isReference [
^ isReference
]

{ #category : #'as yet unclassified' }
BPMN20ExtensionAttributeDefinitionImpl >> isReference: aisReference [
^ isReference := aisReference
]

{ #category : #'as yet unclassified' }
BPMN20ExtensionAttributeDefinitionImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20ExtensionAttributeDefinitionImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20ExtensionAttributeDefinitionImpl >> parent [
	^ parent
]

{ #category : #'as yet unclassified' }
BPMN20ExtensionAttributeDefinitionImpl >> parent: aparent [
	^ parent := aparent
]

{ #category : #'as yet unclassified' }
BPMN20ExtensionAttributeDefinitionImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20ExtensionAttributeDefinitionImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20ExtensionAttributeDefinitionImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20ExtensionAttributeDefinitionImpl >> text: atext [
	^ text := atext
]

{ #category : #'as yet unclassified' }
BPMN20ExtensionAttributeDefinitionImpl >> type [
^ type
]

{ #category : #'as yet unclassified' }
BPMN20ExtensionAttributeDefinitionImpl >> type: atype [
^ type := atype
]
