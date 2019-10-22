Class {
	#name : #BPSimBPMN20Path,
	#superclass : #Object,
	#instVars : [
		'flows',
		'key'
	],
	#category : #'A4BP-SimEngine-BPMN20-execution-path'
}

{ #category : #initialization }
BPSimBPMN20Path >> add: anElement [
	flows add: anElement.
]

{ #category : #initialization }
BPSimBPMN20Path >> copy [
	|other|
	other := BPSimBPMN20Path new.
	other flows: flows copy.
	^ other
]

{ #category : #initialization }
BPSimBPMN20Path >> flows [
	^ flows
]

{ #category : #initialization }
BPSimBPMN20Path >> flows: aFlows [
	flows := aFlows
]

{ #category : #initialization }
BPSimBPMN20Path >> initialize [
	super initialize.
	flows := A4BPCollection new.
	key := UUID new asString.
]

{ #category : #initialization }
BPSimBPMN20Path >> key [
 ^ key
]
