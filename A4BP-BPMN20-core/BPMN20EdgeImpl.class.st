Class {
	#name : #BPMN20EdgeImpl,
	#superclass : #BPMN20DiagramElementImpl,
	#instVars : [
		'target',
		'source',
		'waypoint'
	],
	#category : #'A4BP-BPMN20-core-model-dd-di'
}

{ #category : #'as yet unclassified' }
BPMN20EdgeImpl class >> annotation [
<MSEClass: #BPMN20EdgeImpl  super: #BPMN20DiagramElementImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20EdgeImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20EdgeImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20EdgeImpl >> source [
^ source
]

{ #category : #'as yet unclassified' }
BPMN20EdgeImpl >> source: asource [
^ source := asource
]

{ #category : #'as yet unclassified' }
BPMN20EdgeImpl >> target [
^ target
]

{ #category : #'as yet unclassified' }
BPMN20EdgeImpl >> target: atarget [
^ target := atarget
]

{ #category : #'as yet unclassified' }
BPMN20EdgeImpl >> waypoint [
^ waypoint
]

{ #category : #'as yet unclassified' }
BPMN20EdgeImpl >> waypoint: awaypoint [
^ waypoint := awaypoint
]
