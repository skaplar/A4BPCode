Class {
	#name : #BPMN20SignalImpl,
	#superclass : #BPMN20RootElementImpl,
	#instVars : [
		'structureRef',
		'NAME_EDEFAULT',
		'name'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20SignalImpl class >> annotation [
<MSEClass: #BPMN20SignalImpl  super: #BPMN20RootElementImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20SignalImpl >> NAME_EDEFAULT [
^ NAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20SignalImpl >> NAME_EDEFAULT: aNAME_EDEFAULT [
^ NAME_EDEFAULT := aNAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20SignalImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20SignalImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20SignalImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20SignalImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20SignalImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20SignalImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20SignalImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20SignalImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20SignalImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20SignalImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20SignalImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20SignalImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20SignalImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20SignalImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20SignalImpl >> structureRef [
^ structureRef
]

{ #category : #'as yet unclassified' }
BPMN20SignalImpl >> structureRef: astructureRef [
^ structureRef := astructureRef
]

{ #category : #'as yet unclassified' }
BPMN20SignalImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20SignalImpl >> text: atext [
	^ text := atext
]
