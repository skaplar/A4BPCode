Class {
	#name : #BPSimParserBPSimCalendarVisitor,
	#superclass : #BPSimParserAbstractVisitor,
	#category : #'A4BP-SimEngine-core-parser-builder-visitors'
}

{ #category : #'as yet unclassified' }
BPSimParserBPSimCalendarVisitor class >> annotation [
<MSEClass: #BPSimParserBPSimCalendarVisitor  super: #BPSimParserAbstractVisitor >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #'as yet unclassified' }
BPSimParserBPSimCalendarVisitor >> visitBPSimCalendar: aElement [
	^ self visitBPSimObject: aElement
]
