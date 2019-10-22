"
A BPDefFinderVisitor is xxxxxxxxx.

Instance Variables
	defType:		<Object>
	returnElement:		<Object>

defType
	- xxxxx

returnElement
	- xxxxx

"
Class {
	#name : #BPDefFinderVisitor,
	#superclass : #A4BPAbstractVisitor,
	#instVars : [
		'defType',
		'returnElement'
	],
	#category : #'A4BP-BpelAnalyzer-core-biz-actions'
}

{ #category : #'as yet unclassified' }
BPDefFinderVisitor class >> annotation [
<MSEClass: #BPDefFinderVisitor  super: #A4BPAbstractVisitor >
<package: #'A4BP-BpelAnalyzer-core' >
]

{ #category : #action }
BPDefFinderVisitor >> findDef: aDef In: aCollection [
	defType := aDef.
	aCollection
		do: [ :el | 
			el accept: self.
			returnElement isBPEmtyObj ifFalse: [ ^ self returnElement ] ].
	^ self returnElement
]

{ #category : #initialization }
BPDefFinderVisitor >> initialize [
	super initialize.
	returnElement:= A4BPEmptyObj instance.
]

{ #category : #action }
BPDefFinderVisitor >> returnElement [
	^ returnElement
]

{ #category : #visitor }
BPDefFinderVisitor >> visitBPWSDLwsdl: aBPWSDLwsdl [
	aBPWSDLwsdl targetNamespace = defType nameSpace
		ifTrue: [ ^ returnElement := aBPWSDLwsdl findDefType: defType].
	^ returnElement := A4BPEmptyObj instance.
]

{ #category : #visitor }
BPDefFinderVisitor >> visitBPXSDSchema: aBPXSDSchema [
	aBPXSDSchema targetNamespace = defType nameSpace
		ifTrue: [ ^ returnElement := aBPXSDSchema findDefType: defType].
	^ returnElement := A4BPEmptyObj instance.
]
