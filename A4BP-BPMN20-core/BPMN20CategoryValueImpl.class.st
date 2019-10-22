Class {
	#name : #BPMN20CategoryValueImpl,
	#superclass : #BPMN20BaseElementImpl,
	#instVars : [
		'VALUE_EDEFAULT',
		'value'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20CategoryValueImpl class >> annotation [
<MSEClass: #BPMN20CategoryValueImpl  super: #BPMN20BaseElementImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20CategoryValueImpl >> VALUE_EDEFAULT [
^ VALUE_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20CategoryValueImpl >> VALUE_EDEFAULT: aVALUE_EDEFAULT [
^ VALUE_EDEFAULT := aVALUE_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20CategoryValueImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20CategoryValueImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20CategoryValueImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20CategoryValueImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20CategoryValueImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20CategoryValueImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20CategoryValueImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20CategoryValueImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20CategoryValueImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20CategoryValueImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20CategoryValueImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20CategoryValueImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20CategoryValueImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20CategoryValueImpl >> text: atext [
	^ text := atext
]

{ #category : #'as yet unclassified' }
BPMN20CategoryValueImpl >> v [
	^ value
]

{ #category : #'as yet unclassified' }
BPMN20CategoryValueImpl >> value: avalue [
^ value := avalue
]
