Class {
	#name : #BPTblItemReflexion,
	#superclass : #BPTblItem,
	#instVars : [
		'obj',
		'message'
	],
	#category : #'A4BP-BpelAnalyzer-view-Visualization-Controller'
}

{ #category : #builder }
BPTblItemReflexion class >> build: aObj message: aMsg [
	| newObj |
	newObj := self new.
	newObj obj: aObj.
	newObj message: aMsg.
	^ newObj
]

{ #category : #'as yet unclassified' }
BPTblItemReflexion >> accept: bpObj [
	^ obj accept: bpObj 
]

{ #category : #'as yet unclassified' }
BPTblItemReflexion >> asString [
	^ self message
]

{ #category : #'as yet unclassified' }
BPTblItemReflexion >> evaluate [
	^ (obj perform: message)
]

{ #category : #'as yet unclassified' }
BPTblItemReflexion >> getChildrenNodes [
	^ obj getChildrenNodes
]

{ #category : #'as yet unclassified' }
BPTblItemReflexion >> message [
	^ message
]

{ #category : #'as yet unclassified' }
BPTblItemReflexion >> message: aMessage [
	message := aMessage 
]

{ #category : #'as yet unclassified' }
BPTblItemReflexion >> obj [
	^ obj
]

{ #category : #'as yet unclassified' }
BPTblItemReflexion >> obj: aObj [
	obj := aObj
]
