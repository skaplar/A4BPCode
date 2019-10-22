Class {
	#name : #BPMN20InclusiveGatewayImpl,
	#superclass : #BPMN20GatewayImpl,
	#instVars : [
		'default_'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20InclusiveGatewayImpl class >> annotation [
<MSEClass: #BPMN20InclusiveGatewayImpl  super: #BPMN20GatewayImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20InclusiveGatewayImpl >> GATEWAY_DIRECTION_EDEFAULT [
	^ GATEWAY_DIRECTION_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20InclusiveGatewayImpl >> GATEWAY_DIRECTION_EDEFAULT: aGATEWAY_DIRECTION_EDEFAULT [
	^ GATEWAY_DIRECTION_EDEFAULT := aGATEWAY_DIRECTION_EDEFAULT
]

{ #category : #visitor }
BPMN20InclusiveGatewayImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20InclusiveGatewayImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20InclusiveGatewayImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20InclusiveGatewayImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20InclusiveGatewayImpl >> auditing [
	^ auditing
]

{ #category : #'as yet unclassified' }
BPMN20InclusiveGatewayImpl >> auditing: aauditing [
	^ auditing := aauditing
]

{ #category : #'as yet unclassified' }
BPMN20InclusiveGatewayImpl >> categoryValueRef [
	^ categoryValueRef
]

{ #category : #'as yet unclassified' }
BPMN20InclusiveGatewayImpl >> categoryValueRef: acategoryValueRef [
	^ categoryValueRef := acategoryValueRef
]

{ #category : #'as yet unclassified' }
BPMN20InclusiveGatewayImpl >> default_ [
^ default_
]

{ #category : #'as yet unclassified' }
BPMN20InclusiveGatewayImpl >> default_: adefault_ [
^ default_ := adefault_
]

{ #category : #'as yet unclassified' }
BPMN20InclusiveGatewayImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20InclusiveGatewayImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20InclusiveGatewayImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20InclusiveGatewayImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20InclusiveGatewayImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20InclusiveGatewayImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20InclusiveGatewayImpl >> gatewayDirection [
	^ gatewayDirection
]

{ #category : #'as yet unclassified' }
BPMN20InclusiveGatewayImpl >> gatewayDirection: agatewayDirection [
	^ gatewayDirection := agatewayDirection
]

{ #category : #'as yet unclassified' }
BPMN20InclusiveGatewayImpl >> incoming [
	^ incoming
]

{ #category : #'as yet unclassified' }
BPMN20InclusiveGatewayImpl >> incoming: aincoming [
	^ incoming := aincoming
]

{ #category : #'as yet unclassified' }
BPMN20InclusiveGatewayImpl >> lanes [
	^ lanes
]

{ #category : #'as yet unclassified' }
BPMN20InclusiveGatewayImpl >> lanes: alanes [
	^ lanes := alanes
]

{ #category : #'as yet unclassified' }
BPMN20InclusiveGatewayImpl >> monitoring [
	^ monitoring
]

{ #category : #'as yet unclassified' }
BPMN20InclusiveGatewayImpl >> monitoring: amonitoring [
	^ monitoring := amonitoring
]

{ #category : #'as yet unclassified' }
BPMN20InclusiveGatewayImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20InclusiveGatewayImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20InclusiveGatewayImpl >> outgoing [
	^ outgoing
]

{ #category : #'as yet unclassified' }
BPMN20InclusiveGatewayImpl >> outgoing: aoutgoing [
	^ outgoing := aoutgoing
]

{ #category : #'as yet unclassified' }
BPMN20InclusiveGatewayImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20InclusiveGatewayImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20InclusiveGatewayImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20InclusiveGatewayImpl >> text: atext [
	^ text := atext
]
