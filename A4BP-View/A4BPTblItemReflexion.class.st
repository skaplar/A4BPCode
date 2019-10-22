Class {
	#name : #A4BPTblItemReflexion,
	#superclass : #A4BPTblItem,
	#instVars : [
		'obj',
		'message'
	],
	#category : #'A4BP-View-Visualization-Controller'
}

{ #category : #builder }
A4BPTblItemReflexion class >> build: aObj message: aMsg [
	| newObj |
	newObj := self new.
	newObj obj: aObj.
	newObj message: aMsg.
	^ newObj
]

{ #category : #'as yet unclassified' }
A4BPTblItemReflexion >> accept: bpObj [
	^ obj accept: bpObj 
]

{ #category : #'as yet unclassified' }
A4BPTblItemReflexion >> asString [
	^ self message
]

{ #category : #'as yet unclassified' }
A4BPTblItemReflexion >> evaluate [
	^ (obj perform: message)
]

{ #category : #'as yet unclassified' }
A4BPTblItemReflexion >> getChildrenNodes [
	^ obj getChildrenNodes
]

{ #category : #'as yet unclassified' }
A4BPTblItemReflexion >> message [
	^ message
]

{ #category : #'as yet unclassified' }
A4BPTblItemReflexion >> message: aMessage [
	message := aMessage 
]

{ #category : #'as yet unclassified' }
A4BPTblItemReflexion >> obj [
	^ obj
]

{ #category : #'as yet unclassified' }
A4BPTblItemReflexion >> obj: aObj [
	obj := aObj
]
