Class {
	#name : #A4BPUIBPModelRTBitmapBuilderVisitor,
	#superclass : #A4BPUIBPAbstractViewBuilderVisitor,
	#classInstVars : [
		'instance'
	],
	#category : #'A4BP-View-UI-Builder'
}

{ #category : #'as yet unclassified' }
A4BPUIBPModelRTBitmapBuilderVisitor class >> annotation [
<MSEClass: #A4BPUIBPModelRTBitmapBuilderVisitor  super: #A4BPUIBPAbstractViewBuilderVisitor >
<package: #'A4BP-View' >
]

{ #category : #'as yet unclassified' }
A4BPUIBPModelRTBitmapBuilderVisitor class >> icon: aModel [
	^ aModel accept: self instance
]

{ #category : #'as yet unclassified' }
A4BPUIBPModelRTBitmapBuilderVisitor class >> instance [
	^ instance ifNil: [ instance := self new ]
]

{ #category : #visitor }
A4BPUIBPModelRTBitmapBuilderVisitor >> visitBPActivity: aModel [
	^ RTBitmap new.
]

{ #category : #visitor }
A4BPUIBPModelRTBitmapBuilderVisitor >> visitBPAssign: aModel [
	^ RTBitmap new.
]

{ #category : #visitor }
A4BPUIBPModelRTBitmapBuilderVisitor >> visitBPCatch: aModel [
	^ RTBitmap new.
]

{ #category : #visitor }
A4BPUIBPModelRTBitmapBuilderVisitor >> visitBPCatchAll: aModel [
	^ RTBitmap new.
]

{ #category : #visitor }
A4BPUIBPModelRTBitmapBuilderVisitor >> visitBPFaultHandlers: aModel [
	^ RTBitmap new.
]

{ #category : #visitor }
A4BPUIBPModelRTBitmapBuilderVisitor >> visitBPFlow: aModel [
	^ RTBitmap new.
]

{ #category : #visitor }
A4BPUIBPModelRTBitmapBuilderVisitor >> visitBPInvoke: aModel [
	^ RTBitmap new.
]

{ #category : #visitor }
A4BPUIBPModelRTBitmapBuilderVisitor >> visitBPObject: aModel [
	^ RTBitmap new.
]

{ #category : #visitor }
A4BPUIBPModelRTBitmapBuilderVisitor >> visitBPPartnerLink: aBPPartnerLink [
	^ RTBitmap new.
]

{ #category : #visitor }
A4BPUIBPModelRTBitmapBuilderVisitor >> visitBPPartnerLinks: aBPPartnerLinks [
	^ RTBitmap new.
]

{ #category : #visitor }
A4BPUIBPModelRTBitmapBuilderVisitor >> visitBPPick: aBPPick [
	^ RTBitmap new.
]

{ #category : #visitor }
A4BPUIBPModelRTBitmapBuilderVisitor >> visitBPProcess: aModel [
	^ RTBitmap new.
]

{ #category : #visitor }
A4BPUIBPModelRTBitmapBuilderVisitor >> visitBPReceive: aModel [
	^ RTBitmap new.
]

{ #category : #visitor }
A4BPUIBPModelRTBitmapBuilderVisitor >> visitBPScope: aModel [
	^ RTBitmap new.
]

{ #category : #visitor }
A4BPUIBPModelRTBitmapBuilderVisitor >> visitBPSequence: aBPSequence [
	^ RTBitmap new.
]

{ #category : #visitor }
A4BPUIBPModelRTBitmapBuilderVisitor >> visitBPVariable: aBPVariable [
	^ RTBitmap new.
]

{ #category : #visitor }
A4BPUIBPModelRTBitmapBuilderVisitor >> visitBPVariables: aBPVariables [
	^ RTBitmap new.
]

{ #category : #visitor }
A4BPUIBPModelRTBitmapBuilderVisitor >> visitBPWSDLwsdl: aModel [
	^ RTBitmap new.
]

{ #category : #visitor }
A4BPUIBPModelRTBitmapBuilderVisitor >> visitSOAAnalyzer: aModel [
	^ RTBitmap new.
]

{ #category : #visitor }
A4BPUIBPModelRTBitmapBuilderVisitor >> visitSOAContext: aSOAContext [
	^ RTBitmap new.
]
