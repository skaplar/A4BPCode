"
A BPFaultHandlers is representacion of tag <faultHandlers>.

Instance Variables
	lstFaultHandlers:		list of BPCaths and BPCathAll in BPProcess

lstFaultHandlers
	- xxxxx

"
Class {
	#name : #BPFaultHandlers,
	#superclass : #BPBPELObject,
	#instVars : [
		'lstFaultHandlers'
	],
	#category : #'A4BP-BpelAnalyzer-core-model-bpel'
}

{ #category : #parser }
BPFaultHandlers class >> annotation [
<MSEClass: #BPFaultHandlers  super: #BPBPELObject >
<package: #'A4BP-BpelAnalyzer-core' >
]

{ #category : #parser }
BPFaultHandlers class >> fillFaultHandlers: bpFaultHandlers from: document in: aBPObject [
	| bpElement refTag typeName nodes |
	nodes := document nodes.
	nodes
		do: [ :docAtr | 
			typeName := docAtr name.
			refTag := BPBPELParserTagsXMLRef getClassBPBaseOnTypeName:  typeName.
			refTag = A4BPEmptyObj instance
				ifFalse: [ 
					bpElement := refTag objclass fromXMLDescription: docAtr in: aBPObject.
					bpFaultHandlers addFaultHandler: bpElement.
					aBPObject addFaultHandler: bpFaultHandlers
				] 
		]
]

{ #category : #parser }
BPFaultHandlers class >> fromXMLDescription: document in: parent [
	| aBPObj |
	aBPObj := self new.
	aBPObj parent: parent.
	self fillBData: document in: aBPObj.
	self fillFaultHandlers: aBPObj from: document  in: parent.
	^ aBPObj
]

{ #category : #visitor }
BPFaultHandlers >> accept: aVisitor [
	^ aVisitor visitBPFaultHandlers: self
]

{ #category : #adding }
BPFaultHandlers >> addFaultHandler: aFaultHandler [
	lstFaultHandlers add: aFaultHandler
]

{ #category : #getset }
BPFaultHandlers >> getChildrenNodes [
	| nodes |
	nodes := OrderedCollection new.
	nodes addAll: lstFaultHandlers .
	^ nodes
]

{ #category : #initialization }
BPFaultHandlers >> initialize [
	super initialize.
	aName:='FaultHandlers'.
	lstFaultHandlers := OrderedCollection  new.
	
]

{ #category : #getset }
BPFaultHandlers >> lstFaultHandlers [
^ lstFaultHandlers
]

{ #category : #metrics }
BPFaultHandlers >> numberOfCatchAll [
	^ (lstFaultHandlers select: [ :v | v class = BPCatchAll ]) size
]

{ #category : #metrics }
BPFaultHandlers >> numberOfCatchs [
	^ (lstFaultHandlers select: [ :v | v class = BPCatch ]) size
]
