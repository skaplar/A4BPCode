Class {
	#name : #BPSimCostParameters,
	#superclass : #BPSimAbstractParameters,
	#instVars : [
		'fixedCost',
		'unitCost'
	],
	#category : #'A4BP-SimEngine-core-model'
}

{ #category : #'as yet unclassified' }
BPSimCostParameters class >> annotation [
<MSEClass: #BPSimCostParameters  super: #BPSimAbstractParameters >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #visitor }
BPSimCostParameters >> accept: aVisitor [
	^ aVisitor visitBPSimCostParameters: self
]

{ #category : #accessing }
BPSimCostParameters >> fixedCost [
^ fixedCost
]

{ #category : #accessing }
BPSimCostParameters >> fixedCost: afixedCost [
^ fixedCost := afixedCost
]

{ #category : #accessing }
BPSimCostParameters >> unitCost [
^ unitCost
]

{ #category : #accessing }
BPSimCostParameters >> unitCost: aunitCost [
^ unitCost := aunitCost
]
