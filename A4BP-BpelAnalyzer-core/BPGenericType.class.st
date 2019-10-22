"
A BPGenericType is xxxxxxxxx.

Instance Variables
	element:		<Object>
	nameSpace:		<Object>
	prefix:		<Object>

element
	- xxxxx

nameSpace
	- xxxxx

prefix
	- xxxxx

"
Class {
	#name : #BPGenericType,
	#superclass : #Object,
	#instVars : [
		'prefix',
		'element',
		'nameSpace'
	],
	#category : #'A4BP-BpelAnalyzer-core-model-a4bp'
}

{ #category : #factory }
BPGenericType class >> findType: aBPObject [
	^ aBPObject stType
]

{ #category : #factory }
BPGenericType class >> newGenericType: aBPObject [
	| bpVT array |
	bpVT := self new.	"find the namespace of the definition"
	array := (self findType: aBPObject) substrings: ':'.
	array size > 0
		ifTrue: [ 
			array size > 1
				ifTrue: [ 
						bpVT prefix: (array at: 1).
						bpVT element: (array at: 2) ];
				ifFalse: [ bpVT element: (array at: 1) ] ].
	^ bpVT
]

{ #category : #getset }
BPGenericType >> element [
	^ element
]

{ #category : #getset }
BPGenericType >> element: e [
	element := e
]

{ #category : #getset }
BPGenericType >> nameSpace [
	^ nameSpace
]

{ #category : #getset }
BPGenericType >> nameSpace: n [
	nameSpace := n
]

{ #category : #getset }
BPGenericType >> prefix [
	^ prefix
]

{ #category : #getset }
BPGenericType >> prefix:p [
	prefix:=p
]
