Class {
	#name : #BPMN20ExtensionAttributeValueImpl,
	#superclass : #BPMN20Object,
	#instVars : [
		'extensionAttributeDefinition',
		'value',
		'valueRef'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20ExtensionAttributeValueImpl class >> annotation [
<MSEClass: #BPMN20ExtensionAttributeValueImpl  super: #BPMN20Object >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20ExtensionAttributeValueImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20ExtensionAttributeValueImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20ExtensionAttributeValueImpl >> extensionAttributeDefinition [
^ extensionAttributeDefinition
]

{ #category : #'as yet unclassified' }
BPMN20ExtensionAttributeValueImpl >> extensionAttributeDefinition: aextensionAttributeDefinition [
^ extensionAttributeDefinition := aextensionAttributeDefinition
]

{ #category : #'as yet unclassified' }
BPMN20ExtensionAttributeValueImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20ExtensionAttributeValueImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20ExtensionAttributeValueImpl >> parent [
	^ parent
]

{ #category : #'as yet unclassified' }
BPMN20ExtensionAttributeValueImpl >> parent: aparent [
	^ parent := aparent
]

{ #category : #'as yet unclassified' }
BPMN20ExtensionAttributeValueImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20ExtensionAttributeValueImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20ExtensionAttributeValueImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20ExtensionAttributeValueImpl >> text: atext [
	^ text := atext
]

{ #category : #'as yet unclassified' }
BPMN20ExtensionAttributeValueImpl >> v [
	^ value
]

{ #category : #'as yet unclassified' }
BPMN20ExtensionAttributeValueImpl >> value: avalue [
^ value := avalue
]

{ #category : #'as yet unclassified' }
BPMN20ExtensionAttributeValueImpl >> valueRef [
^ valueRef
]

{ #category : #'as yet unclassified' }
BPMN20ExtensionAttributeValueImpl >> valueRef: avalueRef [
^ valueRef := avalueRef
]
