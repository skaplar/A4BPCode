Class {
	#name : #A4BPUIGLMActionTreeBuilderVisitor,
	#superclass : #A4BPUIBPAbstractViewActionVisitor,
	#instVars : [
		'mainBrowser'
	],
	#classInstVars : [
		'instance'
	],
	#category : #'A4BP-View-UI-Rclick'
}

{ #category : #'as yet unclassified' }
A4BPUIGLMActionTreeBuilderVisitor class >> annotation [
<MSEClass: #A4BPUIGLMActionTreeBuilderVisitor  super: #A4BPUIBPAbstractViewActionVisitor >
<package: #'A4BP-View' >
]

{ #category : #'as yet unclassified' }
A4BPUIGLMActionTreeBuilderVisitor class >> icon: aModel [
	^ aModel accept: self new
]

{ #category : #private }
A4BPUIGLMActionTreeBuilderVisitor >> actionBasicBrowser: aBPObject [
	^ OrderedCollection new.
	
]

{ #category : #private }
A4BPUIGLMActionTreeBuilderVisitor >> extendActions: actions In: aModel [
	actions addAll: (aModel accept:self).
]

{ #category : #accessing }
A4BPUIGLMActionTreeBuilderVisitor >> mainBrowser [
	^ mainBrowser
]

{ #category : #accessing }
A4BPUIGLMActionTreeBuilderVisitor >> mainBrowser: anObject [
	mainBrowser := anObject
]

{ #category : #visitorA4BP }
A4BPUIGLMActionTreeBuilderVisitor >> visitA4BPSOAContext: aModel [
	^ self visitA4BPObject: aModel
]

{ #category : #visitorA4BP }
A4BPUIGLMActionTreeBuilderVisitor >> visitA4BPUnParserObj: aModel [
	^ self visitA4BPObject: aModel
]

{ #category : #visitor }
A4BPUIGLMActionTreeBuilderVisitor >> visitBPActivity: aModel [
	^ self visitBPObject: aModel
]

{ #category : #visitor }
A4BPUIGLMActionTreeBuilderVisitor >> visitBPCatch: aModel [
	^ self visitBPObject: aModel
]

{ #category : #visitor }
A4BPUIGLMActionTreeBuilderVisitor >> visitBPCatchAll: aModel [
	^ self visitBPObject: aModel
]

{ #category : #visitor }
A4BPUIGLMActionTreeBuilderVisitor >> visitBPFaultHandlers: aModel [
	^ self visitBPObject: aModel
]

{ #category : #visitor }
A4BPUIGLMActionTreeBuilderVisitor >> visitBPInvoke: aModel [
	^ self visitBPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIGLMActionTreeBuilderVisitor >> visitBPMN20BoundaryEventImpl: aModel [
	^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIGLMActionTreeBuilderVisitor >> visitBPMN20CatchEventImpl: aModel [
	^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIGLMActionTreeBuilderVisitor >> visitBPMN20DataObjectImpl: aModel [
	^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIGLMActionTreeBuilderVisitor >> visitBPMN20DataStoreReferenceImpl: aModel [
	^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIGLMActionTreeBuilderVisitor >> visitBPMN20DefinitionsImpl: aModel [
	^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIGLMActionTreeBuilderVisitor >> visitBPMN20DocumentationImpl: aModel [
	^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIGLMActionTreeBuilderVisitor >> visitBPMN20EndEventImpl: aModel [
	^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIGLMActionTreeBuilderVisitor >> visitBPMN20ExclusiveGatewayImpl: aModel [
	^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIGLMActionTreeBuilderVisitor >> visitBPMN20ImplicitThrowEventImpl: aModel [
	^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIGLMActionTreeBuilderVisitor >> visitBPMN20InclusiveGatewayImpl: aModel [
	^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIGLMActionTreeBuilderVisitor >> visitBPMN20IncomingImpl: aModel [
	^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIGLMActionTreeBuilderVisitor >> visitBPMN20IntermediateCatchEventImpl: aModel [
	^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIGLMActionTreeBuilderVisitor >> visitBPMN20IntermediateThrowEventImpl: aModel [
	^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIGLMActionTreeBuilderVisitor >> visitBPMN20LaneImpl: aModel [
	^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIGLMActionTreeBuilderVisitor >> visitBPMN20LaneSetImpl: aModel [
	^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIGLMActionTreeBuilderVisitor >> visitBPMN20OutgoingImpl: aModel [
	^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIGLMActionTreeBuilderVisitor >> visitBPMN20ParallelGatewayImpl: aModel [
	^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIGLMActionTreeBuilderVisitor >> visitBPMN20ProcessImpl: aModel [
	^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIGLMActionTreeBuilderVisitor >> visitBPMN20SequenceFlowImpl: aModel [
	^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIGLMActionTreeBuilderVisitor >> visitBPMN20StartEventImpl: aModel [
	^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIGLMActionTreeBuilderVisitor >> visitBPMN20TaskImpl: aModel [
	^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIGLMActionTreeBuilderVisitor >> visitBPMN20ThrowEventImpl: aModel [
	^ self visitA4BPObject: aModel
]

{ #category : #visitor }
A4BPUIGLMActionTreeBuilderVisitor >> visitBPObject: aModel [
	| actions |
	actions := self actionBasicBrowser: aModel.
	^ actions
]

{ #category : #visitor }
A4BPUIGLMActionTreeBuilderVisitor >> visitBPPartnerLink: aModel [
	^ self visitBPObject: aModel
]

{ #category : #visitor }
A4BPUIGLMActionTreeBuilderVisitor >> visitBPPartnerLinks: aModel [
	^ self visitBPObject: aModel
]

{ #category : #visitor }
A4BPUIGLMActionTreeBuilderVisitor >> visitBPProcess: aModel [
	|actions|
	actions:= self actionBasicBrowser:aModel.
	^ actions.
]

{ #category : #visitor }
A4BPUIGLMActionTreeBuilderVisitor >> visitBPScope: aModel [
	| actions |
	actions := self actionBasicBrowser: aModel.
	^ actions
]

{ #category : #visitor }
A4BPUIGLMActionTreeBuilderVisitor >> visitBPSequence: aModel [
	| actions |
	actions := self actionBasicBrowser: aModel.
	^ actions
]

{ #category : #visitor }
A4BPUIGLMActionTreeBuilderVisitor >> visitBPVariable: aModel [
	| actions |
	actions := self actionBasicBrowser: aModel.
	^ actions
]

{ #category : #visitor }
A4BPUIGLMActionTreeBuilderVisitor >> visitBPVariables: aModel [
	| actions |
	actions := self actionBasicBrowser: aModel.
	^ actions
]

{ #category : #visitor }
A4BPUIGLMActionTreeBuilderVisitor >> visitBPWSDLwsdl: aModel [
	| actions |
	actions := self actionBasicBrowser: aModel.
	^ actions
]

{ #category : #'visitor-XSD' }
A4BPUIGLMActionTreeBuilderVisitor >> visitBPXSDComplexType: aModel [
	|actions|
	actions:= self actionBasicBrowser:aModel.
	^ actions.
]

{ #category : #'visitor-XSD' }
A4BPUIGLMActionTreeBuilderVisitor >> visitBPXSDSchema: aModel [
	|actions|
	actions:= self actionBasicBrowser:aModel.
	^ actions.
]

{ #category : #'visitor-XSD' }
A4BPUIGLMActionTreeBuilderVisitor >> visitBPXSDSimpleType: aModel [
	|actions|
	actions:= self actionBasicBrowser:aModel.
	^ actions.
]

{ #category : #visitor }
A4BPUIGLMActionTreeBuilderVisitor >> visitSOAAnalyzer: aModel [
	|actions|
	actions:= self actionBasicBrowser:aModel.
	^ actions. 
]
