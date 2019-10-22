Class {
	#name : #BPMN20StyleImpl,
	#superclass : #BPMN20Object,
	#classVars : [
		'ID_EDEFAULT'
	],
	#category : #'A4BP-BPMN20-core-model-dd-di'
}

{ #category : #'as yet unclassified' }
BPMN20StyleImpl class >> annotation [
<MSEClass: #BPMN20StyleImpl  super: #BPMN20Object >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20StyleImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20StyleImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20StyleImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20StyleImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20StyleImpl >> parent [
	^ parent
]

{ #category : #'as yet unclassified' }
BPMN20StyleImpl >> parent: aparent [
	^ parent := aparent
]

{ #category : #'as yet unclassified' }
BPMN20StyleImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20StyleImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20StyleImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20StyleImpl >> text: atext [
	^ text := atext
]
