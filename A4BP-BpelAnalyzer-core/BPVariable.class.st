"
A BPVariable is 

Instance Variables
	messageType:
	type:
	element:
	lstRelations: <collection with the information of all relations>
	xsdModel: representation fo xsdModel to use in this variable

"
Class {
	#name : #BPVariable,
	#superclass : #BPBPELObject,
	#instVars : [
		'messageType',
		'simpleType',
		'elementType',
		'lstRelations',
		'xsdType'
	],
	#category : #'A4BP-BpelAnalyzer-core-model-bpel'
}

{ #category : #parser }
BPVariable class >> annotation [
<MSEClass: #BPVariable  super: #BPBPELObject >
<package: #'A4BP-BpelAnalyzer-core' >
]

{ #category : #parser }
BPVariable class >> fillElementsIn: aBPObj from: document [
	aBPObj messageType: (self readString: document at: 'messageType').
	aBPObj simpleType: (self readString: document at: 'type').
	aBPObj elementType: (self readString: document at: 'element').
]

{ #category : #visitor }
BPVariable >> accept: aVisitor [
	^ aVisitor visitBPVariable: self
]

{ #category : #adding }
BPVariable >> addRelation: aRelation [
	self lstRelations at: (aRelation aName) put: aRelation
]

{ #category : #all }
BPVariable >> allElements [
	"list of elements if showDef find null xsdType then start find description"
	|lst|
	lst :=OrderedCollection new.
	"self showDef expect a BPXSDElement"
	lst addAll: self showDef allElements.
	^ lst
]

{ #category : #getset }
BPVariable >> allRelations [
	^ lstRelations
]

{ #category : #'build-relations' }
BPVariable >> buildMeMyDefBaseOnBPWSDL: aBPWsdl [
	"This message supose that this wsdl have a information of my definition,
	their start find the information of the definition in the wsdl model".
	"myDocument 
	messageType "

]

{ #category : #'build-relations' }
BPVariable >> buildRelationsBpWsdls: aBPWsdl [
	"when a variable recive a wsdl they need to know the target namespace to decide if this
	wsdl have the definition of the content in the variable"
	| pos |
	pos := text findString: aBPWsdl targetNamespace.
	" if true if because the wsdl have the definition of the variable composition"
	pos > 0 ifTrue: [ self buildMeMyDefBaseOnBPWSDL: aBPWsdl ].
]

{ #category : #getset }
BPVariable >> elementType [
	^ elementType 
]

{ #category : #getset }
BPVariable >> elementType: aElementType [
	elementType  := aElementType
]

{ #category : #initialization }
BPVariable >> initialize [
	super initialize.
	lstRelations := Dictionary new.
]

{ #category : #metrics }
BPVariable >> invokes [
	| v |
	v := BPMetricBPInvokeActivities new.
	self lstRelations do: [ :rel | rel accept: v ].
	^ v lstActivities
]

{ #category : #getset }
BPVariable >> lstRelations [
	^ lstRelations
]

{ #category : #getset }
BPVariable >> messageType [
	^ messageType
]

{ #category : #getset }
BPVariable >> messageType: aMsg [
	messageType := aMsg
]

{ #category : #metrics }
BPVariable >> numberOfInvokes [
	| v number |
	v := BPMetricBPInvokeActivities new.
	number := 0.
	self lstRelations do: [ :rel | rel accept: v ].
	number := v numberOfActivities.
	^ number
]

{ #category : #metrics }
BPVariable >> numberOfRelations [
	^ self numberOfInvokes.
]

{ #category : #'build-relations' }
BPVariable >> showDef [
	"this message find the variable definition"
	(xsdType = nil or: xsdType = A4BPEmptyObj instance )
		ifTrue: [ xsdType := myProcess findDefBPVariableType: (BPGenericType newGenericType: self) ].
	^ xsdType
]

{ #category : #getset }
BPVariable >> simpleType [
	^ simpleType 
]

{ #category : #getset }
BPVariable >> simpleType: aSimpleType [
	simpleType := aSimpleType
]

{ #category : #getset }
BPVariable >> stType [
 	'' = simpleType ifFalse:[
		^ simpleType.		
	].
	'' = messageType ifFalse:[
		^ messageType.
	].
	'' = elementType ifFalse:[
		^ elementType.
	].
	"by default a very simple example of type"
	^ 'xsd:String'.
]

{ #category : #getset }
BPVariable >> type [
 	^ xsdType
]

{ #category : #getset }
BPVariable >> variableName [
	^ aName
]
