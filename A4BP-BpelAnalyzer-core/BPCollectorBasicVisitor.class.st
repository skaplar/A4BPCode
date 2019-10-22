"
A BPCollectorBasicVisitor is xxxxxxxxx.

Instance Variables
	lstBPObj:		<Object>

lstBPObj
	- xxxxx

"
Class {
	#name : #BPCollectorBasicVisitor,
	#superclass : #A4BPAbstractVisitor,
	#instVars : [
		'lstBPObj'
	],
	#category : #'A4BP-BpelAnalyzer-core-biz-actions'
}

{ #category : #'as yet unclassified' }
BPCollectorBasicVisitor class >> annotation [
<MSEClass: #BPCollectorBasicVisitor  super: #A4BPAbstractVisitor >
<package: #'A4BP-BpelAnalyzer-core' >
]

{ #category : #initialization }
BPCollectorBasicVisitor >> addBPObject: aBPObject [
	lstBPObj add: aBPObject
]

{ #category : #action }
BPCollectorBasicVisitor >> calculateLstFrom: aCollection [
	aCollection do: [ :v | v accept: self ]
]

{ #category : #initialization }
BPCollectorBasicVisitor >> initialize [
	super initialize.
	lstBPObj := OrderedCollection new
]

{ #category : #getset }
BPCollectorBasicVisitor >> lstBPObj [
	^ lstBPObj
]

{ #category : #visitor }
BPCollectorBasicVisitor >> visitBBPWait: v [

]

{ #category : #visitor }
BPCollectorBasicVisitor >> visitBPActivityBasic: v [

]

{ #category : #visitor }
BPCollectorBasicVisitor >> visitBPActivityComposite: v [

]

{ #category : #visitor }
BPCollectorBasicVisitor >> visitBPAssign: v [

]

{ #category : #visitor }
BPCollectorBasicVisitor >> visitBPCatch: v [

]

{ #category : #visitor }
BPCollectorBasicVisitor >> visitBPCatchAll: v [

]

{ #category : #visitor }
BPCollectorBasicVisitor >> visitBPElseIf: v [

]

{ #category : #visitor }
BPCollectorBasicVisitor >> visitBPEmpty: v [

]

{ #category : #visitor }
BPCollectorBasicVisitor >> visitBPExit: v [

]

{ #category : #visitor }
BPCollectorBasicVisitor >> visitBPExtensionActitity: v [

]

{ #category : #visitor }
BPCollectorBasicVisitor >> visitBPFlow: v [

]

{ #category : #visitor }
BPCollectorBasicVisitor >> visitBPForEach: v [

]

{ #category : #visitor }
BPCollectorBasicVisitor >> visitBPIf: v [

]

{ #category : #visitor }
BPCollectorBasicVisitor >> visitBPInvoke: v [

]

{ #category : #visitor }
BPCollectorBasicVisitor >> visitBPObject: aBPObject [
	self addBPObject: aBPObject
]

{ #category : #visitor }
BPCollectorBasicVisitor >> visitBPPWait: v [

]

{ #category : #visitor }
BPCollectorBasicVisitor >> visitBPPick: v [

]

{ #category : #visitor }
BPCollectorBasicVisitor >> visitBPReceive:v [

]

{ #category : #visitor }
BPCollectorBasicVisitor >> visitBPRepeatUntil: v [

]

{ #category : #visitor }
BPCollectorBasicVisitor >> visitBPReply: v [

]

{ #category : #visitor }
BPCollectorBasicVisitor >> visitBPRethrow:v [

]

{ #category : #visitor }
BPCollectorBasicVisitor >> visitBPScope: v [

]

{ #category : #visitor }
BPCollectorBasicVisitor >> visitBPSequence: v [

]

{ #category : #visitor }
BPCollectorBasicVisitor >> visitBPSwitch: v [

]

{ #category : #visitor }
BPCollectorBasicVisitor >> visitBPThrow: v [

]

{ #category : #visitor }
BPCollectorBasicVisitor >> visitBPValidate: v [

]

{ #category : #visitor }
BPCollectorBasicVisitor >> visitBPWhile: v [

]
