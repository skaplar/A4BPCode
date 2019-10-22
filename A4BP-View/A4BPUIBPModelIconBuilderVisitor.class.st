Class {
	#name : #A4BPUIBPModelIconBuilderVisitor,
	#superclass : #A4BPUIBPAbstractViewBuilderVisitor,
	#classInstVars : [
		'instance'
	],
	#category : #'A4BP-View-UI-Builder'
}

{ #category : #'as yet unclassified' }
A4BPUIBPModelIconBuilderVisitor class >> annotation [
<MSEClass: #A4BPUIBPModelIconBuilderVisitor  super: #A4BPUIBPAbstractViewBuilderVisitor >
<package: #'A4BP-View' >
]

{ #category : #'as yet unclassified' }
A4BPUIBPModelIconBuilderVisitor class >> icon: aModel [
	aModel ifNotNil: [ ^ aModel accept: self instance ].
	^ A4BPEmptyObj instance accept: self instance
]

{ #category : #'as yet unclassified' }
A4BPUIBPModelIconBuilderVisitor class >> instance [
	^ instance ifNil: [ instance := self new ]
]

{ #category : #icons }
A4BPUIBPModelIconBuilderVisitor >> icons [
	^ A4BPUIIcons
]

{ #category : #visitorA4BP }
A4BPUIBPModelIconBuilderVisitor >> visitA4BPSOAContext: aSOAContext [
	^ self icons iconModelSOAContext
]

{ #category : #visitorBPELAnalyzer }
A4BPUIBPModelIconBuilderVisitor >> visitBPAssign: aModel [
	^ self icons iconModelBPAssing
]

{ #category : #visitorBPELAnalyzer }
A4BPUIBPModelIconBuilderVisitor >> visitBPCatch: aModel [
	^ self icons iconModelBPCatch
]

{ #category : #visitorBPELAnalyzer }
A4BPUIBPModelIconBuilderVisitor >> visitBPCatchAll: aModel [
	^ self icons iconModelBPCatchAll
]

{ #category : #visitorBPELAnalyzer }
A4BPUIBPModelIconBuilderVisitor >> visitBPCopy: aModel [
	^ self icons iconModelBPCopy
]

{ #category : #visitorBPELAnalyzer }
A4BPUIBPModelIconBuilderVisitor >> visitBPFaultHandlers: aModel [
	^ self icons iconModelBPCatchAll 
]

{ #category : #visitorBPELAnalyzer }
A4BPUIBPModelIconBuilderVisitor >> visitBPForEach: aModel [
	^ self icons iconModelBPForEach
]

{ #category : #visitorBPELAnalyzer }
A4BPUIBPModelIconBuilderVisitor >> visitBPFrom: aModel [
	^ self icons iconModelBPFrom
]

{ #category : #visitorBPELAnalyzer }
A4BPUIBPModelIconBuilderVisitor >> visitBPInvoke: aModel [
	^ self icons iconModelBPInvoke
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelIconBuilderVisitor >> visitBPMN20DataObjectImpl: aModel [
	^ self icons iconDataObject 
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelIconBuilderVisitor >> visitBPMN20DataStoreImpl: aModel [
	^ self icons iconDataStore
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelIconBuilderVisitor >> visitBPMN20DataStoreReferenceImpl: aModel [
	^ self icons iconBPMN20DataStoreReferenceImpl
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelIconBuilderVisitor >> visitBPMN20DefinitionsImpl: aModel [
	^ self icons iconBPMN20Definitions
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelIconBuilderVisitor >> visitBPMN20DocumentationImpl: aModel [
	^ self icons iconDocument 
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelIconBuilderVisitor >> visitBPMN20EndEventImpl: aModel [
	^ self icons iconBPMN20EndEvent 
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelIconBuilderVisitor >> visitBPMN20EventImpl: aModel [
	^ self icons iconEvent 
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelIconBuilderVisitor >> visitBPMN20ExclusiveGatewayImpl: aModel [
	^ self icons iconBPMN20ExclusiveGateway
]

{ #category : #'as yet unclassified' }
A4BPUIBPModelIconBuilderVisitor >> visitBPMN20ExtensionElementsImpl: aModel [
	^ self icons iconDataObject 
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelIconBuilderVisitor >> visitBPMN20InclusiveGatewayImpl: aModel [
	^ self icons iconBPMN20InclusiveGateway
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelIconBuilderVisitor >> visitBPMN20IntermediateCatchEventImpl: aModel [
	^ self visitBPMN20EventImpl: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelIconBuilderVisitor >> visitBPMN20LaneImpl: aModel [
	^ self icons iconLane
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelIconBuilderVisitor >> visitBPMN20LaneSetImpl: aModel [
	^ self icons iconLaneSet
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelIconBuilderVisitor >> visitBPMN20ParallelGatewayImpl: aModel [
	^ self icons iconBPMN20ParallelGateway
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelIconBuilderVisitor >> visitBPMN20ProcessImpl: aModel [
	^ self icons iconModelBPMN20Process
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelIconBuilderVisitor >> visitBPMN20ResourceImpl: aModel [
	^ self icons iconBPMN20Resources
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelIconBuilderVisitor >> visitBPMN20SequenceFlowImpl: aModel [
	^ self icons iconSequenceFlow
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelIconBuilderVisitor >> visitBPMN20StartEventImpl: aModel [
	^ self icons iconBPMN20StartEvent
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelIconBuilderVisitor >> visitBPMN20TaskImpl: aModel [
	^ self icons iconBPMN20Activity
]

{ #category : #visitorBPELAnalyzer }
A4BPUIBPModelIconBuilderVisitor >> visitBPPartnerLink: aBPPartnerLink [
	^ self icons iconModelBPPartnerLink
]

{ #category : #visitorBPELAnalyzer }
A4BPUIBPModelIconBuilderVisitor >> visitBPPartnerLinks: aBPPartnerLinks [
	^ A4BPUIIcons iconModelBPPartnerLink
]

{ #category : #visitorBPELAnalyzer }
A4BPUIBPModelIconBuilderVisitor >> visitBPProcess: aModel [
	^ self icons iconModelBPProcess
]

{ #category : #visitorBPELAnalyzer }
A4BPUIBPModelIconBuilderVisitor >> visitBPReceive: aModel [
	^ self icons iconModelBPReceive 
]

{ #category : #visitorBPELAnalyzer }
A4BPUIBPModelIconBuilderVisitor >> visitBPRel: aModel [
	^ self icons iconModelBPRelations
]

{ #category : #visitorBPELAnalyzer }
A4BPUIBPModelIconBuilderVisitor >> visitBPReply: aModel [
	^ self icons iconModelBPReply 
]

{ #category : #visitorBPELAnalyzer }
A4BPUIBPModelIconBuilderVisitor >> visitBPScope: aModel [
	^ self icons iconModelBPScope
]

{ #category : #visitorBPELAnalyzer }
A4BPUIBPModelIconBuilderVisitor >> visitBPSequence: aBPSequence [
	^ self icons iconModelBPSequence
]

{ #category : #visitorBPELAnalyzer }
A4BPUIBPModelIconBuilderVisitor >> visitBPTo: aModel [
	^ self icons iconModelBPTo
]

{ #category : #visitorBPELAnalyzer }
A4BPUIBPModelIconBuilderVisitor >> visitBPVariable: aBPVariable [
	^ self icons iconModelBPVariable
]

{ #category : #visitorBPELAnalyzer }
A4BPUIBPModelIconBuilderVisitor >> visitBPVariables: aBPVariables [
	^ self icons iconModelBPVariable
]

{ #category : #visitorBPELAnalyzer }
A4BPUIBPModelIconBuilderVisitor >> visitBPWSDLwsdl: aModel [
	^ self icons iconModelBPWSDLWsdl 
]

{ #category : #visitorBPELAnalyzer }
A4BPUIBPModelIconBuilderVisitor >> visitBPXSDSchema:  aModel [
	^ self icons iconModelBPXSDSchema
]

{ #category : #visitorBPELAnalyzer }
A4BPUIBPModelIconBuilderVisitor >> visitSOAAnalyzer: aModel [
	^ self icons iconModelBPELAnalyzer
]

{ #category : #visitorBPELAnalyzer }
A4BPUIBPModelIconBuilderVisitor >> visitSOAContext: aSOAContext [
	^ self icons iconModelSOAContext
]
