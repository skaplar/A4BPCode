Class {
	#name : #BPWSDLPortType,
	#superclass : #BPWSDLObject,
	#category : #'A4BP-WSDL-core-model'
}

{ #category : #'as yet unclassified' }
BPWSDLPortType class >> annotation [
<MSEClass: #BPWSDLPortType  super: #BPWSDLObject >
<package: #'A4BP-WSDL-core' >
]

{ #category : #visitor }
BPWSDLPortType >> accept: aVisitor [
	^ aVisitor visitBPWSDLPortType: self
]
