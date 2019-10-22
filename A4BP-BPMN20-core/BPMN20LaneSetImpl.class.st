Class {
	#name : #BPMN20LaneSetImpl,
	#superclass : #BPMN20BaseElementImpl,
	#instVars : [
		'lanes',
		'name'
	],
	#classVars : [
		'NAME_EDEFAULT'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20LaneSetImpl class >> annotation [
<MSEClass: #BPMN20LaneSetImpl  super: #BPMN20BaseElementImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #parser }
BPMN20LaneSetImpl class >> fillElementsIn: aModel from: document [
	| visitor |
	visitor := BPMN20ParserSetinBPMN20LaneSetImplVisitor new.
	visitor element: aModel.
	
	aModel aName: document name.
	
	self fillElementsIn: aModel from: document visitor: visitor.
	"aModel nsNameSpaces: document nameSpaces."
]

{ #category : #visitor }
BPMN20LaneSetImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20LaneSetImpl: self
]

{ #category : #'parser-add' }
BPMN20LaneSetImpl >> addLane: aModel [
	self lanes add: aModel.
	self childrens add: aModel.
]

{ #category : #'as yet unclassified' }
BPMN20LaneSetImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20LaneSetImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20LaneSetImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20LaneSetImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20LaneSetImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20LaneSetImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20LaneSetImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20LaneSetImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #initialization }
BPMN20LaneSetImpl >> initialize [
	super initialize.
	lanes := OrderedCollection new
]

{ #category : #getset }
BPMN20LaneSetImpl >> lanes [
^ lanes
]

{ #category : #'as yet unclassified' }
BPMN20LaneSetImpl >> lanes: alanes [
^ lanes := alanes
]

{ #category : #'as yet unclassified' }
BPMN20LaneSetImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20LaneSetImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20LaneSetImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20LaneSetImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20LaneSetImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20LaneSetImpl >> text: atext [
	^ text := atext
]
