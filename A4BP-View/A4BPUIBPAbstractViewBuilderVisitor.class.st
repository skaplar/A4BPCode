Class {
	#name : #A4BPUIBPAbstractViewBuilderVisitor,
	#superclass : #A4BPAbstractVisitor,
	#category : #'A4BP-View-UI-Builder'
}

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor class >> annotation [
<MSEClass: #A4BPUIBPAbstractViewBuilderVisitor  super: #A4BPAbstractVisitor >
<package: #'A4BP-View' >
]

{ #category : #visitor }
A4BPUIBPAbstractViewBuilderVisitor >> visitA4BPEmptyObj: aModel [
	"do nothing"
	^ ''
]

{ #category : #visitor }
A4BPUIBPAbstractViewBuilderVisitor >> visitA4BPObject: aModel [
	"do nothing"
	^ ''
]

{ #category : #visitorBPMN20 }
A4BPUIBPAbstractViewBuilderVisitor >> visitA4BPUnParserObj: aModel [ 
	^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20ActivityImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20AdHocSubProcessImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20ArtifactImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20AssignmentImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20AssociationImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20AuditingImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20BPMNDiagramImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20BPMNEdgeImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20BPMNLabelImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20BPMNLabelStyleImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20BPMNPlaneImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20BPMNShapeImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20BaseElementImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20BoundaryEventImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20Bpmn2FactoryImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20Bpmn2PackageImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20BpmnDiFactoryImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20BpmnDiPackageImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20BusinessRuleTaskImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20CallActivityImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20CallChoreographyImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20CallConversationImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20CallableElementImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20CancelEventDefinitionImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20CatchEventImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20CategoryImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20CategoryValueImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20ChoreographyActivityImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20ChoreographyImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20ChoreographyTaskImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20CollaborationImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20CompensateEventDefinitionImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20ComplexBehaviorDefinitionImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20ComplexGatewayImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20ConditionalEventDefinitionImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20ConversationAssociationImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20ConversationImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20ConversationLinkImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20ConversationNodeImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20CorrelationKeyImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20CorrelationPropertyBindingImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20CorrelationPropertyImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20CorrelationPropertyRetrievalExpressionImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20CorrelationSubscriptionImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20DataAssociationImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20DataInputAssociationImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20DataInputImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20DataObjectImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20DataObjectReferenceImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20DataOutputAssociationImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20DataOutputImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20DataStateImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20DataStoreImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20DataStoreReferenceImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20DefinitionsImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20DiFactoryImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20DiPackageImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20DiagramElementImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20DiagramImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20DocumentRootImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20DocumentationImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20EdgeImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20EndEventImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20EndPointImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20ErrorEventDefinitionImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20ErrorImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20EscalationEventDefinitionImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20EscalationImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20EventBasedGatewayImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20EventDefinitionImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20EventImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20ExclusiveGatewayImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20ExpressionImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20ExtensionAttributeDefinitionImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20ExtensionAttributeValueImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20ExtensionDefinitionImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20ExtensionElementsImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20ExtensionImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20FlowElementImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20FlowElementsContainerImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20FlowNodeImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20FontImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20FormalExpressionImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20GatewayImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20GlobalBusinessRuleTaskImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20GlobalChoreographyTaskImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20GlobalConversationImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20GlobalManualTaskImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20GlobalScriptTaskImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20GlobalTaskImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20GlobalUserTaskImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20GroupImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20HumanPerformerImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20ImplicitThrowEventImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20ImportImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20InclusiveGatewayImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20IncomingImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20InputOutputBindingImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20InputOutputSpecificationImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20InputSetImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20InteractionNodeImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20InterfaceImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20IntermediateCatchEventImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20IntermediateThrowEventImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20ItemAwareElementImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20ItemDefinitionImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20LabelImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20LabeledEdgeImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20LabeledShapeImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20LaneImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20LaneSetImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20LinkEventDefinitionImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20LoopCharacteristicsImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20ManualTaskImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20MessageEventDefinitionImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20MessageFlowAssociationImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20MessageFlowImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20MessageImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20MonitoringImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20MultiInstanceLoopCharacteristicsImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20NodeImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20OperationImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20OutgoingImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20OutputSetImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20ParallelGatewayImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20ParticipantAssociationImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20ParticipantImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20ParticipantMultiplicityImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20PartnerEntityImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20PartnerRoleImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20PerformerImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20PlaneImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20PointImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20PotentialOwnerImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20ProcessImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20PropertyImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20ReceiveTaskImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20RefToBeBuild: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20RelationshipImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20RenderingImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20ResourceAssignmentExpressionImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20ResourceImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20ResourceParameterBindingImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20ResourceParameterImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20ResourceRoleImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20RootElementImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20ScriptTaskImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20SendTaskImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20SequenceFlowImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20ServiceTaskImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20ShapeImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20SignalEventDefinitionImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20SignalImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20SourceRefImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20StandardLoopCharacteristicsImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20StartEventImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20StyleImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20SubChoreographyImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20SubConversationImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20SubProcessImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20TargetRefImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20TaskImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20TerminateEventDefinitionImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20TextAnnotationImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20ThrowEventImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20TimerEventDefinitionImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20TransactionImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #'as yet unclassified' }
A4BPUIBPAbstractViewBuilderVisitor >> visitBPMN20UserTaskImpl: aModel [
	^ self visitA4BPObject: aModel
]
