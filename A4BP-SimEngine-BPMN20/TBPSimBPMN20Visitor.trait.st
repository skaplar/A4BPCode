Trait {
	#name : #TBPSimBPMN20Visitor,
	#category : #'A4BP-SimEngine-BPMN20-execution'
}

{ #category : #flows }
TBPSimBPMN20Visitor >> continueOutGoingsFlow: aModel [
	"out Flows explore not only in outgoins, 
	explore the posible messages flows that ocurs in the element"
	aModel outFlows do: [ :e | 
		e accept: self ]
]

{ #category : #flows }
TBPSimBPMN20Visitor >> continueTargetFlow: aModel [
	aModel targetRef accept: self
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20ActivityImpl: aModel [ 
^ self visitBPMN20FlowNodeImpl: aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20AdHocSubProcessImpl: aModel [ 
^ self visitBPMN20FlowNodeImpl: aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20ArtifactImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20AssignmentImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20AssociationImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20AuditingImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20BaseElementImpl: aModel [ 
	^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20BoundaryEventImpl: aModel [ 
^ self visitBPMN20FlowNodeImpl: aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20BusinessRuleTaskImpl: aModel [ 
^ self visitBPMN20FlowNodeImpl: aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20CallActivityImpl: aModel [ 
^ self visitBPMN20FlowNodeImpl: aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20CallChoreographyImpl: aModel [ 
^ self visitBPMN20FlowNodeImpl: aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20CallConversationImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20CallableElementImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20CancelEventDefinitionImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20CatchEventImpl: aModel [ 
^ self visitBPMN20FlowNodeImpl: aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20CategoryImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20CategoryValueImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20ChoreographyActivityImpl: aModel [ 
^ self visitBPMN20FlowNodeImpl: aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20ChoreographyImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20ChoreographyTaskImpl: aModel [ 
^ self visitBPMN20FlowNodeImpl: aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20CollaborationImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20CompensateEventDefinitionImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20ComplexBehaviorDefinitionImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20ComplexGatewayImpl: aModel [ 
^ self visitBPMN20FlowNodeImpl: aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20ConditionalEventDefinitionImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20ConversationAssociationImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20ConversationImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20ConversationLinkImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20ConversationNodeImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20CorrelationKeyImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20CorrelationPropertyBindingImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20CorrelationPropertyImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20CorrelationPropertyRetrievalExpressionImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20CorrelationSubscriptionImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20DataAssociationImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20DataInputAssociationImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20DataInputImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20DataObjectImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20DataObjectReferenceImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20DataOutputAssociationImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20DataOutputImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20DataStateImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20DataStoreImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20DataStoreReferenceImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20DefinitionsImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20DocumentationImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20EndEventImpl: aModel [ 
^ self visitBPMN20FlowNodeImpl: aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20EndPointImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20ErrorEventDefinitionImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20ErrorImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20EscalationEventDefinitionImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20EscalationImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20EventBasedGatewayImpl: aModel [ 
^ self visitBPMN20FlowNodeImpl: aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20EventDefinitionImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20EventImpl: aModel [ 
^ self visitBPMN20FlowNodeImpl: aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20ExclusiveGatewayImpl: aModel [ 
^ self visitBPMN20FlowNodeImpl: aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20ExpressionImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20FlowElementImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20FlowElementsContainerImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20FlowNodeImpl: aModel [ 
	self continueOutGoingsFlow: aModel
	
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20FlowNodeRefImpl: aModel [ 
	^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20FormalExpressionImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20GatewayImpl: aModel [ 
^ self visitBPMN20FlowNodeImpl: aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20GlobalBusinessRuleTaskImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20GlobalChoreographyTaskImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20GlobalConversationImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20GlobalManualTaskImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20GlobalScriptTaskImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20GlobalTaskImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20GlobalUserTaskImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20GroupImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20HumanPerformerImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20ImplicitThrowEventImpl: aModel [ 
^ self visitBPMN20FlowNodeImpl: aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20InclusiveGatewayImpl: aModel [ 
^ self visitBPMN20FlowNodeImpl: aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20IncomingImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20InputOutputBindingImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20InputOutputSpecificationImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20InputSetImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20InterfaceImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20IntermediateCatchEventImpl: aModel [ 
^ self visitBPMN20FlowNodeImpl: aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20IntermediateThrowEventImpl: aModel [ 
^ self visitBPMN20FlowNodeImpl: aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20ItemAwareElementImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20ItemDefinitionImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20LaneImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20LaneSetImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20LinkEventDefinitionImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20LoopCharacteristicsImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20ManualTaskImpl: aModel [ 
^ self visitBPMN20FlowNodeImpl: aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20MessageEventDefinitionImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20MessageFlowAssociationImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20MessageFlowImpl: aModel [ 
	^ self visitBPMN20FlowNodeImpl: aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20MessageImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20MonitoringImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20MultiInstanceLoopCharacteristicsImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20Object: aModel [ 
	^ 0
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20OperationImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20OutgoingImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20OutputSetImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20ParallelGatewayImpl: aModel [ 
^ self visitBPMN20FlowNodeImpl: aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20ParticipantAssociationImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20ParticipantImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20ParticipantMultiplicityImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20PartnerEntityImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20PartnerRoleImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20PerformerImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20PotentialOwnerImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20ProcessImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20PropertyImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20ReceiveTaskImpl: aModel [ 
^ self visitBPMN20FlowNodeImpl: aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20RefToBeBuild: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20RelationshipImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20RenderingImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20ResourceAssignmentExpressionImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20ResourceImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20ResourceParameterBindingImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20ResourceParameterImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20ResourceRoleImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20RootElementImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20ScriptTaskImpl: aModel [ 
^ self visitBPMN20FlowNodeImpl: aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20SendTaskImpl: aModel [ 
^ self visitBPMN20FlowNodeImpl: aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20SequenceFlowImpl: aModel [ 
	self continueTargetFlow: aModel
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20ServiceTaskImpl: aModel [ 
^ self visitBPMN20FlowNodeImpl: aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20SignalEventDefinitionImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20SignalImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20SourceRefImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20StandardLoopCharacteristicsImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20StartEventImpl: aModel [ 
^ self visitBPMN20FlowNodeImpl: aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20SubChoreographyImpl: aModel [ 
^ self visitBPMN20FlowNodeImpl: aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20SubConversationImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20SubProcessImpl: aModel [ 
^ self visitBPMN20FlowNodeImpl: aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20TargetRefImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20TaskImpl: aModel [ 
^ self visitBPMN20FlowNodeImpl: aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20TerminateEventDefinitionImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20TextAnnotationImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20ThrowEventImpl: aModel [ 
^ self visitBPMN20FlowNodeImpl: aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20TimerEventDefinitionImpl: aModel [ 
^ self visitBPMN20Object:aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20TransactionImpl: aModel [ 
^ self visitBPMN20FlowNodeImpl: aModel 
]

{ #category : #trait }
TBPSimBPMN20Visitor >> visitBPMN20UserTaskImpl: aModel [ 
^ self visitBPMN20FlowNodeImpl: aModel 
]
