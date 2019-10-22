"
A BPPartnerLink is 

Instance Variables
	bpProcess:		<Object>
	bpwsdl:		<Object>
	lstRelations:		<Object>
	myRole:		<Object>
	partnerLinkType:		<Object>
	partnerRole:		<Object>

bpProcess
	- xxxxx

bpwsdl
	- xxxxx

lstRelations
	- xxxxx

myRole
	- xxxxx

partnerLinkType
	- xxxxx

partnerRole
	- xxxxx

"
Class {
	#name : #BPPartnerLink,
	#superclass : #BPBPELObject,
	#traits : 'TBPRelations',
	#classTraits : 'TBPRelations classTrait',
	#instVars : [
		'partnerLinkType',
		'partnerRole',
		'myRole',
		'lstRelations',
		'bpProcess',
		'bpwsdl'
	],
	#category : #'A4BP-BpelAnalyzer-core-model-bpel'
}

{ #category : #'as yet unclassified' }
BPPartnerLink class >> annotation [
<MSEClass: #BPPartnerLink  super: #BPBPELObject >
<package: #'A4BP-BpelAnalyzer-core' >
]

{ #category : #'as yet unclassified' }
BPPartnerLink class >> fromXMLDescription: docAtr in: parent [
	"The argument is a complete description of an XML process"

	| newplnk |
	"is an instante of on BPPartnerLink"
	newplnk := self new.
	self fillBData: docAtr in: newplnk.
	newplnk parent: parent.
	newplnk aName: (docAtr attributeAt: 'name').
	newplnk partnerLinkType: (docAtr attributeAt: 'partnerLinkType').
	newplnk partnerRole: (docAtr attributeAt: 'partnerRole').
	newplnk myRole: (docAtr attributeAt: 'myRole').
	^ newplnk
]

{ #category : #visitor }
BPPartnerLink >> accept: aVisitor [
	^ aVisitor visitBPPartnerLink:self.
]

{ #category : #'as yet unclassified' }
BPPartnerLink >> addRelation: aRelation [
	self lstRelations at: (aRelation aName) put: aRelation
]

{ #category : #relations }
BPPartnerLink >> bindWith:aBPProcess [

]

{ #category : #getset }
BPPartnerLink >> bpProcess [
	^ bpProcess
]

{ #category : #getset }
BPPartnerLink >> bpProcess: abpProcess [
	bpProcess := abpProcess
]

{ #category : #getset }
BPPartnerLink >> bpwsdl [
	^ bpwsdl.
]

{ #category : #relations }
BPPartnerLink >> buildRelations: aRelation [
	aRelation buildRelationsBpPartnerLink: self
]

{ #category : #relations }
BPPartnerLink >> buildRelationsBpPartnerLink: aRelbpPlnk [ 
]

{ #category : #relations }
BPPartnerLink >> buildRelationsBpWsdls: aRelBpWsdl [
	"If i have my wsdl relation i dont care other wsdl"
	bpwsdl = A4BPEmptyObj instance
		ifFalse: [ ^ self ].	
	"If my process have the relation finish"
	(A4BPEmptyObj instance equals:(bpProcess getRelationAt: aRelBpWsdl))
		ifFalse: [ ^ self ].
	(aRelBpWsdl haveLazyRefLikeAt: self)
		ifTrue: [ 
			bpwsdl := aRelBpWsdl.
			self buildRelationsWithMyBpProcess.
			bpProcess addRelation: aRelBpWsdl.
			bpwsdl buildRelationsBpPartnerLink: self ]
]

{ #category : #relations }
BPPartnerLink >> buildRelationsWithMyBpProcess [
	lstRelations do:[ :rel| rel buildRelationsBpProcess: bpProcess].
]

{ #category : #getset }
BPPartnerLink >> getChildrenNodes [
	^ lstRelations
]

{ #category : #'as yet unclassified' }
BPPartnerLink >> getRelationAt: aRelation [
	^ self getRelationAtName: aRelation aName
]

{ #category : #'as yet unclassified' }
BPPartnerLink >> getRelationAtName: pName [
	| rel |
	[ rel := self lstRelations at: pName ]
		on: KeyNotFound
		do: [ ^ A4BPEmptyObj instance ].
	^ rel
]

{ #category : #relations }
BPPartnerLink >> haveLazyRefLikeAt: aRef [
	^ aRef haveLazyRefLikeAt: self
]

{ #category : #question }
BPPartnerLink >> iHaveRelationWith: aRelation [
	^ (self getRelationAt: aRelation ) = aRelation.
]

{ #category : #initialize }
BPPartnerLink >> initialize [
	super initialize.
	lstRelations := IdentityDictionary new.
	bpwsdl := A4BPEmptyObj instance.
]

{ #category : #relations }
BPPartnerLink >> isARefOfWSDLPlnkType: awsdlplnkType [
	| bov toMatch |
	"bov:=awsdlplnkType doYouHaveRoleNameAt: myRole."
	toMatch := '*' , awsdlplnkType aName  , '*'.
	bov := toMatch match: partnerLinkType.
	^ bov
]

{ #category : #getset }
BPPartnerLink >> link [
	^ bpwsdl 
]

{ #category : #getset }
BPPartnerLink >> lstRelations [
	^ lstRelations
]

{ #category : #getset }
BPPartnerLink >> myRole [
	^ myRole
]

{ #category : #getset }
BPPartnerLink >> myRole: amyRole [
	myRole := amyRole
]

{ #category : #metrics }
BPPartnerLink >> numberOfInvokes [
^ 0
]

{ #category : #getset }
BPPartnerLink >> numberOfRef [
	^ self lstRelations size.
]

{ #category : #getset }
BPPartnerLink >> partnerLinkType [
	^ partnerLinkType
]

{ #category : #getset }
BPPartnerLink >> partnerLinkType: apartnerLinkType [
	partnerLinkType := apartnerLinkType
]

{ #category : #getset }
BPPartnerLink >> partnerRole [
^partnerRole
]

{ #category : #getset }
BPPartnerLink >> partnerRole:ppartnerRole [
	partnerRole:=ppartnerRole
]
