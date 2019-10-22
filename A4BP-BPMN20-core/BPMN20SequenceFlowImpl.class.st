Class {
	#name : #BPMN20SequenceFlowImpl,
	#superclass : #BPMN20FlowElementImpl,
	#instVars : [
		'isImmediate',
		'targetRef',
		'sourceRef',
		'conditionExpression',
		'IS_IMMEDIATE_EDEFAULT'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20SequenceFlowImpl class >> annotation [
<MSEClass: #BPMN20SequenceFlowImpl  super: #BPMN20FlowElementImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #parser }
BPMN20SequenceFlowImpl class >> fillElementsIn: aModel from: document [
	| visitor ref|
	visitor := BPMN20ParserSetinBPMN20SequenceFlowImplVisitor new.
	visitor element: aModel.
	aModel isImmediate: ( self readBoolean: document at: 'isImmediate').
	ref := BPMN20SourceRefImpl fromXMLDescription: document.
	ref accept: visitor.
	ref := BPMN20TargetRefImpl fromXMLDescription: document.
	ref accept: visitor.
	self fillElementsIn: aModel from: document visitor: visitor.
]

{ #category : #'as yet unclassified' }
BPMN20SequenceFlowImpl >> IS_IMMEDIATE_EDEFAULT [
^ IS_IMMEDIATE_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20SequenceFlowImpl >> IS_IMMEDIATE_EDEFAULT: aIS_IMMEDIATE_EDEFAULT [
^ IS_IMMEDIATE_EDEFAULT := aIS_IMMEDIATE_EDEFAULT
]

{ #category : #getset }
BPMN20SequenceFlowImpl >> aName [
	aName size > 0 ifTrue:[ ^ aName].
	^ 'Sequence'
]

{ #category : #visitor }
BPMN20SequenceFlowImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20SequenceFlowImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20SequenceFlowImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20SequenceFlowImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20SequenceFlowImpl >> auditing [
	^ auditing
]

{ #category : #'as yet unclassified' }
BPMN20SequenceFlowImpl >> auditing: aauditing [
	^ auditing := aauditing
]

{ #category : #'as yet unclassified' }
BPMN20SequenceFlowImpl >> categoryValueRef [
	^ categoryValueRef
]

{ #category : #'as yet unclassified' }
BPMN20SequenceFlowImpl >> categoryValueRef: acategoryValueRef [
	^ categoryValueRef := acategoryValueRef
]

{ #category : #'as yet unclassified' }
BPMN20SequenceFlowImpl >> conditionExpression [
^ conditionExpression
]

{ #category : #'as yet unclassified' }
BPMN20SequenceFlowImpl >> conditionExpression: aconditionExpression [
^ conditionExpression := aconditionExpression
]

{ #category : #dsl }
BPMN20SequenceFlowImpl >> deepinFlows [
	"Show a list of elements to be have flow with the element"
	| lst |
	lst := OrderedCollection new.
	self incomings values do:[ :e | lst addAll: e deepinFlows].
	^ lst
]

{ #category : #'as yet unclassified' }
BPMN20SequenceFlowImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20SequenceFlowImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20SequenceFlowImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20SequenceFlowImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20SequenceFlowImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20SequenceFlowImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #dsl }
BPMN20SequenceFlowImpl >> inFlows [
	^ Array with: self sourceRef
]

{ #category : #getset }
BPMN20SequenceFlowImpl >> incoming [
	"Show a list of elements to be have flow with the element"
	| lst |
	lst := OrderedCollection new.
	lst add: self sourceRef.
	^ lst
]

{ #category : #initialization }
BPMN20SequenceFlowImpl >> initialize [
	super initialize.
	IS_IMMEDIATE_EDEFAULT := false.

]

{ #category : #'as yet unclassified' }
BPMN20SequenceFlowImpl >> isImmediate [
^ isImmediate
]

{ #category : #'as yet unclassified' }
BPMN20SequenceFlowImpl >> isImmediate: aisImmediate [
^ isImmediate := aisImmediate
]

{ #category : #questions }
BPMN20SequenceFlowImpl >> isSequence [
	^ true
]

{ #category : #'as yet unclassified' }
BPMN20SequenceFlowImpl >> monitoring [
	^ monitoring
]

{ #category : #'as yet unclassified' }
BPMN20SequenceFlowImpl >> monitoring: amonitoring [
	^ monitoring := amonitoring
]

{ #category : #'as yet unclassified' }
BPMN20SequenceFlowImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20SequenceFlowImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #dsl }
BPMN20SequenceFlowImpl >> outFlows [
	^ Array with: self targetRef 
]

{ #category : #getset }
BPMN20SequenceFlowImpl >> outgoing [
	"Show a list of elements to be have flow with the element"
	| lst |
	lst := OrderedCollection new.
	lst add: self targetRef.
	^ lst
]

{ #category : #getset }
BPMN20SequenceFlowImpl >> sourceRef [
^ sourceRef
]

{ #category : #getset }
BPMN20SequenceFlowImpl >> sourceRef: asourceRef [
^ sourceRef := asourceRef
]

{ #category : #'as yet unclassified' }
BPMN20SequenceFlowImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20SequenceFlowImpl >> state: astate [
	^ state := astate
]

{ #category : #getset }
BPMN20SequenceFlowImpl >> targetRef [
^ targetRef
]

{ #category : #getset }
BPMN20SequenceFlowImpl >> targetRef: atargetRef [
^ targetRef := atargetRef
]

{ #category : #'as yet unclassified' }
BPMN20SequenceFlowImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20SequenceFlowImpl >> text: atext [
	^ text := atext
]
