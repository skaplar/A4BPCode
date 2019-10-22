Class {
	#name : #BPMN20LinkEventDefinitionImpl,
	#superclass : #BPMN20EventDefinitionImpl,
	#instVars : [
		'target',
		'NAME_EDEFAULT',
		'name',
		'source'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20LinkEventDefinitionImpl class >> annotation [
<MSEClass: #BPMN20LinkEventDefinitionImpl  super: #BPMN20EventDefinitionImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20LinkEventDefinitionImpl class >> fillElementsIn: aModel from: document [
	| visitor |
	visitor := BPMN20ParserSetinBPMN20EscalationEventDefinitionImplVisitor new.
	visitor element: aModel.
	self fillElementsIn: aModel from: document visitor: visitor.
]

{ #category : #'as yet unclassified' }
BPMN20LinkEventDefinitionImpl >> NAME_EDEFAULT [
^ NAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20LinkEventDefinitionImpl >> NAME_EDEFAULT: aNAME_EDEFAULT [
^ NAME_EDEFAULT := aNAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20LinkEventDefinitionImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20LinkEventDefinitionImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20LinkEventDefinitionImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20LinkEventDefinitionImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20LinkEventDefinitionImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20LinkEventDefinitionImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20LinkEventDefinitionImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20LinkEventDefinitionImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20LinkEventDefinitionImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20LinkEventDefinitionImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20LinkEventDefinitionImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20LinkEventDefinitionImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20LinkEventDefinitionImpl >> source [
^ source
]

{ #category : #'as yet unclassified' }
BPMN20LinkEventDefinitionImpl >> source: asource [
^ source := asource
]

{ #category : #'as yet unclassified' }
BPMN20LinkEventDefinitionImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20LinkEventDefinitionImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20LinkEventDefinitionImpl >> target [
^ target
]

{ #category : #'as yet unclassified' }
BPMN20LinkEventDefinitionImpl >> target: atarget [
^ target := atarget
]

{ #category : #'as yet unclassified' }
BPMN20LinkEventDefinitionImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20LinkEventDefinitionImpl >> text: atext [
	^ text := atext
]
