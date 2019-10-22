"
A BPActivity is a superclass of all action in a bpel process.

Instance Variables
	activityName:		<Object>

activityName
	- xxxxx

"
Class {
	#name : #BPActivity,
	#superclass : #BPBPELObject,
	#instVars : [
		'activityName'
	],
	#category : #'A4BP-BpelAnalyzer-core-model-bpel'
}

{ #category : #'as yet unclassified' }
BPActivity class >> annotation [
<MSEClass: #BPActivity  super: #BPBPELObject >
<package: #'A4BP-BpelAnalyzer-core' >
]

{ #category : #parser }
BPActivity class >> fromXMLDescription:document fromAct:bpAct in:aBPObject [
	"an secuence activity have a list of activities"
	self fillBData: document in: bpAct.
	self fillElementsIn: bpAct from: document.
	^ bpAct
]

{ #category : #parser }
BPActivity class >> fromXMLDescription: document in: parent [
	| bpAct |
	bpAct := self new.
	bpAct parent: parent.
	self fillBData: document in: bpAct.	
	self fromXMLDescription: document fromAct: bpAct in: parent.
	^ bpAct
]

{ #category : #visitor }
BPActivity >> accept: aVisitor [
	^ aVisitor visitBPActivity:self.
]

{ #category : #getset }
BPActivity >> activityName [
	^ activityName
]

{ #category : #getset }
BPActivity >> activityName: aactivityName [
	activityName := aactivityName.
	aName := aactivityName 
]

{ #category : #bind }
BPActivity >> bindWith: aBPObject [
	"do nothing in base class definition"

	
]

{ #category : #bind }
BPActivity >> bindWithBpProcess: bPProcess [
	"do nothing in base class definition"

	
]

{ #category : #getset }
BPActivity >> bpPartnerLink [
	^ A4BPEmptyObj instance
]

{ #category : #getset }
BPActivity >> buildRelations [ 

	
]

{ #category : #build }
BPActivity >> buildRelationsBpProcess: aRelBpProcess [
]

{ #category : #dsl }
BPActivity >> flows [
	^ OrderedCollection new
]

{ #category : #'as yet unclassified' }
BPActivity >> isARelationableActivity [
^ false.
]

{ #category : #metric }
BPActivity >> numberOfRelations [
	^ 0
]

{ #category : #getset }
BPActivity >> relations [
	|lst|
	lst := A4BPCollection new.
	lst add: self bpPartnerLink bpwsdl.
	^ lst
]

{ #category : #metric }
BPActivity >> size [
	^ self metricCFC
]

{ #category : #getset }
BPActivity >> xpath [
	^ myDocument xpath
]
