"
An A4BPAbstractVisitor is basic class to help to avoid visitor who not need all visitor implementation.

"
Class {
	#name : #A4BPAbstractVisitor,
	#superclass : #Object,
	#category : #'A4BP-core-visitor'
}

{ #category : #initialization }
A4BPAbstractVisitor >> initialize [
	"comment stating purpose of message"

	super initialize.
]

{ #category : #'visitor-A4BP' }
A4BPAbstractVisitor >> visitA4BPEmptyObj: aModel [
	^ self visitA4BPObject: aModel
]

{ #category : #'visitor-A4BP' }
A4BPAbstractVisitor >> visitA4BPObject: aModel [
	"do nothing"
]

{ #category : #visitor }
A4BPAbstractVisitor >> visitA4BPSOAContext: aModel [
	^ 0
]

{ #category : #'visitor-A4BP' }
A4BPAbstractVisitor >> visitA4BPUnParserObj: aModel [
	^ self visitA4BPObject: aModel
]

{ #category : #'visitor-BPEL-Activity-Basic' }
A4BPAbstractVisitor >> visitBBPWait: aBPWait [
	^ self visitBPObject: aBPWait 
]

{ #category : #'visitor-BPEL-Activity' }
A4BPAbstractVisitor >> visitBPActivity: aBPActivity [
	^ self visitBPObject: aBPActivity 
]

{ #category : #'visitor-BPEL-Activity-Basic' }
A4BPAbstractVisitor >> visitBPActivityBasic: aBPActivityBasic [
	^ self visitBPObject: aBPActivityBasic 
]

{ #category : #'visitor-BPEL-Activity' }
A4BPAbstractVisitor >> visitBPActivityComposite: aBPActivityComposite [
	^ self visitBPObject: aBPActivityComposite 
]

{ #category : #'visitor-BPEL-Activity-Basic' }
A4BPAbstractVisitor >> visitBPAssign: aBPAssign [
	^ self visitBPObject: aBPAssign 
]

{ #category : #'visitor-BPEL' }
A4BPAbstractVisitor >> visitBPBPELObject: aModel [
	^ self visitBPObject: aModel
]

{ #category : #'visitor-BPEL-Activity-Basic' }
A4BPAbstractVisitor >> visitBPCatch: aBPCatch [
	^ self visitBPObject: aBPCatch 
]

{ #category : #'visitor-BPEL-Activity-Basic' }
A4BPAbstractVisitor >> visitBPCatchAll: aBPCatchAll [
		^ self visitBPObject: aBPCatchAll 
]

{ #category : #'visitor-BPEL' }
A4BPAbstractVisitor >> visitBPCopy: aBPCopy [
	^ self visitBPObject: aBPCopy 
]

{ #category : #'visitor-BPEL-Activity-Basic' }
A4BPAbstractVisitor >> visitBPElseIf: aBPElseIf [
	^ self visitBPObject: aBPElseIf 
]

{ #category : #'visitor-BPEL-Activity-Basic' }
A4BPAbstractVisitor >> visitBPEmpty: aBPEmpty [
	^ self visitBPObject: aBPEmpty 
]

{ #category : #'visitor-BPEL-Activity-Basic' }
A4BPAbstractVisitor >> visitBPExit: aBPExit [
	^ self visitBPObject: 	aBPExit 
]

{ #category : #'visitor-BPEL-Activity' }
A4BPAbstractVisitor >> visitBPExtensionActitity: aBPExtensionActitity [
	^ self visitBPObject: aBPExtensionActitity 
]

{ #category : #'visitor-BPEL' }
A4BPAbstractVisitor >> visitBPFaultHandlers: aBPFaultHandlers [
	^ self visitBPObject: aBPFaultHandlers 
]

{ #category : #'visitor-BPEL-Activity' }
A4BPAbstractVisitor >> visitBPFlow: aBPFlow [
	^ self visitBPObject: aBPFlow 
]

{ #category : #'visitor-BPEL' }
A4BPAbstractVisitor >> visitBPFor: aBPFor [
	^ self visitBPObject: aBPFor
]

{ #category : #'visitor-BPEL-Activity' }
A4BPAbstractVisitor >> visitBPForEach: aBPForEach [
	^ self visitBPObject: aBPForEach 
]

{ #category : #'visitor-BPEL' }
A4BPAbstractVisitor >> visitBPForUntilGroup: aBPForUntilGroup [
	^ self visitBPObject: aBPForUntilGroup
]

{ #category : #'visitor-BPEL' }
A4BPAbstractVisitor >> visitBPFrom: aBPFrom [
	^ self visitBPObject: aBPFrom
]

{ #category : #'visitor-BPEL-Activity' }
A4BPAbstractVisitor >> visitBPIf: aBPIf [
	^ self visitBPObject: aBPIf 
]

{ #category : #'visitor-BPEL-Activity-Basic' }
A4BPAbstractVisitor >> visitBPInvoke: aBPInvoke [
	^ self visitBPObject: 	aBPInvoke 
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20ActivityImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20AdHocSubProcessImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20ArtifactImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20AssignmentImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20AssociationImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20AuditingImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20BPMNDiagramImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20BPMNEdgeImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20BPMNLabelImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20BPMNLabelStyleImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20BPMNPlaneImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20BPMNShapeImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20BaseElementImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20BoundaryEventImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20BoundsImpl: aModel [
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20Bpmn2FactoryImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20Bpmn2PackageImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20BpmnDiFactoryImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20BpmnDiPackageImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20BusinessRuleTaskImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20CallActivityImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20CallChoreographyImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20CallConversationImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20CallableElementImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20CancelEventDefinitionImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20CatchEventImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20CategoryImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20CategoryValueImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20ChoreographyActivityImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20ChoreographyImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20ChoreographyTaskImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20CollaborationImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20CompensateEventDefinitionImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20ComplexBehaviorDefinitionImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20ComplexGatewayImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20ConditionalEventDefinitionImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20ConversationAssociationImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20ConversationImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20ConversationLinkImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20ConversationNodeImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20CorrelationKeyImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20CorrelationPropertyBindingImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20CorrelationPropertyImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20CorrelationPropertyRetrievalExpressionImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20CorrelationSubscriptionImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20DataAssociationImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20DataInputAssociationImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20DataInputImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20DataObjectImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20DataObjectReferenceImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20DataOutputAssociationImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20DataOutputImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20DataStateImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20DataStoreImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20DataStoreReferenceImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20DefinitionsImpl: aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20DiFactoryImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20DiPackageImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20DiagramElementImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20DiagramImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20DocumentRootImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20DocumentationImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20EdgeImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20EndEventImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20EndPointImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20ErrorEventDefinitionImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20ErrorImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20EscalationEventDefinitionImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20EscalationImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20EventBasedGatewayImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20EventDefinitionImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20EventImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20ExclusiveGatewayImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20ExpressionImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20ExtensionAttributeDefinitionImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20ExtensionAttributeValueImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20ExtensionDefinitionImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20ExtensionElementsImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20ExtensionImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20FlowElementImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20FlowElementsContainerImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20FlowNodeImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20FlowNodeRefImpl: aModel [
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20FormalExpressionImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20GatewayImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20GlobalBusinessRuleTaskImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20GlobalChoreographyTaskImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20GlobalConversationImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20GlobalManualTaskImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20GlobalScriptTaskImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20GlobalTaskImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20GlobalUserTaskImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20GroupImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20HumanPerformerImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20ImplicitThrowEventImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20ImportImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20InclusiveGatewayImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20IncomingImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20InputOutputBindingImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20InputOutputSpecificationImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20InputSetImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20InteractionNodeImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20InterfaceImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20IntermediateCatchEventImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20IntermediateThrowEventImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20ItemAwareElementImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20ItemDefinitionImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20LabelImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20LabeledEdgeImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20LabeledShapeImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20LaneImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20LaneSetImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20LinkEventDefinitionImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20LoopCharacteristicsImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20ManualTaskImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20MessageEventDefinitionImpl: aModel [
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20MessageFlowAssociationImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20MessageFlowImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20MessageImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20MonitoringImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20MultiInstanceLoopCharacteristicsImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20NodeImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20Object: aModel [
	^ self visitBPObject: aModel 
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20OperationImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20OutgoingImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20OutputSetImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20ParallelGatewayImpl: aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20ParticipantAssociationImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20ParticipantImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20ParticipantMultiplicityImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20PartnerEntityImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20PartnerRoleImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20PerformerImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20PlaneImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20PotentialOwnerImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20ProcessImpl: aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20PropertyImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20ReceiveTaskImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20RefToBeBuild:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20RelationshipImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20RenderingImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20ResourceAssignmentExpressionImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20ResourceImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20ResourceParameterBindingImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20ResourceParameterImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20ResourceRoleImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20RootElementImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20ScriptTaskImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20SendTaskImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20SequenceFlowImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20ServiceTaskImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20ShapeImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20SignalEventDefinitionImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20SignalImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20SourceRefImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20StandardLoopCharacteristicsImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20StartEventImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20StyleImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20SubChoreographyImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20SubConversationImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20SubProcessImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20TargetRefImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20TaskImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20TerminateEventDefinitionImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20TextAnnotationImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20ThrowEventImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20TimerEventDefinitionImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20TransactionImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPMN20UserTaskImpl:aModel [ 
	^ self visitBPMN20Object: aModel
]

{ #category : #'visitor-BPMN20' }
A4BPAbstractVisitor >> visitBPNM20ExtensionImpl: aModel [
	^ self visitBPMN20Object: aModel
]

{ #category : #visitor }
A4BPAbstractVisitor >> visitBPObject: aBPObject [
	^ 0
]

{ #category : #'visitor-BPEL' }
A4BPAbstractVisitor >> visitBPOnAlarmEvent: aBPOnAlarmEvent [
	^ self visitBPObject: aBPOnAlarmEvent
]

{ #category : #'visitor-BPEL' }
A4BPAbstractVisitor >> visitBPOnEvent: aBPOnEvent [
	^ self visitBPObject: aBPOnEvent
]

{ #category : #'visitor-BPEL' }
A4BPAbstractVisitor >> visitBPOnMessage: aBPOnMessage [
	^ self visitBPObject: aBPOnMessage
]

{ #category : #'visitor-BPEL' }
A4BPAbstractVisitor >> visitBPOnMsgCommon: aBPOnMsgCommon [
	^ self visitBPObject: aBPOnMsgCommon
]

{ #category : #'visitor-BPEL' }
A4BPAbstractVisitor >> visitBPPartnerLink: aBPPartnerLink [
	^ self visitBPObject: 	aBPPartnerLink 
]

{ #category : #'visitor-BPEL' }
A4BPAbstractVisitor >> visitBPPartnerLinks: aBPPartnerLinks [
	^ self visitBPObject: aBPPartnerLinks 
]

{ #category : #'visitor-BPEL-Activity' }
A4BPAbstractVisitor >> visitBPPick: aBPPick [
	^ self visitBPObject: aBPPick 
]

{ #category : #'visitor-BPEL' }
A4BPAbstractVisitor >> visitBPProcess: aBPProcess [
	^ self visitBPObject: aBPProcess 
]

{ #category : #'visitor-BPEL-Activity-Basic' }
A4BPAbstractVisitor >> visitBPReceive: aBPReceive [
	^ self visitBPObject: aBPReceive 
]

{ #category : #visitor }
A4BPAbstractVisitor >> visitBPRel: aVisitor [
		^ self visitBPObject: aVisitor 
]

{ #category : #'visitor-BPEL' }
A4BPAbstractVisitor >> visitBPRepeatEvery: aBPRepeatEvery [
	^ self visitBPObject: aBPRepeatEvery
]

{ #category : #'visitor-BPEL-Activity' }
A4BPAbstractVisitor >> visitBPRepeatUntil: aBPRepeatUntil [
	^ self visitBPObject: aBPRepeatUntil 
]

{ #category : #'visitor-BPEL-Activity-Basic' }
A4BPAbstractVisitor >> visitBPReply: aBPReply [
	^ self visitBPObject: aBPReply 
]

{ #category : #'visitor-BPEL-Activity-Basic' }
A4BPAbstractVisitor >> visitBPRethrow: aBPRethrow [
	^ self visitBPObject: aBPRethrow 
]

{ #category : #'visitor-BPEL-Activity' }
A4BPAbstractVisitor >> visitBPScope: aBPScope [
	^ self visitBPObject: aBPScope 
]

{ #category : #'visitor-BPEL-Activity' }
A4BPAbstractVisitor >> visitBPSequence: aBPSequence [
	^ self visitBPObject: aBPSequence 
]

{ #category : #'visitor-BPEL-Activity' }
A4BPAbstractVisitor >> visitBPSwitch: aBPSwitch [
	^ self visitBPObject: aBPSwitch 
]

{ #category : #'visitor-BPEL-Activity-Basic' }
A4BPAbstractVisitor >> visitBPThrow: aBPThrow [
	^ self visitBPObject: aBPThrow 
]

{ #category : #'visitor-BPEL' }
A4BPAbstractVisitor >> visitBPTo: aBPTo [
	^ self visitBPObject: aBPTo
]

{ #category : #'visitor-BPEL' }
A4BPAbstractVisitor >> visitBPUntil: aBPUntil [
	^ self visitBPObject: aBPUntil
]

{ #category : #'visitor-BPEL-Activity' }
A4BPAbstractVisitor >> visitBPValidate: aBPValidate [
	^ self visitBPObject: aBPValidate 
]

{ #category : #'visitor-BPEL' }
A4BPAbstractVisitor >> visitBPVariable: aBPVariable [
	^ self visitBPObject: aBPVariable 
]

{ #category : #'visitor-BPEL' }
A4BPAbstractVisitor >> visitBPVariables: aBPVariables [
	^ self visitBPObject: 	aBPVariables 
]

{ #category : #'visitor-WSDL' }
A4BPAbstractVisitor >> visitBPWSDLBinding: aObj [
	^ self visitBPObject: aObj
]

{ #category : #'visitor-WSDL' }
A4BPAbstractVisitor >> visitBPWSDLDefinition: aObj [
	^ self visitBPObject: aObj
]

{ #category : #'visitor-WSDL' }
A4BPAbstractVisitor >> visitBPWSDLDocumentation: aObj [
	^ self visitBPObject: aObj
]

{ #category : #'visitor-WSDL' }
A4BPAbstractVisitor >> visitBPWSDLElement: aObj [
	^ self visitBPObject: aObj
]

{ #category : #'visitor-WSDL' }
A4BPAbstractVisitor >> visitBPWSDLImport: aObj [
	^ self visitBPObject: aObj
]

{ #category : #'visitor-WSDL' }
A4BPAbstractVisitor >> visitBPWSDLInclude:  aObj [
	^ self visitBPObject: aObj
]

{ #category : #'visitor-WSDL' }
A4BPAbstractVisitor >> visitBPWSDLMessage:  aObj [
	^ self visitBPObject: aObj
]

{ #category : #'visitor-WSDL' }
A4BPAbstractVisitor >> visitBPWSDLObject: aModel [
	^ self visitBPObject: aModel
]

{ #category : #'visitor-WSDL' }
A4BPAbstractVisitor >> visitBPWSDLOperation:  aObj [
	^ self visitBPObject: aObj
]

{ #category : #'visitor-WSDL' }
A4BPAbstractVisitor >> visitBPWSDLPart: aObj [
	^ self visitBPObject: aObj
]

{ #category : #'visitor-WSDL' }
A4BPAbstractVisitor >> visitBPWSDLPlnkRole: aObj [
	^ self visitBPObject: aObj
]

{ #category : #'visitor-WSDL' }
A4BPAbstractVisitor >> visitBPWSDLPlnkType: aObj [
	^ self visitBPObject: aObj
]

{ #category : #'visitor-WSDL' }
A4BPAbstractVisitor >> visitBPWSDLPort: aObj [
	^ self visitBPObject: aObj
]

{ #category : #'visitor-WSDL' }
A4BPAbstractVisitor >> visitBPWSDLPortType:aObj [
	^ self visitBPObject: aObj
]

{ #category : #'visitor-WSDL' }
A4BPAbstractVisitor >> visitBPWSDLSchema: aModel [
	^ self visitBPObject: aModel
]

{ #category : #'visitor-WSDL' }
A4BPAbstractVisitor >> visitBPWSDLService: aObj [
	^ self visitBPObject: aObj
]

{ #category : #'visitor-WSDL' }
A4BPAbstractVisitor >> visitBPWSDLTypes: aObj [
	^ self visitBPObject: aObj
]

{ #category : #'visitor-WSDL' }
A4BPAbstractVisitor >> visitBPWSDLwsdl: aBPWSDLwsdl [
	^ self visitBPObject: 	aBPWSDLwsdl 
]

{ #category : #'visitor-BPEL-Activity' }
A4BPAbstractVisitor >> visitBPWhile: aBPWhile [
	^ self visitBPObject: aBPWhile 
]

{ #category : #'visitor-XSD' }
A4BPAbstractVisitor >> visitBPXSDComplexType: aModel [
	^ self visitBPObject: aModel
]

{ #category : #'visitor-XSD' }
A4BPAbstractVisitor >> visitBPXSDElement: aModel [
	^ self visitBPObject: aModel
]

{ #category : #'visitor-XSD' }
A4BPAbstractVisitor >> visitBPXSDImport: aObj [
	^ self visitBPObject: aObj
]

{ #category : #'visitor-XSD' }
A4BPAbstractVisitor >> visitBPXSDInclude: aObj [
	^ self visitBPObject: aObj
]

{ #category : #'visitor-XSD' }
A4BPAbstractVisitor >> visitBPXSDObject: aModel [
	^ self visitBPObject: aModel
]

{ #category : #'visitor-XSD' }
A4BPAbstractVisitor >> visitBPXSDSchema: aObj [
	^ self visitBPObject: aObj
]

{ #category : #'visitor-XSD' }
A4BPAbstractVisitor >> visitBPXSDSequence: aObj [
	^ self visitBPObject: aObj
]

{ #category : #'visitor-XSD' }
A4BPAbstractVisitor >> visitBPXSDSimpleType: aModel [
	^ self visitBPObject: aModel
]

{ #category : #visitor }
A4BPAbstractVisitor >> visitSOAAnalyzer: aModel [
	^ 0
]
