"
A BPPartnerLinks is container for each catch activity in a model.

Instance Variables
	bpProcess:		<Object>
	lstPartnerLinks:		<Object>

bpProcess
	- xxxxx

lstPartnerLinks
	- xxxxx

"
Class {
	#name : #BPPartnerLinks,
	#superclass : #BPBPELObject,
	#instVars : [
		'lstPartnerLinks',
		'bpProcess'
	],
	#category : #'A4BP-BpelAnalyzer-core-model-bpel'
}

{ #category : #parser }
BPPartnerLinks class >> annotation [
<MSEClass: #BPPartnerLinks  super: #BPBPELObject >
<package: #'A4BP-BpelAnalyzer-core' >
]

{ #category : #parser }
BPPartnerLinks class >> fillPartnertLinks: bpPartnertLinks from: document in: parent [
	| bpElement refTag typeName nodes |
	nodes := document nodes.
	nodes
		do: [ :docAtr | 
			typeName := docAtr name trim.
			typeName = '' ifFalse:[
				refTag := BPBPELParserTagsXMLRef getClassBPBaseOnTypeName: typeName.
				bpElement := refTag objclass fromXMLDescription: docAtr in: bpPartnertLinks.
				bpPartnertLinks addPartnerLink: bpElement
			]. 
		]
]

{ #category : #parser }
BPPartnerLinks class >> fromXMLDescription: document in: parent [
	| bpObj |
	bpObj := self new.
	bpObj parent: parent.
	bpObj bpProcess: parent.
	self fillPartnertLinks: bpObj from: document in: parent.
	^ bpObj
]

{ #category : #visitor }
BPPartnerLinks >> accept: aVisitor [
	^ aVisitor visitBPPartnerLinks: self
]

{ #category : #adding }
BPPartnerLinks >> addPartnerLink: aBPPartnertLink [
	lstPartnerLinks at: aBPPartnertLink aName put: aBPPartnertLink.
	aBPPartnertLink bpProcess: bpProcess
]

{ #category : #getset }
BPPartnerLinks >> bpProcess [
	^ bpProcess
]

{ #category : #getset }
BPPartnerLinks >> bpProcess: abpProcess [
	bpProcess := abpProcess
]

{ #category : #'build-relations' }
BPPartnerLinks >> buildRelationsBpWsdls: aRelation [
	lstPartnerLinks do: [ :plnk | plnk buildRelationsBpWsdls: aRelation ]
]

{ #category : #getset }
BPPartnerLinks >> getBPPartnerLinkName: aPlnkName [
	^ self partnerLinkAt: aPlnkName .
]

{ #category : #getset }
BPPartnerLinks >> getChildrenNodes [
	| nodes |
	nodes := OrderedCollection new.
	nodes addAll: lstPartnerLinks.
	^ nodes
]

{ #category : #initialization }
BPPartnerLinks >> initialize [
	super initialize.
	aName:='PartnerLinks'.
	lstPartnerLinks := Dictionary new.
]

{ #category : #getset }
BPPartnerLinks >> lstPartnerLinks [
	^ lstPartnerLinks
]

{ #category : #metric }
BPPartnerLinks >> numberOfPartnerLinks [
	^ lstPartnerLinks size
]

{ #category : #find }
BPPartnerLinks >> partnerLinkAt: aPlnkName [
	^ [ lstPartnerLinks detect: [ :v | v aName = aPlnkName ] ]
		on: NotFound
		do: [ ^ A4BPEmptyObj instance ]
]
