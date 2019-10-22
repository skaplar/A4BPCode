Class {
	#name : #BPMN20InteractionNodeImpl,
	#superclass : #BPMN20Object,
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20InteractionNodeImpl class >> annotation [
<MSEClass: #BPMN20InteractionNodeImpl  super: #BPMN20Object >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20InteractionNodeImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20InteractionNodeImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20InteractionNodeImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20InteractionNodeImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20InteractionNodeImpl >> parent [
	^ parent
]

{ #category : #'as yet unclassified' }
BPMN20InteractionNodeImpl >> parent: aparent [
	^ parent := aparent
]

{ #category : #'as yet unclassified' }
BPMN20InteractionNodeImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20InteractionNodeImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20InteractionNodeImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20InteractionNodeImpl >> text: atext [
	^ text := atext
]
