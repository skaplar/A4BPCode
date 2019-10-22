"
An Activity is work that is performed within a Business Process. An Activity can be atomic or non-atomic (compound). The types of Activities that are a part of a Process are: Task, Sub-Process, and Call Activity, which allows the inclusion of re-usable Tasks and Processes in the diagram. However, a Process is not a specific graphical object. Instead, it is a set of graphical objects.
"
Class {
	#name : #BPMN20ActivityImpl,
	#superclass : #BPMN20FlowNodeImpl,
	#instVars : [
		'properties',
		'completionQuantity',
		'ioSpecification',
		'isForCompensation',
		'loopCharacteristics',
		'default_',
		'dataInputAssociations',
		'boundaryEventRefs',
		'startQuantity',
		'resources',
		'dataOutputAssociations'
	],
	#classVars : [
		'COMPLETION_QUANTITY_EDEFAULT',
		'IS_FOR_COMPENSATION_EDEFAULT',
		'START_QUANTITY_EDEFAULT'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20ActivityImpl class >> annotation [
<MSEClass: #BPMN20ActivityImpl  super: #BPMN20FlowNodeImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #parser }
BPMN20ActivityImpl class >> fillElementsIn: aModel from: document [
	| visitor |
	visitor := BPMN20ParserSetinBPMN20ActivityImplVisitor new.
	visitor element: aModel.
	self fillFlowNode: aModel from: document.
	self fillElementsIn: aModel from: document visitor: visitor.
]

{ #category : #getset }
BPMN20ActivityImpl >> CANCEL_REMAINING_INSTANCES_EDEFAULT [
	^ CANCEL_REMAINING_INSTANCES_EDEFAULT
]

{ #category : #getset }
BPMN20ActivityImpl >> CANCEL_REMAINING_INSTANCES_EDEFAULT: aCANCEL_REMAINING_INSTANCES_EDEFAULT [
	^ CANCEL_REMAINING_INSTANCES_EDEFAULT := aCANCEL_REMAINING_INSTANCES_EDEFAULT
]

{ #category : #getset }
BPMN20ActivityImpl >> IMPLEMENTATION_EDEFAULT [
	^ IMPLEMENTATION_EDEFAULT
]

{ #category : #getset }
BPMN20ActivityImpl >> IMPLEMENTATION_EDEFAULT: aIMPLEMENTATION_EDEFAULT [
	^ IMPLEMENTATION_EDEFAULT := aIMPLEMENTATION_EDEFAULT
]

{ #category : #getset }
BPMN20ActivityImpl >> INSTANTIATE_EDEFAULT [
	^ INSTANTIATE_EDEFAULT
]

{ #category : #getset }
BPMN20ActivityImpl >> INSTANTIATE_EDEFAULT: aINSTANTIATE_EDEFAULT [
	^ INSTANTIATE_EDEFAULT := aINSTANTIATE_EDEFAULT
]

{ #category : #getset }
BPMN20ActivityImpl >> METHOD_EDEFAULT [
	^ METHOD_EDEFAULT
]

{ #category : #getset }
BPMN20ActivityImpl >> METHOD_EDEFAULT: aMETHOD_EDEFAULT [
	^ METHOD_EDEFAULT := aMETHOD_EDEFAULT
]

{ #category : #getset }
BPMN20ActivityImpl >> ORDERING_EDEFAULT [
	^ ORDERING_EDEFAULT
]

{ #category : #getset }
BPMN20ActivityImpl >> ORDERING_EDEFAULT: aORDERING_EDEFAULT [
	^ ORDERING_EDEFAULT := aORDERING_EDEFAULT
]

{ #category : #getset }
BPMN20ActivityImpl >> PROTOCOL_EDEFAULT [
	^ PROTOCOL_EDEFAULT
]

{ #category : #getset }
BPMN20ActivityImpl >> PROTOCOL_EDEFAULT: aPROTOCOL_EDEFAULT [
	^ PROTOCOL_EDEFAULT := aPROTOCOL_EDEFAULT
]

{ #category : #getset }
BPMN20ActivityImpl >> SCRIPT_EDEFAULT [
	^ SCRIPT_EDEFAULT
]

{ #category : #getset }
BPMN20ActivityImpl >> SCRIPT_EDEFAULT: aSCRIPT_EDEFAULT [
	^ SCRIPT_EDEFAULT := aSCRIPT_EDEFAULT
]

{ #category : #getset }
BPMN20ActivityImpl >> SCRIPT_FORMAT_EDEFAULT [
	^ SCRIPT_FORMAT_EDEFAULT
]

{ #category : #getset }
BPMN20ActivityImpl >> SCRIPT_FORMAT_EDEFAULT: aSCRIPT_FORMAT_EDEFAULT [
	^ SCRIPT_FORMAT_EDEFAULT := aSCRIPT_FORMAT_EDEFAULT
]

{ #category : #getset }
BPMN20ActivityImpl >> TRIGGERED_BY_EVENT_EDEFAULT [
	^ TRIGGERED_BY_EVENT_EDEFAULT
]

{ #category : #getset }
BPMN20ActivityImpl >> TRIGGERED_BY_EVENT_EDEFAULT: aTRIGGERED_BY_EVENT_EDEFAULT [
	^ TRIGGERED_BY_EVENT_EDEFAULT := aTRIGGERED_BY_EVENT_EDEFAULT
]

{ #category : #getset }
BPMN20ActivityImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20ActivityImpl: self
]

{ #category : #getset }
BPMN20ActivityImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #getset }
BPMN20ActivityImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #getset }
BPMN20ActivityImpl >> artifacts [
	^ artifacts
]

{ #category : #getset }
BPMN20ActivityImpl >> artifacts: aartifacts [
	^ artifacts := aartifacts
]

{ #category : #getset }
BPMN20ActivityImpl >> auditing [
	^ auditing
]

{ #category : #getset }
BPMN20ActivityImpl >> auditing: aauditing [
	^ auditing := aauditing
]

{ #category : #getset }
BPMN20ActivityImpl >> boundaryEventRefs [
^ boundaryEventRefs
]

{ #category : #getset }
BPMN20ActivityImpl >> boundaryEventRefs: aboundaryEventRefs [
^ boundaryEventRefs := aboundaryEventRefs
]

{ #category : #getset }
BPMN20ActivityImpl >> calledElementRef [
	^ calledElementRef
]

{ #category : #getset }
BPMN20ActivityImpl >> calledElementRef: acalledElementRef [
	^ calledElementRef := acalledElementRef
]

{ #category : #getset }
BPMN20ActivityImpl >> cancelRemainingInstances [
	^ cancelRemainingInstances
]

{ #category : #getset }
BPMN20ActivityImpl >> cancelRemainingInstances: acancelRemainingInstances [
	^ cancelRemainingInstances := acancelRemainingInstances
]

{ #category : #getset }
BPMN20ActivityImpl >> categoryValueRef [
	^ categoryValueRef
]

{ #category : #getset }
BPMN20ActivityImpl >> categoryValueRef: acategoryValueRef [
	^ categoryValueRef := acategoryValueRef
]

{ #category : #getset }
BPMN20ActivityImpl >> completionCondition [
	^ completionCondition
]

{ #category : #getset }
BPMN20ActivityImpl >> completionCondition: acompletionCondition [
	^ completionCondition := acompletionCondition
]

{ #category : #getset }
BPMN20ActivityImpl >> completionQuantity [
^ completionQuantity
]

{ #category : #getset }
BPMN20ActivityImpl >> completionQuantity: acompletionQuantity [
^ completionQuantity := acompletionQuantity
]

{ #category : #getset }
BPMN20ActivityImpl >> dataInputAssociations [
^ dataInputAssociations
]

{ #category : #getset }
BPMN20ActivityImpl >> dataInputAssociations: adataInputAssociations [
^ dataInputAssociations := adataInputAssociations
]

{ #category : #getset }
BPMN20ActivityImpl >> dataOutputAssociations [
^ dataOutputAssociations
]

{ #category : #getset }
BPMN20ActivityImpl >> dataOutputAssociations: adataOutputAssociations [
^ dataOutputAssociations := adataOutputAssociations
]

{ #category : #getset }
BPMN20ActivityImpl >> default_ [
^ default_
]

{ #category : #getset }
BPMN20ActivityImpl >> default_: adefault_ [
^ default_ := adefault_
]

{ #category : #getset }
BPMN20ActivityImpl >> documentation [
	^ documentation
]

{ #category : #getset }
BPMN20ActivityImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #getset }
BPMN20ActivityImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #getset }
BPMN20ActivityImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #getset }
BPMN20ActivityImpl >> extensionValues [
	^ extensionValues
]

{ #category : #getset }
BPMN20ActivityImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #getset }
BPMN20ActivityImpl >> flowElements [
	^ flowElements
]

{ #category : #getset }
BPMN20ActivityImpl >> flowElements: aflowElements [
	^ flowElements := aflowElements
]

{ #category : #getset }
BPMN20ActivityImpl >> implementation [
	^ implementation
]

{ #category : #getset }
BPMN20ActivityImpl >> implementation: aimplementation [
	^ implementation := aimplementation
]

{ #category : #getset }
BPMN20ActivityImpl >> incoming [
	^ incoming
]

{ #category : #getset }
BPMN20ActivityImpl >> incoming: aincoming [
	^ incoming := aincoming
]

{ #category : #getset }
BPMN20ActivityImpl >> instantiate [
	^ instantiate
]

{ #category : #getset }
BPMN20ActivityImpl >> instantiate: ainstantiate [
	^ instantiate := ainstantiate
]

{ #category : #getset }
BPMN20ActivityImpl >> ioSpecification [
^ ioSpecification
]

{ #category : #getset }
BPMN20ActivityImpl >> ioSpecification: aioSpecification [
^ ioSpecification := aioSpecification
]

{ #category : #question }
BPMN20ActivityImpl >> isActivity [
	^ true
]

{ #category : #getset }
BPMN20ActivityImpl >> isForCompensation [
^ isForCompensation
]

{ #category : #getset }
BPMN20ActivityImpl >> isForCompensation: aisForCompensation [
^ isForCompensation := aisForCompensation
]

{ #category : #getset }
BPMN20ActivityImpl >> laneSets [
	^ laneSets
]

{ #category : #getset }
BPMN20ActivityImpl >> laneSets: alaneSets [
	^ laneSets := alaneSets
]

{ #category : #getset }
BPMN20ActivityImpl >> lanes [
	^ lanes
]

{ #category : #getset }
BPMN20ActivityImpl >> lanes: alanes [
	^ lanes := alanes
]

{ #category : #getset }
BPMN20ActivityImpl >> loopCharacteristics [
^ loopCharacteristics
]

{ #category : #getset }
BPMN20ActivityImpl >> loopCharacteristics: aloopCharacteristics [
^ loopCharacteristics := aloopCharacteristics
]

{ #category : #getset }
BPMN20ActivityImpl >> messageRef [
	^ messageRef
]

{ #category : #getset }
BPMN20ActivityImpl >> messageRef: amessageRef [
	^ messageRef := amessageRef
]

{ #category : #getset }
BPMN20ActivityImpl >> method [
	^ method
]

{ #category : #getset }
BPMN20ActivityImpl >> method: amethod [
	^ method := amethod
]

{ #category : #getset }
BPMN20ActivityImpl >> monitoring [
	^ monitoring
]

{ #category : #getset }
BPMN20ActivityImpl >> monitoring: amonitoring [
	^ monitoring := amonitoring
]

{ #category : #getset }
BPMN20ActivityImpl >> myDocument [
	^ myDocument
]

{ #category : #getset }
BPMN20ActivityImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #getset }
BPMN20ActivityImpl >> operationRef [
	^ operationRef
]

{ #category : #getset }
BPMN20ActivityImpl >> operationRef: aoperationRef [
	^ operationRef := aoperationRef
]

{ #category : #getset }
BPMN20ActivityImpl >> ordering [
	^ ordering
]

{ #category : #getset }
BPMN20ActivityImpl >> ordering: aordering [
	^ ordering := aordering
]

{ #category : #getset }
BPMN20ActivityImpl >> outgoing [
	^ outgoing
]

{ #category : #getset }
BPMN20ActivityImpl >> outgoing: aoutgoing [
	^ outgoing := aoutgoing
]

{ #category : #getset }
BPMN20ActivityImpl >> properties [
^ properties
]

{ #category : #getset }
BPMN20ActivityImpl >> properties: aproperties [
^ properties := aproperties
]

{ #category : #getset }
BPMN20ActivityImpl >> protocol [
	^ protocol
]

{ #category : #getset }
BPMN20ActivityImpl >> protocol: aprotocol [
	^ protocol := aprotocol
]

{ #category : #getset }
BPMN20ActivityImpl >> renderings [
	^ renderings
]

{ #category : #getset }
BPMN20ActivityImpl >> renderings: arenderings [
	^ renderings := arenderings
]

{ #category : #getset }
BPMN20ActivityImpl >> resources [
^ resources
]

{ #category : #getset }
BPMN20ActivityImpl >> resources: aresources [
^ resources := aresources
]

{ #category : #getset }
BPMN20ActivityImpl >> script [
	^ script
]

{ #category : #getset }
BPMN20ActivityImpl >> script: ascript [
	^ script := ascript
]

{ #category : #getset }
BPMN20ActivityImpl >> scriptFormat [
	^ scriptFormat
]

{ #category : #getset }
BPMN20ActivityImpl >> scriptFormat: ascriptFormat [
	^ scriptFormat := ascriptFormat
]

{ #category : #getset }
BPMN20ActivityImpl >> startQuantity [
^ startQuantity
]

{ #category : #getset }
BPMN20ActivityImpl >> startQuantity: astartQuantity [
^ startQuantity := astartQuantity
]

{ #category : #getset }
BPMN20ActivityImpl >> state [
	^ state
]

{ #category : #getset }
BPMN20ActivityImpl >> state: astate [
	^ state := astate
]

{ #category : #getset }
BPMN20ActivityImpl >> text [
	^ text
]

{ #category : #getset }
BPMN20ActivityImpl >> text: atext [
	^ text := atext
]

{ #category : #getset }
BPMN20ActivityImpl >> triggeredByEvent [
	^ triggeredByEvent
]

{ #category : #getset }
BPMN20ActivityImpl >> triggeredByEvent: atriggeredByEvent [
	^ triggeredByEvent := atriggeredByEvent
]
