Class {
	#name : #BPMN20EventBasedGatewayImpl,
	#superclass : #BPMN20GatewayImpl,
	#instVars : [
		'instantiate',
		'eventGatewayType',
		'INSTANTIATE_EDEFAULT',
		'EVENT_GATEWAY_TYPE_EDEFAULT'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20EventBasedGatewayImpl class >> annotation [
<MSEClass: #BPMN20EventBasedGatewayImpl  super: #BPMN20GatewayImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20EventBasedGatewayImpl >> EVENT_GATEWAY_TYPE_EDEFAULT [
^ EVENT_GATEWAY_TYPE_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20EventBasedGatewayImpl >> EVENT_GATEWAY_TYPE_EDEFAULT: aEVENT_GATEWAY_TYPE_EDEFAULT [
^ EVENT_GATEWAY_TYPE_EDEFAULT := aEVENT_GATEWAY_TYPE_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20EventBasedGatewayImpl >> GATEWAY_DIRECTION_EDEFAULT [
	^ GATEWAY_DIRECTION_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20EventBasedGatewayImpl >> GATEWAY_DIRECTION_EDEFAULT: aGATEWAY_DIRECTION_EDEFAULT [
	^ GATEWAY_DIRECTION_EDEFAULT := aGATEWAY_DIRECTION_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20EventBasedGatewayImpl >> INSTANTIATE_EDEFAULT [
^ INSTANTIATE_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20EventBasedGatewayImpl >> INSTANTIATE_EDEFAULT: aINSTANTIATE_EDEFAULT [
^ INSTANTIATE_EDEFAULT := aINSTANTIATE_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20EventBasedGatewayImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20EventBasedGatewayImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20EventBasedGatewayImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20EventBasedGatewayImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20EventBasedGatewayImpl >> auditing [
	^ auditing
]

{ #category : #'as yet unclassified' }
BPMN20EventBasedGatewayImpl >> auditing: aauditing [
	^ auditing := aauditing
]

{ #category : #'as yet unclassified' }
BPMN20EventBasedGatewayImpl >> categoryValueRef [
	^ categoryValueRef
]

{ #category : #'as yet unclassified' }
BPMN20EventBasedGatewayImpl >> categoryValueRef: acategoryValueRef [
	^ categoryValueRef := acategoryValueRef
]

{ #category : #'as yet unclassified' }
BPMN20EventBasedGatewayImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20EventBasedGatewayImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20EventBasedGatewayImpl >> eventGatewayType [
^ eventGatewayType
]

{ #category : #'as yet unclassified' }
BPMN20EventBasedGatewayImpl >> eventGatewayType: aeventGatewayType [
^ eventGatewayType := aeventGatewayType
]

{ #category : #'as yet unclassified' }
BPMN20EventBasedGatewayImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20EventBasedGatewayImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20EventBasedGatewayImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20EventBasedGatewayImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20EventBasedGatewayImpl >> gatewayDirection [
	^ gatewayDirection
]

{ #category : #'as yet unclassified' }
BPMN20EventBasedGatewayImpl >> gatewayDirection: agatewayDirection [
	^ gatewayDirection := agatewayDirection
]

{ #category : #'as yet unclassified' }
BPMN20EventBasedGatewayImpl >> incoming [
	^ incoming
]

{ #category : #'as yet unclassified' }
BPMN20EventBasedGatewayImpl >> incoming: aincoming [
	^ incoming := aincoming
]

{ #category : #'as yet unclassified' }
BPMN20EventBasedGatewayImpl >> instantiate [
^ instantiate
]

{ #category : #'as yet unclassified' }
BPMN20EventBasedGatewayImpl >> instantiate: ainstantiate [
^ instantiate := ainstantiate
]

{ #category : #'as yet unclassified' }
BPMN20EventBasedGatewayImpl >> lanes [
	^ lanes
]

{ #category : #'as yet unclassified' }
BPMN20EventBasedGatewayImpl >> lanes: alanes [
	^ lanes := alanes
]

{ #category : #'as yet unclassified' }
BPMN20EventBasedGatewayImpl >> monitoring [
	^ monitoring
]

{ #category : #'as yet unclassified' }
BPMN20EventBasedGatewayImpl >> monitoring: amonitoring [
	^ monitoring := amonitoring
]

{ #category : #'as yet unclassified' }
BPMN20EventBasedGatewayImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20EventBasedGatewayImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20EventBasedGatewayImpl >> outgoing [
	^ outgoing
]

{ #category : #'as yet unclassified' }
BPMN20EventBasedGatewayImpl >> outgoing: aoutgoing [
	^ outgoing := aoutgoing
]

{ #category : #'as yet unclassified' }
BPMN20EventBasedGatewayImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20EventBasedGatewayImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20EventBasedGatewayImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20EventBasedGatewayImpl >> text: atext [
	^ text := atext
]
