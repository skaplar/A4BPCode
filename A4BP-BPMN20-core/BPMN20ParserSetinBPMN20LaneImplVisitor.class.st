Class {
	#name : #BPMN20ParserSetinBPMN20LaneImplVisitor,
	#superclass : #BPMN20ParserAbstractSetVisitor,
	#category : #'A4BP-BPMN20-core-parser-builder-visitors'
}

{ #category : #'as yet unclassified' }
BPMN20ParserSetinBPMN20LaneImplVisitor class >> annotation [
<MSEClass: #BPMN20ParserSetinBPMN20LaneImplVisitor  super: #BPMN20ParserAbstractSetVisitor >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #visitor }
BPMN20ParserSetinBPMN20LaneImplVisitor >> visitBPMN20DocumentationImpl: aModel [
	self addmyRoot: aModel.
]

{ #category : #visitor }
BPMN20ParserSetinBPMN20LaneImplVisitor >> visitBPMN20FlowNodeImpl: aModel [
	self addmyRoot: aModel.
	aModel objWhitMatch: element incoming.
	element addRefToBuild: aModel.
	self addElement: aModel
]

{ #category : #visitor }
BPMN20ParserSetinBPMN20LaneImplVisitor >> visitBPMN20FlowNodeRefImpl: aModel [
	self addmyRoot: aModel.
	aModel objWhitMatch: element flowNodeRefs.
	element addRefToBuild: aModel.
	self addElement: aModel
]

{ #category : #visitor }
BPMN20ParserSetinBPMN20LaneImplVisitor >> visitBPMN20LaneSetImpl: aModel [
	self addmyRoot: aModel.
	"set in the process a new set"
	aModel addLane: element.
]

{ #category : #visitor }
BPMN20ParserSetinBPMN20LaneImplVisitor >> visitBPMN20ProcessImpl: aModel [
	self addmyRoot: aModel
]
