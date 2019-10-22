Class {
	#name : #BPSimVendorExtension,
	#superclass : #BPSimObject,
	#instVars : [
		'any',
		'name',
		'otherAttributes'
	],
	#category : #'A4BP-SimEngine-core-model'
}

{ #category : #'as yet unclassified' }
BPSimVendorExtension class >> annotation [
<MSEClass: #BPSimVendorExtension  super: #BPSimObject >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #'as yet unclassified' }
BPSimVendorExtension class >> fromXMLDescription: xmlDescription [
]

{ #category : #visitor }
BPSimVendorExtension >> accept: aVisitor [
	^ aVisitor visitBPSimVendorExtension: self
]

{ #category : #accessing }
BPSimVendorExtension >> any [
^ any
]

{ #category : #accessing }
BPSimVendorExtension >> any: aany [
^ any := aany
]

{ #category : #accessing }
BPSimVendorExtension >> otherAttributes [
^ otherAttributes
]

{ #category : #accessing }
BPSimVendorExtension >> otherAttributes: aotherAttributes [
^ otherAttributes := aotherAttributes
]
