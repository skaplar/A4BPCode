Class {
	#name : #BPMN20IntermediateCatchEventImpl,
	#superclass : #BPMN20CatchEventImpl,
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20IntermediateCatchEventImpl class >> annotation [
<MSEClass: #BPMN20IntermediateCatchEventImpl  super: #BPMN20CatchEventImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #getset }
BPMN20IntermediateCatchEventImpl class >> bpmn20Name [
	^ 'Intermediate Catch Event'
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateCatchEventImpl class >> fillElementsIn: aModel from: document [
	| visitor |
	visitor := BPMN20ParserSetinBPMN20IntermediateCatchEventImplVisitor new.
	visitor element: aModel.
	self fillFlowNode: aModel from: document.
	self fillElementsIn: aModel from: document visitor: visitor.
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateCatchEventImpl >> PARALLEL_MULTIPLE_EDEFAULT [
	^ PARALLEL_MULTIPLE_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateCatchEventImpl >> PARALLEL_MULTIPLE_EDEFAULT: aPARALLEL_MULTIPLE_EDEFAULT [
	^ PARALLEL_MULTIPLE_EDEFAULT := aPARALLEL_MULTIPLE_EDEFAULT
]

{ #category : #visitor }
BPMN20IntermediateCatchEventImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20IntermediateCatchEventImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateCatchEventImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateCatchEventImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateCatchEventImpl >> auditing [
	^ auditing
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateCatchEventImpl >> auditing: aauditing [
	^ auditing := aauditing
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateCatchEventImpl >> categoryValueRef [
	^ categoryValueRef
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateCatchEventImpl >> categoryValueRef: acategoryValueRef [
	^ categoryValueRef := acategoryValueRef
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateCatchEventImpl >> dataOutputAssociation [
	^ dataOutputAssociation
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateCatchEventImpl >> dataOutputAssociation: adataOutputAssociation [
	^ dataOutputAssociation := adataOutputAssociation
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateCatchEventImpl >> dataOutputs [
	^ dataOutputs
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateCatchEventImpl >> dataOutputs: adataOutputs [
	^ dataOutputs := adataOutputs
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateCatchEventImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateCatchEventImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateCatchEventImpl >> eventDefinitionRefs [
	^ eventDefinitionRefs
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateCatchEventImpl >> eventDefinitionRefs: aeventDefinitionRefs [
	^ eventDefinitionRefs := aeventDefinitionRefs
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateCatchEventImpl >> eventDefinitions [
	^ eventDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateCatchEventImpl >> eventDefinitions: aeventDefinitions [
	^ eventDefinitions := aeventDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateCatchEventImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateCatchEventImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateCatchEventImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateCatchEventImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateCatchEventImpl >> incoming [
	^ incoming
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateCatchEventImpl >> incoming: aincoming [
	^ incoming := aincoming
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateCatchEventImpl >> lanes [
	^ lanes
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateCatchEventImpl >> lanes: alanes [
	^ lanes := alanes
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateCatchEventImpl >> monitoring [
	^ monitoring
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateCatchEventImpl >> monitoring: amonitoring [
	^ monitoring := amonitoring
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateCatchEventImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateCatchEventImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateCatchEventImpl >> outgoing [
	^ outgoing
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateCatchEventImpl >> outgoing: aoutgoing [
	^ outgoing := aoutgoing
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateCatchEventImpl >> outputSet [
	^ outputSet
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateCatchEventImpl >> outputSet: aoutputSet [
	^ outputSet := aoutputSet
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateCatchEventImpl >> parallelMultiple [
	^ parallelMultiple
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateCatchEventImpl >> parallelMultiple: aparallelMultiple [
	^ parallelMultiple := aparallelMultiple
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateCatchEventImpl >> properties [
	^ properties
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateCatchEventImpl >> properties: aproperties [
	^ properties := aproperties
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateCatchEventImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateCatchEventImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateCatchEventImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20IntermediateCatchEventImpl >> text: atext [
	^ text := atext
]
