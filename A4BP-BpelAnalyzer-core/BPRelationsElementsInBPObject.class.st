"
A BPRelationsElementsInBPObject is object to encapsulate the references of the any elements with others elements in the context.

Instance Variables
	lstRelations:		<Object>

lstRelations
	- xxxxx

"
Class {
	#name : #BPRelationsElementsInBPObject,
	#superclass : #A4BPObject,
	#instVars : [
		'lstRelations'
	],
	#category : #'A4BP-BpelAnalyzer-core-model-a4bp'
}

{ #category : #'as yet unclassified' }
BPRelationsElementsInBPObject class >> annotation [
<MSEClass: #BPRelationsElementsInBPObject  super: #A4BPObject >
<package: #'A4BP-BpelAnalyzer-core' >
]

{ #category : #visitor }
BPRelationsElementsInBPObject >> accept: aVisitor [
	^ aVisitor visitBPRel: self
]

{ #category : #adding }
BPRelationsElementsInBPObject >> addRelation: aRelation [
	lstRelations  at: (aRelation aName) put: aRelation.
]

{ #category : #getset }
BPRelationsElementsInBPObject >> allRelations [
	^ self lstRelations
]

{ #category : #'build-relations' }
BPRelationsElementsInBPObject >> findDef: aDef [
	| visitor |
	visitor := BPDefFinderVisitor new.
	^ visitor findDef: aDef In: lstRelations
]

{ #category : #getset }
BPRelationsElementsInBPObject >> getChildrenNodes [
	| nodes |
	nodes := OrderedCollection new.
	nodes addAll: lstRelations.
	^ nodes
]

{ #category : #getset }
BPRelationsElementsInBPObject >> getRelationAt: aRelation [
	^ self getRelationAtName: aRelation aName
]

{ #category : #getset }
BPRelationsElementsInBPObject >> getRelationAtName: pName [
	| rel |
	[ rel := self lstRelations at: pName ]
		on: KeyNotFound
		do: [ ^ A4BPEmptyObj instance ].
	^ rel
]

{ #category : #initialization }
BPRelationsElementsInBPObject >> initialize [
	super initialize.
	lstRelations := Dictionary new.
	aName := A4BPUII18n msg msgRelations
]

{ #category : #getset }
BPRelationsElementsInBPObject >> lstRelations [
	^ lstRelations
]

{ #category : #metrics }
BPRelationsElementsInBPObject >> numberOfRelations [
	^ lstRelations size
]
