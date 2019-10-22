Class {
	#name : #BPMN20LaneImpl,
	#superclass : #BPMN20BaseElementImpl,
	#instVars : [
		'name',
		'partitionElement',
		'partitionElementRef',
		'childLaneSet',
		'flowNodeRefs',
		'a4bpRefsToBuilder'
	],
	#classVars : [
		'NAME_EDEFAULT'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20LaneImpl class >> annotation [
<MSEClass: #BPMN20LaneImpl  super: #BPMN20BaseElementImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #parser }
BPMN20LaneImpl class >> fillElementsIn: aModel from: document [
	| visitor |
	visitor := BPMN20ParserSetinBPMN20LaneImplVisitor new.
	visitor element: aModel.
	self fillElementsIn: aModel from: document visitor: visitor.
]

{ #category : #accessing }
BPMN20LaneImpl >> a4bpRefsToBuilder [
	^ a4bpRefsToBuilder
]

{ #category : #accessing }
BPMN20LaneImpl >> a4bpRefsToBuilder: anObject [
	a4bpRefsToBuilder := anObject
]

{ #category : #visitor }
BPMN20LaneImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20LaneImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20LaneImpl >> addRefToBuild: aref [
	"comment stating purpose of message"
	self a4bpRefsToBuilder add: aref
]

{ #category : #'as yet unclassified' }
BPMN20LaneImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20LaneImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #builder }
BPMN20LaneImpl >> buildInternalRelations [
	"super call is to send a message for my children to build their relations"
	super buildInternalRelations.
	self a4bpRefsToBuilder do: [ :link | self findElementAndDoRelation: link ]
]

{ #category : #'as yet unclassified' }
BPMN20LaneImpl >> childLaneSet [
^ childLaneSet
]

{ #category : #'as yet unclassified' }
BPMN20LaneImpl >> childLaneSet: achildLaneSet [
^ childLaneSet := achildLaneSet
]

{ #category : #'as yet unclassified' }
BPMN20LaneImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20LaneImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20LaneImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20LaneImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20LaneImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20LaneImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #builder }
BPMN20LaneImpl >> findElementAndDoRelation: link [
	"Use recursive engine to find the element in the grid"

	| e |
	e := self findElementById: link refId.
	e isEmptyObj
		ifFalse: [ 
			link addMatch: e.
			e myLane:self.
			 ].
]

{ #category : #'as yet unclassified' }
BPMN20LaneImpl >> flowNodeRefs [
^ flowNodeRefs
]

{ #category : #'as yet unclassified' }
BPMN20LaneImpl >> flowNodeRefs: aflowNodeRefs [
^ flowNodeRefs := aflowNodeRefs
]

{ #category : #dsl }
BPMN20LaneImpl >> inFlows [
	|lst|
	lst := A4BPDictionary new.
	flowNodeRefs do:[ :n | n inFlows 
		do:[:nn | 
			|lane| 
			lane := nn myLane.
			lane ~= self ifTrue:[lst add: lane ].
		]].
	^ lst
]

{ #category : #initialization }
BPMN20LaneImpl >> initialize [
	super initialize.
	flowNodeRefs := A4BPDictionary new.
	a4bpRefsToBuilder := A4BPDictionary new.
]

{ #category : #visitor }
BPMN20LaneImpl >> messageFlows [
	^ self myProcess messageFlows
]

{ #category : #'as yet unclassified' }
BPMN20LaneImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20LaneImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #accessing }
BPMN20LaneImpl >> name1 [
	^ name
]

{ #category : #accessing }
BPMN20LaneImpl >> name: anObject [
	name := anObject
]

{ #category : #metric }
BPMN20LaneImpl >> numberOfRelations [
	^ self flowNodeRefs size
]

{ #category : #dsl }
BPMN20LaneImpl >> outFlows [
	|lst|
	lst := A4BPDictionary new.
	flowNodeRefs do:[ :n | n outFlows 
		do:[:nn | 
			|lane| 
			lane := nn myLane.
			lane ~= self ifTrue:[lst add: lane ].
		]].
	^ lst
]

{ #category : #'as yet unclassified' }
BPMN20LaneImpl >> partitionElement [
^ partitionElement
]

{ #category : #'as yet unclassified' }
BPMN20LaneImpl >> partitionElement: apartitionElement [
^ partitionElement := apartitionElement
]

{ #category : #'as yet unclassified' }
BPMN20LaneImpl >> partitionElementRef [
^ partitionElementRef
]

{ #category : #'as yet unclassified' }
BPMN20LaneImpl >> partitionElementRef: apartitionElementRef [
^ partitionElementRef := apartitionElementRef
]

{ #category : #'as yet unclassified' }
BPMN20LaneImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20LaneImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20LaneImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20LaneImpl >> text: atext [
	^ text := atext
]
