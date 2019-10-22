"
A BPOnMessage is xxxxxxxxx.

Instance Variables
	activity:		<Object>
	bpActivity:		<Object>
	partnerLink:		<Object>
	variable:		<Object>

activity
	- xxxxx

bpActivity
	- xxxxx

partnerLink
	- xxxxx

variable
	- xxxxx

"
Class {
	#name : #BPOnMessage,
	#superclass : #BPOnMsgCommon,
	#instVars : [
		'activity',
		'variable',
		'partnerLink',
		'bpActivity'
	],
	#category : #'A4BP-BpelAnalyzer-core-model-bpel'
}

{ #category : #parser }
BPOnMessage class >> annotation [
<MSEClass: #BPOnMessage  super: #BPOnMsgCommon >
<package: #'A4BP-BpelAnalyzer-core' >
]

{ #category : #parser }
BPOnMessage class >> fillElementsIn: bpOnMsg from: document [
	| visitor |
	visitor := BPBuilderSetNodesinBPOnMessageVisitor new.
	
	bpOnMsg variable: (self readString: document at: 'variable').
	bpOnMsg partnerLink: (self readString: document at: 'partnerLink').
	bpOnMsg portType: (self readString: document at: 'portType').
	bpOnMsg operation: (self readString: document at: 'operation').
	
	
	visitor element: bpOnMsg.
	self fillElementsIn: bpOnMsg from:document visitor: visitor.
]

{ #category : #parser }
BPOnMessage class >> fromXMLDescription: document in: parent [
	| bpObj |
	bpObj := super fromXMLDescription: document in: parent.
	"3 add the object in the father"
	parent addOnMessage: bpObj.
	^ bpObj
]

{ #category : #visitor }
BPOnMessage >> accept: aVisitor [
	^ aVisitor visitBPOnMessage: self
]

{ #category : #getset }
BPOnMessage >> activity [ 
	^ activity 
	
]

{ #category : #accessing }
BPOnMessage >> activity: anObject [
	activity := anObject
]

{ #category : #visitor }
BPOnMessage >> addActivity: act [
	bpActivity := act
]

{ #category : #getset }
BPOnMessage >> bpActivity [
	^ bpActivity
]

{ #category : #parser }
BPOnMessage >> fillMeFrom: document [
	"bpVariable variable bpPartnerLink partnerLink bpPortType portType operation bpActivity"

	variable := document attributeAt: BPParserTagsXMLRef atrVariable.
	partnerLink := document attributeAt: BPParserTagsXMLRef atrPartnerLink.
	portType := document attributeAt: BPParserTagsXMLRef atrPortType.
	operation := document attributeAt: BPParserTagsXMLRef atrOperation
]

{ #category : #getset }
BPOnMessage >> partnerLink [
	^ partnerLink
]

{ #category : #accessing }
BPOnMessage >> partnerLink: anObject [
	partnerLink := anObject
]

{ #category : #getset }
BPOnMessage >> variable [
	^ variable
]

{ #category : #accessing }
BPOnMessage >> variable: anObject [
	variable := anObject
]
