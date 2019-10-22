Class {
	#name : #BPSimResultTypeVALUE,
	#superclass : #BPSimResultType,
	#category : #'A4BP-SimEngine-core-model'
}

{ #category : #'as yet unclassified' }
BPSimResultTypeVALUE class >> annotation [
<MSEClass: #BPSimResultTypeVALUE  super: #BPSimResultType >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #'as yet unclassified' }
BPSimResultTypeVALUE class >> type [
	^ 'VALUE'
]

{ #category : #accessing }
BPSimResultTypeVALUE >> calculate: result [
	value := result nextValue
]
