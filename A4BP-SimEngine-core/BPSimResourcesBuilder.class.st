"
A BPSimResourcesBuilder is xxxxxxxxx.

"
Class {
	#name : #BPSimResourcesBuilder,
	#superclass : #BPSimAbstractBuilder,
	#category : #'A4BP-SimEngine-core-builder'
}

{ #category : #'as yet unclassified' }
BPSimResourcesBuilder class >> newElementParameters [
	| tp roles|
	tp := BPSimResourceParameters new.	
	"availability role selection quantity"
	tp availability: (self buildConstantParameters: 0 subClass: BPSimDurationParameter).
	"role is a list of parameters"
	roles := A4BPCollection new.
	roles add:(self buildConstantParameters: 0 subClass: BPSimDurationParameter).
	tp role: roles.
	tp selection: (self buildConstantParameters: 0 subClass: BPSimDurationParameter).
	tp quantity: (self buildConstantParameters: 0 subClass: BPSimDurationParameter).

	^ tp
]

{ #category : #'as yet unclassified' }
BPSimResourcesBuilder >> buildParameter: e [
	| ep |
	ep := self currentScenario getParameterAt: e.
	ep resourceParameters.
	self currentScenario addElementParameters: ep.
	^ ep resourceParameters
]

{ #category : #'as yet unclassified' }
BPSimResourcesBuilder >> q: q [
	^ self quantity: q

]

{ #category : #'as yet unclassified' }
BPSimResourcesBuilder >> quantity: q [
	^ currentParameter resourceParameters quantity parameterValue: q

]

{ #category : #'as yet unclassified' }
BPSimResourcesBuilder >> quantity: anParameter inElementId: anElemementId [
	|element|
	element := processModel findElementById: anElemementId.
	^ self quantityParameterOn: element parameterValue: anParameter.

]

{ #category : #'as yet unclassified' }
BPSimResourcesBuilder >> quantity: anParameter inElementName: anElementName [
	|element|
	element := processModel findElementByName: anElementName.
	^ self quantityParameterOn: element parameterValue: anParameter.

]

{ #category : #'as yet unclassified' }
BPSimResourcesBuilder >> quantityOn: element parameterValue: p [
	| ep |
	self processingParameters: (Array with: element).
	ep := currentScenario getParameterAt: element.
	ep resourceParameters quantity parameterValue: p.
	^ ep
]

{ #category : #'as yet unclassified' }
BPSimResourcesBuilder >> quantityParameterOn: element parameterValue: p [
	^ self quantityOn: element parameterValue: p
]
