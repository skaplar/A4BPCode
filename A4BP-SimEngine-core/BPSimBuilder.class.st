"
A BPSimBuilder is xxxxxxxxx.

"
Class {
	#name : #BPSimBuilder,
	#superclass : #BPSimAbstractBuilder,
	#category : #'A4BP-SimEngine-core-builder'
}

{ #category : #'as yet unclassified' }
BPSimBuilder class >> buildScenario [
	| obj |
	obj := self new.
	obj buildScenarioId: UUID new asString.
	^ obj

]

{ #category : #'as yet unclassified' }
BPSimBuilder class >> buildScenarioId: anId [
	| obj |
	obj := self new.
	obj buildScenarioId: anId.
	^ obj
]

{ #category : #timer }
BPSimBuilder >> control [
	| b |
	b := BPSimControlBuilder new.
	b processModel: processModel.
	b addCurrentScenario: currentScenario.
	^ b
]

{ #category : #timer }
BPSimBuilder >> cost [
	|b|
	b := BPSimCostBuilder new.
	b processModel: processModel.
 	b addCurrentScenario: currentScenario .
	^ b
]

{ #category : #timer }
BPSimBuilder >> resource [
	|b|
	b := BPSimResourcesBuilder new.
	b processModel: processModel.
 	b addCurrentScenario: currentScenario .
	^ b
]

{ #category : #timer }
BPSimBuilder >> timer [
	|b|
	b := BPSimTimerBuilder new.
	b processModel: processModel.
 	b addCurrentScenario: currentScenario .
	^ b
]
