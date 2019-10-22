Class {
	#name : #A4BPUIBPModelColorBuilderVisitor,
	#superclass : #A4BPUIBPAbstractViewBuilderVisitor,
	#classInstVars : [
		'instance'
	],
	#category : #'A4BP-View-UI-Builder'
}

{ #category : #'as yet unclassified' }
A4BPUIBPModelColorBuilderVisitor class >> annotation [
<MSEClass: #A4BPUIBPModelColorBuilderVisitor  super: #A4BPUIBPAbstractViewBuilderVisitor >
<package: #'A4BP-View' >
]

{ #category : #'as yet unclassified' }
A4BPUIBPModelColorBuilderVisitor class >> icon: aModel [
	^ aModel accept: self instance
]

{ #category : #'as yet unclassified' }
A4BPUIBPModelColorBuilderVisitor class >> instance [
	^ instance ifNil: [ instance := self new ]
]

{ #category : #'visitor-A4BP' }
A4BPUIBPModelColorBuilderVisitor >> visitA4BPEmptyObj: aModel [
	^ Color lightGray alpha:0.2
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitA4BPObject: aModel [
	^ Color lightGray
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitA4BPUnParserObj: aModel [
	^ Color red
]

{ #category : #visitor }
A4BPUIBPModelColorBuilderVisitor >> visitBPActivity: aModel [
	^ self visitBPObject: aModel
]

{ #category : #visitor }
A4BPUIBPModelColorBuilderVisitor >> visitBPAssign: aModel [
	^ Color orange 
]

{ #category : #visitor }
A4BPUIBPModelColorBuilderVisitor >> visitBPCatch: aModel [
	^ Color red 
]

{ #category : #visitor }
A4BPUIBPModelColorBuilderVisitor >> visitBPCatchAll: aModel [
	^ Color red
]

{ #category : #visitor }
A4BPUIBPModelColorBuilderVisitor >> visitBPFaultHandlers: aModel [
	^ Color red alpha:0.5 
]

{ #category : #visitor }
A4BPUIBPModelColorBuilderVisitor >> visitBPFlow: aModel [
	^ Color lightGray  
]

{ #category : #visitor }
A4BPUIBPModelColorBuilderVisitor >> visitBPInvoke: aModel [
	^ Color purple  
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20ActivityImpl: aModel [
	^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20AdHocSubProcessImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20ArtifactImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20AssignmentImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20AssociationImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20AuditingImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20BPMNDiagramImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20BPMNEdgeImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20BPMNLabelImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20BPMNLabelStyleImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20BPMNPlaneImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20BPMNShapeImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20BaseElementImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20BoundaryEventImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20Bpmn2FactoryImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20Bpmn2PackageImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20BpmnDiFactoryImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20BpmnDiPackageImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20BusinessRuleTaskImpl: aModel [
	^ self visitBPMN20TaskImpl: aModel 
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20CallActivityImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20CallChoreographyImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20CallConversationImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20CallableElementImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20CancelEventDefinitionImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20CatchEventImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20CategoryImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20CategoryValueImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20ChoreographyActivityImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20ChoreographyImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20ChoreographyTaskImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20CollaborationImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20CompensateEventDefinitionImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20ComplexBehaviorDefinitionImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20ComplexGatewayImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20ConditionalEventDefinitionImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20ConversationAssociationImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20ConversationImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20ConversationLinkImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20ConversationNodeImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20CorrelationKeyImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20CorrelationPropertyBindingImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20CorrelationPropertyImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20CorrelationPropertyRetrievalExpressionImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20CorrelationSubscriptionImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20DataAssociationImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20DataInputAssociationImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20DataInputImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20DataObjectImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20DataObjectReferenceImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20DataOutputAssociationImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20DataOutputImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20DataStateImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20DataStoreImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20DataStoreReferenceImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20DefinitionsImpl: aModel [
	^ Color blue alpha:0.9
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20DiFactoryImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20DiPackageImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20DiagramElementImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20DiagramImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20DocumentRootImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20DocumentationImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20EdgeImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20EndEventImpl: aModel [
	^ (Color r: 0.988 g: 0.306 b: 0.164 alpha: 1.0)
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20EndPointImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20ErrorEventDefinitionImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20ErrorImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20EscalationEventDefinitionImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20EscalationImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20EventBasedGatewayImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20EventDefinitionImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20EventImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20ExclusiveGatewayImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20ExpressionImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20ExtensionAttributeDefinitionImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20ExtensionAttributeValueImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20ExtensionDefinitionImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20ExtensionElementsImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20ExtensionImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20FlowElementImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20FlowElementsContainerImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20FlowNodeImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20FlowNodeRefImpl: aModel [
	^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20FontImpl: aModel [
	^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20FormalExpressionImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20GatewayImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20GlobalBusinessRuleTaskImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20GlobalChoreographyTaskImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20GlobalConversationImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20GlobalManualTaskImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20GlobalScriptTaskImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20GlobalTaskImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20GlobalUserTaskImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20GroupImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20HumanPerformerImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20ImplicitThrowEventImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20ImportImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20InclusiveGatewayImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20IncomingImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20InputOutputBindingImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20InputOutputSpecificationImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20InputSetImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20InteractionNodeImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20InterfaceImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20IntermediateCatchEventImpl: aModel [
	^ (Color r: 0.875 g: 0.761 b: 0.49 alpha: 1.0)
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20IntermediateThrowEventImpl: aModel [
	^ (Color r: 0.875 g: 0.761 b: 0.49 alpha: 1.0)
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20ItemAwareElementImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20ItemDefinitionImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20LabelImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20LabeledEdgeImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20LabeledShapeImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20LaneImpl: aModel [
	^ (Color r: 0.9410000000000001 g: 0.9410000000000001 b: 0.9410000000000001 alpha: 0.5)
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20LaneSetImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20LinkEventDefinitionImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20LoopCharacteristicsImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20ManualTaskImpl: aModel [
	^ self visitBPMN20TaskImpl: aModel 
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20MessageEventDefinitionImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20MessageFlowAssociationImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20MessageFlowImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20MessageImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20MonitoringImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20MultiInstanceLoopCharacteristicsImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20NodeImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20OperationImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20OutgoingImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20OutputSetImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20ParallelGatewayImpl: aModel [
	^ (Color r: 1.0 g: 0.93 b: 0.628 alpha: 1.0)
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20ParticipantAssociationImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20ParticipantImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20ParticipantMultiplicityImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20PartnerEntityImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20PartnerRoleImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20PerformerImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20PlaneImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20PointImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20PotentialOwnerImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20ProcessImpl: aModel [
	^ (Color r: 0.926 g: 0.439 b: 0.078 alpha: 1.0) 
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20PropertyImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20ReceiveTaskImpl: aModel [
	^ self visitBPMN20TaskImpl: aModel 
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20RefToBeBuild: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20RelationshipImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20RenderingImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20ResourceAssignmentExpressionImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20ResourceImpl: aModel [
	^ (Color r: 0.678 g: 0.867 b: 0.557 alpha: 1.0)
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20ResourceParameterBindingImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20ResourceParameterImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20ResourceRoleImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20RootElementImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20ScriptTaskImpl: aModel [
	^ self visitBPMN20TaskImpl: aModel 
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20SendTaskImpl: aModel [
	^ self visitBPMN20TaskImpl: aModel 
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20SequenceFlowImpl: aModel [
	^ (Color r: 0.404 g: 0.0 b: 0.121 alpha: 1.0)
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20ServiceTaskImpl: aModel [
	^ self visitBPMN20TaskImpl: aModel 
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20ShapeImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20SignalEventDefinitionImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20SignalImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20SourceRefImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20StandardLoopCharacteristicsImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20StartEventImpl: aModel [
	^ (Color r: 0.8 g: 0.922 b: 0.772 alpha: 1.0)
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20StyleImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20SubChoreographyImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20SubConversationImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20SubProcessImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20TargetRefImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20TaskImpl: aModel [
	^ (Color r: 0.749 g: 0.8270000000000001 b: 0.902 alpha: 1.0)
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20TerminateEventDefinitionImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20TextAnnotationImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20ThrowEventImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20TimerEventDefinitionImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20TransactionImpl: aModel [
			^ self visitA4BPObject: aModel
]

{ #category : #visitorBPMN20 }
A4BPUIBPModelColorBuilderVisitor >> visitBPMN20UserTaskImpl: aModel [
	^ self visitBPMN20TaskImpl: aModel 
]

{ #category : #visitor }
A4BPUIBPModelColorBuilderVisitor >> visitBPObject: aModel [
	^ Color black 
]

{ #category : #visitor }
A4BPUIBPModelColorBuilderVisitor >> visitBPPartnerLink: aBPPartnerLink [
	^ Color blue 
]

{ #category : #visitor }
A4BPUIBPModelColorBuilderVisitor >> visitBPPartnerLinks: aBPPartnerLinks [
	^ Color blue 
]

{ #category : #visitor }
A4BPUIBPModelColorBuilderVisitor >> visitBPPick: aBPPick [
	^ Color orange
]

{ #category : #visitor }
A4BPUIBPModelColorBuilderVisitor >> visitBPProcess: aModel [
	^ Color blue alpha:0.5
]

{ #category : #visitor }
A4BPUIBPModelColorBuilderVisitor >> visitBPReceive: aModel [
	^ Color blue 
]

{ #category : #visitor }
A4BPUIBPModelColorBuilderVisitor >> visitBPScope: aModel [
	^ Color grayScale256: 100 
]

{ #category : #visitor }
A4BPUIBPModelColorBuilderVisitor >> visitBPSequence: aBPSequence [
	^ Color blue 
]

{ #category : #visitor }
A4BPUIBPModelColorBuilderVisitor >> visitBPVariable: aBPVariable [
	^ Color green 
]

{ #category : #visitor }
A4BPUIBPModelColorBuilderVisitor >> visitBPVariables: aBPVariables [
	^ Color blue 
]

{ #category : #visitor }
A4BPUIBPModelColorBuilderVisitor >> visitBPWSDLwsdl: aModel [
		^ Color yellow  
]

{ #category : #'visitor-XSD' }
A4BPUIBPModelColorBuilderVisitor >> visitBPXSDElement: aModel [
	^ Color lightBrown alpha:0.2
]

{ #category : #visitor }
A4BPUIBPModelColorBuilderVisitor >> visitSOAAnalyzer: aModel [
	^ Color blue 
]

{ #category : #visitor }
A4BPUIBPModelColorBuilderVisitor >> visitSOAContext: aSOAContext [
	^ Color blue
]
