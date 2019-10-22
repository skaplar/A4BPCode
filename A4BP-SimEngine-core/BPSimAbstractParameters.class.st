Class {
	#name : #BPSimAbstractParameters,
	#superclass : #BPSimObject,
	#category : #'A4BP-SimEngine-core-model'
}

{ #category : #'as yet unclassified' }
BPSimAbstractParameters class >> annotation [
<MSEClass: #BPSimAbstractParameters  super: #BPSimObject >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #'as yet unclassified' }
BPSimAbstractParameters class >> detectBPSimParameterIn: aModel from: document [
	document nodes
		do: [ :docAtr | 
			| vars typeName bpElement |
			typeName := docAtr localName.
			bpElement := BPSimParameter new.
			vars := self instanceVariables select: [ :v | v asUppercase = typeName asUppercase ].
			vars
				do: [ :v | 
					docAtr nodes
						do: [ :n | 
							| refTag parameter subTypeName|
							"aModel parent elementRef = '_F9A272EE-D325-44CF-AFFC-4A615D2C9971' ifTrue:[self halt]."
							subTypeName := n localName.
							refTag := self findBPSimParameterClassTagRef: subTypeName.
							parameter := refTag objclass fromXMLDescription: n in: aModel.
							bpElement setUsingReflection: typeName obj: bpElement.
							bpElement := refTag objclass fromXMLDescription: n in: aModel ] ].
			aModel setUsingReflection: typeName obj: bpElement ]
]

{ #category : #'as yet unclassified' }
BPSimAbstractParameters class >> fillElementsIn: aModel from: document [
	| visitor|
	visitor := BPSimParserBPSimControlParametersVisitor new.
	visitor element: aModel.
	self fillElementsIn: aModel from: document visitor: visitor.
]

{ #category : #'as yet unclassified' }
BPSimAbstractParameters class >> findBPSimParameterClassTagRef: aClassName [
	| aTagRef |
	aTagRef := BPSimParserTagsXMLRef getClassBPBaseOnTypeName: aClassName.
	aTagRef isUnParser
		ifTrue: [ aTagRef := BPSimParserTagsXMLRef getClassBPBaseOnTypeName: 'Parameter' ].
	^ aTagRef
]
