"
A BPSimCostBuilder is xxxxxxxxx.

"
Class {
	#name : #BPSimCostBuilder,
	#superclass : #BPSimAbstractBuilder,
	#category : #'A4BP-SimEngine-core-builder'
}

{ #category : #'as yet unclassified' }
BPSimCostBuilder class >> newElementParameters [
	| tp |
	tp := BPSimCostParameters new.	
	tp	fixedCost:(self buildConstantParameters: 1 subClass: BPSimNumericParameter).
	tp unitCost:(self buildConstantParameters: 1 subClass: BPSimNumericParameter).
	^ tp
]

{ #category : #'as yet unclassified' }
BPSimCostBuilder >> buildParameter: e [
	| ep |
	ep := self currentScenario getParameterAt: e.
	ep resourceParameters.
	self currentScenario addElementParameters: ep.
	^ ep resourceParameters
]

{ #category : #'as yet unclassified' }
BPSimCostBuilder >> f: f [
	^ self fixedCost: f

]

{ #category : #'as yet unclassified' }
BPSimCostBuilder >> fixedCost: f [
	^ currentParameter costParameters fixedCost parameterValue: f

]

{ #category : #'as yet unclassified' }
BPSimCostBuilder >> u: u [
	^ self unitCost: u
]

{ #category : #'as yet unclassified' }
BPSimCostBuilder >> unitCost: u [
	^ currentParameter costParameters unitCost parameterValue: u
]
