Class {
	#name : #BPWSDLPort,
	#superclass : #BPWSDLObject,
	#category : #'A4BP-WSDL-core-model'
}

{ #category : #'as yet unclassified' }
BPWSDLPort class >> annotation [
<MSEClass: #BPWSDLPort  super: #BPWSDLObject >
<package: #'A4BP-WSDL-core' >
]

{ #category : #visitor }
BPWSDLPort >> accept: aVisitor [
	^ aVisitor visitBPWSDLPort: self
]
