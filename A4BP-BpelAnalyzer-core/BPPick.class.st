"
A BPPick is xxxxxxxxx.

Pick:- Used to have the process wait until one of a set of events is triggered. 

Message events via onMessage element
Alarm events via onAlarm element
"
Class {
	#name : #BPPick,
	#superclass : #BPActivityStructured,
	#instVars : [
		'createInstance',
		'lstBPOnMessage'
	],
	#category : #'A4BP-BpelAnalyzer-core-model-bpel'
}

{ #category : #parser }
BPPick class >> annotation [
<MSEClass: #BPPick  super: #BPActivityStructured >
<package: #'A4BP-BpelAnalyzer-core' >
]

{ #category : #parser }
BPPick class >> fillElementsIn: aBPPick from: document [
	| bpElement refTag typeName nodes |
	nodes := document nodes.
	nodes
		do: [ :docAtr | 
			typeName := docAtr name.
			refTag := BPBPELParserTagsXMLRef getClassBPBaseOnTypeName: typeName.
			bpElement := refTag objclass fromXMLDescription: docAtr in: aBPPick.
		]
]

{ #category : #visitor }
BPPick >> accept: aVisitor [
	^ aVisitor visitBPPick: self
]

{ #category : #adding }
BPPick >> addOnMessage: aBPOnMessage [
	lstBPOnMessage add: aBPOnMessage
]

{ #category : #getset }
BPPick >> createInstance [
	^ createInstance
]

{ #category : #getset }
BPPick >> getChildrenNodes [
	| nodes |
	nodes := OrderedCollection new.
	nodes addAll: self lstBPOnMessage.
	^ nodes
]

{ #category : #initialization }
BPPick >> initialize [
	super initialize.
	lstBPOnMessage :=OrderedCollection new.
]

{ #category : #getset }
BPPick >> lstBPOnMessage [
	^ lstBPOnMessage
]
