"
A BPWSDLObject is base of representation of entity who.
 represent a wsdl elements
"
Class {
	#name : #BPWSDLObject,
	#superclass : #A4BPObject,
	#instVars : [
		'myWSDL',
		'fileName',
		'fullPath'
	],
	#category : #'A4BP-WSDL-core-model'
}

{ #category : #'as yet unclassified' }
BPWSDLObject class >> annotation [
<MSEClass: #BPWSDLObject  super: #A4BPObject >
<package: #'A4BP-WSDL-core' >
]

{ #category : #parser }
BPWSDLObject class >> fillElementsIn: aBPObject from: document visitor: visitor [
	self fillElementsIn: aBPObject from: document visitor: visitor tagRef:BPParserWSDLTagsXMLRef
]

{ #category : #visitor }
BPWSDLObject >> accept: aVisitor [
	^ aVisitor visitBPWSDLObject: self
]

{ #category : #accessing }
BPWSDLObject >> fileName [
	^ fileName
]

{ #category : #accessing }
BPWSDLObject >> fileName: anObject [
	fileName := anObject
]

{ #category : #accessing }
BPWSDLObject >> fullPath [
	^ fullPath
]

{ #category : #accessing }
BPWSDLObject >> fullPath: anObject [
	fullPath := anObject
]

{ #category : #accessing }
BPWSDLObject >> myWSDL: anObject [
	^ myWSDL := anObject
]

{ #category : #getset }
BPWSDLObject >> parent: aParent [
	super parent: aParent.
	[ myWSDL := aParent wsdl ]
		on: Error
		do: [  ]
]

{ #category : #getset }
BPWSDLObject >> wsdl [
	^ myWSDL
]
