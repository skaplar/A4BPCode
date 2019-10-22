Class {
	#name : #A4BPSOAContextTest,
	#superclass : #A4BPAbstractTest,
	#category : #'A4BP-Tests-core-model'
}

{ #category : #'tests-creator' }
A4BPSOAContextTest >> testBuildRelations [
	'
	|toTest v|
	toTest := A4BPSOAContext createBaseOnPath: A4BPSourceRemoteRepository pathJavaCaps.
	toTest buildRelations.
	toTest allElements size > 0.
	'
]

{ #category : #test }
A4BPSOAContextTest >> testcreateBaseOnPath [
	'
	|toTest v|
	toTest := A4BPSOAContext createBaseOnPath: A4BPSourceRemoteRepository pathBobSoa.
	v:= toTest lstBPMN20.
	self assert: v size > 0.
	'
]
