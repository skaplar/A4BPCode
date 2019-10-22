Class {
	#name : #BPMN20ErrorImpl,
	#superclass : #BPMN20RootElementImpl,
	#instVars : [
		'name',
		'ERROR_CODE_EDEFAULT',
		'errorCode',
		'structureRef',
		'NAME_EDEFAULT'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20ErrorImpl class >> annotation [
<MSEClass: #BPMN20ErrorImpl  super: #BPMN20RootElementImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20ErrorImpl >> ERROR_CODE_EDEFAULT [
^ ERROR_CODE_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20ErrorImpl >> ERROR_CODE_EDEFAULT: aERROR_CODE_EDEFAULT [
^ ERROR_CODE_EDEFAULT := aERROR_CODE_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20ErrorImpl >> NAME_EDEFAULT [
^ NAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20ErrorImpl >> NAME_EDEFAULT: aNAME_EDEFAULT [
^ NAME_EDEFAULT := aNAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20ErrorImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20ErrorImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20ErrorImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20ErrorImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20ErrorImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20ErrorImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20ErrorImpl >> errorCode [
^ errorCode
]

{ #category : #'as yet unclassified' }
BPMN20ErrorImpl >> errorCode: aerrorCode [
^ errorCode := aerrorCode
]

{ #category : #'as yet unclassified' }
BPMN20ErrorImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20ErrorImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20ErrorImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20ErrorImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20ErrorImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20ErrorImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20ErrorImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20ErrorImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20ErrorImpl >> structureRef [
^ structureRef
]

{ #category : #'as yet unclassified' }
BPMN20ErrorImpl >> structureRef: astructureRef [
^ structureRef := astructureRef
]

{ #category : #'as yet unclassified' }
BPMN20ErrorImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20ErrorImpl >> text: atext [
	^ text := atext
]
