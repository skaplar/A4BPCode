Class {
	#name : #BPMN20DataStoreImpl,
	#superclass : #BPMN20ItemAwareElementImpl,
	#instVars : [
		'name',
		'NAME_EDEFAULT',
		'CAPACITY_EDEFAULT',
		'capacity',
		'isUnlimited',
		'IS_UNLIMITED_EDEFAULT'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20DataStoreImpl class >> annotation [
<MSEClass: #BPMN20DataStoreImpl  super: #BPMN20ItemAwareElementImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20DataStoreImpl >> CAPACITY_EDEFAULT [
^ CAPACITY_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20DataStoreImpl >> CAPACITY_EDEFAULT: aCAPACITY_EDEFAULT [
^ CAPACITY_EDEFAULT := aCAPACITY_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20DataStoreImpl >> IS_UNLIMITED_EDEFAULT [
^ IS_UNLIMITED_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20DataStoreImpl >> IS_UNLIMITED_EDEFAULT: aIS_UNLIMITED_EDEFAULT [
^ IS_UNLIMITED_EDEFAULT := aIS_UNLIMITED_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20DataStoreImpl >> NAME_EDEFAULT [
^ NAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20DataStoreImpl >> NAME_EDEFAULT: aNAME_EDEFAULT [
^ NAME_EDEFAULT := aNAME_EDEFAULT
]

{ #category : #visitor }
BPMN20DataStoreImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20DataStoreImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20DataStoreImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20DataStoreImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20DataStoreImpl >> capacity [
^ capacity
]

{ #category : #'as yet unclassified' }
BPMN20DataStoreImpl >> capacity: acapacity [
^ capacity := acapacity
]

{ #category : #'as yet unclassified' }
BPMN20DataStoreImpl >> dataState [
	^ dataState
]

{ #category : #'as yet unclassified' }
BPMN20DataStoreImpl >> dataState: adataState [
	^ dataState := adataState
]

{ #category : #'as yet unclassified' }
BPMN20DataStoreImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20DataStoreImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20DataStoreImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20DataStoreImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20DataStoreImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20DataStoreImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20DataStoreImpl >> isUnlimited [
^ isUnlimited
]

{ #category : #'as yet unclassified' }
BPMN20DataStoreImpl >> isUnlimited: aisUnlimited [
^ isUnlimited := aisUnlimited
]

{ #category : #'as yet unclassified' }
BPMN20DataStoreImpl >> itemSubjectRef [
	^ itemSubjectRef
]

{ #category : #'as yet unclassified' }
BPMN20DataStoreImpl >> itemSubjectRef: aitemSubjectRef [
	^ itemSubjectRef := aitemSubjectRef
]

{ #category : #'as yet unclassified' }
BPMN20DataStoreImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20DataStoreImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20DataStoreImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20DataStoreImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20DataStoreImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20DataStoreImpl >> text: atext [
	^ text := atext
]
