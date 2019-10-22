Class {
	#name : #BPMN20TimerEventDefinitionImpl,
	#superclass : #BPMN20EventDefinitionImpl,
	#instVars : [
		'timeDuration',
		'timeCycle',
		'timeDate'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20TimerEventDefinitionImpl class >> annotation [
<MSEClass: #BPMN20TimerEventDefinitionImpl  super: #BPMN20EventDefinitionImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20TimerEventDefinitionImpl class >> fillElementsIn: aModel from: document [
	| visitor |
	visitor := BPMN20ParserSetinBPMN20TimerEventDefinitionImplVisitor new.
	visitor element: aModel.
	self fillElementsIn: aModel from: document visitor: visitor.
]

{ #category : #'as yet unclassified' }
BPMN20TimerEventDefinitionImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20TimerEventDefinitionImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20TimerEventDefinitionImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20TimerEventDefinitionImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20TimerEventDefinitionImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20TimerEventDefinitionImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20TimerEventDefinitionImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20TimerEventDefinitionImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20TimerEventDefinitionImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20TimerEventDefinitionImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20TimerEventDefinitionImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20TimerEventDefinitionImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20TimerEventDefinitionImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20TimerEventDefinitionImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20TimerEventDefinitionImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20TimerEventDefinitionImpl >> text: atext [
	^ text := atext
]

{ #category : #'as yet unclassified' }
BPMN20TimerEventDefinitionImpl >> timeCycle [
^ timeCycle
]

{ #category : #'as yet unclassified' }
BPMN20TimerEventDefinitionImpl >> timeCycle: atimeCycle [
^ timeCycle := atimeCycle
]

{ #category : #'as yet unclassified' }
BPMN20TimerEventDefinitionImpl >> timeDate [
^ timeDate
]

{ #category : #'as yet unclassified' }
BPMN20TimerEventDefinitionImpl >> timeDate: atimeDate [
^ timeDate := atimeDate
]

{ #category : #'as yet unclassified' }
BPMN20TimerEventDefinitionImpl >> timeDuration [
^ timeDuration
]

{ #category : #'as yet unclassified' }
BPMN20TimerEventDefinitionImpl >> timeDuration: atimeDuration [
^ timeDuration := atimeDuration
]
