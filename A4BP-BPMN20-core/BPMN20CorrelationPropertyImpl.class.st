Class {
	#name : #BPMN20CorrelationPropertyImpl,
	#superclass : #BPMN20RootElementImpl,
	#instVars : [
		'name',
		'NAME_EDEFAULT',
		'type',
		'correlationPropertyRetrievalExpression'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20CorrelationPropertyImpl class >> annotation [
<MSEClass: #BPMN20CorrelationPropertyImpl  super: #BPMN20RootElementImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationPropertyImpl >> NAME_EDEFAULT [
^ NAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationPropertyImpl >> NAME_EDEFAULT: aNAME_EDEFAULT [
^ NAME_EDEFAULT := aNAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationPropertyImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20CorrelationPropertyImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationPropertyImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationPropertyImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationPropertyImpl >> correlationPropertyRetrievalExpression [
^ correlationPropertyRetrievalExpression
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationPropertyImpl >> correlationPropertyRetrievalExpression: acorrelationPropertyRetrievalExpression [
^ correlationPropertyRetrievalExpression := acorrelationPropertyRetrievalExpression
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationPropertyImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationPropertyImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationPropertyImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationPropertyImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationPropertyImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationPropertyImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationPropertyImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationPropertyImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationPropertyImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationPropertyImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationPropertyImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationPropertyImpl >> text: atext [
	^ text := atext
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationPropertyImpl >> type [
^ type
]

{ #category : #'as yet unclassified' }
BPMN20CorrelationPropertyImpl >> type: atype [
^ type := atype
]
