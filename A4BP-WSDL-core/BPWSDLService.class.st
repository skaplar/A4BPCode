Class {
	#name : #BPWSDLService,
	#superclass : #BPWSDLObject,
	#category : #'A4BP-WSDL-core-model'
}

{ #category : #'as yet unclassified' }
BPWSDLService class >> annotation [
<MSEClass: #BPWSDLService  super: #BPWSDLObject >
<package: #'A4BP-WSDL-core' >
]

{ #category : #visitor }
BPWSDLService >> accept: aVisitor [
	^ aVisitor visitBPWSDLService: self
]
