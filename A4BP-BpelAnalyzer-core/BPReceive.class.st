"
A BPReceive class is xxxxxxxxx.


 reply activity must be always preceded by receive activity.
 It is the combination of the two that defines the  process's synchronous interactions.
"
Class {
	#name : #BPReceive,
	#superclass : #BPActivityBasic,
	#instVars : [
		'bpPartnerLink',
		'inputVariable',
		'outputVariable',
		'partnerLink',
		'portType',
		'operation'
	],
	#category : #'A4BP-BpelAnalyzer-core-model-bpel'
}

{ #category : #'as yet unclassified' }
BPReceive class >> annotation [
<MSEClass: #BPReceive  super: #BPActivityBasic >
<package: #'A4BP-BpelAnalyzer-core' >
]

{ #category : #visitor }
BPReceive >> accept: aVisitor [
	^ aVisitor visitBPReceive: self
]

{ #category : #'as yet unclassified' }
BPReceive >> bindWithBpProcess: bPProcess [
	inputVariable ifNotEmpty: [ (bPProcess getBPVariableNamed: inputVariable) addInvoke: self ].
	outputVariable ifNotEmpty: [ (bPProcess getBPVariableNamed: outputVariable) addInvoke: self ].
	partnerLink
		ifNotEmpty: [ 
			| bpPlnk |
			bpPlnk := bPProcess getBPPartnerLinkName: partnerLink.
			bpPlnk addRelation: self.
			bpPartnerLink := bpPlnk ]
]

{ #category : #'as yet unclassified' }
BPReceive >> bpPartnerLink [
	^ bpPartnerLink
]

{ #category : #'as yet unclassified' }
BPReceive >> buildRelationsBpProcess: aRelBpProcess [
	aRelBpProcess addRelRecive: bpPartnerLink bpwsdl
]

{ #category : #'as yet unclassified' }
BPReceive >> initialize [
	super initialize.
	partnerLink := ''.
	portType := ''.
	operation := ''.
	inputVariable := ''.
	outputVariable := ''.
	bpPartnerLink := A4BPEmptyObj instance.
]
