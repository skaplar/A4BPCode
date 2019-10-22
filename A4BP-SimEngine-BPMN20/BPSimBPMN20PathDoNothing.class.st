Class {
	#name : #BPSimBPMN20PathDoNothing,
	#superclass : #Object,
	#instVars : [
		'key'
	],
	#classInstVars : [
		'instance'
	],
	#category : #'A4BP-SimEngine-BPMN20-execution-path'
}

{ #category : #'as yet unclassified' }
BPSimBPMN20PathDoNothing class >> instance [
	instance ifNil: [ instance := self new ].
	^ instance
]

{ #category : #initialization }
BPSimBPMN20PathDoNothing >> add: anElement [
	"do nothing"
]

{ #category : #initialization }
BPSimBPMN20PathDoNothing >> copy [
	^ self
]

{ #category : #initialization }
BPSimBPMN20PathDoNothing >> flows [
	^ A4BPCollection new
]

{ #category : #initialization }
BPSimBPMN20PathDoNothing >> flows: aFlows [
	"do nothing"
]

{ #category : #initialization }
BPSimBPMN20PathDoNothing >> initialize [
	super initialize.
	key := UUID new asString.
]

{ #category : #initialization }
BPSimBPMN20PathDoNothing >> key [
 ^ key
]
