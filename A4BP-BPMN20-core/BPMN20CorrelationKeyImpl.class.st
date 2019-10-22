Class {
	#name : #BPMN20CorrelationKeyImpl,
	#superclass : #BPMN20BaseElementImpl,
	#instVars : [
		'NAME_EDEFAULT',
		'correlationPropertyRef',
		'name'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20CorrelationKeyImpl class >> annotation [
<MSEClass: #BPMN20CorrelationKeyImpl  super: #BPMN20BaseElementImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationKeyImpl >> NAME_EDEFAULT [
^ NAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationKeyImpl >> NAME_EDEFAULT: aNAME_EDEFAULT [
^ NAME_EDEFAULT := aNAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationKeyImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20CorrelationKeyImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationKeyImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationKeyImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationKeyImpl >> correlationPropertyRef [
^ correlationPropertyRef
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationKeyImpl >> correlationPropertyRef: acorrelationPropertyRef [
^ correlationPropertyRef := acorrelationPropertyRef
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationKeyImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationKeyImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationKeyImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationKeyImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationKeyImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationKeyImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationKeyImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationKeyImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationKeyImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationKeyImpl >> text: atext [
	^ text := atext
]
