Class {
	#name : #BPWSDLDocumentation,
	#superclass : #BPWSDLObject,
	#category : #'A4BP-WSDL-core-model'
}

{ #category : #'as yet unclassified' }
BPWSDLDocumentation class >> annotation [
<MSEClass: #BPWSDLDocumentation  super: #BPWSDLObject >
<package: #'A4BP-WSDL-core' >
]

{ #category : #visitor }
BPWSDLDocumentation >> accept: aVisitor [
	^ aVisitor visitBPWSDLDocumentation: self
]
