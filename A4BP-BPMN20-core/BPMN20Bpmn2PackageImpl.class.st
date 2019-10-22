Class {
	#name : #BPMN20Bpmn2PackageImpl,
	#superclass : #BPMN20Object,
	#instVars : [
		'resourceParameterBindingEClass',
		'potentialOwnerEClass',
		'categoryEClass',
		'linkEventDefinitionEClass',
		'processEClass',
		'participantEClass',
		'parallelGatewayEClass',
		'assignmentEClass',
		'correlationPropertyRetrievalExpressionEClass',
		'dataObjectReferenceEClass',
		'participantMultiplicityEClass',
		'escalationEClass',
		'flowElementEClass',
		'eventEClass',
		'flowElementsContainerEClass',
		'globalChoreographyTaskEClass',
		'signalEventDefinitionEClass',
		'operationEClass',
		'exclusiveGatewayEClass',
		'userTaskEClass',
		'multiInstanceLoopCharacteristicsEClass',
		'choreographyActivityEClass',
		'globalScriptTaskEClass',
		'signalEClass',
		'callChoreographyEClass',
		'extensionAttributeValueEClass',
		'resourceAssignmentExpressionEClass',
		'artifactEClass',
		'inputSetEClass',
		'relationshipEClass',
		'dataInputEClass',
		'gatewayEClass',
		'choreographyLoopTypeEEnum',
		'eventBasedGatewayTypeEEnum',
		'transactionEClass',
		'compensateEventDefinitionEClass',
		'resourceParameterEClass',
		'auditingEClass',
		'adHocOrderingEEnum',
		'messageFlowAssociationEClass',
		'throwEventEClass',
		'callActivityEClass',
		'choreographyTaskEClass',
		'dataAssociationEClass',
		'formalExpressionEClass',
		'monitoringEClass',
		'conversationNodeEClass',
		'dataStoreEClass',
		'loopCharacteristicsEClass',
		'gatewayDirectionEEnum',
		'dataOutputAssociationEClass',
		'globalConversationEClass',
		'correlationSubscriptionEClass',
		'messageFlowEClass',
		'correlationKeyEClass',
		'correlationPropertyEClass',
		'messageEClass',
		'dataStateEClass',
		'flowNodeEClass',
		'definitionsEClass',
		'taskEClass',
		'relationshipDirectionEEnum',
		'conditionalEventDefinitionEClass',
		'expressionEClass',
		'globalTaskEClass',
		'globalUserTaskEClass',
		'performerEClass',
		'conversationEClass',
		'isFixed',
		'eventBasedGatewayEClass',
		'errorEClass',
		'groupEClass',
		'conversationAssociationEClass',
		'outputSetEClass',
		'baseElementEClass',
		'activityEClass',
		'globalManualTaskEClass',
		'interactionNodeEClass',
		'resourceRoleEClass',
		'conversationLinkEClass',
		'itemDefinitionEClass',
		'timerEventDefinitionEClass',
		'boundaryEventEClass',
		'subConversationEClass',
		'associationEClass',
		'documentRootEClass',
		'messageEventDefinitionEClass',
		'resourceEClass',
		'inputOutputSpecificationEClass',
		'businessRuleTaskEClass',
		'documentationEClass',
		'packageFilename',
		'callableElementEClass',
		'extensionAttributeDefinitionEClass',
		'inclusiveGatewayEClass',
		'partnerEntityEClass',
		'globalBusinessRuleTaskEClass',
		'callConversationEClass',
		'receiveTaskEClass',
		'associationDirectionEEnum',
		'complexGatewayEClass',
		'itemAwareElementEClass',
		'laneSetEClass',
		'sequenceFlowEClass',
		'dataStoreReferenceEClass',
		'correlationPropertyBindingEClass',
		'participantAssociationEClass',
		'scriptTaskEClass',
		'multiInstanceBehaviorEEnum',
		'sendTaskEClass',
		'manualTaskEClass',
		'extensionDefinitionEClass',
		'cancelEventDefinitionEClass',
		'escalationEventDefinitionEClass',
		'interfaceEClass',
		'processTypeEEnum',
		'intermediateThrowEventEClass',
		'catchEventEClass',
		'subProcessEClass',
		'isInited',
		'choreographyEClass',
		'isLoaded',
		'endPointEClass',
		'propertyEClass',
		'humanPerformerEClass',
		'collaborationEClass',
		'complexBehaviorDefinitionEClass',
		'dataObjectEClass',
		'categoryValueEClass',
		'implicitThrowEventEClass',
		'textAnnotationEClass',
		'rootElementEClass',
		'startEventEClass',
		'laneEClass',
		'endEventEClass',
		'dataOutputEClass',
		'dataInputAssociationEClass',
		'intermediateCatchEventEClass',
		'subChoreographyEClass',
		'importEClass',
		'terminateEventDefinitionEClass',
		'itemKindEEnum',
		'inputOutputBindingEClass',
		'extensionEClass',
		'adHocSubProcessEClass',
		'standardLoopCharacteristicsEClass',
		'eventDefinitionEClass',
		'errorEventDefinitionEClass',
		'renderingEClass',
		'partnerRoleEClass',
		'serviceTaskEClass'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl class >> annotation [
<MSEClass: #BPMN20Bpmn2PackageImpl  super: #BPMN20Object >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20Bpmn2PackageImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> activityEClass [
^ activityEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> activityEClass: aactivityEClass [
^ activityEClass := aactivityEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> adHocOrderingEEnum [
^ adHocOrderingEEnum
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> adHocOrderingEEnum: aadHocOrderingEEnum [
^ adHocOrderingEEnum := aadHocOrderingEEnum
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> adHocSubProcessEClass [
^ adHocSubProcessEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> adHocSubProcessEClass: aadHocSubProcessEClass [
^ adHocSubProcessEClass := aadHocSubProcessEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> artifactEClass [
^ artifactEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> artifactEClass: aartifactEClass [
^ artifactEClass := aartifactEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> assignmentEClass [
^ assignmentEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> assignmentEClass: aassignmentEClass [
^ assignmentEClass := aassignmentEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> associationDirectionEEnum [
^ associationDirectionEEnum
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> associationDirectionEEnum: aassociationDirectionEEnum [
^ associationDirectionEEnum := aassociationDirectionEEnum
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> associationEClass [
^ associationEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> associationEClass: aassociationEClass [
^ associationEClass := aassociationEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> auditingEClass [
^ auditingEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> auditingEClass: aauditingEClass [
^ auditingEClass := aauditingEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> baseElementEClass [
^ baseElementEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> baseElementEClass: abaseElementEClass [
^ baseElementEClass := abaseElementEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> boundaryEventEClass [
^ boundaryEventEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> boundaryEventEClass: aboundaryEventEClass [
^ boundaryEventEClass := aboundaryEventEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> businessRuleTaskEClass [
^ businessRuleTaskEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> businessRuleTaskEClass: abusinessRuleTaskEClass [
^ businessRuleTaskEClass := abusinessRuleTaskEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> callActivityEClass [
^ callActivityEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> callActivityEClass: acallActivityEClass [
^ callActivityEClass := acallActivityEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> callChoreographyEClass [
^ callChoreographyEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> callChoreographyEClass: acallChoreographyEClass [
^ callChoreographyEClass := acallChoreographyEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> callConversationEClass [
^ callConversationEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> callConversationEClass: acallConversationEClass [
^ callConversationEClass := acallConversationEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> callableElementEClass [
^ callableElementEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> callableElementEClass: acallableElementEClass [
^ callableElementEClass := acallableElementEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> cancelEventDefinitionEClass [
^ cancelEventDefinitionEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> cancelEventDefinitionEClass: acancelEventDefinitionEClass [
^ cancelEventDefinitionEClass := acancelEventDefinitionEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> catchEventEClass [
^ catchEventEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> catchEventEClass: acatchEventEClass [
^ catchEventEClass := acatchEventEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> categoryEClass [
^ categoryEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> categoryEClass: acategoryEClass [
^ categoryEClass := acategoryEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> categoryValueEClass [
^ categoryValueEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> categoryValueEClass: acategoryValueEClass [
^ categoryValueEClass := acategoryValueEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> choreographyActivityEClass [
^ choreographyActivityEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> choreographyActivityEClass: achoreographyActivityEClass [
^ choreographyActivityEClass := achoreographyActivityEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> choreographyEClass [
^ choreographyEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> choreographyEClass: achoreographyEClass [
^ choreographyEClass := achoreographyEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> choreographyLoopTypeEEnum [
^ choreographyLoopTypeEEnum
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> choreographyLoopTypeEEnum: achoreographyLoopTypeEEnum [
^ choreographyLoopTypeEEnum := achoreographyLoopTypeEEnum
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> choreographyTaskEClass [
^ choreographyTaskEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> choreographyTaskEClass: achoreographyTaskEClass [
^ choreographyTaskEClass := achoreographyTaskEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> collaborationEClass [
^ collaborationEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> collaborationEClass: acollaborationEClass [
^ collaborationEClass := acollaborationEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> compensateEventDefinitionEClass [
^ compensateEventDefinitionEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> compensateEventDefinitionEClass: acompensateEventDefinitionEClass [
^ compensateEventDefinitionEClass := acompensateEventDefinitionEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> complexBehaviorDefinitionEClass [
^ complexBehaviorDefinitionEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> complexBehaviorDefinitionEClass: acomplexBehaviorDefinitionEClass [
^ complexBehaviorDefinitionEClass := acomplexBehaviorDefinitionEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> complexGatewayEClass [
^ complexGatewayEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> complexGatewayEClass: acomplexGatewayEClass [
^ complexGatewayEClass := acomplexGatewayEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> conditionalEventDefinitionEClass [
^ conditionalEventDefinitionEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> conditionalEventDefinitionEClass: aconditionalEventDefinitionEClass [
^ conditionalEventDefinitionEClass := aconditionalEventDefinitionEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> conversationAssociationEClass [
^ conversationAssociationEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> conversationAssociationEClass: aconversationAssociationEClass [
^ conversationAssociationEClass := aconversationAssociationEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> conversationEClass [
^ conversationEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> conversationEClass: aconversationEClass [
^ conversationEClass := aconversationEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> conversationLinkEClass [
^ conversationLinkEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> conversationLinkEClass: aconversationLinkEClass [
^ conversationLinkEClass := aconversationLinkEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> conversationNodeEClass [
^ conversationNodeEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> conversationNodeEClass: aconversationNodeEClass [
^ conversationNodeEClass := aconversationNodeEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> correlationKeyEClass [
^ correlationKeyEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> correlationKeyEClass: acorrelationKeyEClass [
^ correlationKeyEClass := acorrelationKeyEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> correlationPropertyBindingEClass [
^ correlationPropertyBindingEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> correlationPropertyBindingEClass: acorrelationPropertyBindingEClass [
^ correlationPropertyBindingEClass := acorrelationPropertyBindingEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> correlationPropertyEClass [
^ correlationPropertyEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> correlationPropertyEClass: acorrelationPropertyEClass [
^ correlationPropertyEClass := acorrelationPropertyEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> correlationPropertyRetrievalExpressionEClass [
^ correlationPropertyRetrievalExpressionEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> correlationPropertyRetrievalExpressionEClass: acorrelationPropertyRetrievalExpressionEClass [
^ correlationPropertyRetrievalExpressionEClass := acorrelationPropertyRetrievalExpressionEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> correlationSubscriptionEClass [
^ correlationSubscriptionEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> correlationSubscriptionEClass: acorrelationSubscriptionEClass [
^ correlationSubscriptionEClass := acorrelationSubscriptionEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> dataAssociationEClass [
^ dataAssociationEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> dataAssociationEClass: adataAssociationEClass [
^ dataAssociationEClass := adataAssociationEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> dataInputAssociationEClass [
^ dataInputAssociationEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> dataInputAssociationEClass: adataInputAssociationEClass [
^ dataInputAssociationEClass := adataInputAssociationEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> dataInputEClass [
^ dataInputEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> dataInputEClass: adataInputEClass [
^ dataInputEClass := adataInputEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> dataObjectEClass [
^ dataObjectEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> dataObjectEClass: adataObjectEClass [
^ dataObjectEClass := adataObjectEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> dataObjectReferenceEClass [
^ dataObjectReferenceEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> dataObjectReferenceEClass: adataObjectReferenceEClass [
^ dataObjectReferenceEClass := adataObjectReferenceEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> dataOutputAssociationEClass [
^ dataOutputAssociationEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> dataOutputAssociationEClass: adataOutputAssociationEClass [
^ dataOutputAssociationEClass := adataOutputAssociationEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> dataOutputEClass [
^ dataOutputEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> dataOutputEClass: adataOutputEClass [
^ dataOutputEClass := adataOutputEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> dataStateEClass [
^ dataStateEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> dataStateEClass: adataStateEClass [
^ dataStateEClass := adataStateEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> dataStoreEClass [
^ dataStoreEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> dataStoreEClass: adataStoreEClass [
^ dataStoreEClass := adataStoreEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> dataStoreReferenceEClass [
^ dataStoreReferenceEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> dataStoreReferenceEClass: adataStoreReferenceEClass [
^ dataStoreReferenceEClass := adataStoreReferenceEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> definitionsEClass [
^ definitionsEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> definitionsEClass: adefinitionsEClass [
^ definitionsEClass := adefinitionsEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> documentRootEClass [
^ documentRootEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> documentRootEClass: adocumentRootEClass [
^ documentRootEClass := adocumentRootEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> documentationEClass [
^ documentationEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> documentationEClass: adocumentationEClass [
^ documentationEClass := adocumentationEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> endEventEClass [
^ endEventEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> endEventEClass: aendEventEClass [
^ endEventEClass := aendEventEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> endPointEClass [
^ endPointEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> endPointEClass: aendPointEClass [
^ endPointEClass := aendPointEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> errorEClass [
^ errorEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> errorEClass: aerrorEClass [
^ errorEClass := aerrorEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> errorEventDefinitionEClass [
^ errorEventDefinitionEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> errorEventDefinitionEClass: aerrorEventDefinitionEClass [
^ errorEventDefinitionEClass := aerrorEventDefinitionEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> escalationEClass [
^ escalationEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> escalationEClass: aescalationEClass [
^ escalationEClass := aescalationEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> escalationEventDefinitionEClass [
^ escalationEventDefinitionEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> escalationEventDefinitionEClass: aescalationEventDefinitionEClass [
^ escalationEventDefinitionEClass := aescalationEventDefinitionEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> eventBasedGatewayEClass [
^ eventBasedGatewayEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> eventBasedGatewayEClass: aeventBasedGatewayEClass [
^ eventBasedGatewayEClass := aeventBasedGatewayEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> eventBasedGatewayTypeEEnum [
^ eventBasedGatewayTypeEEnum
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> eventBasedGatewayTypeEEnum: aeventBasedGatewayTypeEEnum [
^ eventBasedGatewayTypeEEnum := aeventBasedGatewayTypeEEnum
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> eventDefinitionEClass [
^ eventDefinitionEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> eventDefinitionEClass: aeventDefinitionEClass [
^ eventDefinitionEClass := aeventDefinitionEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> eventEClass [
^ eventEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> eventEClass: aeventEClass [
^ eventEClass := aeventEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> exclusiveGatewayEClass [
^ exclusiveGatewayEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> exclusiveGatewayEClass: aexclusiveGatewayEClass [
^ exclusiveGatewayEClass := aexclusiveGatewayEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> expressionEClass [
^ expressionEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> expressionEClass: aexpressionEClass [
^ expressionEClass := aexpressionEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> extensionAttributeDefinitionEClass [
^ extensionAttributeDefinitionEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> extensionAttributeDefinitionEClass: aextensionAttributeDefinitionEClass [
^ extensionAttributeDefinitionEClass := aextensionAttributeDefinitionEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> extensionAttributeValueEClass [
^ extensionAttributeValueEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> extensionAttributeValueEClass: aextensionAttributeValueEClass [
^ extensionAttributeValueEClass := aextensionAttributeValueEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> extensionDefinitionEClass [
^ extensionDefinitionEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> extensionDefinitionEClass: aextensionDefinitionEClass [
^ extensionDefinitionEClass := aextensionDefinitionEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> extensionEClass [
^ extensionEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> extensionEClass: aextensionEClass [
^ extensionEClass := aextensionEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> flowElementEClass [
^ flowElementEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> flowElementEClass: aflowElementEClass [
^ flowElementEClass := aflowElementEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> flowElementsContainerEClass [
^ flowElementsContainerEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> flowElementsContainerEClass: aflowElementsContainerEClass [
^ flowElementsContainerEClass := aflowElementsContainerEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> flowNodeEClass [
^ flowNodeEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> flowNodeEClass: aflowNodeEClass [
^ flowNodeEClass := aflowNodeEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> formalExpressionEClass [
^ formalExpressionEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> formalExpressionEClass: aformalExpressionEClass [
^ formalExpressionEClass := aformalExpressionEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> gatewayDirectionEEnum [
^ gatewayDirectionEEnum
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> gatewayDirectionEEnum: agatewayDirectionEEnum [
^ gatewayDirectionEEnum := agatewayDirectionEEnum
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> gatewayEClass [
^ gatewayEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> gatewayEClass: agatewayEClass [
^ gatewayEClass := agatewayEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> globalBusinessRuleTaskEClass [
^ globalBusinessRuleTaskEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> globalBusinessRuleTaskEClass: aglobalBusinessRuleTaskEClass [
^ globalBusinessRuleTaskEClass := aglobalBusinessRuleTaskEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> globalChoreographyTaskEClass [
^ globalChoreographyTaskEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> globalChoreographyTaskEClass: aglobalChoreographyTaskEClass [
^ globalChoreographyTaskEClass := aglobalChoreographyTaskEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> globalConversationEClass [
^ globalConversationEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> globalConversationEClass: aglobalConversationEClass [
^ globalConversationEClass := aglobalConversationEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> globalManualTaskEClass [
^ globalManualTaskEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> globalManualTaskEClass: aglobalManualTaskEClass [
^ globalManualTaskEClass := aglobalManualTaskEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> globalScriptTaskEClass [
^ globalScriptTaskEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> globalScriptTaskEClass: aglobalScriptTaskEClass [
^ globalScriptTaskEClass := aglobalScriptTaskEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> globalTaskEClass [
^ globalTaskEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> globalTaskEClass: aglobalTaskEClass [
^ globalTaskEClass := aglobalTaskEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> globalUserTaskEClass [
^ globalUserTaskEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> globalUserTaskEClass: aglobalUserTaskEClass [
^ globalUserTaskEClass := aglobalUserTaskEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> groupEClass [
^ groupEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> groupEClass: agroupEClass [
^ groupEClass := agroupEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> humanPerformerEClass [
^ humanPerformerEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> humanPerformerEClass: ahumanPerformerEClass [
^ humanPerformerEClass := ahumanPerformerEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> implicitThrowEventEClass [
^ implicitThrowEventEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> implicitThrowEventEClass: aimplicitThrowEventEClass [
^ implicitThrowEventEClass := aimplicitThrowEventEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> importEClass [
^ importEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> importEClass: aimportEClass [
^ importEClass := aimportEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> inclusiveGatewayEClass [
^ inclusiveGatewayEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> inclusiveGatewayEClass: ainclusiveGatewayEClass [
^ inclusiveGatewayEClass := ainclusiveGatewayEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> inputOutputBindingEClass [
^ inputOutputBindingEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> inputOutputBindingEClass: ainputOutputBindingEClass [
^ inputOutputBindingEClass := ainputOutputBindingEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> inputOutputSpecificationEClass [
^ inputOutputSpecificationEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> inputOutputSpecificationEClass: ainputOutputSpecificationEClass [
^ inputOutputSpecificationEClass := ainputOutputSpecificationEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> inputSetEClass [
^ inputSetEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> inputSetEClass: ainputSetEClass [
^ inputSetEClass := ainputSetEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> interactionNodeEClass [
^ interactionNodeEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> interactionNodeEClass: ainteractionNodeEClass [
^ interactionNodeEClass := ainteractionNodeEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> interfaceEClass [
^ interfaceEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> interfaceEClass: ainterfaceEClass [
^ interfaceEClass := ainterfaceEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> intermediateCatchEventEClass [
^ intermediateCatchEventEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> intermediateCatchEventEClass: aintermediateCatchEventEClass [
^ intermediateCatchEventEClass := aintermediateCatchEventEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> intermediateThrowEventEClass [
^ intermediateThrowEventEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> intermediateThrowEventEClass: aintermediateThrowEventEClass [
^ intermediateThrowEventEClass := aintermediateThrowEventEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> isFixed [
^ isFixed
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> isFixed: aisFixed [
^ isFixed := aisFixed
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> isInited [
^ isInited
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> isInited: aisInited [
^ isInited := aisInited
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> isLoaded [
^ isLoaded
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> isLoaded: aisLoaded [
^ isLoaded := aisLoaded
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> itemAwareElementEClass [
^ itemAwareElementEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> itemAwareElementEClass: aitemAwareElementEClass [
^ itemAwareElementEClass := aitemAwareElementEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> itemDefinitionEClass [
^ itemDefinitionEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> itemDefinitionEClass: aitemDefinitionEClass [
^ itemDefinitionEClass := aitemDefinitionEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> itemKindEEnum [
^ itemKindEEnum
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> itemKindEEnum: aitemKindEEnum [
^ itemKindEEnum := aitemKindEEnum
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> laneEClass [
^ laneEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> laneEClass: alaneEClass [
^ laneEClass := alaneEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> laneSetEClass [
^ laneSetEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> laneSetEClass: alaneSetEClass [
^ laneSetEClass := alaneSetEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> linkEventDefinitionEClass [
^ linkEventDefinitionEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> linkEventDefinitionEClass: alinkEventDefinitionEClass [
^ linkEventDefinitionEClass := alinkEventDefinitionEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> loopCharacteristicsEClass [
^ loopCharacteristicsEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> loopCharacteristicsEClass: aloopCharacteristicsEClass [
^ loopCharacteristicsEClass := aloopCharacteristicsEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> manualTaskEClass [
^ manualTaskEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> manualTaskEClass: amanualTaskEClass [
^ manualTaskEClass := amanualTaskEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> messageEClass [
^ messageEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> messageEClass: amessageEClass [
^ messageEClass := amessageEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> messageEventDefinitionEClass [
^ messageEventDefinitionEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> messageEventDefinitionEClass: amessageEventDefinitionEClass [
^ messageEventDefinitionEClass := amessageEventDefinitionEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> messageFlowAssociationEClass [
^ messageFlowAssociationEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> messageFlowAssociationEClass: amessageFlowAssociationEClass [
^ messageFlowAssociationEClass := amessageFlowAssociationEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> messageFlowEClass [
^ messageFlowEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> messageFlowEClass: amessageFlowEClass [
^ messageFlowEClass := amessageFlowEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> monitoringEClass [
^ monitoringEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> monitoringEClass: amonitoringEClass [
^ monitoringEClass := amonitoringEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> multiInstanceBehaviorEEnum [
^ multiInstanceBehaviorEEnum
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> multiInstanceBehaviorEEnum: amultiInstanceBehaviorEEnum [
^ multiInstanceBehaviorEEnum := amultiInstanceBehaviorEEnum
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> multiInstanceLoopCharacteristicsEClass [
^ multiInstanceLoopCharacteristicsEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> multiInstanceLoopCharacteristicsEClass: amultiInstanceLoopCharacteristicsEClass [
^ multiInstanceLoopCharacteristicsEClass := amultiInstanceLoopCharacteristicsEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> operationEClass [
^ operationEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> operationEClass: aoperationEClass [
^ operationEClass := aoperationEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> outputSetEClass [
^ outputSetEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> outputSetEClass: aoutputSetEClass [
^ outputSetEClass := aoutputSetEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> packageFilename [
^ packageFilename
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> packageFilename: apackageFilename [
^ packageFilename := apackageFilename
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> parallelGatewayEClass [
^ parallelGatewayEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> parallelGatewayEClass: aparallelGatewayEClass [
^ parallelGatewayEClass := aparallelGatewayEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> parent [
	^ parent
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> parent: aparent [
	^ parent := aparent
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> participantAssociationEClass [
^ participantAssociationEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> participantAssociationEClass: aparticipantAssociationEClass [
^ participantAssociationEClass := aparticipantAssociationEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> participantEClass [
^ participantEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> participantEClass: aparticipantEClass [
^ participantEClass := aparticipantEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> participantMultiplicityEClass [
^ participantMultiplicityEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> participantMultiplicityEClass: aparticipantMultiplicityEClass [
^ participantMultiplicityEClass := aparticipantMultiplicityEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> partnerEntityEClass [
^ partnerEntityEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> partnerEntityEClass: apartnerEntityEClass [
^ partnerEntityEClass := apartnerEntityEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> partnerRoleEClass [
^ partnerRoleEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> partnerRoleEClass: apartnerRoleEClass [
^ partnerRoleEClass := apartnerRoleEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> performerEClass [
^ performerEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> performerEClass: aperformerEClass [
^ performerEClass := aperformerEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> potentialOwnerEClass [
^ potentialOwnerEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> potentialOwnerEClass: apotentialOwnerEClass [
^ potentialOwnerEClass := apotentialOwnerEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> processEClass [
^ processEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> processEClass: aprocessEClass [
^ processEClass := aprocessEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> processTypeEEnum [
^ processTypeEEnum
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> processTypeEEnum: aprocessTypeEEnum [
^ processTypeEEnum := aprocessTypeEEnum
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> propertyEClass [
^ propertyEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> propertyEClass: apropertyEClass [
^ propertyEClass := apropertyEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> receiveTaskEClass [
^ receiveTaskEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> receiveTaskEClass: areceiveTaskEClass [
^ receiveTaskEClass := areceiveTaskEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> relationshipDirectionEEnum [
^ relationshipDirectionEEnum
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> relationshipDirectionEEnum: arelationshipDirectionEEnum [
^ relationshipDirectionEEnum := arelationshipDirectionEEnum
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> relationshipEClass [
^ relationshipEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> relationshipEClass: arelationshipEClass [
^ relationshipEClass := arelationshipEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> renderingEClass [
^ renderingEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> renderingEClass: arenderingEClass [
^ renderingEClass := arenderingEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> resourceAssignmentExpressionEClass [
^ resourceAssignmentExpressionEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> resourceAssignmentExpressionEClass: aresourceAssignmentExpressionEClass [
^ resourceAssignmentExpressionEClass := aresourceAssignmentExpressionEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> resourceEClass [
^ resourceEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> resourceEClass: aresourceEClass [
^ resourceEClass := aresourceEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> resourceParameterBindingEClass [
^ resourceParameterBindingEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> resourceParameterBindingEClass: aresourceParameterBindingEClass [
^ resourceParameterBindingEClass := aresourceParameterBindingEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> resourceParameterEClass [
^ resourceParameterEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> resourceParameterEClass: aresourceParameterEClass [
^ resourceParameterEClass := aresourceParameterEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> resourceRoleEClass [
^ resourceRoleEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> resourceRoleEClass: aresourceRoleEClass [
^ resourceRoleEClass := aresourceRoleEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> rootElementEClass [
^ rootElementEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> rootElementEClass: arootElementEClass [
^ rootElementEClass := arootElementEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> scriptTaskEClass [
^ scriptTaskEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> scriptTaskEClass: ascriptTaskEClass [
^ scriptTaskEClass := ascriptTaskEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> sendTaskEClass [
^ sendTaskEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> sendTaskEClass: asendTaskEClass [
^ sendTaskEClass := asendTaskEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> sequenceFlowEClass [
^ sequenceFlowEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> sequenceFlowEClass: asequenceFlowEClass [
^ sequenceFlowEClass := asequenceFlowEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> serviceTaskEClass [
^ serviceTaskEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> serviceTaskEClass: aserviceTaskEClass [
^ serviceTaskEClass := aserviceTaskEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> signalEClass [
^ signalEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> signalEClass: asignalEClass [
^ signalEClass := asignalEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> signalEventDefinitionEClass [
^ signalEventDefinitionEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> signalEventDefinitionEClass: asignalEventDefinitionEClass [
^ signalEventDefinitionEClass := asignalEventDefinitionEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> standardLoopCharacteristicsEClass [
^ standardLoopCharacteristicsEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> standardLoopCharacteristicsEClass: astandardLoopCharacteristicsEClass [
^ standardLoopCharacteristicsEClass := astandardLoopCharacteristicsEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> startEventEClass [
^ startEventEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> startEventEClass: astartEventEClass [
^ startEventEClass := astartEventEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> subChoreographyEClass [
^ subChoreographyEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> subChoreographyEClass: asubChoreographyEClass [
^ subChoreographyEClass := asubChoreographyEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> subConversationEClass [
^ subConversationEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> subConversationEClass: asubConversationEClass [
^ subConversationEClass := asubConversationEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> subProcessEClass [
^ subProcessEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> subProcessEClass: asubProcessEClass [
^ subProcessEClass := asubProcessEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> taskEClass [
^ taskEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> taskEClass: ataskEClass [
^ taskEClass := ataskEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> terminateEventDefinitionEClass [
^ terminateEventDefinitionEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> terminateEventDefinitionEClass: aterminateEventDefinitionEClass [
^ terminateEventDefinitionEClass := aterminateEventDefinitionEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> text: atext [
	^ text := atext
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> textAnnotationEClass [
^ textAnnotationEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> textAnnotationEClass: atextAnnotationEClass [
^ textAnnotationEClass := atextAnnotationEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> throwEventEClass [
^ throwEventEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> throwEventEClass: athrowEventEClass [
^ throwEventEClass := athrowEventEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> timerEventDefinitionEClass [
^ timerEventDefinitionEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> timerEventDefinitionEClass: atimerEventDefinitionEClass [
^ timerEventDefinitionEClass := atimerEventDefinitionEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> transactionEClass [
^ transactionEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> transactionEClass: atransactionEClass [
^ transactionEClass := atransactionEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> userTaskEClass [
^ userTaskEClass
]

{ #category : #'as yet unclassified' }
BPMN20Bpmn2PackageImpl >> userTaskEClass: auserTaskEClass [
^ userTaskEClass := auserTaskEClass
]
