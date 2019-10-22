Class {
	#name : #BPMN20DiFactoryImpl,
	#superclass : #BPMN20Object,
	#category : #'A4BP-BPMN20-core-model-dd-di'
}

{ #category : #'as yet unclassified' }
BPMN20DiFactoryImpl class >> annotation [
<MSEClass: #BPMN20DiFactoryImpl  super: #BPMN20Object >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20DiFactoryImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20DiFactoryImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20DiFactoryImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20DiFactoryImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20DiFactoryImpl >> parent [
	^ parent
]

{ #category : #'as yet unclassified' }
BPMN20DiFactoryImpl >> parent: aparent [
	^ parent := aparent
]

{ #category : #'as yet unclassified' }
BPMN20DiFactoryImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20DiFactoryImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20DiFactoryImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20DiFactoryImpl >> text: atext [
	^ text := atext
]
