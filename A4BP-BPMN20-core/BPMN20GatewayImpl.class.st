"
Gateways are used to control how Sequence Flows interact as they converge and diverge within a Process. If the flow does not need to be controlled, then a Gateway is not needed. The term “Gateway” implies that there is a gating mechanism that either allows or disallows passage through the Gateway--that is, as tokens arrive at a Gateway, they can be merged together on input and/or split apart on output as the Gateway mechanisms are invoked.
"
Class {
	#name : #BPMN20GatewayImpl,
	#superclass : #BPMN20FlowNodeImpl,
	#instVars : [
		'GATEWAY_DIRECTION_EDEFAULT',
		'gatewayDirection'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20GatewayImpl class >> annotation [
<MSEClass: #BPMN20GatewayImpl  super: #BPMN20FlowNodeImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20GatewayImpl >> EVENT_GATEWAY_TYPE_EDEFAULT [
	^ EVENT_GATEWAY_TYPE_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20GatewayImpl >> EVENT_GATEWAY_TYPE_EDEFAULT: aEVENT_GATEWAY_TYPE_EDEFAULT [
	^ EVENT_GATEWAY_TYPE_EDEFAULT := aEVENT_GATEWAY_TYPE_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20GatewayImpl >> GATEWAY_DIRECTION_EDEFAULT [
^ GATEWAY_DIRECTION_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20GatewayImpl >> GATEWAY_DIRECTION_EDEFAULT: aGATEWAY_DIRECTION_EDEFAULT [
^ GATEWAY_DIRECTION_EDEFAULT := aGATEWAY_DIRECTION_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20GatewayImpl >> INSTANTIATE_EDEFAULT [
	^ INSTANTIATE_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20GatewayImpl >> INSTANTIATE_EDEFAULT: aINSTANTIATE_EDEFAULT [
	^ INSTANTIATE_EDEFAULT := aINSTANTIATE_EDEFAULT
]

{ #category : #visitor }
BPMN20GatewayImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20GatewayImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20GatewayImpl >> activationCondition [
	^ activationCondition
]

{ #category : #'as yet unclassified' }
BPMN20GatewayImpl >> activationCondition: aactivationCondition [
	^ activationCondition := aactivationCondition
]

{ #category : #'as yet unclassified' }
BPMN20GatewayImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20GatewayImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20GatewayImpl >> auditing [
	^ auditing
]

{ #category : #'as yet unclassified' }
BPMN20GatewayImpl >> auditing: aauditing [
	^ auditing := aauditing
]

{ #category : #'as yet unclassified' }
BPMN20GatewayImpl >> categoryValueRef [
	^ categoryValueRef
]

{ #category : #'as yet unclassified' }
BPMN20GatewayImpl >> categoryValueRef: acategoryValueRef [
	^ categoryValueRef := acategoryValueRef
]

{ #category : #'as yet unclassified' }
BPMN20GatewayImpl >> default_ [
	^ default_
]

{ #category : #'as yet unclassified' }
BPMN20GatewayImpl >> default_: adefault_ [
	^ default_ := adefault_
]

{ #category : #'as yet unclassified' }
BPMN20GatewayImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20GatewayImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20GatewayImpl >> eventGatewayType [
	^ eventGatewayType
]

{ #category : #'as yet unclassified' }
BPMN20GatewayImpl >> eventGatewayType: aeventGatewayType [
	^ eventGatewayType := aeventGatewayType
]

{ #category : #'as yet unclassified' }
BPMN20GatewayImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20GatewayImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20GatewayImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20GatewayImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20GatewayImpl >> gatewayDirection [
^ gatewayDirection
]

{ #category : #'as yet unclassified' }
BPMN20GatewayImpl >> gatewayDirection: agatewayDirection [
^ gatewayDirection := agatewayDirection
]

{ #category : #'as yet unclassified' }
BPMN20GatewayImpl >> incoming [
	^ incoming
]

{ #category : #'as yet unclassified' }
BPMN20GatewayImpl >> incoming: aincoming [
	^ incoming := aincoming
]

{ #category : #'as yet unclassified' }
BPMN20GatewayImpl >> instantiate [
	^ instantiate
]

{ #category : #'as yet unclassified' }
BPMN20GatewayImpl >> instantiate: ainstantiate [
	^ instantiate := ainstantiate
]

{ #category : #question }
BPMN20GatewayImpl >> isControlFlow [
	^ true
]

{ #category : #question }
BPMN20GatewayImpl >> isGateway [
	^ true
]

{ #category : #'as yet unclassified' }
BPMN20GatewayImpl >> lanes [
	^ lanes
]

{ #category : #'as yet unclassified' }
BPMN20GatewayImpl >> lanes: alanes [
	^ lanes := alanes
]

{ #category : #'as yet unclassified' }
BPMN20GatewayImpl >> monitoring [
	^ monitoring
]

{ #category : #'as yet unclassified' }
BPMN20GatewayImpl >> monitoring: amonitoring [
	^ monitoring := amonitoring
]

{ #category : #'as yet unclassified' }
BPMN20GatewayImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20GatewayImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20GatewayImpl >> outgoing [
	^ outgoing
]

{ #category : #'as yet unclassified' }
BPMN20GatewayImpl >> outgoing: aoutgoing [
	^ outgoing := aoutgoing
]

{ #category : #'as yet unclassified' }
BPMN20GatewayImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20GatewayImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20GatewayImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20GatewayImpl >> text: atext [
	^ text := atext
]
