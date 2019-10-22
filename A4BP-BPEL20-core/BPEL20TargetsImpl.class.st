Class {
	#name : #BPEL20TargetsImpl,
	#superclass : #BPEL20BPELExtensibleElementImpl,
	#instVars : [
		'children',
		'joinCondition'
	],
	#category : #'A4BP-BPEL20-core-model'
}

{ #category : #'as yet unclassified' }
BPEL20TargetsImpl class >> annotation [
<MSEClass: #BPEL20TargetsImpl  super: #BPEL20BPELExtensibleElementImpl >
<package: #'A4BP-BPEL20-core' >
]

{ #category : #'as yet unclassified' }
BPEL20TargetsImpl >> children [
^ children
]

{ #category : #'as yet unclassified' }
BPEL20TargetsImpl >> children: achildren [
^ children := achildren
]

{ #category : #'as yet unclassified' }
BPEL20TargetsImpl >> joinCondition [
^ joinCondition
]

{ #category : #'as yet unclassified' }
BPEL20TargetsImpl >> joinCondition: ajoinCondition [
^ joinCondition := ajoinCondition
]
