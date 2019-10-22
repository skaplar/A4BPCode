Class {
	#name : #BPMN20ParserSetinBPMN20ResourceImplVisitor,
	#superclass : #BPMN20ParserSetinBPMN20RootElementImplVisitor,
	#category : #'A4BP-BPMN20-core-parser-builder-visitors'
}

{ #category : #'as yet unclassified' }
BPMN20ParserSetinBPMN20ResourceImplVisitor class >> annotation [
<MSEClass: #BPMN20ParserSetinBPMN20ResourceImplVisitor  super: #BPMN20ParserSetinBPMN20RootElementImplVisitor >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #visitor }
BPMN20ParserSetinBPMN20ResourceImplVisitor >> visitBPMN20DocumentationImpl: aModel [
	self addmyRoot: aModel.
	element addChildren: aModel
]

{ #category : #visitor }
BPMN20ParserSetinBPMN20ResourceImplVisitor >> visitBPMN20LaneSetImpl: aModel [
	self addmyRoot: aModel.
	"set in the process a new set"
	aModel addLane: element.
]

{ #category : #visitor }
BPMN20ParserSetinBPMN20ResourceImplVisitor >> visitBPMN20ProcessImpl: aModel [
	self addmyRoot: aModel.
]
