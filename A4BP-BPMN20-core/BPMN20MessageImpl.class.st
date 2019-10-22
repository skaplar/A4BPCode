Class {
	#name : #BPMN20MessageImpl,
	#superclass : #BPMN20RootElementImpl,
	#instVars : [
		'name',
		'NAME_EDEFAULT',
		'itemRef'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20MessageImpl class >> annotation [
<MSEClass: #BPMN20MessageImpl  super: #BPMN20RootElementImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20MessageImpl class >> fromXMLDescription: document in: parent [
	^ self fromXMLDescriptionNoInProcess: document in: parent
]

{ #category : #'as yet unclassified' }
BPMN20MessageImpl >> NAME_EDEFAULT [
^ NAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20MessageImpl >> NAME_EDEFAULT: aNAME_EDEFAULT [
^ NAME_EDEFAULT := aNAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20MessageImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20MessageImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20MessageImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20MessageImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20MessageImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20MessageImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20MessageImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20MessageImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20MessageImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20MessageImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20MessageImpl >> itemRef [
^ itemRef
]

{ #category : #'as yet unclassified' }
BPMN20MessageImpl >> itemRef: aitemRef [
^ itemRef := aitemRef
]

{ #category : #'as yet unclassified' }
BPMN20MessageImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20MessageImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20MessageImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20MessageImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20MessageImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20MessageImpl >> text: atext [
	^ text := atext
]
