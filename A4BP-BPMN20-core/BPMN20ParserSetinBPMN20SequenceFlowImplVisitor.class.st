Class {
	#name : #BPMN20ParserSetinBPMN20SequenceFlowImplVisitor,
	#superclass : #BPMN20ParserSetinBPMN20FlowElementImplVisitor,
	#category : #'A4BP-BPMN20-core-parser-builder-visitors'
}

{ #category : #'as yet unclassified' }
BPMN20ParserSetinBPMN20SequenceFlowImplVisitor class >> annotation [
<MSEClass: #BPMN20ParserSetinBPMN20SequenceFlowImplVisitor  super: #BPMN20ParserSetinBPMN20FlowElementImplVisitor >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #visitor }
BPMN20ParserSetinBPMN20SequenceFlowImplVisitor >> visitBPMN20LaneSetImpl: aModel [
	self addmyRoot: aModel.
	"set in the process a new set"
	element laneSets add: aModel.
]

{ #category : #visitor }
BPMN20ParserSetinBPMN20SequenceFlowImplVisitor >> visitBPMN20ProcessImpl: aModel [
	self addmyRoot: aModel.
	element addRootElement: aModel.
]

{ #category : #visitor }
BPMN20ParserSetinBPMN20SequenceFlowImplVisitor >> visitBPMN20SourceRefImpl: aModel [
	aModel objWhitMatch: element.
	element addRefToBuild: aModel
]

{ #category : #visitor }
BPMN20ParserSetinBPMN20SequenceFlowImplVisitor >> visitBPMN20TargetRefImpl: aModel [
	aModel objWhitMatch: element.
	element addRefToBuild: aModel
]
