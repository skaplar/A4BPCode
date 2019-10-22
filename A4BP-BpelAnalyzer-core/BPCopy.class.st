"
A BPCopy is xxxxxxxxx.

Instance Variables
	bpFrom:		variable from to obtain data
	bpTo:		variable to set the data
	ignoreMissingFromData:		<Object>
	keepSrcElementName:		<Object>

bpFrom
	- xxxxx

bpTo
	- xxxxx

ignoreMissingFromData
	- xxxxx

keepSrcElementName
	- xxxxx

"
Class {
	#name : #BPCopy,
	#superclass : #BPBPELObject,
	#instVars : [
		'keepSrcElementName',
		'ignoreMissingFromData',
		'bpFrom',
		'bpTo'
	],
	#category : #'A4BP-BpelAnalyzer-core-model-bpel'
}

{ #category : #build }
BPCopy class >> annotation [
<MSEClass: #BPCopy  super: #BPBPELObject >
<package: #'A4BP-BpelAnalyzer-core' >
]

{ #category : #build }
BPCopy class >> fillElementsIn: aBPCopy from: document [
	| visitor |
	visitor := BPBuilderSetNodesinBPCopyVisitor new.
	visitor element: aBPCopy.
	self fillElementsIn: aBPCopy from: document visitor: visitor.
]

{ #category : #'as yet unclassified' }
BPCopy >> aName [
	aName = ''
		ifTrue: [ ^ A4BPUII18n msg msgBPCopyName ].
	^ aName
]

{ #category : #visitor }
BPCopy >> accept:aVisitor [
 ^ aVisitor visitBPCopy:self
]

{ #category : #getset }
BPCopy >> bpFrom [
 ^ bpFrom 
]

{ #category : #getset }
BPCopy >> bpFrom: v [
	bpFrom := v
]

{ #category : #getset }
BPCopy >> bpTo [
	^ bpTo
]

{ #category : #getset }
BPCopy >> bpTo: v [
	bpTo := v
]

{ #category : #getset }
BPCopy >> getChildrenNodes [
	| nodes |
	nodes := OrderedCollection new.
	nodes add: bpFrom.
	nodes add: bpTo.
	^ nodes
]

{ #category : #getset }
BPCopy >> ignoreMissingFromData [
	^ ignoreMissingFromData
]

{ #category : #getset }
BPCopy >> ignoreMissingFromData: v [
	ignoreMissingFromData := v
]

{ #category : #initialization }
BPCopy >> initialize [
	super initialize.
	aName:='copy'.
]

{ #category : #getset }
BPCopy >> keepSrcElementName [
	^ keepSrcElementName
]

{ #category : #getset }
BPCopy >> keepSrcElementName: v [
	keepSrcElementName := v
]
