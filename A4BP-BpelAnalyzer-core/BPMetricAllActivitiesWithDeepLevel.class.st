"
A BPMetricAllActivitiesWithDeepLevel is a visitor
with the capasity to explore the activity and their childs.

Instance Variables
	deepLevel:		<Object>
	targetdeepLevel:		<Object>

deepLevel
	- xxxxx

targetdeepLevel
	- xxxxx

"
Class {
	#name : #BPMetricAllActivitiesWithDeepLevel,
	#superclass : #BPMetricAllActivities,
	#instVars : [
		'deepLevel',
		'targetdeepLevel'
	],
	#category : #'A4BP-BpelAnalyzer-core-metric'
}

{ #category : #'as yet unclassified' }
BPMetricAllActivitiesWithDeepLevel class >> annotation [
<MSEClass: #BPMetricAllActivitiesWithDeepLevel  super: #BPMetricAllActivities >
<package: #'A4BP-BpelAnalyzer-core' >
]

{ #category : #action }
BPMetricAllActivitiesWithDeepLevel >> calculateActivitiesFrom: lstAct withDeep:aDeepLevel [
	targetdeepLevel :=aDeepLevel.
	self checkDeep ifTrue:[^ self].
	lstAct do: [ :act | act accept: self ]

]

{ #category : #action }
BPMetricAllActivitiesWithDeepLevel >> checkDeep [
	^ deepLevel = targetdeepLevel
]

{ #category : #action }
BPMetricAllActivitiesWithDeepLevel >> decreaseDeepLevel [
	deepLevel := deepLevel - 1.
	deepLevel <= 0
		ifTrue: [ deepLevel := 0 ]
]

{ #category : #action }
BPMetricAllActivitiesWithDeepLevel >> increaseDeepLevel [
	deepLevel := deepLevel + 1.
]

{ #category : #initialization }
BPMetricAllActivitiesWithDeepLevel >> initialize [
	super initialize.
	deepLevel :=0.
]

{ #category : #initialization }
BPMetricAllActivitiesWithDeepLevel >> visitBPActivity:aBPActivity [
	self checkDeep ifTrue:[^ self].
	super visitBPActivity: aBPActivity.
]

{ #category : #initialization }
BPMetricAllActivitiesWithDeepLevel >> visitBPActivityComposite: aBPActivityComposite [
	self checkDeep ifTrue:[^ self].
	self increaseDeepLevel.
	super visitBPActivityComposite: aBPActivityComposite.
	self decreaseDeepLevel.
]

{ #category : #initialization }
BPMetricAllActivitiesWithDeepLevel >> visitBPOnMessage: aBPOnMessage [
	self checkDeep ifTrue:[^ self].
	self increaseDeepLevel.
	super visitBPOnMessage: aBPOnMessage.
	self decreaseDeepLevel.
]

{ #category : #initialization }
BPMetricAllActivitiesWithDeepLevel >> visitBPPick: aBPPick [
	self checkDeep ifTrue:[^ self].
	self increaseDeepLevel.
	super visitBPPick: aBPPick.
	self decreaseDeepLevel.
]
