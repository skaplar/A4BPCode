Class {
	#name : #BPMN20Bpmn2FactoryImpl,
	#superclass : #BPMN20Object,
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20Bpmn2FactoryImpl class >> annotation [
<MSEClass: #BPMN20Bpmn2FactoryImpl  super: #BPMN20Object >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2FactoryImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20Bpmn2FactoryImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2FactoryImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2FactoryImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2FactoryImpl >> parent [
	^ parent
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2FactoryImpl >> parent: aparent [
	^ parent := aparent
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2FactoryImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2FactoryImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2FactoryImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2FactoryImpl >> text: atext [
	^ text := atext
]
