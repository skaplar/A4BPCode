"
A BPCatch is the representation of the catch handler element used for catch error from intertfaces wsdl.

"
Class {
	#name : #BPCatch,
	#superclass : #BPCatchAbstract,
	#instVars : [
		'faultName',
		'faultVariable',
		'faultMessageType',
		'faultElement'
	],
	#category : #'A4BP-BpelAnalyzer-core-model-bpel'
}

{ #category : #parser }
BPCatch class >> annotation [
<MSEClass: #BPCatch  super: #BPCatchAbstract >
<package: #'A4BP-BpelAnalyzer-core' >
]

{ #category : #parser }
BPCatch class >> fillElementsIn: aBPObjectComposite from: document [
	| visitor |
	visitor := BPBuilderSetNodesinBPObjectCompositeVisitor new.
	visitor element: aBPObjectComposite.
	self fillElementsIn: aBPObjectComposite from: document visitor: visitor
]

{ #category : #parser }
BPCatch class >> fromXMLDescription: document in: aBPObject [
	| bpObj |
	bpObj := self new.
	self fillElementsIn: bpObj from: document.
	^ bpObj
]

{ #category : #visitor }
BPCatch >> accept: aVisitor [
	^ aVisitor visitBPCatch: self.
]

{ #category : #adding }
BPCatch >> addActivity: aBPActivity [
	lstActivities add: aBPActivity
]

{ #category : #initialization }
BPCatch >> initialize [
	super initialize.
	lstActivities:= OrderedCollection new.
]

{ #category : #getset }
BPCatch >> lstActivities [
 ^ lstActivities
]
