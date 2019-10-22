Class {
	#name : #A4BPUIBPAbstractViewActionVisitor,
	#superclass : #A4BPAbstractVisitor,
	#category : #'A4BP-View-Action'
}

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewActionVisitor class >> annotation [
<MSEClass: #A4BPUIBPAbstractViewActionVisitor  super: #A4BPAbstractVisitor >
<package: #'A4BP-View' >
]

{ #category : #visitor }
A4BPUIBPAbstractViewActionVisitor >> actionBasicBrowser: aBPObject [
	^ OrderedCollection new
]

{ #category : #visitor }
A4BPUIBPAbstractViewActionVisitor >> visitA4BPEmptyObj: aModel [
	^ self visitA4BPObject: aModel 
]

{ #category : #visitor }
A4BPUIBPAbstractViewActionVisitor >> visitA4BPObject: aModel [
	| actions |
	actions := self actionBasicBrowser: aModel.
	^ actions
]
