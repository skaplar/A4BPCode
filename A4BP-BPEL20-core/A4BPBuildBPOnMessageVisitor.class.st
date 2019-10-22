"
An A4BPBuilderSetNodesinBPOnMessageVisitor is xxxxxxxxx.

Instance Variables
	a:		<Object>

a
	- xxxxx

"
Class {
	#name : #A4BPBuildBPOnMessageVisitor,
	#superclass : #A4BPBuilderSetNodesVisitor,
	#instVars : [
		'a'
	],
	#category : #'A4BP-BPEL20-core-parser-builder'
}

{ #category : #'as yet unclassified' }
A4BPBuildBPOnMessageVisitor class >> annotation [
<MSEClass: #A4BPBuildBPOnMessageVisitor  super: #A4BPBuilderSetNodesVisitor >
<package: #'A4BP-BPEL20-core' >
]

{ #category : #visitor }
A4BPBuildBPOnMessageVisitor >> visitBPActivity: aBPActivity [
	aBPObj addActivity:aBPActivity 
]

{ #category : #visitor }
A4BPBuildBPOnMessageVisitor >> visitBPOnMessage: aBPOnMessage [
]
