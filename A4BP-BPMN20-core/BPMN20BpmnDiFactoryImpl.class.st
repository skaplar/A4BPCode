Class {
	#name : #BPMN20BpmnDiFactoryImpl,
	#superclass : #BPMN20Object,
	#category : #'A4BP-BPMN20-core-model-di'
}

{ #category : #'as yet unclassified' }
BPMN20BpmnDiFactoryImpl class >> annotation [
<MSEClass: #BPMN20BpmnDiFactoryImpl  super: #BPMN20Object >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20BpmnDiFactoryImpl class >> fillElementsIn: aModel from: document [

]

{ #category : #'as yet unclassified' }
BPMN20BpmnDiFactoryImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20BpmnDiFactoryImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20BpmnDiFactoryImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20BpmnDiFactoryImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20BpmnDiFactoryImpl >> parent [
	^ parent
]

{ #category : #'as yet unclassified' }
BPMN20BpmnDiFactoryImpl >> parent: aparent [
	^ parent := aparent
]

{ #category : #'as yet unclassified' }
BPMN20BpmnDiFactoryImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20BpmnDiFactoryImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20BpmnDiFactoryImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20BpmnDiFactoryImpl >> text: atext [
	^ text := atext
]
