Class {
	#name : #BPSimResourceParameters,
	#superclass : #BPSimAbstractParameters,
	#instVars : [
		'availability',
		'role',
		'selection',
		'quantity'
	],
	#category : #'A4BP-SimEngine-core-model'
}

{ #category : #'as yet unclassified' }
BPSimResourceParameters class >> annotation [
<MSEClass: #BPSimResourceParameters  super: #BPSimAbstractParameters >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #visitor }
BPSimResourceParameters >> accept: aVisitor [
	^ aVisitor visitBPSimResourceParameters: self
]

{ #category : #accessing }
BPSimResourceParameters >> availability [
^ availability
]

{ #category : #accessing }
BPSimResourceParameters >> availability: aavailability [
^ availability := aavailability
]

{ #category : #accessing }
BPSimResourceParameters >> quantity [
^ quantity
]

{ #category : #accessing }
BPSimResourceParameters >> quantity: aquantity [
^ quantity := aquantity
]

{ #category : #accessing }
BPSimResourceParameters >> role [
^ role
]

{ #category : #accessing }
BPSimResourceParameters >> role: arole [
^ role := arole
]

{ #category : #accessing }
BPSimResourceParameters >> selection [
^ selection
]

{ #category : #accessing }
BPSimResourceParameters >> selection: aselection [
^ selection := aselection
]
