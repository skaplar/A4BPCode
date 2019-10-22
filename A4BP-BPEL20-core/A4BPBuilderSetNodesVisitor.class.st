"
An A4BPBuilderSetNodesVisitor is xxxxxxxxx.

Instance Variables
	aBPObj:		<Object>

aBPObj
	- xxxxx

"
Class {
	#name : #A4BPBuilderSetNodesVisitor,
	#superclass : #A4BPAbstractVisitor,
	#traits : 'TA4BPActivitySameDoForAll',
	#classTraits : 'TA4BPActivitySameDoForAll classTrait',
	#instVars : [
		'aBPObj'
	],
	#category : #'A4BP-BPEL20-core-parser-builder'
}

{ #category : #'as yet unclassified' }
A4BPBuilderSetNodesVisitor class >> annotation [
<MSEClass: #A4BPBuilderSetNodesVisitor  super: #A4BPAbstractVisitor >
<package: #'A4BP-BPEL20-core' >
]

{ #category : #getset }
A4BPBuilderSetNodesVisitor >> aBPObj [
	^ aBPObj
]

{ #category : #getset }
A4BPBuilderSetNodesVisitor >> bpObj [
	^ aBPObj
]

{ #category : #action }
A4BPBuilderSetNodesVisitor >> buildElementIn: bpElement [
	bpElement accept: self
]

{ #category : #action }
A4BPBuilderSetNodesVisitor >> element: anBPObj [
	aBPObj := anBPObj
]

{ #category : #visitor }
A4BPBuilderSetNodesVisitor >> visitA4BPUnParserObj: aModel [
	^ 0
]

{ #category : #visitor }
A4BPBuilderSetNodesVisitor >> visitBBPWait: aBPWait [
	^ self visitBPActivity: aBPWait
]

{ #category : #visitor }
A4BPBuilderSetNodesVisitor >> visitBPActivity: aBPActivity [
	^ 0
]

{ #category : #visitor }
A4BPBuilderSetNodesVisitor >> visitBPActivityBasic: aBPActivityBasic [
	^ self visitBPActivity: aBPActivityBasic
]

{ #category : #visitor }
A4BPBuilderSetNodesVisitor >> visitBPActivityComposite: aBPActivityComposite [
	^ self visitBPActivity: aBPActivityComposite 
]

{ #category : #visitor }
A4BPBuilderSetNodesVisitor >> visitBPAssign: aBPAssign [
	^ self visitBPActivity: aBPAssign 
]

{ #category : #visitor }
A4BPBuilderSetNodesVisitor >> visitBPCatch: aBPCatch [
	^ self visitBPActivity: aBPCatch
]

{ #category : #visitor }
A4BPBuilderSetNodesVisitor >> visitBPCatchAll: aBPCatchAll [
	^ self visitBPActivity: aBPCatchAll 
]

{ #category : #visitor }
A4BPBuilderSetNodesVisitor >> visitBPElseIf: aBPElseIf [
	^ self visitBPActivity: aBPElseIf
]

{ #category : #visitor }
A4BPBuilderSetNodesVisitor >> visitBPEmpty: aBPEmpty [
	^ self visitBPActivity: aBPEmpty 
]

{ #category : #visitor }
A4BPBuilderSetNodesVisitor >> visitBPExit: aBPExit [
	^ self visitBPActivity: aBPExit 
]

{ #category : #visitor }
A4BPBuilderSetNodesVisitor >> visitBPExtensionActitity: aBPExtensionActitity [
	^ self visitBPActivity: aBPExtensionActitity 
]

{ #category : #visitor }
A4BPBuilderSetNodesVisitor >> visitBPFlow: aBPInvoke [
	^ self visitBPActivity: aBPInvoke 
]

{ #category : #visitor }
A4BPBuilderSetNodesVisitor >> visitBPForEach: aBPForEach [
	^ self visitBPActivity: aBPForEach 
]

{ #category : #visitor }
A4BPBuilderSetNodesVisitor >> visitBPIf: aBPIf [
	^ self visitBPActivity: aBPIf 
]

{ #category : #visitor }
A4BPBuilderSetNodesVisitor >> visitBPInvoke: aBPInvoke [
	^ self visitBPActivity: aBPInvoke 
]

{ #category : #visitor }
A4BPBuilderSetNodesVisitor >> visitBPPartnerLinks: aBPPartnerLinks [
	^ 0
]

{ #category : #visitor }
A4BPBuilderSetNodesVisitor >> visitBPPick: aBPPick [
	^ self visitBPActivity: aBPPick 
]

{ #category : #visitor }
A4BPBuilderSetNodesVisitor >> visitBPProcess: aBPProcess [
	^  0
]

{ #category : #visitor }
A4BPBuilderSetNodesVisitor >> visitBPReceive: aBPReceive [
	^ self visitBPActivity: aBPReceive 
]

{ #category : #visitor }
A4BPBuilderSetNodesVisitor >> visitBPRepeatUntil: aBPRepeatUntil [
	^ self visitBPActivity: aBPRepeatUntil 
]

{ #category : #visitor }
A4BPBuilderSetNodesVisitor >> visitBPReply: aBPReply [
	^ self visitBPActivity: aBPReply 
]

{ #category : #visitor }
A4BPBuilderSetNodesVisitor >> visitBPRethrow: aBPRethrow [
	^ self visitBPActivity: aBPRethrow 
]

{ #category : #visitor }
A4BPBuilderSetNodesVisitor >> visitBPScope: aBPScope [
 	^ self visitBPActivity: aBPScope 
]

{ #category : #visitor }
A4BPBuilderSetNodesVisitor >> visitBPSequence: aBPSequence [
	^ self visitBPActivity: aBPSequence 
]

{ #category : #visitor }
A4BPBuilderSetNodesVisitor >> visitBPSwitch: aBPSwitch [
	^ self visitBPActivity: aBPSwitch 
]

{ #category : #visitor }
A4BPBuilderSetNodesVisitor >> visitBPThrow: aBPThrow [
	^ self visitBPActivity: aBPThrow 
]

{ #category : #visitor }
A4BPBuilderSetNodesVisitor >> visitBPValidate: aBPValidate [
	^ self visitBPActivity: aBPValidate 
]

{ #category : #visitor }
A4BPBuilderSetNodesVisitor >> visitBPWhile: aBPWhile [
	^ self visitBPActivity: aBPWhile 
]
