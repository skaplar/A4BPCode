"
A BPIf class is xxxxxxxxx.


if :- Provides a construct to choose one activity among a collection of activities.

<if> 
<condition expressionLanguage=""anyURI""?>bool-expr</condition> 
	activity 
<elseif>* 
	<condition expressionLanguage=""anyURI""?>bool-expr</condition> 
	activity 
</elseif> 
<else>? 
	activity 
</else> 
</if>
"
Class {
	#name : #BPIf,
	#superclass : #BPActivityStructured,
	#instVars : [
		'lstBPElseIf'
	],
	#category : #'A4BP-BpelAnalyzer-core-model-bpel'
}

{ #category : #'as yet unclassified' }
BPIf class >> annotation [
<MSEClass: #BPIf  super: #BPActivityStructured >
<package: #'A4BP-BpelAnalyzer-core' >
]

{ #category : #'as yet unclassified' }
BPIf class >> fromXMLDescription: document [
	| bpAct |
	bpAct := self new.
	self fromXMLDescription: document fromAct: bpAct.
	^ bpAct
]

{ #category : #visitor }
BPIf >> accept: aVisitor [
	^ aVisitor visitBPIf: self
]

{ #category : #initialization }
BPIf >> initialize [
	lstBPElseIf :=OrderedCollection new.
]
