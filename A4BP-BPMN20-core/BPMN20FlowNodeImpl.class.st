Class {
	#name : #BPMN20FlowNodeImpl,
	#superclass : #BPMN20FlowElementImpl,
	#instVars : [
		'incoming',
		'lanes',
		'outgoing'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20FlowNodeImpl class >> annotation [
<MSEClass: #BPMN20FlowNodeImpl  super: #BPMN20FlowElementImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #parser }
BPMN20FlowNodeImpl class >> fillElementsIn: aModel from: document [
	| visitor |
	visitor := BPMN20ParserSetinBPMN20FlowNodeImplVisitor new.
	visitor element: aModel.
	self fillFlowNode: aModel from: document.
	self fillElementsIn: aModel from: document visitor: visitor.
]

{ #category : #parser }
BPMN20FlowNodeImpl class >> fillFlowNode: aModel from: document [
	aModel isForCompensation: (self readBoolean: document at: 'isForCompensation').

]

{ #category : #getset }
BPMN20FlowNodeImpl >> CANCEL_ACTIVITY_EDEFAULT [
	^ CANCEL_ACTIVITY_EDEFAULT
]

{ #category : #getset }
BPMN20FlowNodeImpl >> CANCEL_ACTIVITY_EDEFAULT: aCANCEL_ACTIVITY_EDEFAULT [
	^ CANCEL_ACTIVITY_EDEFAULT := aCANCEL_ACTIVITY_EDEFAULT
]

{ #category : #getset }
BPMN20FlowNodeImpl >> CANCEL_REMAINING_INSTANCES_EDEFAULT [
	^ CANCEL_REMAINING_INSTANCES_EDEFAULT
]

{ #category : #getset }
BPMN20FlowNodeImpl >> CANCEL_REMAINING_INSTANCES_EDEFAULT: aCANCEL_REMAINING_INSTANCES_EDEFAULT [
	^ CANCEL_REMAINING_INSTANCES_EDEFAULT := aCANCEL_REMAINING_INSTANCES_EDEFAULT
]

{ #category : #getset }
BPMN20FlowNodeImpl >> EVENT_GATEWAY_TYPE_EDEFAULT [
	^ EVENT_GATEWAY_TYPE_EDEFAULT
]

{ #category : #getset }
BPMN20FlowNodeImpl >> EVENT_GATEWAY_TYPE_EDEFAULT: aEVENT_GATEWAY_TYPE_EDEFAULT [
	^ EVENT_GATEWAY_TYPE_EDEFAULT := aEVENT_GATEWAY_TYPE_EDEFAULT
]

{ #category : #getset }
BPMN20FlowNodeImpl >> GATEWAY_DIRECTION_EDEFAULT [
	^ GATEWAY_DIRECTION_EDEFAULT
]

{ #category : #getset }
BPMN20FlowNodeImpl >> GATEWAY_DIRECTION_EDEFAULT: aGATEWAY_DIRECTION_EDEFAULT [
	^ GATEWAY_DIRECTION_EDEFAULT := aGATEWAY_DIRECTION_EDEFAULT
]

{ #category : #getset }
BPMN20FlowNodeImpl >> IMPLEMENTATION_EDEFAULT [
	^ IMPLEMENTATION_EDEFAULT
]

{ #category : #getset }
BPMN20FlowNodeImpl >> IMPLEMENTATION_EDEFAULT: aIMPLEMENTATION_EDEFAULT [
	^ IMPLEMENTATION_EDEFAULT := aIMPLEMENTATION_EDEFAULT
]

{ #category : #getset }
BPMN20FlowNodeImpl >> INSTANTIATE_EDEFAULT [
	^ INSTANTIATE_EDEFAULT
]

{ #category : #getset }
BPMN20FlowNodeImpl >> INSTANTIATE_EDEFAULT: aINSTANTIATE_EDEFAULT [
	^ INSTANTIATE_EDEFAULT := aINSTANTIATE_EDEFAULT
]

{ #category : #getset }
BPMN20FlowNodeImpl >> METHOD_EDEFAULT [
	^ METHOD_EDEFAULT
]

{ #category : #getset }
BPMN20FlowNodeImpl >> METHOD_EDEFAULT: aMETHOD_EDEFAULT [
	^ METHOD_EDEFAULT := aMETHOD_EDEFAULT
]

{ #category : #getset }
BPMN20FlowNodeImpl >> ORDERING_EDEFAULT [
	^ ORDERING_EDEFAULT
]

{ #category : #getset }
BPMN20FlowNodeImpl >> ORDERING_EDEFAULT: aORDERING_EDEFAULT [
	^ ORDERING_EDEFAULT := aORDERING_EDEFAULT
]

{ #category : #getset }
BPMN20FlowNodeImpl >> PARALLEL_MULTIPLE_EDEFAULT [
	^ PARALLEL_MULTIPLE_EDEFAULT
]

{ #category : #getset }
BPMN20FlowNodeImpl >> PARALLEL_MULTIPLE_EDEFAULT: aPARALLEL_MULTIPLE_EDEFAULT [
	^ PARALLEL_MULTIPLE_EDEFAULT := aPARALLEL_MULTIPLE_EDEFAULT
]

{ #category : #getset }
BPMN20FlowNodeImpl >> PROTOCOL_EDEFAULT [
	^ PROTOCOL_EDEFAULT
]

{ #category : #getset }
BPMN20FlowNodeImpl >> PROTOCOL_EDEFAULT: aPROTOCOL_EDEFAULT [
	^ PROTOCOL_EDEFAULT := aPROTOCOL_EDEFAULT
]

{ #category : #getset }
BPMN20FlowNodeImpl >> SCRIPT_EDEFAULT [
	^ SCRIPT_EDEFAULT
]

{ #category : #getset }
BPMN20FlowNodeImpl >> SCRIPT_EDEFAULT: aSCRIPT_EDEFAULT [
	^ SCRIPT_EDEFAULT := aSCRIPT_EDEFAULT
]

{ #category : #getset }
BPMN20FlowNodeImpl >> SCRIPT_FORMAT_EDEFAULT [
	^ SCRIPT_FORMAT_EDEFAULT
]

{ #category : #getset }
BPMN20FlowNodeImpl >> SCRIPT_FORMAT_EDEFAULT: aSCRIPT_FORMAT_EDEFAULT [
	^ SCRIPT_FORMAT_EDEFAULT := aSCRIPT_FORMAT_EDEFAULT
]

{ #category : #getset }
BPMN20FlowNodeImpl >> TRIGGERED_BY_EVENT_EDEFAULT [
	^ TRIGGERED_BY_EVENT_EDEFAULT
]

{ #category : #getset }
BPMN20FlowNodeImpl >> TRIGGERED_BY_EVENT_EDEFAULT: aTRIGGERED_BY_EVENT_EDEFAULT [
	^ TRIGGERED_BY_EVENT_EDEFAULT := aTRIGGERED_BY_EVENT_EDEFAULT
]

{ #category : #getset }
BPMN20FlowNodeImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20FlowNodeImpl: self
]

{ #category : #getset }
BPMN20FlowNodeImpl >> activationCondition [
	^ activationCondition
]

{ #category : #getset }
BPMN20FlowNodeImpl >> activationCondition: aactivationCondition [
	^ activationCondition := aactivationCondition
]

{ #category : #getset }
BPMN20FlowNodeImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #getset }
BPMN20FlowNodeImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #getset }
BPMN20FlowNodeImpl >> artifacts [
	^ artifacts
]

{ #category : #getset }
BPMN20FlowNodeImpl >> artifacts: aartifacts [
	^ artifacts := aartifacts
]

{ #category : #getset }
BPMN20FlowNodeImpl >> attachedToRef [
	^ attachedToRef
]

{ #category : #getset }
BPMN20FlowNodeImpl >> attachedToRef: aattachedToRef [
	^ attachedToRef := aattachedToRef
]

{ #category : #getset }
BPMN20FlowNodeImpl >> auditing [
	^ auditing
]

{ #category : #getset }
BPMN20FlowNodeImpl >> auditing: aauditing [
	^ auditing := aauditing
]

{ #category : #getset }
BPMN20FlowNodeImpl >> boundaryEventRefs [
	^ boundaryEventRefs
]

{ #category : #getset }
BPMN20FlowNodeImpl >> boundaryEventRefs: aboundaryEventRefs [
	^ boundaryEventRefs := aboundaryEventRefs
]

{ #category : #getset }
BPMN20FlowNodeImpl >> calledChoreographyRef [
	^ calledChoreographyRef
]

{ #category : #getset }
BPMN20FlowNodeImpl >> calledChoreographyRef: acalledChoreographyRef [
	^ calledChoreographyRef := acalledChoreographyRef
]

{ #category : #getset }
BPMN20FlowNodeImpl >> calledElementRef [
	^ calledElementRef
]

{ #category : #getset }
BPMN20FlowNodeImpl >> calledElementRef: acalledElementRef [
	^ calledElementRef := acalledElementRef
]

{ #category : #getset }
BPMN20FlowNodeImpl >> cancelActivity [
	^ cancelActivity
]

{ #category : #getset }
BPMN20FlowNodeImpl >> cancelActivity: acancelActivity [
	^ cancelActivity := acancelActivity
]

{ #category : #getset }
BPMN20FlowNodeImpl >> cancelRemainingInstances [
	^ cancelRemainingInstances
]

{ #category : #getset }
BPMN20FlowNodeImpl >> cancelRemainingInstances: acancelRemainingInstances [
	^ cancelRemainingInstances := acancelRemainingInstances
]

{ #category : #getset }
BPMN20FlowNodeImpl >> categoryValueRef [
	^ categoryValueRef
]

{ #category : #getset }
BPMN20FlowNodeImpl >> categoryValueRef: acategoryValueRef [
	^ categoryValueRef := acategoryValueRef
]

{ #category : #getset }
BPMN20FlowNodeImpl >> completionCondition [
	^ completionCondition
]

{ #category : #getset }
BPMN20FlowNodeImpl >> completionCondition: acompletionCondition [
	^ completionCondition := acompletionCondition
]

{ #category : #getset }
BPMN20FlowNodeImpl >> completionQuantity [
	^ completionQuantity
]

{ #category : #getset }
BPMN20FlowNodeImpl >> completionQuantity: acompletionQuantity [
	^ completionQuantity := acompletionQuantity
]

{ #category : #getset }
BPMN20FlowNodeImpl >> correlationKeys [
	^ correlationKeys
]

{ #category : #getset }
BPMN20FlowNodeImpl >> correlationKeys: acorrelationKeys [
	^ correlationKeys := acorrelationKeys
]

{ #category : #getset }
BPMN20FlowNodeImpl >> dataInputAssociation [
	^ dataInputAssociation
]

{ #category : #getset }
BPMN20FlowNodeImpl >> dataInputAssociation: adataInputAssociation [
	^ dataInputAssociation := adataInputAssociation
]

{ #category : #getset }
BPMN20FlowNodeImpl >> dataInputAssociations [
	^ dataInputAssociations
]

{ #category : #getset }
BPMN20FlowNodeImpl >> dataInputAssociations: adataInputAssociations [
	^ dataInputAssociations := adataInputAssociations
]

{ #category : #getset }
BPMN20FlowNodeImpl >> dataInputs [
	^ dataInputs
]

{ #category : #getset }
BPMN20FlowNodeImpl >> dataInputs: adataInputs [
	^ dataInputs := adataInputs
]

{ #category : #getset }
BPMN20FlowNodeImpl >> dataOutputAssociation [
	^ dataOutputAssociation
]

{ #category : #getset }
BPMN20FlowNodeImpl >> dataOutputAssociation: adataOutputAssociation [
	^ dataOutputAssociation := adataOutputAssociation
]

{ #category : #getset }
BPMN20FlowNodeImpl >> dataOutputAssociations [
	^ dataOutputAssociations
]

{ #category : #getset }
BPMN20FlowNodeImpl >> dataOutputAssociations: adataOutputAssociations [
	^ dataOutputAssociations := adataOutputAssociations
]

{ #category : #getset }
BPMN20FlowNodeImpl >> dataOutputs [
	^ dataOutputs
]

{ #category : #getset }
BPMN20FlowNodeImpl >> dataOutputs: adataOutputs [
	^ dataOutputs := adataOutputs
]

{ #category : #getset }
BPMN20FlowNodeImpl >> default_ [
	^ default_
]

{ #category : #getset }
BPMN20FlowNodeImpl >> default_: adefault_ [
	^ default_ := adefault_
]

{ #category : #getset }
BPMN20FlowNodeImpl >> documentation [
	^ documentation
]

{ #category : #getset }
BPMN20FlowNodeImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #getset }
BPMN20FlowNodeImpl >> eventDefinitionRefs [
	^ eventDefinitionRefs
]

{ #category : #getset }
BPMN20FlowNodeImpl >> eventDefinitionRefs: aeventDefinitionRefs [
	^ eventDefinitionRefs := aeventDefinitionRefs
]

{ #category : #getset }
BPMN20FlowNodeImpl >> eventDefinitions [
	^ eventDefinitions
]

{ #category : #getset }
BPMN20FlowNodeImpl >> eventDefinitions: aeventDefinitions [
	^ eventDefinitions := aeventDefinitions
]

{ #category : #getset }
BPMN20FlowNodeImpl >> eventGatewayType [
	^ eventGatewayType
]

{ #category : #getset }
BPMN20FlowNodeImpl >> eventGatewayType: aeventGatewayType [
	^ eventGatewayType := aeventGatewayType
]

{ #category : #getset }
BPMN20FlowNodeImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #getset }
BPMN20FlowNodeImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #getset }
BPMN20FlowNodeImpl >> extensionValues [
	^ extensionValues
]

{ #category : #getset }
BPMN20FlowNodeImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #getset }
BPMN20FlowNodeImpl >> flowElements [
	^ flowElements
]

{ #category : #getset }
BPMN20FlowNodeImpl >> flowElements: aflowElements [
	^ flowElements := aflowElements
]

{ #category : #getset }
BPMN20FlowNodeImpl >> gatewayDirection [
	^ gatewayDirection
]

{ #category : #getset }
BPMN20FlowNodeImpl >> gatewayDirection: agatewayDirection [
	^ gatewayDirection := agatewayDirection
]

{ #category : #getset }
BPMN20FlowNodeImpl >> implementation [
	^ implementation
]

{ #category : #getset }
BPMN20FlowNodeImpl >> implementation: aimplementation [
	^ implementation := aimplementation
]

{ #category : #dsl }
BPMN20FlowNodeImpl >> inFlows [
	"Show a list of elements to be have flow with the element"

	| lst |
	lst := OrderedCollection new.
	self incomings do: [ :e | lst addAll: e inFlows ].
	^ lst
]

{ #category : #getset }
BPMN20FlowNodeImpl >> incoming [
^ incoming
]

{ #category : #getset }
BPMN20FlowNodeImpl >> incoming: aincoming [
^ incoming := aincoming
]

{ #category : #inout }
BPMN20FlowNodeImpl >> incomings [
	^ incoming
]

{ #category : #initialization }
BPMN20FlowNodeImpl >> initialize [
	super initialize.
	incoming := Dictionary new.
	outgoing := Dictionary new.
]

{ #category : #getset }
BPMN20FlowNodeImpl >> initiatingParticipantRef [
	^ initiatingParticipantRef
]

{ #category : #getset }
BPMN20FlowNodeImpl >> initiatingParticipantRef: ainitiatingParticipantRef [
	^ initiatingParticipantRef := ainitiatingParticipantRef
]

{ #category : #getset }
BPMN20FlowNodeImpl >> inputSet [
	^ inputSet
]

{ #category : #getset }
BPMN20FlowNodeImpl >> inputSet: ainputSet [
	^ inputSet := ainputSet
]

{ #category : #getset }
BPMN20FlowNodeImpl >> instantiate [
	^ instantiate
]

{ #category : #getset }
BPMN20FlowNodeImpl >> instantiate: ainstantiate [
	^ instantiate := ainstantiate
]

{ #category : #getset }
BPMN20FlowNodeImpl >> ioSpecification [
	^ ioSpecification
]

{ #category : #getset }
BPMN20FlowNodeImpl >> ioSpecification: aioSpecification [
	^ ioSpecification := aioSpecification
]

{ #category : #getset }
BPMN20FlowNodeImpl >> isForCompensation [
	^ isForCompensation
]

{ #category : #getset }
BPMN20FlowNodeImpl >> isForCompensation: aisForCompensation [
	^ isForCompensation := aisForCompensation
]

{ #category : #getset }
BPMN20FlowNodeImpl >> isInterrupting [
	^ isInterrupting
]

{ #category : #getset }
BPMN20FlowNodeImpl >> isInterrupting: aisInterrupting [
	^ isInterrupting := aisInterrupting
]

{ #category : #getset }
BPMN20FlowNodeImpl >> laneSets [
	^ laneSets
]

{ #category : #getset }
BPMN20FlowNodeImpl >> laneSets: alaneSets [
	^ laneSets := alaneSets
]

{ #category : #getset }
BPMN20FlowNodeImpl >> lanes [
^ lanes
]

{ #category : #getset }
BPMN20FlowNodeImpl >> lanes: alanes [
^ lanes := alanes
]

{ #category : #getset }
BPMN20FlowNodeImpl >> loopCharacteristics [
	^ loopCharacteristics
]

{ #category : #getset }
BPMN20FlowNodeImpl >> loopCharacteristics: aloopCharacteristics [
	^ loopCharacteristics := aloopCharacteristics
]

{ #category : #getset }
BPMN20FlowNodeImpl >> loopType [
	^ loopType
]

{ #category : #getset }
BPMN20FlowNodeImpl >> loopType: aloopType [
	^ loopType := aloopType
]

{ #category : #getset }
BPMN20FlowNodeImpl >> messageFlowRef [
	^ messageFlowRef
]

{ #category : #getset }
BPMN20FlowNodeImpl >> messageFlowRef: amessageFlowRef [
	^ messageFlowRef := amessageFlowRef
]

{ #category : #getset }
BPMN20FlowNodeImpl >> messageRef [
	^ messageRef
]

{ #category : #getset }
BPMN20FlowNodeImpl >> messageRef: amessageRef [
	^ messageRef := amessageRef
]

{ #category : #getset }
BPMN20FlowNodeImpl >> method [
	^ method
]

{ #category : #getset }
BPMN20FlowNodeImpl >> method: amethod [
	^ method := amethod
]

{ #category : #getset }
BPMN20FlowNodeImpl >> monitoring [
	^ monitoring
]

{ #category : #getset }
BPMN20FlowNodeImpl >> monitoring: amonitoring [
	^ monitoring := amonitoring
]

{ #category : #getset }
BPMN20FlowNodeImpl >> myDocument [
	^ myDocument
]

{ #category : #getset }
BPMN20FlowNodeImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #getset }
BPMN20FlowNodeImpl >> operationRef [
	^ operationRef
]

{ #category : #getset }
BPMN20FlowNodeImpl >> operationRef: aoperationRef [
	^ operationRef := aoperationRef
]

{ #category : #getset }
BPMN20FlowNodeImpl >> ordering [
	^ ordering
]

{ #category : #getset }
BPMN20FlowNodeImpl >> ordering: aordering [
	^ ordering := aordering
]

{ #category : #dsl }
BPMN20FlowNodeImpl >> outFlows [
	"Show a list of elements to be have flow with the element"

	| lst |
	lst := OrderedCollection new.
	lst addAll: (self myRoot messageFlows select: [ :m | 
		|b|
		b:=false.
		m sourceRef ifNotNil:[
		b := m sourceRef id = self id.
			].
		b]).
	self outgoings do: [ :e | lst addAll: e outFlows ].
	^ lst
]

{ #category : #getset }
BPMN20FlowNodeImpl >> outgoing [
^ outgoing
]

{ #category : #getset }
BPMN20FlowNodeImpl >> outgoing: aoutgoing [
^ outgoing := aoutgoing
]

{ #category : #inout }
BPMN20FlowNodeImpl >> outgoings [
	^ outgoing 
]

{ #category : #getset }
BPMN20FlowNodeImpl >> outputSet [
	^ outputSet
]

{ #category : #getset }
BPMN20FlowNodeImpl >> outputSet: aoutputSet [
	^ outputSet := aoutputSet
]

{ #category : #getset }
BPMN20FlowNodeImpl >> parallelMultiple [
	^ parallelMultiple
]

{ #category : #getset }
BPMN20FlowNodeImpl >> parallelMultiple: aparallelMultiple [
	^ parallelMultiple := aparallelMultiple
]

{ #category : #getset }
BPMN20FlowNodeImpl >> participantAssociations [
	^ participantAssociations
]

{ #category : #getset }
BPMN20FlowNodeImpl >> participantAssociations: aparticipantAssociations [
	^ participantAssociations := aparticipantAssociations
]

{ #category : #getset }
BPMN20FlowNodeImpl >> participantRefs [
	^ participantRefs
]

{ #category : #getset }
BPMN20FlowNodeImpl >> participantRefs: aparticipantRefs [
	^ participantRefs := aparticipantRefs
]

{ #category : #getset }
BPMN20FlowNodeImpl >> properties [
	^ properties
]

{ #category : #getset }
BPMN20FlowNodeImpl >> properties: aproperties [
	^ properties := aproperties
]

{ #category : #getset }
BPMN20FlowNodeImpl >> protocol [
	^ protocol
]

{ #category : #getset }
BPMN20FlowNodeImpl >> protocol: aprotocol [
	^ protocol := aprotocol
]

{ #category : #getset }
BPMN20FlowNodeImpl >> renderings [
	^ renderings
]

{ #category : #getset }
BPMN20FlowNodeImpl >> renderings: arenderings [
	^ renderings := arenderings
]

{ #category : #getset }
BPMN20FlowNodeImpl >> resources [
	^ resources
]

{ #category : #getset }
BPMN20FlowNodeImpl >> resources: aresources [
	^ resources := aresources
]

{ #category : #getset }
BPMN20FlowNodeImpl >> script [
	^ script
]

{ #category : #getset }
BPMN20FlowNodeImpl >> script: ascript [
	^ script := ascript
]

{ #category : #getset }
BPMN20FlowNodeImpl >> scriptFormat [
	^ scriptFormat
]

{ #category : #getset }
BPMN20FlowNodeImpl >> scriptFormat: ascriptFormat [
	^ scriptFormat := ascriptFormat
]

{ #category : #getset }
BPMN20FlowNodeImpl >> startQuantity [
	^ startQuantity
]

{ #category : #getset }
BPMN20FlowNodeImpl >> startQuantity: astartQuantity [
	^ startQuantity := astartQuantity
]

{ #category : #getset }
BPMN20FlowNodeImpl >> state [
	^ state
]

{ #category : #getset }
BPMN20FlowNodeImpl >> state: astate [
	^ state := astate
]

{ #category : #getset }
BPMN20FlowNodeImpl >> text [
	^ text
]

{ #category : #getset }
BPMN20FlowNodeImpl >> text: atext [
	^ text := atext
]

{ #category : #getset }
BPMN20FlowNodeImpl >> triggeredByEvent [
	^ triggeredByEvent
]

{ #category : #getset }
BPMN20FlowNodeImpl >> triggeredByEvent: atriggeredByEvent [
	^ triggeredByEvent := atriggeredByEvent
]
