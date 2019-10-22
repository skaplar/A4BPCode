"
FlowElement is the abstract super class for all elements that can appear in a Process flow, which are FlowNodes, which consist of Activities, Choreography Activities, Gateways and Events Data Objects, Data Associations, and Sequence Flows.
"
Class {
	#name : #BPMN20FlowElementImpl,
	#superclass : #BPMN20BaseElementImpl,
	#instVars : [
		'categoryValueRef',
		'monitoring',
		'name',
		'auditing',
		'a4bpRefsToBuilder'
	],
	#classVars : [
		'NAME_EDEFAULT'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20FlowElementImpl class >> annotation [
<MSEClass: #BPMN20FlowElementImpl  super: #BPMN20BaseElementImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #getset }
BPMN20FlowElementImpl >> a4bpRefsToBuilder [
^ a4bpRefsToBuilder
]

{ #category : #'as yet unclassified' }
BPMN20FlowElementImpl >> a4bpRefsToBuilder: aa4bpRefsToBuilder [
^ a4bpRefsToBuilder := aa4bpRefsToBuilder
]

{ #category : #'as yet unclassified' }
BPMN20FlowElementImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20FlowElementImpl: self
]

{ #category : #getset }
BPMN20FlowElementImpl >> addRefToBuild: aref [
	"comment stating purpose of message"
	self a4bpRefsToBuilder add: aref
]

{ #category : #'as yet unclassified' }
BPMN20FlowElementImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20FlowElementImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20FlowElementImpl >> auditing [
^ auditing
]

{ #category : #'as yet unclassified' }
BPMN20FlowElementImpl >> auditing: aauditing [
^ auditing := aauditing
]

{ #category : #builder }
BPMN20FlowElementImpl >> buildInternalRelations [
	"super call is to send a message for my children to build their relations"
	super buildInternalRelations.
	self a4bpRefsToBuilder do: [ :link | self findElementAndDoRelation: link ]
]

{ #category : #'as yet unclassified' }
BPMN20FlowElementImpl >> categoryValueRef [
^ categoryValueRef
]

{ #category : #'as yet unclassified' }
BPMN20FlowElementImpl >> categoryValueRef: acategoryValueRef [
^ categoryValueRef := acategoryValueRef
]

{ #category : #'as yet unclassified' }
BPMN20FlowElementImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20FlowElementImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20FlowElementImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20FlowElementImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20FlowElementImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20FlowElementImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #builder }
BPMN20FlowElementImpl >> findElementAndDoRelation: link [
	"Use recursive engine to find the element in the grid"

	| e |
	e := self findElementById: link refId.
	e isEmptyObj ifFalse: [ link addMatch: e ]
]

{ #category : #initialization }
BPMN20FlowElementImpl >> initialize [
	super initialize.
	a4bpRefsToBuilder := A4BPDictionary new.
]

{ #category : #'as yet unclassified' }
BPMN20FlowElementImpl >> monitoring [
^ monitoring
]

{ #category : #'as yet unclassified' }
BPMN20FlowElementImpl >> monitoring: amonitoring [
^ monitoring := amonitoring
]

{ #category : #'as yet unclassified' }
BPMN20FlowElementImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20FlowElementImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #metrics }
BPMN20FlowElementImpl >> numberOfInternalRelations [
	^ self outgoings size
]

{ #category : #'as yet unclassified' }
BPMN20FlowElementImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20FlowElementImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20FlowElementImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20FlowElementImpl >> text: atext [
	^ text := atext
]
