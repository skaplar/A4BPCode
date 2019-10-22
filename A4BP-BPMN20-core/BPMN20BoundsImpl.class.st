"
A BPMN20BoundsImpl is xxxxxxxxx.

 <Bounds x=""286"" y=""998"" width=""191"" height=""78"" xmlns=""http://www.omg.org/spec/DD/20100524/DC"" />
"
Class {
	#name : #BPMN20BoundsImpl,
	#superclass : #BPMN20Object,
	#instVars : [
		'x',
		'y',
		'width',
		'height'
	],
	#category : #'A4BP-BPMN20-core-model-dc'
}

{ #category : #'as yet unclassified' }
BPMN20BoundsImpl class >> annotation [
<MSEClass: #BPMN20BoundsImpl  super: #BPMN20Object >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20BoundsImpl class >> fillElementsIn: aModel from: document [
	| visitor |
	visitor := BPMN20DiParserBoundsImplVisitor new.
	visitor element: aModel.
	"<Bounds x=""0"" y=""0"" width=""700"" height=""350"" 
	xmlns=""http://www.omg.org/spec/DD/20100524/DC"" />"
	
	aModel x: (self readInt: document at: 'x').
	aModel y: (self readInt: document at: 'y').
	aModel width: (self readInt: document at: 'width').
	aModel height: (self readInt: document at: 'height').
	
	self fillElementsIn: aModel from: document visitor: visitor.
]

{ #category : #accept }
BPMN20BoundsImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20BoundsImpl: self
]

{ #category : #accessing }
BPMN20BoundsImpl >> height [
	^ height
]

{ #category : #accessing }
BPMN20BoundsImpl >> height: anObject [
	height := anObject
]

{ #category : #accessing }
BPMN20BoundsImpl >> width [
	^ width
]

{ #category : #accessing }
BPMN20BoundsImpl >> width: anObject [
	width := anObject
]

{ #category : #'as yet unclassified' }
BPMN20BoundsImpl >> x [
	^ x
]

{ #category : #'as yet unclassified' }
BPMN20BoundsImpl >> x: ax [
	^ x := ax
]

{ #category : #'as yet unclassified' }
BPMN20BoundsImpl >> y [
	^ y
]

{ #category : #'as yet unclassified' }
BPMN20BoundsImpl >> y: ay [
	^ y := ay
]
