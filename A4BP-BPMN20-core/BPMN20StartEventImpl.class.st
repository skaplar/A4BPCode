"
As the name implies, the Start Event indicates where a particular Process will start. In terms of Sequence Flows, the Start Event starts the flow of the Process, and thus, will not have any incoming Sequence Flows—no Sequence Flow can connect to a Start Event.
"
Class {
	#name : #BPMN20StartEventImpl,
	#superclass : #BPMN20CatchEventImpl,
	#instVars : [
		'isInterrupting'
	],
	#classVars : [
		'IS_INTERRUPTING_EDEFAULT'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20StartEventImpl class >> annotation [
<MSEClass: #BPMN20StartEventImpl  super: #BPMN20CatchEventImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #getset }
BPMN20StartEventImpl class >> bpmn20Name [
	^ 'Start Event'
]

{ #category : #parser }
BPMN20StartEventImpl class >> fillElementsIn: aModel from: document [
	| visitor |
	visitor := BPMN20ParserSetinBPMN20StartEventImplVisitor new.
	visitor element: aModel.
	aModel isInterrupting: (self readBoolean: document at: 'isInterrupting').
	self fillElementsIn: aModel from: document visitor: visitor.
]

{ #category : #'as yet unclassified' }
BPMN20StartEventImpl >> PARALLEL_MULTIPLE_EDEFAULT [
	^ PARALLEL_MULTIPLE_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20StartEventImpl >> PARALLEL_MULTIPLE_EDEFAULT: aPARALLEL_MULTIPLE_EDEFAULT [
	^ PARALLEL_MULTIPLE_EDEFAULT := aPARALLEL_MULTIPLE_EDEFAULT
]

{ #category : #getset }
BPMN20StartEventImpl >> aName [
	aName size > 0 ifTrue:[ ^ aName].
	^ self class bpmn20Name
]

{ #category : #visitor }
BPMN20StartEventImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20StartEventImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20StartEventImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20StartEventImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20StartEventImpl >> auditing [
	^ auditing
]

{ #category : #'as yet unclassified' }
BPMN20StartEventImpl >> auditing: aauditing [
	^ auditing := aauditing
]

{ #category : #visitor }
BPMN20StartEventImpl >> buildInternalRelations [
	"super call is to send a message for my children to build their relations"
	super buildInternalRelations.
	self a4bpRefsToBuilder do: [ :link | self findElementAndDoRelation: link ]
]

{ #category : #'as yet unclassified' }
BPMN20StartEventImpl >> categoryValueRef [
	^ categoryValueRef
]

{ #category : #'as yet unclassified' }
BPMN20StartEventImpl >> categoryValueRef: acategoryValueRef [
	^ categoryValueRef := acategoryValueRef
]

{ #category : #'as yet unclassified' }
BPMN20StartEventImpl >> dataOutputAssociation [
	^ dataOutputAssociation
]

{ #category : #'as yet unclassified' }
BPMN20StartEventImpl >> dataOutputAssociation: adataOutputAssociation [
	^ dataOutputAssociation := adataOutputAssociation
]

{ #category : #'as yet unclassified' }
BPMN20StartEventImpl >> dataOutputs [
	^ dataOutputs
]

{ #category : #'as yet unclassified' }
BPMN20StartEventImpl >> dataOutputs: adataOutputs [
	^ dataOutputs := adataOutputs
]

{ #category : #'as yet unclassified' }
BPMN20StartEventImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20StartEventImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20StartEventImpl >> eventDefinitionRefs [
	^ eventDefinitionRefs
]

{ #category : #'as yet unclassified' }
BPMN20StartEventImpl >> eventDefinitionRefs: aeventDefinitionRefs [
	^ eventDefinitionRefs := aeventDefinitionRefs
]

{ #category : #'as yet unclassified' }
BPMN20StartEventImpl >> eventDefinitions [
	^ eventDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20StartEventImpl >> eventDefinitions: aeventDefinitions [
	^ eventDefinitions := aeventDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20StartEventImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20StartEventImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20StartEventImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20StartEventImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20StartEventImpl >> incoming [
	^ incoming
]

{ #category : #'as yet unclassified' }
BPMN20StartEventImpl >> incoming: aincoming [
	^ incoming := aincoming
]

{ #category : #initialization }
BPMN20StartEventImpl >> initialize [
	super initialize.
	IS_INTERRUPTING_EDEFAULT:=true.
]

{ #category : #getset }
BPMN20StartEventImpl >> isInterrupting [
^ isInterrupting
]

{ #category : #getset }
BPMN20StartEventImpl >> isInterrupting: aisInterrupting [
^ isInterrupting := aisInterrupting
]

{ #category : #'as yet unclassified' }
BPMN20StartEventImpl >> lanes [
	^ lanes
]

{ #category : #'as yet unclassified' }
BPMN20StartEventImpl >> lanes: alanes [
	^ lanes := alanes
]

{ #category : #'as yet unclassified' }
BPMN20StartEventImpl >> monitoring [
	^ monitoring
]

{ #category : #'as yet unclassified' }
BPMN20StartEventImpl >> monitoring: amonitoring [
	^ monitoring := amonitoring
]

{ #category : #'as yet unclassified' }
BPMN20StartEventImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20StartEventImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20StartEventImpl >> outgoing [
	^ outgoing
]

{ #category : #'as yet unclassified' }
BPMN20StartEventImpl >> outgoing: aoutgoing [
	^ outgoing := aoutgoing
]

{ #category : #'as yet unclassified' }
BPMN20StartEventImpl >> outputSet [
	^ outputSet
]

{ #category : #'as yet unclassified' }
BPMN20StartEventImpl >> outputSet: aoutputSet [
	^ outputSet := aoutputSet
]

{ #category : #'as yet unclassified' }
BPMN20StartEventImpl >> parallelMultiple [
	^ parallelMultiple
]

{ #category : #'as yet unclassified' }
BPMN20StartEventImpl >> parallelMultiple: aparallelMultiple [
	^ parallelMultiple := aparallelMultiple
]

{ #category : #'as yet unclassified' }
BPMN20StartEventImpl >> properties [
	^ properties
]

{ #category : #'as yet unclassified' }
BPMN20StartEventImpl >> properties: aproperties [
	^ properties := aproperties
]

{ #category : #'as yet unclassified' }
BPMN20StartEventImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20StartEventImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20StartEventImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20StartEventImpl >> text: atext [
	^ text := atext
]
