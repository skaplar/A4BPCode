Class {
	#name : #BPMN20ParallelGatewayImpl,
	#superclass : #BPMN20GatewayImpl,
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20ParallelGatewayImpl class >> annotation [
<MSEClass: #BPMN20ParallelGatewayImpl  super: #BPMN20GatewayImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #getset }
BPMN20ParallelGatewayImpl class >> bpmn20Name [
	^ 'Parallel Gateway'
]

{ #category : #'as yet unclassified' }
BPMN20ParallelGatewayImpl >> GATEWAY_DIRECTION_EDEFAULT [
	^ GATEWAY_DIRECTION_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20ParallelGatewayImpl >> GATEWAY_DIRECTION_EDEFAULT: aGATEWAY_DIRECTION_EDEFAULT [
	^ GATEWAY_DIRECTION_EDEFAULT := aGATEWAY_DIRECTION_EDEFAULT
]

{ #category : #getset }
BPMN20ParallelGatewayImpl >> aName [
	aName size > 0 ifTrue:[ ^ aName].
	^ self class bpmn20Name
]

{ #category : #visitor }
BPMN20ParallelGatewayImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20ParallelGatewayImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20ParallelGatewayImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20ParallelGatewayImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20ParallelGatewayImpl >> auditing [
	^ auditing
]

{ #category : #'as yet unclassified' }
BPMN20ParallelGatewayImpl >> auditing: aauditing [
	^ auditing := aauditing
]

{ #category : #'as yet unclassified' }
BPMN20ParallelGatewayImpl >> categoryValueRef [
	^ categoryValueRef
]

{ #category : #'as yet unclassified' }
BPMN20ParallelGatewayImpl >> categoryValueRef: acategoryValueRef [
	^ categoryValueRef := acategoryValueRef
]

{ #category : #'as yet unclassified' }
BPMN20ParallelGatewayImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20ParallelGatewayImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20ParallelGatewayImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20ParallelGatewayImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20ParallelGatewayImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20ParallelGatewayImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20ParallelGatewayImpl >> gatewayDirection [
	^ gatewayDirection
]

{ #category : #'as yet unclassified' }
BPMN20ParallelGatewayImpl >> gatewayDirection: agatewayDirection [
	^ gatewayDirection := agatewayDirection
]

{ #category : #'as yet unclassified' }
BPMN20ParallelGatewayImpl >> incoming [
	^ incoming
]

{ #category : #'as yet unclassified' }
BPMN20ParallelGatewayImpl >> incoming: aincoming [
	^ incoming := aincoming
]

{ #category : #'as yet unclassified' }
BPMN20ParallelGatewayImpl >> lanes [
	^ lanes
]

{ #category : #'as yet unclassified' }
BPMN20ParallelGatewayImpl >> lanes: alanes [
	^ lanes := alanes
]

{ #category : #'as yet unclassified' }
BPMN20ParallelGatewayImpl >> monitoring [
	^ monitoring
]

{ #category : #'as yet unclassified' }
BPMN20ParallelGatewayImpl >> monitoring: amonitoring [
	^ monitoring := amonitoring
]

{ #category : #'as yet unclassified' }
BPMN20ParallelGatewayImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20ParallelGatewayImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20ParallelGatewayImpl >> outgoing [
	^ outgoing
]

{ #category : #'as yet unclassified' }
BPMN20ParallelGatewayImpl >> outgoing: aoutgoing [
	^ outgoing := aoutgoing
]

{ #category : #'as yet unclassified' }
BPMN20ParallelGatewayImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20ParallelGatewayImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20ParallelGatewayImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20ParallelGatewayImpl >> text: atext [
	^ text := atext
]
