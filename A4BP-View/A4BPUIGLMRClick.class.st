Class {
	#name : #A4BPUIGLMRClick,
	#superclass : #A4BPUIGLMActionTreeBuilderVisitor,
	#category : #'A4BP-View-UI-Rclick'
}

{ #category : #'as yet unclassified' }
A4BPUIGLMRClick class >> annotation [
<MSEClass: #A4BPUIGLMRClick  super: #A4BPUIGLMActionTreeBuilderVisitor >
<package: #'A4BP-View' >
]

{ #category : #'as yet unclassified' }
A4BPUIGLMRClick class >> icon: aModel [
	^ aModel accept: self new
]

{ #category : #private }
A4BPUIGLMRClick >> actionBasicBrowser: aBPObject [
	|actions|
	actions := OrderedCollection new.
	A4BPUIGLMActionTreeBuilderVisitor subclasses do: [ :c | 
		|rclick|
		c = self class ifFalse:[
			rclick := c new.
			rclick mainBrowser: mainBrowser.
			rclick extendActions: actions In: aBPObject.
			]
		].
	^ actions
]

{ #category : #visitorA4BP }
A4BPUIGLMRClick >> visitA4BPSOAContext: aModel [
	^ self visitBPObject: aModel
]

{ #category : #visitorA4BP }
A4BPUIGLMRClick >> visitA4BPUnParserObj: aModel [
	^ self visitA4BPObject: aModel
]

{ #category : #visitor }
A4BPUIGLMRClick >> visitBPActivity: aModel [
	^ self visitBPObject: aModel
]

{ #category : #visitor }
A4BPUIGLMRClick >> visitBPCatch: aModel [
	^ self visitBPObject: aModel
]

{ #category : #visitor }
A4BPUIGLMRClick >> visitBPCatchAll: aModel [
	^ self visitBPObject: aModel
]

{ #category : #visitor }
A4BPUIGLMRClick >> visitBPFaultHandlers: aModel [
	^ self visitBPObject: aModel
]

{ #category : #visitor }
A4BPUIGLMRClick >> visitBPInvoke: aModel [
	^ self visitBPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIGLMRClick >> visitBPMN20BoundaryEventImpl: aModel [
	^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIGLMRClick >> visitBPMN20CatchEventImpl: aModel [
	^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIGLMRClick >> visitBPMN20DataObjectImpl: aModel [
	^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIGLMRClick >> visitBPMN20DataStoreReferenceImpl: aModel [
	^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIGLMRClick >> visitBPMN20DefinitionsImpl: aModel [
	^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIGLMRClick >> visitBPMN20DocumentationImpl: aModel [
	^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIGLMRClick >> visitBPMN20EndEventImpl: aModel [
	^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIGLMRClick >> visitBPMN20ExclusiveGatewayImpl: aModel [
	^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIGLMRClick >> visitBPMN20ImplicitThrowEventImpl: aModel [
	^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIGLMRClick >> visitBPMN20InclusiveGatewayImpl: aModel [
	^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIGLMRClick >> visitBPMN20IncomingImpl: aModel [
	^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIGLMRClick >> visitBPMN20IntermediateCatchEventImpl: aModel [
	^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIGLMRClick >> visitBPMN20IntermediateThrowEventImpl: aModel [
	^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIGLMRClick >> visitBPMN20LaneImpl: aModel [
	^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIGLMRClick >> visitBPMN20LaneSetImpl: aModel [
	^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIGLMRClick >> visitBPMN20OutgoingImpl: aModel [
	^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIGLMRClick >> visitBPMN20ParallelGatewayImpl: aModel [
	^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIGLMRClick >> visitBPMN20ProcessImpl: aModel [
	^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIGLMRClick >> visitBPMN20SequenceFlowImpl: aModel [
	^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIGLMRClick >> visitBPMN20StartEventImpl: aModel [
	^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIGLMRClick >> visitBPMN20TaskImpl: aModel [
	^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIGLMRClick >> visitBPMN20ThrowEventImpl: aModel [
	^ self visitA4BPObject: aModel
]

{ #category : #visitor }
A4BPUIGLMRClick >> visitBPObject: aModel [
	| actions |
	actions := self actionBasicBrowser: aModel.
	^ actions
]

{ #category : #visitor }
A4BPUIGLMRClick >> visitBPPartnerLink: aModel [
	^ self visitBPObject: aModel
]

{ #category : #visitor }
A4BPUIGLMRClick >> visitBPPartnerLinks: aModel [
	^ self visitBPObject: aModel
]

{ #category : #visitor }
A4BPUIGLMRClick >> visitBPProcess: aModel [
	^ self visitBPObject: aModel
]

{ #category : #visitor }
A4BPUIGLMRClick >> visitBPScope: aModel [
	| actions |
	actions := self actionBasicBrowser: aModel.
	^ actions
]

{ #category : #visitor }
A4BPUIGLMRClick >> visitBPSequence: aModel [
	| actions |
	actions := self actionBasicBrowser: aModel.
	^ actions
]

{ #category : #visitor }
A4BPUIGLMRClick >> visitBPVariable: aModel [
	| actions |
	actions := self actionBasicBrowser: aModel.
	^ actions
]

{ #category : #visitor }
A4BPUIGLMRClick >> visitBPVariables: aModel [
	| actions |
	actions := self actionBasicBrowser: aModel.
	^ actions
]

{ #category : #visitor }
A4BPUIGLMRClick >> visitBPWSDLwsdl: aModel [
	| actions |
	actions := self actionBasicBrowser: aModel.
	^ actions
]

{ #category : #'visitor-XSD' }
A4BPUIGLMRClick >> visitBPXSDComplexType: aModel [
	|actions|
	actions:= self actionBasicBrowser:aModel.
	^ actions.
]

{ #category : #'visitor-XSD' }
A4BPUIGLMRClick >> visitBPXSDSchema: aModel [
	|actions|
	actions:= self actionBasicBrowser:aModel.
	^ actions.
]

{ #category : #'visitor-XSD' }
A4BPUIGLMRClick >> visitBPXSDSimpleType: aModel [
	|actions|
	actions:= self actionBasicBrowser:aModel.
	^ actions.
]

{ #category : #visitorA4BP }
A4BPUIGLMRClick >> visitSOAAnalyzer: aModel [
	^ self visitBPObject: aModel
]
