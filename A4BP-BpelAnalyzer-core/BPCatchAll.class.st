"
A BPCatchAll is the representation of peace of code to catch all error with not defined in BPCatch Element.

"
Class {
	#name : #BPCatchAll,
	#superclass : #BPCatchAbstract,
	#category : #'A4BP-BpelAnalyzer-core-model-bpel'
}

{ #category : #parser }
BPCatchAll class >> annotation [
<MSEClass: #BPCatchAll  super: #BPCatchAbstract >
<package: #'A4BP-BpelAnalyzer-core' >
]

{ #category : #parser }
BPCatchAll class >> fillElementsIn: aBPObjectComposite from: document [
	| visitor |
	visitor := BPBuilderSetNodesinBPObjectCompositeVisitor new.
	visitor element: aBPObjectComposite.
	self fillElementsIn: aBPObjectComposite from: document visitor: visitor
]

{ #category : #parser }
BPCatchAll class >> fromXMLDescription: document in: aBPObject [
	| bpObj |
	bpObj := self new.
	self fillElementsIn: bpObj from: document.
	^ bpObj
]

{ #category : #visitor }
BPCatchAll >> accept: aVisitor [
	^ aVisitor visitBPCatchAll: self.
]

{ #category : #adding }
BPCatchAll >> addActivity: aBPActivity [
	lstActivities add: aBPActivity
]

{ #category : #initialization }
BPCatchAll >> initialize [
	super initialize.
	lstActivities:= OrderedCollection new.
]

{ #category : #getset }
BPCatchAll >> lstActivities [
 ^ lstActivities
]
