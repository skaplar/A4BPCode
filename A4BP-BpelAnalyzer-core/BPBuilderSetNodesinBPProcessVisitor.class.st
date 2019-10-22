"
A BPBuilderSetNodesinBPProcessVisitor is xxxxxxxxx.

"
Class {
	#name : #BPBuilderSetNodesinBPProcessVisitor,
	#superclass : #BPBuilderSetNodesVisitor,
	#category : #'A4BP-BpelAnalyzer-core-parser-builder'
}

{ #category : #visitor }
BPBuilderSetNodesinBPProcessVisitor >> visitBPActivity: aBPActivity [
	aBPObj addActivity: aBPActivity.
	aBPActivity bindWithBpProcess: aBPObj.
	^ 0
]

{ #category : #visitor }
BPBuilderSetNodesinBPProcessVisitor >> visitBPCatch: aBPCatch [
	aBPObj addFaultHandler: aBPCatch.
	^ 0
]

{ #category : #visitor }
BPBuilderSetNodesinBPProcessVisitor >> visitBPCatchAll: aBPCatchAll [
	aBPObj addFaultHandler: aBPCatchAll.
	^ 0
]

{ #category : #visitor }
BPBuilderSetNodesinBPProcessVisitor >> visitBPPartnerLink: aBPPartnerLink [
	aBPObj addPartnerLink: aBPPartnerLink.
	^ 0
]

{ #category : #visitor }
BPBuilderSetNodesinBPProcessVisitor >> visitBPPartnerLinks: aBPPartnerLinks [
	aBPObj partnerLinks: aBPPartnerLinks.
	^ 0
]

{ #category : #visitor }
BPBuilderSetNodesinBPProcessVisitor >> visitBPVariable: aBPVariable [
	aBPObj addVariable: aBPVariable.
	^ 0
]

{ #category : #visitor }
BPBuilderSetNodesinBPProcessVisitor >> visitBPVariables: aBPVariables [
	aBPObj variables: aBPVariables.
	^ 0
]
