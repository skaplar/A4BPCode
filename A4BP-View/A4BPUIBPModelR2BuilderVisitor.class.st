Class {
	#name : #A4BPUIBPModelR2BuilderVisitor,
	#superclass : #A4BPUIBPAbstractViewBuilderVisitor,
	#classInstVars : [
		'instance'
	],
	#category : #'A4BP-View-UI-Builder'
}

{ #category : #'as yet unclassified' }
A4BPUIBPModelR2BuilderVisitor class >> annotation [
<MSEClass: #A4BPUIBPModelR2BuilderVisitor  super: #A4BPUIBPAbstractViewBuilderVisitor >
<package: #'A4BP-View' >
]

{ #category : #'as yet unclassified' }
A4BPUIBPModelR2BuilderVisitor class >> icon: aModel [
	^ aModel accept: self instance
]

{ #category : #'as yet unclassified' }
A4BPUIBPModelR2BuilderVisitor class >> instance [
	^ instance ifNil: [ instance := self new ]
]

{ #category : #shape }
A4BPUIBPModelR2BuilderVisitor >> elementOn: aModel [
	^ RTElement new
		model: aModel;
		addShape: (aModel accept: self);
		yourself
]

{ #category : #visitor }
A4BPUIBPModelR2BuilderVisitor >> visitBPActivity: aModel [
	^ RTEllipse new
]

{ #category : #visitor }
A4BPUIBPModelR2BuilderVisitor >> visitBPAssign: aModel [
	^ RTPolygon new.
]

{ #category : #visitor }
A4BPUIBPModelR2BuilderVisitor >> visitBPCatch: aModel [
	^ RTPolygon new.
]

{ #category : #visitor }
A4BPUIBPModelR2BuilderVisitor >> visitBPCatchAll: aModel [
	^ RTPolygon new.
]

{ #category : #visitor }
A4BPUIBPModelR2BuilderVisitor >> visitBPFaultHandlers: aModel [
	^ RTPolygon new.
]

{ #category : #visitor }
A4BPUIBPModelR2BuilderVisitor >> visitBPFlow: aModel [
	^ RTPolygon new.
]

{ #category : #visitor }
A4BPUIBPModelR2BuilderVisitor >> visitBPInvoke: aModel [
	^ RTPolygon new. 
]

{ #category : #visitor }
A4BPUIBPModelR2BuilderVisitor >> visitBPObject: aModel [
	^ RTPolygon new. 
]

{ #category : #visitor }
A4BPUIBPModelR2BuilderVisitor >> visitBPPartnerLink: aBPPartnerLink [
	^ RTPolygon new.
]

{ #category : #visitor }
A4BPUIBPModelR2BuilderVisitor >> visitBPPartnerLinks: aBPPartnerLinks [
	^ RTPolygon new.
]

{ #category : #visitor }
A4BPUIBPModelR2BuilderVisitor >> visitBPPick: aBPPick [
	^ RTPolygon new.
]

{ #category : #visitor }
A4BPUIBPModelR2BuilderVisitor >> visitBPProcess: aModel [
	^ RTPolygon new.
]

{ #category : #visitor }
A4BPUIBPModelR2BuilderVisitor >> visitBPReceive: aModel [
	^ RTPolygon new.
]

{ #category : #visitor }
A4BPUIBPModelR2BuilderVisitor >> visitBPScope: aModel [
	^ RTPolygon new.
]

{ #category : #visitor }
A4BPUIBPModelR2BuilderVisitor >> visitBPSequence: aBPSequence [
	^ RTPolygon new.
]

{ #category : #visitor }
A4BPUIBPModelR2BuilderVisitor >> visitBPVariable: aBPVariable [
	^ RTPolygon new.
]

{ #category : #visitor }
A4BPUIBPModelR2BuilderVisitor >> visitBPVariables: aBPVariables [
	^ RTPolygon new.
]

{ #category : #visitor }
A4BPUIBPModelR2BuilderVisitor >> visitBPWSDLwsdl: aModel [
	^ RTPolygon new
]

{ #category : #visitor }
A4BPUIBPModelR2BuilderVisitor >> visitSOAAnalyzer: aModel [
	^ RTPolygon new.
]

{ #category : #visitor }
A4BPUIBPModelR2BuilderVisitor >> visitSOAContext: aSOAContext [
	^ RTPolygon new.
]
