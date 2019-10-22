Class {
	#name : #BPMN20CatchEventImpl,
	#superclass : #BPMN20EventImpl,
	#instVars : [
		'parallelMultiple',
		'dataOutputs',
		'eventDefinitionRefs',
		'eventDefinitions',
		'outputSet',
		'dataOutputAssociation'
	],
	#classVars : [
		'PARALLEL_MULTIPLE_EDEFAULT'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20CatchEventImpl class >> annotation [
<MSEClass: #BPMN20CatchEventImpl  super: #BPMN20EventImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20CatchEventImpl >> PARALLEL_MULTIPLE_EDEFAULT [
	^ PARALLEL_MULTIPLE_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20CatchEventImpl >> PARALLEL_MULTIPLE_EDEFAULT: aPARALLEL_MULTIPLE_EDEFAULT [
	^ PARALLEL_MULTIPLE_EDEFAULT := aPARALLEL_MULTIPLE_EDEFAULT
]

{ #category : #visitor }
BPMN20CatchEventImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20CatchEventImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20CatchEventImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20CatchEventImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20CatchEventImpl >> attachedToRef [
	^ attachedToRef
]

{ #category : #'as yet unclassified' }
BPMN20CatchEventImpl >> attachedToRef: aattachedToRef [
	^ attachedToRef := aattachedToRef
]

{ #category : #'as yet unclassified' }
BPMN20CatchEventImpl >> auditing [
	^ auditing
]

{ #category : #'as yet unclassified' }
BPMN20CatchEventImpl >> auditing: aauditing [
	^ auditing := aauditing
]

{ #category : #'as yet unclassified' }
BPMN20CatchEventImpl >> cancelActivity [
	^ cancelActivity
]

{ #category : #'as yet unclassified' }
BPMN20CatchEventImpl >> cancelActivity: acancelActivity [
	^ cancelActivity := acancelActivity
]

{ #category : #'as yet unclassified' }
BPMN20CatchEventImpl >> categoryValueRef [
	^ categoryValueRef
]

{ #category : #'as yet unclassified' }
BPMN20CatchEventImpl >> categoryValueRef: acategoryValueRef [
	^ categoryValueRef := acategoryValueRef
]

{ #category : #'as yet unclassified' }
BPMN20CatchEventImpl >> dataOutputAssociation [
^ dataOutputAssociation
]

{ #category : #'as yet unclassified' }
BPMN20CatchEventImpl >> dataOutputAssociation: adataOutputAssociation [
^ dataOutputAssociation := adataOutputAssociation
]

{ #category : #'as yet unclassified' }
BPMN20CatchEventImpl >> dataOutputs [
^ dataOutputs
]

{ #category : #'as yet unclassified' }
BPMN20CatchEventImpl >> dataOutputs: adataOutputs [
^ dataOutputs := adataOutputs
]

{ #category : #'as yet unclassified' }
BPMN20CatchEventImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20CatchEventImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20CatchEventImpl >> eventDefinitionRefs [
^ eventDefinitionRefs
]

{ #category : #'as yet unclassified' }
BPMN20CatchEventImpl >> eventDefinitionRefs: aeventDefinitionRefs [
^ eventDefinitionRefs := aeventDefinitionRefs
]

{ #category : #'as yet unclassified' }
BPMN20CatchEventImpl >> eventDefinitions [
^ eventDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20CatchEventImpl >> eventDefinitions: aeventDefinitions [
^ eventDefinitions := aeventDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20CatchEventImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20CatchEventImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20CatchEventImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20CatchEventImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20CatchEventImpl >> incoming [
	^ incoming
]

{ #category : #'as yet unclassified' }
BPMN20CatchEventImpl >> incoming: aincoming [
	^ incoming := aincoming
]

{ #category : #initialization }
BPMN20CatchEventImpl >> initialize [
	super initialize.
	eventDefinitions := Dictionary new.
]

{ #category : #'as yet unclassified' }
BPMN20CatchEventImpl >> isInterrupting [
	^ isInterrupting
]

{ #category : #'as yet unclassified' }
BPMN20CatchEventImpl >> isInterrupting: aisInterrupting [
	^ isInterrupting := aisInterrupting
]

{ #category : #'as yet unclassified' }
BPMN20CatchEventImpl >> lanes [
	^ lanes
]

{ #category : #'as yet unclassified' }
BPMN20CatchEventImpl >> lanes: alanes [
	^ lanes := alanes
]

{ #category : #'as yet unclassified' }
BPMN20CatchEventImpl >> monitoring [
	^ monitoring
]

{ #category : #'as yet unclassified' }
BPMN20CatchEventImpl >> monitoring: amonitoring [
	^ monitoring := amonitoring
]

{ #category : #'as yet unclassified' }
BPMN20CatchEventImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20CatchEventImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20CatchEventImpl >> outgoing [
	^ outgoing
]

{ #category : #'as yet unclassified' }
BPMN20CatchEventImpl >> outgoing: aoutgoing [
	^ outgoing := aoutgoing
]

{ #category : #'as yet unclassified' }
BPMN20CatchEventImpl >> outputSet [
^ outputSet
]

{ #category : #'as yet unclassified' }
BPMN20CatchEventImpl >> outputSet: aoutputSet [
^ outputSet := aoutputSet
]

{ #category : #'as yet unclassified' }
BPMN20CatchEventImpl >> parallelMultiple [
^ parallelMultiple
]

{ #category : #'as yet unclassified' }
BPMN20CatchEventImpl >> parallelMultiple: aparallelMultiple [
^ parallelMultiple := aparallelMultiple
]

{ #category : #'as yet unclassified' }
BPMN20CatchEventImpl >> properties [
	^ properties
]

{ #category : #'as yet unclassified' }
BPMN20CatchEventImpl >> properties: aproperties [
	^ properties := aproperties
]

{ #category : #'as yet unclassified' }
BPMN20CatchEventImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20CatchEventImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20CatchEventImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20CatchEventImpl >> text: atext [
	^ text := atext
]
