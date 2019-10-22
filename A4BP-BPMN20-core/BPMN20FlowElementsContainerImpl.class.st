Class {
	#name : #BPMN20FlowElementsContainerImpl,
	#superclass : #BPMN20BaseElementImpl,
	#instVars : [
		'flowElements',
		'laneSets'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20FlowElementsContainerImpl class >> annotation [
<MSEClass: #BPMN20FlowElementsContainerImpl  super: #BPMN20BaseElementImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20FlowElementsContainerImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20FlowElementsContainerImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20FlowElementsContainerImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20FlowElementsContainerImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20FlowElementsContainerImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20FlowElementsContainerImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20FlowElementsContainerImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20FlowElementsContainerImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20FlowElementsContainerImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20FlowElementsContainerImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20FlowElementsContainerImpl >> flowElements [
^ flowElements
]

{ #category : #'as yet unclassified' }
BPMN20FlowElementsContainerImpl >> flowElements: aflowElements [
^ flowElements := aflowElements
]

{ #category : #'as yet unclassified' }
BPMN20FlowElementsContainerImpl >> laneSets [
^ laneSets
]

{ #category : #'as yet unclassified' }
BPMN20FlowElementsContainerImpl >> laneSets: alaneSets [
^ laneSets := alaneSets
]

{ #category : #'as yet unclassified' }
BPMN20FlowElementsContainerImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20FlowElementsContainerImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20FlowElementsContainerImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20FlowElementsContainerImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20FlowElementsContainerImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20FlowElementsContainerImpl >> text: atext [
	^ text := atext
]
