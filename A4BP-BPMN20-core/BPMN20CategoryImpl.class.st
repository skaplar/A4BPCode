Class {
	#name : #BPMN20CategoryImpl,
	#superclass : #BPMN20RootElementImpl,
	#instVars : [
		'NAME_EDEFAULT',
		'categoryValue',
		'name'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20CategoryImpl class >> annotation [
<MSEClass: #BPMN20CategoryImpl  super: #BPMN20RootElementImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20CategoryImpl >> NAME_EDEFAULT [
^ NAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20CategoryImpl >> NAME_EDEFAULT: aNAME_EDEFAULT [
^ NAME_EDEFAULT := aNAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20CategoryImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20CategoryImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20CategoryImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20CategoryImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20CategoryImpl >> categoryValue [
^ categoryValue
]

{ #category : #'as yet unclassified' }
BPMN20CategoryImpl >> categoryValue: acategoryValue [
^ categoryValue := acategoryValue
]

{ #category : #'as yet unclassified' }
BPMN20CategoryImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20CategoryImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20CategoryImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20CategoryImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20CategoryImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20CategoryImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20CategoryImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20CategoryImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20CategoryImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20CategoryImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20CategoryImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20CategoryImpl >> text: atext [
	^ text := atext
]
