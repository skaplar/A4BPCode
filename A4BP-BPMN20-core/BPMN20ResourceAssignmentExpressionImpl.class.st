Class {
	#name : #BPMN20ResourceAssignmentExpressionImpl,
	#superclass : #BPMN20BaseElementImpl,
	#instVars : [
		'expression'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20ResourceAssignmentExpressionImpl class >> annotation [
<MSEClass: #BPMN20ResourceAssignmentExpressionImpl  super: #BPMN20BaseElementImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20ResourceAssignmentExpressionImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20ResourceAssignmentExpressionImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20ResourceAssignmentExpressionImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20ResourceAssignmentExpressionImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20ResourceAssignmentExpressionImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20ResourceAssignmentExpressionImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20ResourceAssignmentExpressionImpl >> expression [
^ expression
]

{ #category : #'as yet unclassified' }
BPMN20ResourceAssignmentExpressionImpl >> expression: aexpression [
^ expression := aexpression
]

{ #category : #'as yet unclassified' }
BPMN20ResourceAssignmentExpressionImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20ResourceAssignmentExpressionImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20ResourceAssignmentExpressionImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20ResourceAssignmentExpressionImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20ResourceAssignmentExpressionImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20ResourceAssignmentExpressionImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20ResourceAssignmentExpressionImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20ResourceAssignmentExpressionImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20ResourceAssignmentExpressionImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20ResourceAssignmentExpressionImpl >> text: atext [
	^ text := atext
]
