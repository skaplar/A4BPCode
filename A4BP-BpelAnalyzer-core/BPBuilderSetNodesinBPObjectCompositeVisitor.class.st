"
A BPBuilderSetNodesinBPObjectCompositeVisitor is xxxxxxxxx.

"
Class {
	#name : #BPBuilderSetNodesinBPObjectCompositeVisitor,
	#superclass : #BPBuilderSetNodesVisitor,
	#category : #'A4BP-BpelAnalyzer-core-parser-builder'
}

{ #category : #visitor }
BPBuilderSetNodesinBPObjectCompositeVisitor >> visitBPActivity: aBPActivity [
	aBPObj addActivity: aBPActivity.
	^ 0
]

{ #category : #visitor }
BPBuilderSetNodesinBPObjectCompositeVisitor >> visitBPCatch: aBPCatch [
	aBPObj addFaultHandler: aBPCatch.
	^ 0
]

{ #category : #visitor }
BPBuilderSetNodesinBPObjectCompositeVisitor >> visitBPCatchAll: aBPCatchAll [
	aBPObj addFaultHandler: aBPCatchAll.
	^ 0
]

{ #category : #visitor }
BPBuilderSetNodesinBPObjectCompositeVisitor >> visitBPPartnerLink: aBPPartnerLink [
	aBPObj addPartnerLink: aBPPartnerLink.
	^ 0
]

{ #category : #visitor }
BPBuilderSetNodesinBPObjectCompositeVisitor >> visitBPVariable: aBPVariable [
	aBPObj addVariable: aBPVariable.
	^ 0
]
