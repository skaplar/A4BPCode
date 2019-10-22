Class {
	#name : #BPMN20ComplexGatewayImpl,
	#superclass : #BPMN20GatewayImpl,
	#instVars : [
		'activationCondition',
		'default_'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20ComplexGatewayImpl class >> annotation [
<MSEClass: #BPMN20ComplexGatewayImpl  super: #BPMN20GatewayImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20ComplexGatewayImpl >> GATEWAY_DIRECTION_EDEFAULT [
	^ GATEWAY_DIRECTION_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20ComplexGatewayImpl >> GATEWAY_DIRECTION_EDEFAULT: aGATEWAY_DIRECTION_EDEFAULT [
	^ GATEWAY_DIRECTION_EDEFAULT := aGATEWAY_DIRECTION_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20ComplexGatewayImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20ComplexGatewayImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20ComplexGatewayImpl >> activationCondition [
^ activationCondition
]

{ #category : #'as yet unclassified' }
BPMN20ComplexGatewayImpl >> activationCondition: aactivationCondition [
^ activationCondition := aactivationCondition
]

{ #category : #'as yet unclassified' }
BPMN20ComplexGatewayImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20ComplexGatewayImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20ComplexGatewayImpl >> auditing [
	^ auditing
]

{ #category : #'as yet unclassified' }
BPMN20ComplexGatewayImpl >> auditing: aauditing [
	^ auditing := aauditing
]

{ #category : #'as yet unclassified' }
BPMN20ComplexGatewayImpl >> categoryValueRef [
	^ categoryValueRef
]

{ #category : #'as yet unclassified' }
BPMN20ComplexGatewayImpl >> categoryValueRef: acategoryValueRef [
	^ categoryValueRef := acategoryValueRef
]

{ #category : #'as yet unclassified' }
BPMN20ComplexGatewayImpl >> default_ [
^ default_
]

{ #category : #'as yet unclassified' }
BPMN20ComplexGatewayImpl >> default_: adefault_ [
^ default_ := adefault_
]

{ #category : #'as yet unclassified' }
BPMN20ComplexGatewayImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20ComplexGatewayImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20ComplexGatewayImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20ComplexGatewayImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20ComplexGatewayImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20ComplexGatewayImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20ComplexGatewayImpl >> gatewayDirection [
	^ gatewayDirection
]

{ #category : #'as yet unclassified' }
BPMN20ComplexGatewayImpl >> gatewayDirection: agatewayDirection [
	^ gatewayDirection := agatewayDirection
]

{ #category : #'as yet unclassified' }
BPMN20ComplexGatewayImpl >> incoming [
	^ incoming
]

{ #category : #'as yet unclassified' }
BPMN20ComplexGatewayImpl >> incoming: aincoming [
	^ incoming := aincoming
]

{ #category : #'as yet unclassified' }
BPMN20ComplexGatewayImpl >> lanes [
	^ lanes
]

{ #category : #'as yet unclassified' }
BPMN20ComplexGatewayImpl >> lanes: alanes [
	^ lanes := alanes
]

{ #category : #'as yet unclassified' }
BPMN20ComplexGatewayImpl >> monitoring [
	^ monitoring
]

{ #category : #'as yet unclassified' }
BPMN20ComplexGatewayImpl >> monitoring: amonitoring [
	^ monitoring := amonitoring
]

{ #category : #'as yet unclassified' }
BPMN20ComplexGatewayImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20ComplexGatewayImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20ComplexGatewayImpl >> outgoing [
	^ outgoing
]

{ #category : #'as yet unclassified' }
BPMN20ComplexGatewayImpl >> outgoing: aoutgoing [
	^ outgoing := aoutgoing
]

{ #category : #'as yet unclassified' }
BPMN20ComplexGatewayImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20ComplexGatewayImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20ComplexGatewayImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20ComplexGatewayImpl >> text: atext [
	^ text := atext
]
