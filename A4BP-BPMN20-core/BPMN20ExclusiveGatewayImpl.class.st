Class {
	#name : #BPMN20ExclusiveGatewayImpl,
	#superclass : #BPMN20GatewayImpl,
	#instVars : [
		'default_'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20ExclusiveGatewayImpl class >> annotation [
<MSEClass: #BPMN20ExclusiveGatewayImpl  super: #BPMN20GatewayImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #getset }
BPMN20ExclusiveGatewayImpl class >> bpmn20Name [
	^ 'Exclusive Gateway'
]

{ #category : #'as yet unclassified' }
BPMN20ExclusiveGatewayImpl >> GATEWAY_DIRECTION_EDEFAULT [
	^ GATEWAY_DIRECTION_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20ExclusiveGatewayImpl >> GATEWAY_DIRECTION_EDEFAULT: aGATEWAY_DIRECTION_EDEFAULT [
	^ GATEWAY_DIRECTION_EDEFAULT := aGATEWAY_DIRECTION_EDEFAULT
]

{ #category : #visitor }
BPMN20ExclusiveGatewayImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20ExclusiveGatewayImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20ExclusiveGatewayImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20ExclusiveGatewayImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20ExclusiveGatewayImpl >> auditing [
	^ auditing
]

{ #category : #'as yet unclassified' }
BPMN20ExclusiveGatewayImpl >> auditing: aauditing [
	^ auditing := aauditing
]

{ #category : #'as yet unclassified' }
BPMN20ExclusiveGatewayImpl >> categoryValueRef [
	^ categoryValueRef
]

{ #category : #'as yet unclassified' }
BPMN20ExclusiveGatewayImpl >> categoryValueRef: acategoryValueRef [
	^ categoryValueRef := acategoryValueRef
]

{ #category : #'as yet unclassified' }
BPMN20ExclusiveGatewayImpl >> default_ [
^ default_
]

{ #category : #'as yet unclassified' }
BPMN20ExclusiveGatewayImpl >> default_: adefault_ [
^ default_ := adefault_
]

{ #category : #'as yet unclassified' }
BPMN20ExclusiveGatewayImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20ExclusiveGatewayImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20ExclusiveGatewayImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20ExclusiveGatewayImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20ExclusiveGatewayImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20ExclusiveGatewayImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20ExclusiveGatewayImpl >> gatewayDirection [
	^ gatewayDirection
]

{ #category : #'as yet unclassified' }
BPMN20ExclusiveGatewayImpl >> gatewayDirection: agatewayDirection [
	^ gatewayDirection := agatewayDirection
]

{ #category : #'as yet unclassified' }
BPMN20ExclusiveGatewayImpl >> incoming [
	^ incoming
]

{ #category : #'as yet unclassified' }
BPMN20ExclusiveGatewayImpl >> incoming: aincoming [
	^ incoming := aincoming
]

{ #category : #'as yet unclassified' }
BPMN20ExclusiveGatewayImpl >> lanes [
	^ lanes
]

{ #category : #'as yet unclassified' }
BPMN20ExclusiveGatewayImpl >> lanes: alanes [
	^ lanes := alanes
]

{ #category : #'as yet unclassified' }
BPMN20ExclusiveGatewayImpl >> monitoring [
	^ monitoring
]

{ #category : #'as yet unclassified' }
BPMN20ExclusiveGatewayImpl >> monitoring: amonitoring [
	^ monitoring := amonitoring
]

{ #category : #'as yet unclassified' }
BPMN20ExclusiveGatewayImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20ExclusiveGatewayImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20ExclusiveGatewayImpl >> outgoing [
	^ outgoing
]

{ #category : #'as yet unclassified' }
BPMN20ExclusiveGatewayImpl >> outgoing: aoutgoing [
	^ outgoing := aoutgoing
]

{ #category : #'as yet unclassified' }
BPMN20ExclusiveGatewayImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20ExclusiveGatewayImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20ExclusiveGatewayImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20ExclusiveGatewayImpl >> text: atext [
	^ text := atext
]
