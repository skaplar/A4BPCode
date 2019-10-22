Class {
	#name : #BPEL20CompletionConditionImpl,
	#superclass : #BPEL20BPELExtensibleElementImpl,
	#instVars : [
		'branches'
	],
	#category : #'A4BP-BPEL20-core-model'
}

{ #category : #'as yet unclassified' }
BPEL20CompletionConditionImpl class >> annotation [
<MSEClass: #BPEL20CompletionConditionImpl  super: #BPEL20BPELExtensibleElementImpl >
<package: #'A4BP-BPEL20-core' >
]

{ #category : #'as yet unclassified' }
BPEL20CompletionConditionImpl >> branches [
^ branches
]

{ #category : #'as yet unclassified' }
BPEL20CompletionConditionImpl >> branches: abranches [
^ branches := abranches
]
