Class {
	#name : #BPSimBPMN20PathExplorer,
	#superclass : #Object,
	#traits : 'TBPSimBPMN20Visitor',
	#classTraits : 'TBPSimBPMN20Visitor classTrait',
	#instVars : [
		'path',
		'container'
	],
	#category : #'A4BP-SimEngine-BPMN20-execution-path'
}

{ #category : #'as yet unclassified' }
BPSimBPMN20PathExplorer class >> findPaths: aModel notify: pathContainer [
	|pf|
	pf := self new.
	pf container: pathContainer.
	pf findPaths: aModel
]

{ #category : #'as yet unclassified' }
BPSimBPMN20PathExplorer class >> findPaths: aModel notify: pathContainer usingPath: path [
	|pf|
	pf := self new.
	pf container: pathContainer.
	pf path: path.
	pf findPaths: aModel
]

{ #category : #accessing }
BPSimBPMN20PathExplorer >> container [
	^ container
]

{ #category : #accessing }
BPSimBPMN20PathExplorer >> container: anObject [
	container := anObject
]

{ #category : #flows }
BPSimBPMN20PathExplorer >> continueOutGoingsFlow: aModel [
	"out Flows explore not only in outgoins, 
	explore the posible messages flows that ocurs in the element"
	aModel outFlows do: [ :e | 
		e accept: self ]
]

{ #category : #flows }
BPSimBPMN20PathExplorer >> continueTargetFlow: aModel [
	aModel targetRef accept: self
]

{ #category : #finder }
BPSimBPMN20PathExplorer >> findPaths: aModel [
	aModel accept: self
]

{ #category : #intialization }
BPSimBPMN20PathExplorer >> initialize [
	super initialize.
	path := BPSimBPMN20Path new.
]

{ #category : #accessing }
BPSimBPMN20PathExplorer >> path [
	^ path
]

{ #category : #accessing }
BPSimBPMN20PathExplorer >> path: anObject [
	path := anObject
]

{ #category : #split }
BPSimBPMN20PathExplorer >> splitPath: aModel [
	|flag|
	path add: aModel.
	container addPath: path.
	flag := true.
	aModel outgoing do:[ :el |
		|aPath|
		flag ifTrue:[
			BPSimBPMN20PathExplorer findPaths: el notify: container usingPath: path.
			flag := false.
			].
		aPath := path copy.
		container addPath: aPath.
		BPSimBPMN20PathExplorer findPaths: el notify: container usingPath: aPath.
	].
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20ActivityImpl: aModel [ 
^ self visitBPMN20FlowNodeImpl: aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20AdHocSubProcessImpl: aModel [ 
^ self visitBPMN20FlowNodeImpl: aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20ArtifactImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20AssignmentImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20AssociationImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20AuditingImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20BaseElementImpl: aModel [ 
	^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20BoundaryEventImpl: aModel [ 
^ self visitBPMN20FlowNodeImpl: aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20BusinessRuleTaskImpl: aModel [ 
^ self visitBPMN20FlowNodeImpl: aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20CallActivityImpl: aModel [ 
^ self visitBPMN20FlowNodeImpl: aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20CallChoreographyImpl: aModel [ 
^ self visitBPMN20FlowNodeImpl: aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20CallConversationImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20CallableElementImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20CancelEventDefinitionImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20CatchEventImpl: aModel [ 
^ self visitBPMN20FlowNodeImpl: aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20CategoryImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20CategoryValueImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20ChoreographyActivityImpl: aModel [ 
^ self visitBPMN20FlowNodeImpl: aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20ChoreographyImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20ChoreographyTaskImpl: aModel [ 
^ self visitBPMN20FlowNodeImpl: aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20CollaborationImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20CompensateEventDefinitionImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20ComplexBehaviorDefinitionImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #visitorImplFlowsGateways }
BPSimBPMN20PathExplorer >> visitBPMN20ComplexGatewayImpl: aModel [ 
	self splitPath: aModel
	
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20ConditionalEventDefinitionImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20ConversationAssociationImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20ConversationImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20ConversationLinkImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20ConversationNodeImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20CorrelationKeyImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20CorrelationPropertyBindingImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20CorrelationPropertyImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20CorrelationPropertyRetrievalExpressionImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20CorrelationSubscriptionImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20DataAssociationImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20DataInputAssociationImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20DataInputImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20DataObjectImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20DataObjectReferenceImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20DataOutputAssociationImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20DataOutputImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20DataStateImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20DataStoreImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20DataStoreReferenceImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #vistorBasic }
BPSimBPMN20PathExplorer >> visitBPMN20DefinitionsImpl: aModel [ 
	"find start event activity"
	| eStart |
	eStart := aModel startEvent.
	eStart accept: self.
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20DocumentationImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #visitorImplEvent }
BPSimBPMN20PathExplorer >> visitBPMN20EndEventImpl: aModel [
	path add: aModel. 

]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20EndPointImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20ErrorEventDefinitionImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20ErrorImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20EscalationEventDefinitionImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20EscalationImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20EventBasedGatewayImpl: aModel [ 
^ self visitBPMN20FlowNodeImpl: aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20EventDefinitionImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20EventImpl: aModel [ 
^ self visitBPMN20FlowNodeImpl: aModel 
]

{ #category : #visitorImplFlowsGateways }
BPSimBPMN20PathExplorer >> visitBPMN20ExclusiveGatewayImpl: aModel [
	self splitPath: aModel
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20ExpressionImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20FlowElementImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20FlowElementsContainerImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #vistorBasic }
BPSimBPMN20PathExplorer >> visitBPMN20FlowNodeImpl: aModel [
	path add: aModel.
	self continueOutGoingsFlow: aModel
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20FlowNodeRefImpl: aModel [ 
	^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20FormalExpressionImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #visitorImplFlowsGateways }
BPSimBPMN20PathExplorer >> visitBPMN20GatewayImpl: aModel [ 
	self visitBPMN20ParallelGatewayImpl: aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20GlobalBusinessRuleTaskImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20GlobalChoreographyTaskImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20GlobalConversationImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20GlobalManualTaskImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20GlobalScriptTaskImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20GlobalTaskImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20GlobalUserTaskImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20GroupImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20HumanPerformerImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20ImplicitThrowEventImpl: aModel [ 
^ self visitBPMN20FlowNodeImpl: aModel 
]

{ #category : #visitorImplFlowsGateways }
BPSimBPMN20PathExplorer >> visitBPMN20InclusiveGatewayImpl: aModel [
	self splitPath: aModel

]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20IncomingImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20InputOutputBindingImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20InputOutputSpecificationImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20InputSetImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20InterfaceImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20IntermediateCatchEventImpl: aModel [ 
^ self visitBPMN20FlowNodeImpl: aModel 
]

{ #category : #visitorImplEvent }
BPSimBPMN20PathExplorer >> visitBPMN20IntermediateThrowEventImpl: aModel [ 
	^ self visitBPMN20FlowNodeImpl: aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20ItemAwareElementImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20ItemDefinitionImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20LaneImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20LaneSetImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20LinkEventDefinitionImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20LoopCharacteristicsImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20ManualTaskImpl: aModel [ 
^ self visitBPMN20FlowNodeImpl: aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20MessageEventDefinitionImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20MessageFlowAssociationImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20MessageFlowImpl: aModel [ 
	^ self visitBPMN20FlowNodeImpl: aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20MessageImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20MonitoringImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20MultiInstanceLoopCharacteristicsImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20Object: aModel [ 
	^ 0
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20OperationImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20OutgoingImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20OutputSetImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #visitorImplFlowsGateways }
BPSimBPMN20PathExplorer >> visitBPMN20ParallelGatewayImpl: aModel [ 
	path add: aModel.
	self continueOutGoingsFlow: aModel
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20ParticipantAssociationImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20ParticipantImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20ParticipantMultiplicityImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20PartnerEntityImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20PartnerRoleImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20PerformerImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20PotentialOwnerImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20ProcessImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20PropertyImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20ReceiveTaskImpl: aModel [ 
^ self visitBPMN20FlowNodeImpl: aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20RefToBeBuild: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20RelationshipImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20RenderingImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20ResourceAssignmentExpressionImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20ResourceImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20ResourceParameterBindingImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20ResourceParameterImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20ResourceRoleImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20RootElementImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20ScriptTaskImpl: aModel [ 
^ self visitBPMN20FlowNodeImpl: aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20SendTaskImpl: aModel [ 
^ self visitBPMN20FlowNodeImpl: aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20SequenceFlowImpl: aModel [ 
	self continueTargetFlow: aModel
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20ServiceTaskImpl: aModel [ 
^ self visitBPMN20FlowNodeImpl: aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20SignalEventDefinitionImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20SignalImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20SourceRefImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20StandardLoopCharacteristicsImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #visitorImplEvent }
BPSimBPMN20PathExplorer >> visitBPMN20StartEventImpl: aModel [
	container addPath: path.
	self visitBPMN20FlowNodeImpl: aModel
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20SubChoreographyImpl: aModel [ 
^ self visitBPMN20FlowNodeImpl: aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20SubConversationImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20SubProcessImpl: aModel [ 
^ self visitBPMN20FlowNodeImpl: aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20TargetRefImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20TaskImpl: aModel [ 
^ self visitBPMN20FlowNodeImpl: aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20TerminateEventDefinitionImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20TextAnnotationImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20ThrowEventImpl: aModel [ 
^ self visitBPMN20FlowNodeImpl: aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20TimerEventDefinitionImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20TransactionImpl: aModel [ 
^ self visitBPMN20FlowNodeImpl: aModel 
]

{ #category : #trait }
BPSimBPMN20PathExplorer >> visitBPMN20UserTaskImpl: aModel [ 
^ self visitBPMN20FlowNodeImpl: aModel 
]
