"
A BPBuilderSetNodesVisitor is xxxxxxxxx.

Instance Variables
	aBPObj:		<Object>

aBPObj
	- xxxxx

"
Class {
	#name : #BPBuilderSetNodesVisitor,
	#superclass : #A4BPAbstractVisitor,
	#traits : 'TBPActivitySameDoForAll',
	#classTraits : 'TBPActivitySameDoForAll classTrait',
	#instVars : [
		'aBPObj'
	],
	#category : #'A4BP-BpelAnalyzer-core-parser-builder'
}

{ #category : #'as yet unclassified' }
BPBuilderSetNodesVisitor class >> annotation [
<MSEClass: #BPBuilderSetNodesVisitor  super: #A4BPAbstractVisitor >
<package: #'A4BP-BpelAnalyzer-core' >
]

{ #category : #getset }
BPBuilderSetNodesVisitor >> aBPObj [
	^ aBPObj
]

{ #category : #getset }
BPBuilderSetNodesVisitor >> bpObj [
	^ aBPObj
]

{ #category : #action }
BPBuilderSetNodesVisitor >> buildElementIn: bpElement [
	bpElement accept: self
]

{ #category : #action }
BPBuilderSetNodesVisitor >> element: anBPObj [
	aBPObj := anBPObj
]

{ #category : #visitor }
BPBuilderSetNodesVisitor >> visitA4BPUnParserObj: aModel [
	^ 0
]

{ #category : #visitor }
BPBuilderSetNodesVisitor >> visitBPActivity: aBPActivity [
	^ 0
]

{ #category : #visitor }
BPBuilderSetNodesVisitor >> visitBPPartnerLinks: aBPPartnerLinks [
	^ 0
]

{ #category : #visitor }
BPBuilderSetNodesVisitor >> visitBPProcess: aBPProcess [
	^  0
]
