Class {
	#name : #BPMN20ComplexBehaviorDefinitionImpl,
	#superclass : #BPMN20BaseElementImpl,
	#instVars : [
		'event',
		'condition'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20ComplexBehaviorDefinitionImpl class >> annotation [
<MSEClass: #BPMN20ComplexBehaviorDefinitionImpl  super: #BPMN20BaseElementImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20ComplexBehaviorDefinitionImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20ComplexBehaviorDefinitionImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20ComplexBehaviorDefinitionImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20ComplexBehaviorDefinitionImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20ComplexBehaviorDefinitionImpl >> condition [
^ condition
]

{ #category : #'as yet unclassified' }
BPMN20ComplexBehaviorDefinitionImpl >> condition: acondition [
^ condition := acondition
]

{ #category : #'as yet unclassified' }
BPMN20ComplexBehaviorDefinitionImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20ComplexBehaviorDefinitionImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20ComplexBehaviorDefinitionImpl >> event [
^ event
]

{ #category : #'as yet unclassified' }
BPMN20ComplexBehaviorDefinitionImpl >> event: aevent [
^ event := aevent
]

{ #category : #'as yet unclassified' }
BPMN20ComplexBehaviorDefinitionImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20ComplexBehaviorDefinitionImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20ComplexBehaviorDefinitionImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20ComplexBehaviorDefinitionImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20ComplexBehaviorDefinitionImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20ComplexBehaviorDefinitionImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20ComplexBehaviorDefinitionImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20ComplexBehaviorDefinitionImpl >> text: atext [
	^ text := atext
]
