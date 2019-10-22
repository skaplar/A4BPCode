Class {
	#name : #BPMN20ParserSetinBPMN20FlowNodeImplVisitor,
	#superclass : #BPMN20ParserSetinBPMN20FlowElementImplVisitor,
	#category : #'A4BP-BPMN20-core-parser-builder-visitors'
}

{ #category : #'as yet unclassified' }
BPMN20ParserSetinBPMN20FlowNodeImplVisitor class >> annotation [
<MSEClass: #BPMN20ParserSetinBPMN20FlowNodeImplVisitor  super: #BPMN20ParserSetinBPMN20FlowElementImplVisitor >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #visitor }
BPMN20ParserSetinBPMN20FlowNodeImplVisitor >> visitBPMN20IncomingImpl: aModel [
	self addmyRoot: aModel.
	aModel objWhitMatch: element incoming.
	element addRefToBuild: aModel.
	self addElement: aModel
]

{ #category : #visitor }
BPMN20ParserSetinBPMN20FlowNodeImplVisitor >> visitBPMN20LaneSetImpl: aModel [
	self addmyRoot: aModel.
	"set in the process a new set"
	element laneSets add: aModel.
]

{ #category : #visitor }
BPMN20ParserSetinBPMN20FlowNodeImplVisitor >> visitBPMN20OutgoingImpl: aModel [
	self addmyRoot: aModel.
	aModel objWhitMatch: element outgoing.
	element addRefToBuild: aModel.
	self addElement: aModel
]

{ #category : #visitor }
BPMN20ParserSetinBPMN20FlowNodeImplVisitor >> visitBPMN20ProcessImpl: aModel [
	self addmyRoot: aModel.
	element addRootElement: aModel.
]

{ #category : #visitor }
BPMN20ParserSetinBPMN20FlowNodeImplVisitor >> visitBPMN20RefToBeBuild: aModel [
	self addmyRoot: aModel
]
