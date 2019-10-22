Class {
	#name : #BPSimParserBPSimVendorExtensionVisitor,
	#superclass : #BPSimParserAbstractVisitor,
	#category : #'A4BP-SimEngine-core-parser-builder-visitors'
}

{ #category : #'as yet unclassified' }
BPSimParserBPSimVendorExtensionVisitor class >> annotation [
<MSEClass: #BPSimParserBPSimVendorExtensionVisitor  super: #BPSimParserAbstractVisitor >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #'as yet unclassified' }
BPSimParserBPSimVendorExtensionVisitor >> visitBPSimVendorExtension: aElement [
	^ self visitBPSimObject: aElement
]
