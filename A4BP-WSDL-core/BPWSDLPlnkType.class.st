Class {
	#name : #BPWSDLPlnkType,
	#superclass : #BPWSDLObject,
	#instVars : [
		'role'
	],
	#category : #'A4BP-WSDL-core-model'
}

{ #category : #'as yet unclassified' }
BPWSDLPlnkType class >> annotation [
<MSEClass: #BPWSDLPlnkType  super: #BPWSDLObject >
<package: #'A4BP-WSDL-core' >
]

{ #category : #builder }
BPWSDLPlnkType class >> fillElementsIn: aBPObj from: document [
	| visitor |
	visitor := BPBuilderSetNodesinBPWSDLPlnkTypeVisitor new.
	visitor element: aBPObj.
	self fillElementsIn: aBPObj from: document visitor: visitor.
	^ aBPObj
]

{ #category : #visitor }
BPWSDLPlnkType >> accept: aVisitor [
	^ aVisitor visitBPWSDLPlnkType: self
]

{ #category : #references }
BPWSDLPlnkType >> doYouHaveRoleNameAt: aRoleName [
	^ role aName = aRoleName
]

{ #category : #references }
BPWSDLPlnkType >> isARefOf: aRef [
	^ aRef isARefOfWSDLPlnkType: self
]

{ #category : #getset }
BPWSDLPlnkType >> role [
^ role
]

{ #category : #getset }
BPWSDLPlnkType >> role:pRole [
 role:=pRole
]
