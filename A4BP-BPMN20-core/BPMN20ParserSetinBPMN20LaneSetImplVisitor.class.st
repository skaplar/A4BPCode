Class {
	#name : #BPMN20ParserSetinBPMN20LaneSetImplVisitor,
	#superclass : #BPMN20ParserAbstractSetVisitor,
	#category : #'A4BP-BPMN20-core-parser-builder-visitors'
}

{ #category : #'as yet unclassified' }
BPMN20ParserSetinBPMN20LaneSetImplVisitor class >> annotation [
<MSEClass: #BPMN20ParserSetinBPMN20LaneSetImplVisitor  super: #BPMN20ParserAbstractSetVisitor >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #visitor }
BPMN20ParserSetinBPMN20LaneSetImplVisitor >> visitBPMN20LaneImpl: aModel [
	self addmyRoot: aModel.	
	"set in the process a new set"
	element addLane: aModel
]

{ #category : #visitor }
BPMN20ParserSetinBPMN20LaneSetImplVisitor >> visitBPMN20LaneSetImpl: aModel [
	"do nothing"
]

{ #category : #visitor }
BPMN20ParserSetinBPMN20LaneSetImplVisitor >> visitBPMN20ProcessImpl: aModel [
	self addmyRoot: aModel.	
]
