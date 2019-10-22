Class {
	#name : #A4BPUIMainModel,
	#superclass : #Object,
	#category : #'A4BP-View-UI'
}

{ #category : #'as yet unclassified' }
A4BPUIMainModel class >> buildMainModel [
	^ self new
]

{ #category : #init }
A4BPUIMainModel >> accept: anVisitor [
	anVisitor visitA4BPObject: self
]

{ #category : #init }
A4BPUIMainModel >> displayA4BPElements [
	^ A4BPSOAAnalyzer instance
]

{ #category : #init }
A4BPUIMainModel >> elements [
 ^ self displayA4BPElements
]

{ #category : #init }
A4BPUIMainModel >> initialize [
	super initialize.
]

{ #category : #init }
A4BPUIMainModel >> label [
	^ ''
]
