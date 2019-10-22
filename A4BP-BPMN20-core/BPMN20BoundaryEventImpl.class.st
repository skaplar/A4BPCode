Class {
	#name : #BPMN20BoundaryEventImpl,
	#superclass : #BPMN20CatchEventImpl,
	#instVars : [
		'cancelActivity',
		'attachedToRef',
		'CANCEL_ACTIVITY_EDEFAULT'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20BoundaryEventImpl class >> annotation [
<MSEClass: #BPMN20BoundaryEventImpl  super: #BPMN20CatchEventImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20BoundaryEventImpl class >> fillElementsIn: aModel from: document [
	| visitor |
	visitor := BPMN20ParserSetinBPMN20BoundaryEventImplVisitor new.
	visitor element: aModel.
	self fillFlowNode: aModel from: document.
	self fillElementsIn: aModel from: document visitor: visitor.
]

{ #category : #'as yet unclassified' }
BPMN20BoundaryEventImpl >> CANCEL_ACTIVITY_EDEFAULT [
^ CANCEL_ACTIVITY_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20BoundaryEventImpl >> CANCEL_ACTIVITY_EDEFAULT: aCANCEL_ACTIVITY_EDEFAULT [
^ CANCEL_ACTIVITY_EDEFAULT := aCANCEL_ACTIVITY_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20BoundaryEventImpl >> PARALLEL_MULTIPLE_EDEFAULT [
	^ PARALLEL_MULTIPLE_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20BoundaryEventImpl >> PARALLEL_MULTIPLE_EDEFAULT: aPARALLEL_MULTIPLE_EDEFAULT [
	^ PARALLEL_MULTIPLE_EDEFAULT := aPARALLEL_MULTIPLE_EDEFAULT
]

{ #category : #visitor }
BPMN20BoundaryEventImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20BoundaryEventImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20BoundaryEventImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20BoundaryEventImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20BoundaryEventImpl >> attachedToRef [
^ attachedToRef
]

{ #category : #'as yet unclassified' }
BPMN20BoundaryEventImpl >> attachedToRef: aattachedToRef [
^ attachedToRef := aattachedToRef
]

{ #category : #'as yet unclassified' }
BPMN20BoundaryEventImpl >> auditing [
	^ auditing
]

{ #category : #'as yet unclassified' }
BPMN20BoundaryEventImpl >> auditing: aauditing [
	^ auditing := aauditing
]

{ #category : #'as yet unclassified' }
BPMN20BoundaryEventImpl >> cancelActivity [
^ cancelActivity
]

{ #category : #'as yet unclassified' }
BPMN20BoundaryEventImpl >> cancelActivity: acancelActivity [
^ cancelActivity := acancelActivity
]

{ #category : #'as yet unclassified' }
BPMN20BoundaryEventImpl >> categoryValueRef [
	^ categoryValueRef
]

{ #category : #'as yet unclassified' }
BPMN20BoundaryEventImpl >> categoryValueRef: acategoryValueRef [
	^ categoryValueRef := acategoryValueRef
]

{ #category : #'as yet unclassified' }
BPMN20BoundaryEventImpl >> dataOutputAssociation [
	^ dataOutputAssociation
]

{ #category : #'as yet unclassified' }
BPMN20BoundaryEventImpl >> dataOutputAssociation: adataOutputAssociation [
	^ dataOutputAssociation := adataOutputAssociation
]

{ #category : #'as yet unclassified' }
BPMN20BoundaryEventImpl >> dataOutputs [
	^ dataOutputs
]

{ #category : #'as yet unclassified' }
BPMN20BoundaryEventImpl >> dataOutputs: adataOutputs [
	^ dataOutputs := adataOutputs
]

{ #category : #'as yet unclassified' }
BPMN20BoundaryEventImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20BoundaryEventImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20BoundaryEventImpl >> eventDefinitionRefs [
	^ eventDefinitionRefs
]

{ #category : #'as yet unclassified' }
BPMN20BoundaryEventImpl >> eventDefinitionRefs: aeventDefinitionRefs [
	^ eventDefinitionRefs := aeventDefinitionRefs
]

{ #category : #'as yet unclassified' }
BPMN20BoundaryEventImpl >> eventDefinitions [
	^ eventDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20BoundaryEventImpl >> eventDefinitions: aeventDefinitions [
	^ eventDefinitions := aeventDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20BoundaryEventImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20BoundaryEventImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20BoundaryEventImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20BoundaryEventImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20BoundaryEventImpl >> incoming [
	^ incoming
]

{ #category : #'as yet unclassified' }
BPMN20BoundaryEventImpl >> incoming: aincoming [
	^ incoming := aincoming
]

{ #category : #'as yet unclassified' }
BPMN20BoundaryEventImpl >> lanes [
	^ lanes
]

{ #category : #'as yet unclassified' }
BPMN20BoundaryEventImpl >> lanes: alanes [
	^ lanes := alanes
]

{ #category : #'as yet unclassified' }
BPMN20BoundaryEventImpl >> monitoring [
	^ monitoring
]

{ #category : #'as yet unclassified' }
BPMN20BoundaryEventImpl >> monitoring: amonitoring [
	^ monitoring := amonitoring
]

{ #category : #'as yet unclassified' }
BPMN20BoundaryEventImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20BoundaryEventImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20BoundaryEventImpl >> outgoing [
	^ outgoing
]

{ #category : #'as yet unclassified' }
BPMN20BoundaryEventImpl >> outgoing: aoutgoing [
	^ outgoing := aoutgoing
]

{ #category : #'as yet unclassified' }
BPMN20BoundaryEventImpl >> outputSet [
	^ outputSet
]

{ #category : #'as yet unclassified' }
BPMN20BoundaryEventImpl >> outputSet: aoutputSet [
	^ outputSet := aoutputSet
]

{ #category : #'as yet unclassified' }
BPMN20BoundaryEventImpl >> parallelMultiple [
	^ parallelMultiple
]

{ #category : #'as yet unclassified' }
BPMN20BoundaryEventImpl >> parallelMultiple: aparallelMultiple [
	^ parallelMultiple := aparallelMultiple
]

{ #category : #'as yet unclassified' }
BPMN20BoundaryEventImpl >> properties [
	^ properties
]

{ #category : #'as yet unclassified' }
BPMN20BoundaryEventImpl >> properties: aproperties [
	^ properties := aproperties
]

{ #category : #'as yet unclassified' }
BPMN20BoundaryEventImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20BoundaryEventImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20BoundaryEventImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20BoundaryEventImpl >> text: atext [
	^ text := atext
]
