"
A Message Flow is used to show the flow of Messages between two Participants that are prepared to send and receive them.
"
Class {
	#name : #BPMN20MessageFlowImpl,
	#superclass : #BPMN20BaseElementImpl,
	#instVars : [
		'sourceRef',
		'name',
		'targetRef',
		'messageRef',
		'a4bpRefsToBuilder',
		'isImmediate'
	],
	#classVars : [
		'NAME_EDEFAULT'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20MessageFlowImpl class >> annotation [
<MSEClass: #BPMN20MessageFlowImpl  super: #BPMN20BaseElementImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20MessageFlowImpl class >> fillElementsIn: aModel from: document [
	| visitor ref|
	visitor := BPMN20ParserSetinBPMN20MessageFlowImplVisitor new.
	visitor element: aModel.
	aModel isImmediate: ( self readBoolean: document at: 'isImmediate').
	ref := BPMN20SourceRefImpl fromXMLDescription: document.
	ref accept: visitor.
	ref := BPMN20TargetRefImpl fromXMLDescription: document.
	ref accept: visitor.
	self fillElementsIn: aModel from: document visitor: visitor.
]

{ #category : #'as yet unclassified' }
BPMN20MessageFlowImpl class >> fromXMLDescription: document in: parent [
	^ self fromXMLDescriptionNoInProcess: document in: parent
]

{ #category : #'as yet unclassified' }
BPMN20MessageFlowImpl >> NAME_EDEFAULT [
^ NAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20MessageFlowImpl >> NAME_EDEFAULT: aNAME_EDEFAULT [
^ NAME_EDEFAULT := aNAME_EDEFAULT
]

{ #category : #accessing }
BPMN20MessageFlowImpl >> a4bpRefsToBuilder [
	^ a4bpRefsToBuilder
]

{ #category : #accessing }
BPMN20MessageFlowImpl >> a4bpRefsToBuilder: anObject [
	a4bpRefsToBuilder := anObject
]

{ #category : #'as yet unclassified' }
BPMN20MessageFlowImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20MessageFlowImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20MessageFlowImpl >> addRefToBuild: aref [
	"comment stating purpose of message"
	self a4bpRefsToBuilder add: aref
]

{ #category : #'as yet unclassified' }
BPMN20MessageFlowImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20MessageFlowImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #builder }
BPMN20MessageFlowImpl >> buildInternalRelations [
	"super call is to send a message for my children to build their relations"
	super buildInternalRelations.
	self a4bpRefsToBuilder do: [ :link | self findElementAndDoRelation: link ]
]

{ #category : #'as yet unclassified' }
BPMN20MessageFlowImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20MessageFlowImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20MessageFlowImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20MessageFlowImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20MessageFlowImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20MessageFlowImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #builder }
BPMN20MessageFlowImpl >> findElementAndDoRelation: link [
	"Use recursive engine to find the element in the grid"

	| e |
	e := self findElementById: link refId.
	e isEmptyObj
		ifFalse: [ link addMatch: e ]
]

{ #category : #dsl }
BPMN20MessageFlowImpl >> inFlows [
	^ Array with: self sourceRef
]

{ #category : #initialization }
BPMN20MessageFlowImpl >> initialize [
	super initialize.
	a4bpRefsToBuilder := A4BPDictionary new.
	targetRef := A4BPEmptyObj instance.
	sourceRef := A4BPEmptyObj instance.
]

{ #category : #accessing }
BPMN20MessageFlowImpl >> isImmediate [
	^ isImmediate
]

{ #category : #accessing }
BPMN20MessageFlowImpl >> isImmediate: anObject [
	isImmediate := anObject
]

{ #category : #'as yet unclassified' }
BPMN20MessageFlowImpl >> messageRef [
^ messageRef
]

{ #category : #'as yet unclassified' }
BPMN20MessageFlowImpl >> messageRef: amessageRef [
^ messageRef := amessageRef
]

{ #category : #'as yet unclassified' }
BPMN20MessageFlowImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20MessageFlowImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #accessing }
BPMN20MessageFlowImpl >> name: anObject [
	name := anObject
]

{ #category : #dsl }
BPMN20MessageFlowImpl >> outFlows [
	^ Array with: self targetRef 
]

{ #category : #'as yet unclassified' }
BPMN20MessageFlowImpl >> sourceRef [
^ sourceRef
]

{ #category : #'as yet unclassified' }
BPMN20MessageFlowImpl >> sourceRef: asourceRef [
^ sourceRef := asourceRef
]

{ #category : #'as yet unclassified' }
BPMN20MessageFlowImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20MessageFlowImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20MessageFlowImpl >> targetRef [
^ targetRef
]

{ #category : #'as yet unclassified' }
BPMN20MessageFlowImpl >> targetRef: atargetRef [
^ targetRef := atargetRef
]

{ #category : #'as yet unclassified' }
BPMN20MessageFlowImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20MessageFlowImpl >> text: atext [
	^ text := atext
]
