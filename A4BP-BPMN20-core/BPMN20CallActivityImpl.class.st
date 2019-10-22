"
A Call Activity identifies a point in the Process where a global Process or a Global Task is used. The Call Activity acts as a ‘wrapper’ for the invocation of a global Process or Global Task within the execution. The activation of a call Activity results in the transfer of control to the called global Process or Global Task.

"
Class {
	#name : #BPMN20CallActivityImpl,
	#superclass : #BPMN20ActivityImpl,
	#instVars : [
		'calledElementRef'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20CallActivityImpl class >> annotation [
<MSEClass: #BPMN20CallActivityImpl  super: #BPMN20ActivityImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #parser }
BPMN20CallActivityImpl class >> bpmn20Name [
	 ^ 'Call'
]

{ #category : #parser }
BPMN20CallActivityImpl class >> fillElementsIn: aModel from: document [
	| visitor |
	visitor := BPMN20ParserSetinBPMN20CallActivityImplVisitor new.
	visitor element: aModel.
	self fillFlowNode: aModel from: document.
	self fillElementsIn: aModel from: document visitor: visitor.
	
]

{ #category : #'as yet unclassified' }
BPMN20CallActivityImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20CallActivityImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20CallActivityImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20CallActivityImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20CallActivityImpl >> auditing [
	^ auditing
]

{ #category : #'as yet unclassified' }
BPMN20CallActivityImpl >> auditing: aauditing [
	^ auditing := aauditing
]

{ #category : #'as yet unclassified' }
BPMN20CallActivityImpl >> boundaryEventRefs [
	^ boundaryEventRefs
]

{ #category : #'as yet unclassified' }
BPMN20CallActivityImpl >> boundaryEventRefs: aboundaryEventRefs [
	^ boundaryEventRefs := aboundaryEventRefs
]

{ #category : #'as yet unclassified' }
BPMN20CallActivityImpl >> calledElementRef [
^ calledElementRef
]

{ #category : #'as yet unclassified' }
BPMN20CallActivityImpl >> calledElementRef: acalledElementRef [
^ calledElementRef := acalledElementRef
]

{ #category : #'as yet unclassified' }
BPMN20CallActivityImpl >> categoryValueRef [
	^ categoryValueRef
]

{ #category : #'as yet unclassified' }
BPMN20CallActivityImpl >> categoryValueRef: acategoryValueRef [
	^ categoryValueRef := acategoryValueRef
]

{ #category : #'as yet unclassified' }
BPMN20CallActivityImpl >> completionQuantity [
	^ completionQuantity
]

{ #category : #'as yet unclassified' }
BPMN20CallActivityImpl >> completionQuantity: acompletionQuantity [
	^ completionQuantity := acompletionQuantity
]

{ #category : #'as yet unclassified' }
BPMN20CallActivityImpl >> dataInputAssociations [
	^ dataInputAssociations
]

{ #category : #'as yet unclassified' }
BPMN20CallActivityImpl >> dataInputAssociations: adataInputAssociations [
	^ dataInputAssociations := adataInputAssociations
]

{ #category : #'as yet unclassified' }
BPMN20CallActivityImpl >> dataOutputAssociations [
	^ dataOutputAssociations
]

{ #category : #'as yet unclassified' }
BPMN20CallActivityImpl >> dataOutputAssociations: adataOutputAssociations [
	^ dataOutputAssociations := adataOutputAssociations
]

{ #category : #'as yet unclassified' }
BPMN20CallActivityImpl >> default_ [
	^ default_
]

{ #category : #'as yet unclassified' }
BPMN20CallActivityImpl >> default_: adefault_ [
	^ default_ := adefault_
]

{ #category : #'as yet unclassified' }
BPMN20CallActivityImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20CallActivityImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20CallActivityImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20CallActivityImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20CallActivityImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20CallActivityImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20CallActivityImpl >> incoming [
	^ incoming
]

{ #category : #'as yet unclassified' }
BPMN20CallActivityImpl >> incoming: aincoming [
	^ incoming := aincoming
]

{ #category : #'as yet unclassified' }
BPMN20CallActivityImpl >> ioSpecification [
	^ ioSpecification
]

{ #category : #'as yet unclassified' }
BPMN20CallActivityImpl >> ioSpecification: aioSpecification [
	^ ioSpecification := aioSpecification
]

{ #category : #'as yet unclassified' }
BPMN20CallActivityImpl >> isForCompensation [
	^ isForCompensation
]

{ #category : #'as yet unclassified' }
BPMN20CallActivityImpl >> isForCompensation: aisForCompensation [
	^ isForCompensation := aisForCompensation
]

{ #category : #'as yet unclassified' }
BPMN20CallActivityImpl >> lanes [
	^ lanes
]

{ #category : #'as yet unclassified' }
BPMN20CallActivityImpl >> lanes: alanes [
	^ lanes := alanes
]

{ #category : #'as yet unclassified' }
BPMN20CallActivityImpl >> loopCharacteristics [
	^ loopCharacteristics
]

{ #category : #'as yet unclassified' }
BPMN20CallActivityImpl >> loopCharacteristics: aloopCharacteristics [
	^ loopCharacteristics := aloopCharacteristics
]

{ #category : #'as yet unclassified' }
BPMN20CallActivityImpl >> monitoring [
	^ monitoring
]

{ #category : #'as yet unclassified' }
BPMN20CallActivityImpl >> monitoring: amonitoring [
	^ monitoring := amonitoring
]

{ #category : #'as yet unclassified' }
BPMN20CallActivityImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20CallActivityImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20CallActivityImpl >> outgoing [
	^ outgoing
]

{ #category : #'as yet unclassified' }
BPMN20CallActivityImpl >> outgoing: aoutgoing [
	^ outgoing := aoutgoing
]

{ #category : #'as yet unclassified' }
BPMN20CallActivityImpl >> properties [
	^ properties
]

{ #category : #'as yet unclassified' }
BPMN20CallActivityImpl >> properties: aproperties [
	^ properties := aproperties
]

{ #category : #'as yet unclassified' }
BPMN20CallActivityImpl >> resources [
	^ resources
]

{ #category : #'as yet unclassified' }
BPMN20CallActivityImpl >> resources: aresources [
	^ resources := aresources
]

{ #category : #'as yet unclassified' }
BPMN20CallActivityImpl >> startQuantity [
	^ startQuantity
]

{ #category : #'as yet unclassified' }
BPMN20CallActivityImpl >> startQuantity: astartQuantity [
	^ startQuantity := astartQuantity
]

{ #category : #'as yet unclassified' }
BPMN20CallActivityImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20CallActivityImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20CallActivityImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20CallActivityImpl >> text: atext [
	^ text := atext
]
