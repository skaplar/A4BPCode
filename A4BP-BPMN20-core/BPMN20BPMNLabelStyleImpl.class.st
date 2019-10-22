Class {
	#name : #BPMN20BPMNLabelStyleImpl,
	#superclass : #BPMN20StyleImpl,
	#instVars : [
		'font'
	],
	#category : #'A4BP-BPMN20-core-model-di'
}

{ #category : #'as yet unclassified' }
BPMN20BPMNLabelStyleImpl class >> annotation [
<MSEClass: #BPMN20BPMNLabelStyleImpl  super: #BPMN20StyleImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20BPMNLabelStyleImpl class >> fillElementsIn: aModel from: document [

]

{ #category : #'as yet unclassified' }
BPMN20BPMNLabelStyleImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20BPMNLabelStyleImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20BPMNLabelStyleImpl >> font [
^ font
]

{ #category : #'as yet unclassified' }
BPMN20BPMNLabelStyleImpl >> font: afont [
^ font := afont
]
