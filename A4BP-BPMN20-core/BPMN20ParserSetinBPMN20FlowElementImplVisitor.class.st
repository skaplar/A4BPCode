Class {
	#name : #BPMN20ParserSetinBPMN20FlowElementImplVisitor,
	#superclass : #BPMN20ParserAbstractSetVisitor,
	#category : #'A4BP-BPMN20-core-parser-builder-visitors'
}

{ #category : #'as yet unclassified' }
BPMN20ParserSetinBPMN20FlowElementImplVisitor class >> annotation [
<MSEClass: #BPMN20ParserSetinBPMN20FlowElementImplVisitor  super: #BPMN20ParserAbstractSetVisitor >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #visitor }
BPMN20ParserSetinBPMN20FlowElementImplVisitor >> visitBPMN20LaneSetImpl: aModel [
	"set in the process a new set"
	element laneSets add: aModel.
]

{ #category : #visitor }
BPMN20ParserSetinBPMN20FlowElementImplVisitor >> visitBPMN20ProcessImpl: aModel [
	self addmyRoot: aModel.
	element addRootElement: aModel
]
