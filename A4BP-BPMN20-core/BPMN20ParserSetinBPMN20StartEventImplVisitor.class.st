Class {
	#name : #BPMN20ParserSetinBPMN20StartEventImplVisitor,
	#superclass : #BPMN20ParserSetinBPMN20CatchEventImplVisitor,
	#category : #'A4BP-BPMN20-core-parser-builder-visitors'
}

{ #category : #'as yet unclassified' }
BPMN20ParserSetinBPMN20StartEventImplVisitor class >> annotation [
<MSEClass: #BPMN20ParserSetinBPMN20StartEventImplVisitor  super: #BPMN20ParserSetinBPMN20CatchEventImplVisitor >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #visitor }
BPMN20ParserSetinBPMN20StartEventImplVisitor >> visitBPMN20LaneSetImpl: aModel [
	self addmyRoot: aModel.
	"set in the process a new set"
	element laneSets add: aModel.
]

{ #category : #visitor }
BPMN20ParserSetinBPMN20StartEventImplVisitor >> visitBPMN20ProcessImpl: aModel [
	self addmyRoot: aModel.
	element addRootElement: aModel
]
