Class {
	#name : #BPMN20EventImpl,
	#superclass : #BPMN20FlowNodeImpl,
	#instVars : [
		'properties'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20EventImpl class >> annotation [
<MSEClass: #BPMN20EventImpl  super: #BPMN20FlowNodeImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20EventImpl >> CANCEL_ACTIVITY_EDEFAULT [
	^ CANCEL_ACTIVITY_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20EventImpl >> CANCEL_ACTIVITY_EDEFAULT: aCANCEL_ACTIVITY_EDEFAULT [
	^ CANCEL_ACTIVITY_EDEFAULT := aCANCEL_ACTIVITY_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20EventImpl >> PARALLEL_MULTIPLE_EDEFAULT [
	^ PARALLEL_MULTIPLE_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20EventImpl >> PARALLEL_MULTIPLE_EDEFAULT: aPARALLEL_MULTIPLE_EDEFAULT [
	^ PARALLEL_MULTIPLE_EDEFAULT := aPARALLEL_MULTIPLE_EDEFAULT
]

{ #category : #visitor }
BPMN20EventImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20EventImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20EventImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20EventImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20EventImpl >> attachedToRef [
	^ attachedToRef
]

{ #category : #'as yet unclassified' }
BPMN20EventImpl >> attachedToRef: aattachedToRef [
	^ attachedToRef := aattachedToRef
]

{ #category : #'as yet unclassified' }
BPMN20EventImpl >> auditing [
	^ auditing
]

{ #category : #'as yet unclassified' }
BPMN20EventImpl >> auditing: aauditing [
	^ auditing := aauditing
]

{ #category : #'as yet unclassified' }
BPMN20EventImpl >> cancelActivity [
	^ cancelActivity
]

{ #category : #'as yet unclassified' }
BPMN20EventImpl >> cancelActivity: acancelActivity [
	^ cancelActivity := acancelActivity
]

{ #category : #'as yet unclassified' }
BPMN20EventImpl >> categoryValueRef [
	^ categoryValueRef
]

{ #category : #'as yet unclassified' }
BPMN20EventImpl >> categoryValueRef: acategoryValueRef [
	^ categoryValueRef := acategoryValueRef
]

{ #category : #'as yet unclassified' }
BPMN20EventImpl >> dataInputAssociation [
	^ dataInputAssociation
]

{ #category : #'as yet unclassified' }
BPMN20EventImpl >> dataInputAssociation: adataInputAssociation [
	^ dataInputAssociation := adataInputAssociation
]

{ #category : #'as yet unclassified' }
BPMN20EventImpl >> dataInputs [
	^ dataInputs
]

{ #category : #'as yet unclassified' }
BPMN20EventImpl >> dataInputs: adataInputs [
	^ dataInputs := adataInputs
]

{ #category : #'as yet unclassified' }
BPMN20EventImpl >> dataOutputAssociation [
	^ dataOutputAssociation
]

{ #category : #'as yet unclassified' }
BPMN20EventImpl >> dataOutputAssociation: adataOutputAssociation [
	^ dataOutputAssociation := adataOutputAssociation
]

{ #category : #'as yet unclassified' }
BPMN20EventImpl >> dataOutputs [
	^ dataOutputs
]

{ #category : #'as yet unclassified' }
BPMN20EventImpl >> dataOutputs: adataOutputs [
	^ dataOutputs := adataOutputs
]

{ #category : #'as yet unclassified' }
BPMN20EventImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20EventImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20EventImpl >> eventDefinitionRefs [
	^ eventDefinitionRefs
]

{ #category : #'as yet unclassified' }
BPMN20EventImpl >> eventDefinitionRefs: aeventDefinitionRefs [
	^ eventDefinitionRefs := aeventDefinitionRefs
]

{ #category : #'as yet unclassified' }
BPMN20EventImpl >> eventDefinitions [
	^ eventDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20EventImpl >> eventDefinitions: aeventDefinitions [
	^ eventDefinitions := aeventDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20EventImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20EventImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20EventImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20EventImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20EventImpl >> incoming [
	^ incoming
]

{ #category : #'as yet unclassified' }
BPMN20EventImpl >> incoming: aincoming [
	^ incoming := aincoming
]

{ #category : #'as yet unclassified' }
BPMN20EventImpl >> inputSet [
	^ inputSet
]

{ #category : #'as yet unclassified' }
BPMN20EventImpl >> inputSet: ainputSet [
	^ inputSet := ainputSet
]

{ #category : #'as yet unclassified' }
BPMN20EventImpl >> isInterrupting [
	^ isInterrupting
]

{ #category : #'as yet unclassified' }
BPMN20EventImpl >> isInterrupting: aisInterrupting [
	^ isInterrupting := aisInterrupting
]

{ #category : #'as yet unclassified' }
BPMN20EventImpl >> lanes [
	^ lanes
]

{ #category : #'as yet unclassified' }
BPMN20EventImpl >> lanes: alanes [
	^ lanes := alanes
]

{ #category : #'as yet unclassified' }
BPMN20EventImpl >> monitoring [
	^ monitoring
]

{ #category : #'as yet unclassified' }
BPMN20EventImpl >> monitoring: amonitoring [
	^ monitoring := amonitoring
]

{ #category : #'as yet unclassified' }
BPMN20EventImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20EventImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20EventImpl >> outgoing [
	^ outgoing
]

{ #category : #'as yet unclassified' }
BPMN20EventImpl >> outgoing: aoutgoing [
	^ outgoing := aoutgoing
]

{ #category : #'as yet unclassified' }
BPMN20EventImpl >> outputSet [
	^ outputSet
]

{ #category : #'as yet unclassified' }
BPMN20EventImpl >> outputSet: aoutputSet [
	^ outputSet := aoutputSet
]

{ #category : #'as yet unclassified' }
BPMN20EventImpl >> parallelMultiple [
	^ parallelMultiple
]

{ #category : #'as yet unclassified' }
BPMN20EventImpl >> parallelMultiple: aparallelMultiple [
	^ parallelMultiple := aparallelMultiple
]

{ #category : #'as yet unclassified' }
BPMN20EventImpl >> properties [
^ properties
]

{ #category : #'as yet unclassified' }
BPMN20EventImpl >> properties: aproperties [
^ properties := aproperties
]

{ #category : #'as yet unclassified' }
BPMN20EventImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20EventImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20EventImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20EventImpl >> text: atext [
	^ text := atext
]
