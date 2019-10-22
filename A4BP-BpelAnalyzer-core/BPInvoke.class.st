"
A BPInvoke class is xxxxxxxxx.

invoke:- used to invoke or call a web service.

"
Class {
	#name : #BPInvoke,
	#superclass : #BPActivityBasic,
	#instVars : [
		'partnerLink',
		'portType',
		'operation',
		'inputVariable',
		'outputVariable',
		'bpPartnerLink'
	],
	#category : #'A4BP-BpelAnalyzer-core-model-bpel'
}

{ #category : #'as yet unclassified' }
BPInvoke class >> annotation [
<MSEClass: #BPInvoke  super: #BPActivityBasic >
<package: #'A4BP-BpelAnalyzer-core' >
]

{ #category : #parser }
BPInvoke class >> fromXMLDescription:document fromAct: bpInvoke in:aBPObject [
	"an secuence activity have a list of activities"
	super fromXMLDescription:document fromAct: bpInvoke in:aBPObject.
	"set the value of partnerLink"
	bpInvoke partnerLink: (self readString: document at: 'partnerLink').
	bpInvoke portType: (self readString: document at: 'portType').
	bpInvoke operation: (self readString: document at: 'operation').
	bpInvoke inputVariable: (self readString: document at: 'inputVariable').
	bpInvoke outputVariable: (self readString: document at: 'outputVariable').
	^ bpInvoke
]

{ #category : #visitor }
BPInvoke >> accept: aVisitor [
	^ aVisitor visitBPInvoke: self
]

{ #category : #resolving }
BPInvoke >> bindWith: bpObject [
	bpObject bindWithBpInvoke self.
]

{ #category : #resolving }
BPInvoke >> bindWithBpProcess: bPProcess [
	inputVariable ifNotEmpty: [ (bPProcess getBPVariableNamed: inputVariable) addRelation: self ].
	outputVariable ifNotEmpty: [ (bPProcess getBPVariableNamed: outputVariable) addRelation: self ].
	partnerLink
		ifNotEmpty: [ 
			| bpPlnk |
			bpPlnk := bPProcess getBPPartnerLinkName: partnerLink.
			bpPlnk ifNotNil:[
				bpPlnk addRelation: self.
				bpPartnerLink := bpPlnk
			]. 
		]
]

{ #category : #getset }
BPInvoke >> bpPartnerLink [
	^ bpPartnerLink
]

{ #category : #build }
BPInvoke >> buildRelations [
	
]

{ #category : #build }
BPInvoke >> buildRelationsBpProcess: aRelBpProcess [
	bpPartnerLink bpwsdl addCallRelation: aRelBpProcess.
	aRelBpProcess addRelation: ( bpPartnerLink bpwsdl). 
]

{ #category : #getset }
BPInvoke >> iHaveThisVariable: stVariable [
	"check if stVariable is part of their variables"

	^ inputVariable = stVariable | (outputVariable = stVariable)
]

{ #category : #initialization }
BPInvoke >> initialize [
	super initialize.
	partnerLink := ''.
	portType := ''.
	operation := ''.
	inputVariable := ''.
	outputVariable := ''.
	bpPartnerLink := A4BPEmptyObj instance.
]

{ #category : #getset }
BPInvoke >> inputVariable [ 
^ inputVariable  
]

{ #category : #getset }
BPInvoke >> inputVariable:string [
 inputVariable :=string
]

{ #category : #getset }
BPInvoke >> isARelationableActivity [
	^ (bpPartnerLink = A4BPEmptyObj instance) not and: (bpPartnerLink bpwsdl = nil) not
]

{ #category : #getset }
BPInvoke >> link [
	^ bpPartnerLink link
]

{ #category : #getset }
BPInvoke >> operation [ 
^ operation
]

{ #category : #getset }
BPInvoke >> operation:string [
 operation :=string
]

{ #category : #getset }
BPInvoke >> outputVariable [ 
^ outputVariable
]

{ #category : #getset }
BPInvoke >> outputVariable:string [
 outputVariable:=string
]

{ #category : #getset }
BPInvoke >> partnerLink [
^ partnerLink
]

{ #category : #getset }
BPInvoke >> partnerLink: string [
	partnerLink :=string
]

{ #category : #getset }
BPInvoke >> portType [ 
^ portType
]

{ #category : #getset }
BPInvoke >> portType: string [
	portType :=string.
]

{ #category : #query }
BPInvoke >> processInvoke [
	"Return all BPProcess to be invoke"
	"find the link of the invoke and ask for the your incoming relation"
	^ self link callRelations.
]
