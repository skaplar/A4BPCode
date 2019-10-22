Class {
	#name : #BPWSDLOperation,
	#superclass : #BPWSDLObject,
	#category : #'A4BP-WSDL-core-model'
}

{ #category : #'as yet unclassified' }
BPWSDLOperation class >> annotation [
<MSEClass: #BPWSDLOperation  super: #BPWSDLObject >
<package: #'A4BP-WSDL-core' >
]

{ #category : #visitor }
BPWSDLOperation >> accept: aVisitor [
	^ aVisitor visitBPWSDLOperation: self
]
