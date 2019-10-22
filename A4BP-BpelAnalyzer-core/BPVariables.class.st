"
A BPVariables is a container of variables.

Instance Variables
	lstVariables:		<Object>

lstVariables
	- xxxxx

"
Class {
	#name : #BPVariables,
	#superclass : #BPBPELObject,
	#instVars : [
		'lstVariables'
	],
	#category : #'A4BP-BpelAnalyzer-core-model-bpel'
}

{ #category : #parser }
BPVariables class >> annotation [
<MSEClass: #BPVariables  super: #BPBPELObject >
<package: #'A4BP-BpelAnalyzer-core' >
]

{ #category : #parser }
BPVariables class >> fillVariables: bpVariables from: document in: parent [
	| bpElement refTag typeName nodes |
	nodes := document nodes.
	nodes
		do: [ :docAtr | 
			typeName := docAtr name trim.
			typeName = '' ifFalse:[
				refTag := BPBPELParserTagsXMLRef getClassBPBaseOnTypeName: typeName.
				bpElement := refTag objclass fromXMLDescription: docAtr in: bpVariables.
				bpVariables addVariable: bpElement
			]. 
		]
]

{ #category : #parser }
BPVariables class >> fromXMLDescription: document in: parent [
	| aBPObj |
	aBPObj := self new.
	aBPObj parent: parent.
	self fillBData: document in: aBPObj.
	aBPObj aName: 'variables'.
	self fillVariables: aBPObj from: document in: parent.
	^ aBPObj
]

{ #category : #visitor }
BPVariables >> accept: aVisitor [
	^ aVisitor visitBPVariables: self
]

{ #category : #adding }
BPVariables >> addVariable: aBPVariable [
	lstVariables at: aBPVariable aName put: aBPVariable
]

{ #category : #'build-relations' }
BPVariables >> buildRelationsBpWsdls: aRelation [
	lstVariables do: [ :v | v buildRelationsBpWsdls: aRelation ]
]

{ #category : #getset }
BPVariables >> getChildrenNodes [
	| nodes |
	nodes := OrderedCollection new.
	nodes addAll: lstVariables.
	^ nodes
]

{ #category : #initialization }
BPVariables >> initialize [
	super initialize.
	aName:='Variables'.
	lstVariables := Dictionary new.
	
]

{ #category : #getset }
BPVariables >> lstVariables [
	^ lstVariables
]

{ #category : #metric }
BPVariables >> numberOfVariables [
	^ lstVariables size
]

{ #category : #find }
BPVariables >> variableAt: aVariableName [
	[ ^ lstVariables at: aVariableName ]
		on: Error
		do: [ ^ A4BPEmptyObj instance ]
]
