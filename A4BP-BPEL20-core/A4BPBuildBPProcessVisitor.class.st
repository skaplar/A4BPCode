"
An A4BPBuilderSetNodesinBPProcessVisitor is xxxxxxxxx.

Instance Variables
	a:		<Object>

a
	- xxxxx

"
Class {
	#name : #A4BPBuildBPProcessVisitor,
	#superclass : #A4BPBuilderSetNodesVisitor,
	#instVars : [
		'a'
	],
	#category : #'A4BP-BPEL20-core-parser-builder'
}

{ #category : #'as yet unclassified' }
A4BPBuildBPProcessVisitor class >> annotation [
<MSEClass: #A4BPBuildBPProcessVisitor  super: #A4BPBuilderSetNodesVisitor >
<package: #'A4BP-BPEL20-core' >
]

{ #category : #visitor }
A4BPBuildBPProcessVisitor >> visitBPActivity: aBPActivity [
	aBPObj addActivity: aBPActivity.
	aBPActivity bindWithBpProcess: aBPObj.
	^ 0
]

{ #category : #visitor }
A4BPBuildBPProcessVisitor >> visitBPCatch: aBPCatch [
	aBPObj addFaultHandler: aBPCatch.
	^ 0
]

{ #category : #visitor }
A4BPBuildBPProcessVisitor >> visitBPCatchAll: aBPCatchAll [
	aBPObj addFaultHandler: aBPCatchAll.
	^ 0
]

{ #category : #visitor }
A4BPBuildBPProcessVisitor >> visitBPPartnerLink: aBPPartnerLink [
	aBPObj addPartnerLink: aBPPartnerLink.
	^ 0
]

{ #category : #visitor }
A4BPBuildBPProcessVisitor >> visitBPPartnerLinks: aBPPartnerLinks [
	aBPObj partnerLinks: aBPPartnerLinks.
	^ 0
]

{ #category : #visitor }
A4BPBuildBPProcessVisitor >> visitBPVariable: aBPVariable [
	aBPObj addVariable: aBPVariable.
	^ 0
]

{ #category : #visitor }
A4BPBuildBPProcessVisitor >> visitBPVariables: aBPVariables [
	aBPObj variables: aBPVariables.
	^ 0
]
