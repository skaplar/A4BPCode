Class {
	#name : #BPMN20isGatewayVisitor,
	#superclass : #A4BPAbstractVisitor,
	#category : #'A4BP-BPMN20-core-visitors-questions'
}

{ #category : #'as yet unclassified' }
BPMN20isGatewayVisitor class >> annotation [
<MSEClass: #BPMN20isGatewayVisitor  super: #A4BPAbstractVisitor >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #visitor }
BPMN20isGatewayVisitor >> visitBPMN20ComplexGatewayImpl: aModel [ 
	^ self visitBPMN20GatewayImpl: aModel
]

{ #category : #visitor }
BPMN20isGatewayVisitor >> visitBPMN20EventBasedGatewayImpl: aModel [ 
	^ self visitBPMN20GatewayImpl: aModel
]

{ #category : #visitor }
BPMN20isGatewayVisitor >> visitBPMN20ExclusiveGatewayImpl: aModel [ 
	^ self visitBPMN20GatewayImpl: aModel
]

{ #category : #visitor }
BPMN20isGatewayVisitor >> visitBPMN20GatewayImpl: aModel [
	^ true
]

{ #category : #visitor }
BPMN20isGatewayVisitor >> visitBPMN20InclusiveGatewayImpl: aModel [ 
	^ self visitBPMN20GatewayImpl: aModel
]

{ #category : #visitor }
BPMN20isGatewayVisitor >> visitBPMN20Object: aModel [
	^ false
]

{ #category : #visitor }
BPMN20isGatewayVisitor >> visitBPMN20ParallelGatewayImpl: aModel [ 
	^ self visitBPMN20GatewayImpl: aModel
]
