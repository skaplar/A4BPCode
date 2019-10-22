Class {
	#name : #A4BPUIBVFactory,
	#superclass : #Object,
	#category : #'A4BP-View-UI-Builder'
}

{ #category : #factories }
A4BPUIBVFactory class >> R2Visitor [
	^ A4BPUIBPModelR2BuilderVisitor new.
]

{ #category : #factories }
A4BPUIBVFactory class >> RTBitmapVisitor [
	^ A4BPUIBPModelRTBitmapBuilderVisitor new.
]

{ #category : #factories }
A4BPUIBVFactory class >> color [
	^ self colorVisitor
]

{ #category : #factories }
A4BPUIBVFactory class >> colorVisitor [
	^ A4BPUIBPModelColorBuilderVisitor new.
]

{ #category : #factories }
A4BPUIBVFactory class >> icon [
	^ self iconVisitor
]

{ #category : #factories }
A4BPUIBVFactory class >> iconVisitor [
	^ A4BPUIBPModelIconBuilderVisitor instance
]
