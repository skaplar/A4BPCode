Class {
	#name : #BPWSDLElement,
	#superclass : #BPWSDLObject,
	#category : #'A4BP-WSDL-core-model'
}

{ #category : #'as yet unclassified' }
BPWSDLElement class >> annotation [
<MSEClass: #BPWSDLElement  super: #BPWSDLObject >
<package: #'A4BP-WSDL-core' >
]

{ #category : #visitor }
BPWSDLElement >> accept: aVisitor [
	^ aVisitor visitBPWSDLElement: self
]
