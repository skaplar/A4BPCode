Class {
	#name : #BPMN20ParserTagsXMLRef,
	#superclass : #A4BPParserTagsXMLRef,
	#category : #'A4BP-BPMN20-core-parser'
}

{ #category : #'as yet unclassified' }
BPMN20ParserTagsXMLRef class >> annotation [
<MSEClass: #BPMN20ParserTagsXMLRef  super: #A4BPParserTagsXMLRef >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #getset }
BPMN20ParserTagsXMLRef class >> lst01 [
	|lstItems|
	lstItems := Dictionary new.
	
	self fillItems: lstItems tag: 'artifact' class: BPMN20ArtifactImpl.
	self fillItems: lstItems tag: 'association' class: BPMN20AssociationImpl.
	self fillItems: lstItems tag: 'group' class: BPMN20GroupImpl.
	self fillItems: lstItems tag: 'textAnnotation' class: BPMN20TextAnnotationImpl.
	self fillItems: lstItems tag: 'assignment' class: BPMN20AssignmentImpl.
	self fillItems: lstItems tag: 'auditing' class: BPMN20AuditingImpl.
	self fillItems: lstItems tag: 'categoryValue' class: BPMN20CategoryValueImpl.
	self fillItems: lstItems tag: 'complexBehaviorDefinition' class: BPMN20ComplexBehaviorDefinitionImpl.
	self fillItems: lstItems tag: 'conversationAssociation' class: BPMN20ConversationAssociationImpl.
	self fillItems: lstItems tag: 'conversationLink' class: BPMN20ConversationLinkImpl.
	self fillItems: lstItems tag: 'conversationNode' class: BPMN20ConversationNodeImpl.
	self fillItems: lstItems tag: 'callConversation' class: BPMN20CallConversationImpl.
	self fillItems: lstItems tag: 'conversation' class: BPMN20ConversationImpl.
	self fillItems: lstItems tag: 'subConversation' class: BPMN20SubConversationImpl.
	self fillItems: lstItems tag: 'correlationKey' class: BPMN20CorrelationKeyImpl.
	self fillItems: lstItems tag: 'correlationPropertyBinding' class: BPMN20CorrelationPropertyBindingImpl.
	self fillItems: lstItems tag: 'correlationPropertyRetrievalExpression' class: BPMN20CorrelationPropertyRetrievalExpressionImpl.
	self fillItems: lstItems tag: 'correlationSubscription' class: BPMN20CorrelationSubscriptionImpl.
	self fillItems: lstItems tag: 'dataAssociation' class: BPMN20DataAssociationImpl.
	self fillItems: lstItems tag: 'dataInputAssociation' class: BPMN20DataInputAssociationImpl.
	self fillItems: lstItems tag: 'dataOutputAssociation' class: BPMN20DataOutputAssociationImpl.
	self fillItems: lstItems tag: 'dataState' class: BPMN20DataStateImpl.
	self fillItems: lstItems tag: 'definitions' class: BPMN20DefinitionsImpl.
	self fillItems: lstItems tag: 'documentation' class: BPMN20DocumentationImpl.
	self fillItems: lstItems tag: 'expression' class: BPMN20ExpressionImpl.
	self fillItems: lstItems tag: 'formalExpression' class: BPMN20FormalExpressionImpl.
	self fillItems: lstItems tag: 'flowElement' class: BPMN20FlowElementImpl.
	self fillItems: lstItems tag: 'dataObject' class: BPMN20DataObjectImpl.
	self fillItems: lstItems tag: 'dataObjectReference' class: BPMN20DataObjectReferenceImpl.
	self fillItems: lstItems tag: 'dataStoreReference' class: BPMN20DataStoreReferenceImpl.
	self fillItems: lstItems tag: 'flowNode' class: BPMN20FlowNodeImpl.
	self fillItems: lstItems tag: 'activity' class: BPMN20ActivityImpl.
	self fillItems: lstItems tag: 'callActivity' class: BPMN20CallActivityImpl.
	self fillItems: lstItems tag: 'subProcess' class: BPMN20SubProcessImpl.
	self fillItems: lstItems tag: 'adHocSubProcess' class: BPMN20AdHocSubProcessImpl.
	self fillItems: lstItems tag: 'transaction' class: BPMN20TransactionImpl.
	self fillItems: lstItems tag: 'task' class: BPMN20TaskImpl.
	self fillItems: lstItems tag: 'businessRuleTask' class: BPMN20BusinessRuleTaskImpl.
	self fillItems: lstItems tag: 'manualTask' class: BPMN20ManualTaskImpl.
	self fillItems: lstItems tag: 'receiveTask' class: BPMN20ReceiveTaskImpl.
	self fillItems: lstItems tag: 'scriptTask' class: BPMN20ScriptTaskImpl.
	self fillItems: lstItems tag: 'sendTask' class: BPMN20SendTaskImpl.
	self fillItems: lstItems tag: 'serviceTask' class: BPMN20ServiceTaskImpl.
	self fillItems: lstItems tag: 'userTask' class: BPMN20UserTaskImpl.
	self fillItems: lstItems tag: 'choreographyActivity' class: BPMN20ChoreographyActivityImpl.
	self fillItems: lstItems tag: 'callChoreography' class: BPMN20CallChoreographyImpl.
	self fillItems: lstItems tag: 'choreographyTask' class: BPMN20ChoreographyTaskImpl.
	self fillItems: lstItems tag: 'subChoreography' class: BPMN20SubChoreographyImpl.
	self fillItems: lstItems tag: 'event' class: BPMN20EventImpl.
	self fillItems: lstItems tag: 'catchEvent' class: BPMN20CatchEventImpl.
	self fillItems: lstItems tag: 'boundaryEvent' class: BPMN20BoundaryEventImpl.
	self fillItems: lstItems tag: 'intermediateCatchEvent' class: BPMN20IntermediateCatchEventImpl.
	self fillItems: lstItems tag: 'startEvent' class: BPMN20StartEventImpl.
	self fillItems: lstItems tag: 'throwEvent' class: BPMN20ThrowEventImpl.
	self fillItems: lstItems tag: 'endEvent' class: BPMN20EndEventImpl.
	self fillItems: lstItems tag: 'implicitThrowEvent' class: BPMN20ImplicitThrowEventImpl.
	self fillItems: lstItems tag: 'intermediateThrowEvent' class: BPMN20IntermediateThrowEventImpl.
	self fillItems: lstItems tag: 'gateway' class: BPMN20GatewayImpl.
	self fillItems: lstItems tag: 'complexGateway' class: BPMN20ComplexGatewayImpl.
	self fillItems: lstItems tag: 'eventBasedGateway' class: BPMN20EventBasedGatewayImpl.
	self fillItems: lstItems tag: 'exclusiveGateway' class: BPMN20ExclusiveGatewayImpl.
	self fillItems: lstItems tag: 'inclusiveGateway' class: BPMN20InclusiveGatewayImpl.
	self fillItems: lstItems tag: 'parallelGateway' class: BPMN20ParallelGatewayImpl.
	self fillItems: lstItems tag: 'sequenceFlow' class: BPMN20SequenceFlowImpl.
	self fillItems: lstItems tag: 'flowElementsContainer' class: BPMN20FlowElementsContainerImpl.
	self fillItems: lstItems tag: 'inputOutputBinding' class: BPMN20InputOutputBindingImpl.
	self fillItems: lstItems tag: 'inputOutputSpecification' class: BPMN20InputOutputSpecificationImpl.
	self fillItems: lstItems tag: 'inputSet' class: BPMN20InputSetImpl.
	self fillItems: lstItems tag: 'itemAwareElement' class: BPMN20ItemAwareElementImpl.

	^ lstItems 
	
]

{ #category : #getset }
BPMN20ParserTagsXMLRef class >> lst02 [
	|lstItems|
	lstItems := Dictionary new.
	
	
	self fillItems: lstItems tag: 'dataInput' class: BPMN20DataInputImpl.
	self fillItems: lstItems tag: 'dataOutput' class: BPMN20DataOutputImpl.
	self fillItems: lstItems tag: 'dataStore' class: BPMN20DataStoreImpl.
	self fillItems: lstItems tag: 'property' class: BPMN20PropertyImpl.
	self fillItems: lstItems tag: 'lane' class: BPMN20LaneImpl.
	self fillItems: lstItems tag: 'laneSet' class: BPMN20LaneSetImpl.
	self fillItems: lstItems tag: 'loopCharacteristics' class: BPMN20LoopCharacteristicsImpl.
	self fillItems: lstItems tag: 'multiInstanceLoopCharacteristics' class: BPMN20MultiInstanceLoopCharacteristicsImpl.
	self fillItems: lstItems tag: 'standardLoopCharacteristics' class: BPMN20StandardLoopCharacteristicsImpl.
	self fillItems: lstItems tag: 'messageFlowAssociation' class: BPMN20MessageFlowAssociationImpl.
	self fillItems: lstItems tag: 'messageFlow' class: BPMN20MessageFlowImpl.
	self fillItems: lstItems tag: 'monitoring' class: BPMN20MonitoringImpl.
	self fillItems: lstItems tag: 'operation' class: BPMN20OperationImpl.
	self fillItems: lstItems tag: 'outputSet' class: BPMN20OutputSetImpl.
	self fillItems: lstItems tag: 'participantAssociation' class: BPMN20ParticipantAssociationImpl.
	self fillItems: lstItems tag: 'participant' class: BPMN20ParticipantImpl.
	self fillItems: lstItems tag: 'participantMultiplicity' class: BPMN20ParticipantMultiplicityImpl.
	self fillItems: lstItems tag: 'refToBeB' class: BPMN20RefToBeBuild.
	self fillItems: lstItems tag: 'incoming' class: BPMN20IncomingImpl.
	self fillItems: lstItems tag: 'outgoing' class: BPMN20OutgoingImpl.
	self fillItems: lstItems tag: 'sourceRef' class: BPMN20SourceRefImpl.
	self fillItems: lstItems tag: 'targetRef' class: BPMN20TargetRefImpl.
	self fillItems: lstItems tag: 'relationship' class: BPMN20RelationshipImpl.
	self fillItems: lstItems tag: 'rendering' class: BPMN20RenderingImpl.
	self fillItems: lstItems tag: 'resourceAssignmentExpression' class: BPMN20ResourceAssignmentExpressionImpl.
	self fillItems: lstItems tag: 'resourceParameterBinding' class: BPMN20ResourceParameterBindingImpl.
	self fillItems: lstItems tag: 'resourceParameter' class: BPMN20ResourceParameterImpl.
	self fillItems: lstItems tag: 'resourceRole' class: BPMN20ResourceRoleImpl.
	self fillItems: lstItems tag: 'performer' class: BPMN20PerformerImpl.
	self fillItems: lstItems tag: 'humanPerformer' class: BPMN20HumanPerformerImpl.
	self fillItems: lstItems tag: 'potentialOwner' class: BPMN20PotentialOwnerImpl.
	self fillItems: lstItems tag: 'rootElement' class: BPMN20RootElementImpl.
	self fillItems: lstItems tag: 'callableElement' class: BPMN20CallableElementImpl.
	self fillItems: lstItems tag: 'globalTask' class: BPMN20GlobalTaskImpl.
	self fillItems: lstItems tag: 'globalBusinessRuleTask' class: BPMN20GlobalBusinessRuleTaskImpl.
	self fillItems: lstItems tag: 'globalManualTask' class: BPMN20GlobalManualTaskImpl.
	self fillItems: lstItems tag: 'globalScriptTask' class: BPMN20GlobalScriptTaskImpl.
	self fillItems: lstItems tag: 'globalUserTask' class: BPMN20GlobalUserTaskImpl.
	self fillItems: lstItems tag: 'process' class: BPMN20ProcessImpl.
	self fillItems: lstItems tag: 'category' class: BPMN20CategoryImpl.
	self fillItems: lstItems tag: 'collaboration' class: BPMN20CollaborationImpl.
	self fillItems: lstItems tag: 'choreography' class: BPMN20ChoreographyImpl.
	self fillItems: lstItems tag: 'globalChoreographyTask' class: BPMN20GlobalChoreographyTaskImpl.
	self fillItems: lstItems tag: 'globalConversation' class: BPMN20GlobalConversationImpl.
	self fillItems: lstItems tag: 'correlationProperty' class: BPMN20CorrelationPropertyImpl.
	self fillItems: lstItems tag: 'endPoint' class: BPMN20EndPointImpl.
	self fillItems: lstItems tag: 'error' class: BPMN20ErrorImpl.
	self fillItems: lstItems tag: 'escalation' class: BPMN20EscalationImpl.
	self fillItems: lstItems tag: 'eventDefinition' class: BPMN20EventDefinitionImpl.
	self fillItems: lstItems tag: 'cancelEventDefinition' class: BPMN20CancelEventDefinitionImpl.
	self fillItems: lstItems tag: 'compensateEventDefinition' class: BPMN20CompensateEventDefinitionImpl.
	self fillItems: lstItems tag: 'conditionalEventDefinition' class: BPMN20ConditionalEventDefinitionImpl.
	self fillItems: lstItems tag: 'errorEventDefinition' class: BPMN20ErrorEventDefinitionImpl.
	self fillItems: lstItems tag: 'escalationEventDefinition' class: BPMN20EscalationEventDefinitionImpl.
	self fillItems: lstItems tag: 'linkEventDefinition' class: BPMN20LinkEventDefinitionImpl.
	self fillItems: lstItems tag: 'messageEventDefinition' class: BPMN20MessageEventDefinitionImpl.
	self fillItems: lstItems tag: 'signalEventDefinition' class: BPMN20SignalEventDefinitionImpl.

	self fillItems: lstItems tag: 'terminateEventDefinition' class: BPMN20TerminateEventDefinitionImpl.
	self fillItems: lstItems tag: 'timerEventDefinition' class: BPMN20TimerEventDefinitionImpl.
	self fillItems: lstItems tag: 'interface' class: BPMN20InterfaceImpl.
	self fillItems: lstItems tag: 'itemDefinition' class: BPMN20ItemDefinitionImpl.
	self fillItems: lstItems tag: 'message' class: BPMN20MessageImpl.
	
	self fillItems: lstItems tag: 'partnerEntity' class: BPMN20PartnerEntityImpl.
	self fillItems: lstItems tag: 'partnerRole' class: BPMN20PartnerRoleImpl.
	self fillItems: lstItems tag: 'resource' class: BPMN20ResourceImpl.
	self fillItems: lstItems tag: 'signal' class: BPMN20SignalImpl.

	^ lstItems 
	
]

{ #category : #getset }
BPMN20ParserTagsXMLRef class >> lst03 [
	|lstItems|
	lstItems := Dictionary new.
	
	self fillItems: lstItems tag: 'incoming' class: BPMN20IncomingImpl .
	self fillItems: lstItems tag: 'outgoing' class: BPMN20OutgoingImpl.
	self fillItems: lstItems tag: 'flowNodeRef' class: BPMN20FlowNodeRefImpl.
	
	
	self fillItems: lstItems tag: 'BPMNDiagram' class: BPMN20BPMNDiagramImpl.
	self fillItems: lstItems tag: 'BPMNPlane' class: BPMN20BPMNPlaneImpl.
	self fillItems: lstItems tag: 'BPMNShape' class: BPMN20BPMNShapeImpl.
	self fillItems: lstItems tag: 'BPMNLabel' class: BPMN20BPMNLabelImpl.
	self fillItems: lstItems tag: 'BPMNEdge' class: BPMN20BPMNEdgeImpl.
	self fillItems: lstItems tag: 'BPMNLabelStyle' class: BPMN20BPMNLabelStyleImpl.
	self fillItems: lstItems tag: 'BpmnDiFactory' class: BPMN20BpmnDiFactoryImpl.
	self fillItems: lstItems tag: 'BpmnDiPackage' class: BPMN20BpmnDiPackageImpl.
	self fillItems: lstItems tag: 'Bounds' class: BPMN20BoundsImpl.
	

	^ lstItems 
	
]

{ #category : #getset }
BPMN20ParserTagsXMLRef class >> lstOfRefTagClass [
	"self reset"
	|lstItems|
	lstItems := Dictionary new.
	lstItems addAll: self lst01.
	lstItems addAll: self lst02.
	lstItems addAll: self lst03.
	self copyList:lstItems with:'bpmn:'.
	self copyList:lstItems with:'bpmn2:'.
	self copyList:lstItems with:'semantic:'.

	^ lstItems
]

{ #category : #resetting }
BPMN20ParserTagsXMLRef class >> reset [
	"self reset"
	tags := nil.
	^ 'OK'
]
