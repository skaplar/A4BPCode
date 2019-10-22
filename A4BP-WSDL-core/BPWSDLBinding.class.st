Class {
	#name : #BPWSDLBinding,
	#superclass : #BPWSDLObject,
	#category : #'A4BP-WSDL-core-model'
}

{ #category : #'as yet unclassified' }
BPWSDLBinding class >> annotation [
<MSEClass: #BPWSDLBinding  super: #BPWSDLObject >
<package: #'A4BP-WSDL-core' >
]

{ #category : #visitor }
BPWSDLBinding >> accept: aVisitor [
	^ aVisitor visitBPWSDLBinding:self.
]
