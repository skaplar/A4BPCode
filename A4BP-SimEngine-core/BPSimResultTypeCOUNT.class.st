Class {
	#name : #BPSimResultTypeCOUNT,
	#superclass : #BPSimResultType,
	#category : #'A4BP-SimEngine-core-model'
}

{ #category : #'as yet unclassified' }
BPSimResultTypeCOUNT class >> annotation [
<MSEClass: #BPSimResultTypeCOUNT  super: #BPSimResultType >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #'as yet unclassified' }
BPSimResultTypeCOUNT class >> type [
	^ 'COUNT'
]

{ #category : #accessing }
BPSimResultTypeCOUNT >> calculate: result [
	self increase
]

{ #category : #'as yet unclassified' }
BPSimResultTypeCOUNT >> increase [
	value := value + 1
]
