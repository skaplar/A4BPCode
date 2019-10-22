Class {
	#name : #BPSimParameter,
	#superclass : #BPSimObject,
	#instVars : [
		'kpi',
		'sla',
		'parameterValue',
		'resultRequest'
	],
	#category : #'A4BP-SimEngine-core-model'
}

{ #category : #'as yet unclassified' }
BPSimParameter class >> annotation [
<MSEClass: #BPSimParameter  super: #BPSimObject >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #'as yet unclassified' }
BPSimParameter class >> detectBPSimParameterIn: aModel from: document [
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
BPSimParameter class >> detectBPSimResultRequestIn: aModel from: document [
	document nodes
		do: [ :docAtr | 
			| vars typeName bpElement |
			typeName := docAtr localName.
			vars := self instanceVariables select: [ :v | v asUppercase = typeName asUppercase ].
			vars
				do: [ :v | 
					docAtr nodes
						do: [ :n | 
							| refTag parameter subTypeName|
							subTypeName := n localName.
							refTag := self findBPSimParameterClassTagRef: subTypeName.
							parameter := refTag objclass fromXMLDescription: n in: aModel.
							bpElement setUsingReflection: typeName obj: bpElement.
							bpElement := refTag objclass fromXMLDescription: n in: aModel ] ].
			aModel setUsingReflection: typeName obj: bpElement ]
]

{ #category : #'as yet unclassified' }
BPSimParameter class >> fillElementsIn: aModel from: document [
	|visitor|
	visitor := BPSimParserBPSimParameterVisitor new.
	visitor element: aModel.
	
	aModel kpi: (self readString: document at: 'kpi').
	aModel sla: (self readString: document at: 'sla').
	
	self fillElementsIn: aModel from: document visitor: visitor.

]

{ #category : #'as yet unclassified' }
BPSimParameter >> accept: aVisitor [
	^ aVisitor visitBPSimParameter: self
]

{ #category : #dsl }
BPSimParameter >> calculate: anParameter [
	self parameterValue do: [ :p | p calculate: anParameter ]
]

{ #category : #dsl }
BPSimParameter >> count [
	^ self valueAtType: BPSimResultType COUNT
]

{ #category : #dsl }
BPSimParameter >> countv [
	^ self count v
]

{ #category : #'as yet unclassified' }
BPSimParameter >> kpi [
^ kpi
]

{ #category : #'as yet unclassified' }
BPSimParameter >> kpi: akpi [
 kpi := akpi
]

{ #category : #dsl }
BPSimParameter >> max [
	^ self valueAtType: BPSimResultType MAX
]

{ #category : #dsl }
BPSimParameter >> maxv [
	^ self max v
]

{ #category : #dsl }
BPSimParameter >> mean [
	^ self valueAtType: BPSimResultType MEAN
]

{ #category : #dsl }
BPSimParameter >> meanv [
	^ self meanv
]

{ #category : #dsl }
BPSimParameter >> min [
	^ self valueAtType: BPSimResultType MIN
]

{ #category : #dsl }
BPSimParameter >> minv [
	^ self min v
]

{ #category : #'as yet unclassified' }
BPSimParameter >> parameterValue [
	^ parameterValue
]

{ #category : #'as yet unclassified' }
BPSimParameter >> parameterValue: aparameterValue [
 parameterValue := aparameterValue
]

{ #category : #'as yet unclassified' }
BPSimParameter >> parameterValues [
	^ parameterValue values
]

{ #category : #'as yet unclassified' }
BPSimParameter >> resultRequest [
^ resultRequest
]

{ #category : #'as yet unclassified' }
BPSimParameter >> resultRequest: aresultRequest [
^ resultRequest := aresultRequest
]

{ #category : #'as yet unclassified' }
BPSimParameter >> sla [
^ sla
]

{ #category : #'as yet unclassified' }
BPSimParameter >> sla: asla [
 sla := asla
]

{ #category : #dsl }
BPSimParameter >> sum [
	^ self valueAtType: BPSimResultType SUM
]

{ #category : #dsl }
BPSimParameter >> sumv [
	^ self sum v
]

{ #category : #dsl }
BPSimParameter >> v [
	^ self valueResult
]

{ #category : #dsl }
BPSimParameter >> valueAtType: stringTypeValue [
	[ 
		parameterValue isCollection ifTrue:[
			^ parameterValue at: stringTypeValue 	
			] ifFalse:[
			^ parameterValue
			].
		
	]
		on: Error
		do: [ 
			|cp| 
			cp := BPSimNumericParameter new.
			cp value:0.
			cp result: BPSimResultTypeVALUE new.
			^ cp ]
]

{ #category : #dsl }
BPSimParameter >> valueResult [
	^ self valueAtType: BPSimResultType VALUE
]

{ #category : #dsl }
BPSimParameter >> vv [
	^ self v v
]
