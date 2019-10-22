Class {
	#name : #BPEL20IfImpl,
	#superclass : #BPEL20ActivityImpl,
	#instVars : [
		'activity',
		'else_',
		'condition',
		'elseIf'
	],
	#category : #'A4BP-BPEL20-core-model'
}

{ #category : #'as yet unclassified' }
BPEL20IfImpl class >> annotation [
<MSEClass: #BPEL20IfImpl  super: #BPEL20ActivityImpl >
<package: #'A4BP-BPEL20-core' >
]

{ #category : #'as yet unclassified' }
BPEL20IfImpl >> activity [
^ activity
]

{ #category : #'as yet unclassified' }
BPEL20IfImpl >> activity: aactivity [
^ activity := aactivity
]

{ #category : #'as yet unclassified' }
BPEL20IfImpl >> condition [
^ condition
]

{ #category : #'as yet unclassified' }
BPEL20IfImpl >> condition: acondition [
^ condition := acondition
]

{ #category : #'as yet unclassified' }
BPEL20IfImpl >> elseIf [
^ elseIf
]

{ #category : #'as yet unclassified' }
BPEL20IfImpl >> elseIf: aelseIf [
^ elseIf := aelseIf
]

{ #category : #'as yet unclassified' }
BPEL20IfImpl >> else_ [
^ else_
]

{ #category : #'as yet unclassified' }
BPEL20IfImpl >> else_: aelse_ [
^ else_ := aelse_
]
