"
An A4BPBuilderSetNodesinBPObjectCompositeVisitor is xxxxxxxxx.

Instance Variables
	a:		<Object>

a
	- xxxxx

"
Class {
	#name : #A4BPBuildBPObjectCompositeVisitor,
	#superclass : #A4BPBuilderSetNodesVisitor,
	#instVars : [
		'a'
	],
	#category : #'A4BP-BPEL20-core-parser-builder'
}

{ #category : #'as yet unclassified' }
A4BPBuildBPObjectCompositeVisitor class >> annotation [
<MSEClass: #A4BPBuildBPObjectCompositeVisitor  super: #A4BPBuilderSetNodesVisitor >
<package: #'A4BP-BPEL20-core' >
]

{ #category : #visitor }
A4BPBuildBPObjectCompositeVisitor >> visitBPActivity: aBPActivity [
	aBPObj addActivity: aBPActivity.
	^ 0
]

{ #category : #visitor }
A4BPBuildBPObjectCompositeVisitor >> visitBPCatch: aBPCatch [
	aBPObj addFaultHandler: aBPCatch.
	^ 0
]

{ #category : #visitor }
A4BPBuildBPObjectCompositeVisitor >> visitBPCatchAll: aBPCatchAll [
	aBPObj addFaultHandler: aBPCatchAll.
	^ 0
]

{ #category : #visitor }
A4BPBuildBPObjectCompositeVisitor >> visitBPPartnerLink: aBPPartnerLink [
	aBPObj addPartnerLink: aBPPartnerLink.
	^ 0
]

{ #category : #visitor }
A4BPBuildBPObjectCompositeVisitor >> visitBPVariable: aBPVariable [
	aBPObj addVariable: aBPVariable.
	^ 0
]
