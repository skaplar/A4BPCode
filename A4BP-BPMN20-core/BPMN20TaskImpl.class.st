"
A Task is an atomic Activity within a Process flow. A Task is used when the work in the Process cannot be broken down to a finer level of detail. Generally, an end-user and/or applications are used to perform the Task when it is executed.

Task execution and completion for the different Task types are as follows:
- Service Task: Upon activation, the data in the inMessage of the Operation is assigned from the data in the Data Input of the Service Task the Operation is invoked. On completion of the service, the data in the Data Output of the Service Task is assigned from the data in the outMessage of the Operation, and the Service
Task completes. If the invoked service returns a fault, that fault is treated as interrupting error, and the Activity fails.
- Send Task: Upon activation, the data in the associated Message is assigned from the data in the Data Input of the Send Task. The Message is sent and the Send Task completes.
- Receive Task: Upon activation, the Receive Task begins waiting for the associated Message. When the Message arrives, the data in the Data Output of the Receive Task is assigned from the data in the Message, and Receive Task completes. For key-based correlation, only a single receive for a given CorrelationKey can be active, and thus the Message matches at most one Process instance. For predicate-based correlation, the Message can be passed to multiple Receive Tasks. If the Receive Task’ s instantiate attribute is set to true, the Receive Task itself can start a new Process instance.
- User Task: Upon activation, the User Task is distributed to the assigned person or group of people. When the work has been done, the User Task completes.
- Manual Task: Upon activation, the manual task is distributed to the assigned person or group of people. When the work has been done, the Manual Task completes. This is a conceptual model only; a Manual Task is never actually executed by an IT system.
- Business Rule Task: Upon activation, the associated business rule is called. On completion of the business rule, the Business Rule Task completes.
- Script Task: Upon activation, the associated script is invoked. On completion of the script, the Script Task completes.
- Abstract Task: Upon activation, the Abstract Task completes. This is a conceptual model only; an Abstract Task is never actually executed by an IT system.
"
Class {
	#name : #BPMN20TaskImpl,
	#superclass : #BPMN20ActivityImpl,
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20TaskImpl class >> annotation [
<MSEClass: #BPMN20TaskImpl  super: #BPMN20ActivityImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #getset }
BPMN20TaskImpl class >> bpmn20Name [
	^ 'Task'
]

{ #category : #parser }
BPMN20TaskImpl class >> fillElementsIn: aModel from: document [
	| visitor |
	visitor := BPMN20ParserSetinBPMN20TaskImplVisitor new.
	visitor element: aModel.
	self fillFlowNode: aModel from: document.
	self fillElementsIn: aModel from: document visitor: visitor.
]

{ #category : #'as yet unclassified' }
BPMN20TaskImpl >> IMPLEMENTATION_EDEFAULT [
	^ IMPLEMENTATION_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20TaskImpl >> IMPLEMENTATION_EDEFAULT: aIMPLEMENTATION_EDEFAULT [
	^ IMPLEMENTATION_EDEFAULT := aIMPLEMENTATION_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20TaskImpl >> INSTANTIATE_EDEFAULT [
	^ INSTANTIATE_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20TaskImpl >> INSTANTIATE_EDEFAULT: aINSTANTIATE_EDEFAULT [
	^ INSTANTIATE_EDEFAULT := aINSTANTIATE_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20TaskImpl >> SCRIPT_EDEFAULT [
	^ SCRIPT_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20TaskImpl >> SCRIPT_EDEFAULT: aSCRIPT_EDEFAULT [
	^ SCRIPT_EDEFAULT := aSCRIPT_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20TaskImpl >> SCRIPT_FORMAT_EDEFAULT [
	^ SCRIPT_FORMAT_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20TaskImpl >> SCRIPT_FORMAT_EDEFAULT: aSCRIPT_FORMAT_EDEFAULT [
	^ SCRIPT_FORMAT_EDEFAULT := aSCRIPT_FORMAT_EDEFAULT
]

{ #category : #visitor }
BPMN20TaskImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20TaskImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20TaskImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20TaskImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20TaskImpl >> auditing [
	^ auditing
]

{ #category : #'as yet unclassified' }
BPMN20TaskImpl >> auditing: aauditing [
	^ auditing := aauditing
]

{ #category : #'as yet unclassified' }
BPMN20TaskImpl >> boundaryEventRefs [
	^ boundaryEventRefs
]

{ #category : #'as yet unclassified' }
BPMN20TaskImpl >> boundaryEventRefs: aboundaryEventRefs [
	^ boundaryEventRefs := aboundaryEventRefs
]

{ #category : #'as yet unclassified' }
BPMN20TaskImpl >> categoryValueRef [
	^ categoryValueRef
]

{ #category : #'as yet unclassified' }
BPMN20TaskImpl >> categoryValueRef: acategoryValueRef [
	^ categoryValueRef := acategoryValueRef
]

{ #category : #'as yet unclassified' }
BPMN20TaskImpl >> completionQuantity [
	^ completionQuantity
]

{ #category : #'as yet unclassified' }
BPMN20TaskImpl >> completionQuantity: acompletionQuantity [
	^ completionQuantity := acompletionQuantity
]

{ #category : #'as yet unclassified' }
BPMN20TaskImpl >> dataInputAssociations [
	^ dataInputAssociations
]

{ #category : #'as yet unclassified' }
BPMN20TaskImpl >> dataInputAssociations: adataInputAssociations [
	^ dataInputAssociations := adataInputAssociations
]

{ #category : #'as yet unclassified' }
BPMN20TaskImpl >> dataOutputAssociations [
	^ dataOutputAssociations
]

{ #category : #'as yet unclassified' }
BPMN20TaskImpl >> dataOutputAssociations: adataOutputAssociations [
	^ dataOutputAssociations := adataOutputAssociations
]

{ #category : #'as yet unclassified' }
BPMN20TaskImpl >> default_ [
	^ default_
]

{ #category : #'as yet unclassified' }
BPMN20TaskImpl >> default_: adefault_ [
	^ default_ := adefault_
]

{ #category : #'as yet unclassified' }
BPMN20TaskImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20TaskImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20TaskImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20TaskImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20TaskImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20TaskImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20TaskImpl >> implementation [
	^ implementation
]

{ #category : #'as yet unclassified' }
BPMN20TaskImpl >> implementation: aimplementation [
	^ implementation := aimplementation
]

{ #category : #'as yet unclassified' }
BPMN20TaskImpl >> incoming [
	^ incoming
]

{ #category : #'as yet unclassified' }
BPMN20TaskImpl >> incoming: aincoming [
	^ incoming := aincoming
]

{ #category : #'as yet unclassified' }
BPMN20TaskImpl >> instantiate [
	^ instantiate
]

{ #category : #'as yet unclassified' }
BPMN20TaskImpl >> instantiate: ainstantiate [
	^ instantiate := ainstantiate
]

{ #category : #'as yet unclassified' }
BPMN20TaskImpl >> ioSpecification [
	^ ioSpecification
]

{ #category : #'as yet unclassified' }
BPMN20TaskImpl >> ioSpecification: aioSpecification [
	^ ioSpecification := aioSpecification
]

{ #category : #'as yet unclassified' }
BPMN20TaskImpl >> isForCompensation [
	^ isForCompensation
]

{ #category : #'as yet unclassified' }
BPMN20TaskImpl >> isForCompensation: aisForCompensation [
	^ isForCompensation := aisForCompensation
]

{ #category : #'as yet unclassified' }
BPMN20TaskImpl >> lanes [
	^ lanes
]

{ #category : #'as yet unclassified' }
BPMN20TaskImpl >> lanes: alanes [
	^ lanes := alanes
]

{ #category : #links }
BPMN20TaskImpl >> linkOut [
	^ nil
]

{ #category : #'as yet unclassified' }
BPMN20TaskImpl >> loopCharacteristics [
	^ loopCharacteristics
]

{ #category : #'as yet unclassified' }
BPMN20TaskImpl >> loopCharacteristics: aloopCharacteristics [
	^ loopCharacteristics := aloopCharacteristics
]

{ #category : #'as yet unclassified' }
BPMN20TaskImpl >> messageRef [
	^ messageRef
]

{ #category : #'as yet unclassified' }
BPMN20TaskImpl >> messageRef: amessageRef [
	^ messageRef := amessageRef
]

{ #category : #'as yet unclassified' }
BPMN20TaskImpl >> monitoring [
	^ monitoring
]

{ #category : #'as yet unclassified' }
BPMN20TaskImpl >> monitoring: amonitoring [
	^ monitoring := amonitoring
]

{ #category : #'as yet unclassified' }
BPMN20TaskImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20TaskImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20TaskImpl >> operationRef [
	^ operationRef
]

{ #category : #'as yet unclassified' }
BPMN20TaskImpl >> operationRef: aoperationRef [
	^ operationRef := aoperationRef
]

{ #category : #'as yet unclassified' }
BPMN20TaskImpl >> outgoing [
	^ outgoing
]

{ #category : #'as yet unclassified' }
BPMN20TaskImpl >> outgoing: aoutgoing [
	^ outgoing := aoutgoing
]

{ #category : #'as yet unclassified' }
BPMN20TaskImpl >> properties [
	^ properties
]

{ #category : #'as yet unclassified' }
BPMN20TaskImpl >> properties: aproperties [
	^ properties := aproperties
]

{ #category : #'as yet unclassified' }
BPMN20TaskImpl >> renderings [
	^ renderings
]

{ #category : #'as yet unclassified' }
BPMN20TaskImpl >> renderings: arenderings [
	^ renderings := arenderings
]

{ #category : #'as yet unclassified' }
BPMN20TaskImpl >> resources [
	^ resources
]

{ #category : #'as yet unclassified' }
BPMN20TaskImpl >> resources: aresources [
	^ resources := aresources
]

{ #category : #'as yet unclassified' }
BPMN20TaskImpl >> script [
	^ script
]

{ #category : #'as yet unclassified' }
BPMN20TaskImpl >> script: ascript [
	^ script := ascript
]

{ #category : #'as yet unclassified' }
BPMN20TaskImpl >> scriptFormat [
	^ scriptFormat
]

{ #category : #'as yet unclassified' }
BPMN20TaskImpl >> scriptFormat: ascriptFormat [
	^ scriptFormat := ascriptFormat
]

{ #category : #'as yet unclassified' }
BPMN20TaskImpl >> startQuantity [
	^ startQuantity
]

{ #category : #'as yet unclassified' }
BPMN20TaskImpl >> startQuantity: astartQuantity [
	^ startQuantity := astartQuantity
]

{ #category : #'as yet unclassified' }
BPMN20TaskImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20TaskImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20TaskImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20TaskImpl >> text: atext [
	^ text := atext
]

{ #category : #'as yet unclassified' }
BPMN20TaskImpl >> value: a [
]
