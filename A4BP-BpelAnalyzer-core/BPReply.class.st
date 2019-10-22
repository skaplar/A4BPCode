"
A BPReply class is xxxxxxxxx.


reply:- Used to send a response to a request previously accepted through a receive activity.
"
Class {
	#name : #BPReply,
	#superclass : #BPActivityBasic,
	#instVars : [
		'partnerLink',
		'bpPartnerLink'
	],
	#category : #'A4BP-BpelAnalyzer-core-model-bpel'
}

{ #category : #'as yet unclassified' }
BPReply class >> annotation [
<MSEClass: #BPReply  super: #BPActivityBasic >
<package: #'A4BP-BpelAnalyzer-core' >
]

{ #category : #'as yet unclassified' }
BPReply class >> fromXMLDescription: document [
	| bpAct |
	bpAct := self new.
	self fromXMLDescription: document fromAct: bpAct.
	^ bpAct
]

{ #category : #visitor }
BPReply >> accept: aVisitor [
	^ aVisitor visitBPReply: self
]

{ #category : #'as yet unclassified' }
BPReply >> bpPartnerLink [
	^ bpPartnerLink
]

{ #category : #'as yet unclassified' }
BPReply >> initialize [
	super initialize.
	partnerLink := ''.
	bpPartnerLink := A4BPEmptyObj instance.
]

{ #category : #'as yet unclassified' }
BPReply >> partnerLink [
^ partnerLink
]

{ #category : #'as yet unclassified' }
BPReply >> partnerLink: apartnerLink [
 partnerLink := apartnerLink 
]
