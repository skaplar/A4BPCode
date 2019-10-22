Class {
	#name : #BPMN20AssignmentImpl,
	#superclass : #BPMN20BaseElementImpl,
	#instVars : [
		'from',
		'to'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20AssignmentImpl class >> annotation [
<MSEClass: #BPMN20AssignmentImpl  super: #BPMN20BaseElementImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20AssignmentImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20AssignmentImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20AssignmentImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20AssignmentImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20AssignmentImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20AssignmentImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20AssignmentImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20AssignmentImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20AssignmentImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20AssignmentImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20AssignmentImpl >> from [
^ from
]

{ #category : #'as yet unclassified' }
BPMN20AssignmentImpl >> from: afrom [
^ from := afrom
]

{ #category : #'as yet unclassified' }
BPMN20AssignmentImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20AssignmentImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20AssignmentImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20AssignmentImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20AssignmentImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20AssignmentImpl >> text: atext [
	^ text := atext
]

{ #category : #'as yet unclassified' }
BPMN20AssignmentImpl >> to [
^ to
]

{ #category : #'as yet unclassified' }
BPMN20AssignmentImpl >> to: ato [
^ to := ato
]
