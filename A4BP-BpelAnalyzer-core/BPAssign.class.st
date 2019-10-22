"
A BPAssign is an activity to set variables in a bpelprocess.

"
Class {
	#name : #BPAssign,
	#superclass : #BPActivityBasic,
	#instVars : [
		'lstActions'
	],
	#category : #'A4BP-BpelAnalyzer-core-model-bpel'
}

{ #category : #'as yet unclassified' }
BPAssign class >> annotation [
<MSEClass: #BPAssign  super: #BPActivityBasic >
<package: #'A4BP-BpelAnalyzer-core' >
]

{ #category : #parser }
BPAssign class >> fillElementsIn: aBPAssing from: document [
	| visitor |
	visitor := BPBuilderSetNodesinBPAssingVisitor new.
	visitor element: aBPAssing.
	self fillElementsIn: aBPAssing from: document visitor: visitor.
]

{ #category : #visitor }
BPAssign >> accept: aVisitor [
	^ aVisitor visitBPAssign:self.
]

{ #category : #adding }
BPAssign >> addAction: aAction [
	lstActions add: aAction
]

{ #category : #getset }
BPAssign >> getChildrenNodes [
	| nodes |
	nodes := OrderedCollection new.
	nodes addAll: self lstActions.
	^ nodes
]

{ #category : #initialization }
BPAssign >> initialize [
	super initialize.
	lstActions :=OrderedCollection new.
]

{ #category : #getset }
BPAssign >> lstActions [
	^ lstActions
]
