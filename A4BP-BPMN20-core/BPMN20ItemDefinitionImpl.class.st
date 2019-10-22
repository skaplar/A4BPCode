Class {
	#name : #BPMN20ItemDefinitionImpl,
	#superclass : #BPMN20RootElementImpl,
	#instVars : [
		'itemKind',
		'structureRef',
		'IS_COLLECTION_EDEFAULT',
		'ITEM_KIND_EDEFAULT',
		'import_'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20ItemDefinitionImpl class >> annotation [
<MSEClass: #BPMN20ItemDefinitionImpl  super: #BPMN20RootElementImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20ItemDefinitionImpl >> IS_COLLECTION_EDEFAULT [
^ IS_COLLECTION_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20ItemDefinitionImpl >> IS_COLLECTION_EDEFAULT: aIS_COLLECTION_EDEFAULT [
^ IS_COLLECTION_EDEFAULT := aIS_COLLECTION_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20ItemDefinitionImpl >> ITEM_KIND_EDEFAULT [
^ ITEM_KIND_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20ItemDefinitionImpl >> ITEM_KIND_EDEFAULT: aITEM_KIND_EDEFAULT [
^ ITEM_KIND_EDEFAULT := aITEM_KIND_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20ItemDefinitionImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20ItemDefinitionImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20ItemDefinitionImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20ItemDefinitionImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20ItemDefinitionImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20ItemDefinitionImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20ItemDefinitionImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20ItemDefinitionImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20ItemDefinitionImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20ItemDefinitionImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20ItemDefinitionImpl >> import_ [
^ import_
]

{ #category : #'as yet unclassified' }
BPMN20ItemDefinitionImpl >> import_: aimport_ [
^ import_ := aimport_
]

{ #category : #'as yet unclassified' }
BPMN20ItemDefinitionImpl >> isCollection [
	^ isCollection
]

{ #category : #'as yet unclassified' }
BPMN20ItemDefinitionImpl >> isCollection: aisCollection [
	^ isCollection := aisCollection
]

{ #category : #'as yet unclassified' }
BPMN20ItemDefinitionImpl >> itemKind [
^ itemKind
]

{ #category : #'as yet unclassified' }
BPMN20ItemDefinitionImpl >> itemKind: aitemKind [
^ itemKind := aitemKind
]

{ #category : #'as yet unclassified' }
BPMN20ItemDefinitionImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20ItemDefinitionImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20ItemDefinitionImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20ItemDefinitionImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20ItemDefinitionImpl >> structureRef [
^ structureRef
]

{ #category : #'as yet unclassified' }
BPMN20ItemDefinitionImpl >> structureRef: astructureRef [
^ structureRef := astructureRef
]

{ #category : #'as yet unclassified' }
BPMN20ItemDefinitionImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20ItemDefinitionImpl >> text: atext [
	^ text := atext
]
