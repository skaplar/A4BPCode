Class {
	#name : #BPSimGLMTableObserver,
	#superclass : #Object,
	#instVars : [
		'table'
	],
	#category : #'A4BP-SimEngine-View-Observers'
}

{ #category : #view }
BPSimGLMTableObserver >> notify: e [
	self update.
]

{ #category : #view }
BPSimGLMTableObserver >> open [
	"[self view open ] forkAt: Processor userBackgroundPriority"
]

{ #category : #accessing }
BPSimGLMTableObserver >> table [
	^ table
]

{ #category : #accessing }
BPSimGLMTableObserver >> table: anObject [
	table := anObject
]

{ #category : #view }
BPSimGLMTableObserver >> update [
	table update
]
