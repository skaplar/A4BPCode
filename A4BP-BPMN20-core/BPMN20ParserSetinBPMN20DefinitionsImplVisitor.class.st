Class {
	#name : #BPMN20ParserSetinBPMN20DefinitionsImplVisitor,
	#superclass : #BPMN20ParserAbstractSetVisitor,
	#category : #'A4BP-BPMN20-core-parser-builder-visitors'
}

{ #category : #'as yet unclassified' }
BPMN20ParserSetinBPMN20DefinitionsImplVisitor class >> annotation [
<MSEClass: #BPMN20ParserSetinBPMN20DefinitionsImplVisitor  super: #BPMN20ParserAbstractSetVisitor >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #visitor }
BPMN20ParserSetinBPMN20DefinitionsImplVisitor >> visitBPMN20BPMNDiagramImpl: aModel [
	element diagrams at: aModel id put: aModel.
	element addChildren: aModel.
	aModel myRoot: element
]

{ #category : #visitor }
BPMN20ParserSetinBPMN20DefinitionsImplVisitor >> visitBPMN20CollaborationImpl: aModel [
	element addRootElement: aModel.
	"add definitions as a root implements"
	aModel myRoot: aModel
]

{ #category : #visitor }
BPMN20ParserSetinBPMN20DefinitionsImplVisitor >> visitBPMN20DataStoreImpl: aModel [
	"add definitions as a root implements"
	aModel myRoot: aModel
]

{ #category : #visitor }
BPMN20ParserSetinBPMN20DefinitionsImplVisitor >> visitBPMN20DiagramElementImpl: aModel [
	element diagrams at: aModel id put: aModel.
	aModel myRoot: aModel
]

{ #category : #visitor }
BPMN20ParserSetinBPMN20DefinitionsImplVisitor >> visitBPMN20LaneSetImpl: aModel [
	"add definitions as a root implements"
	aModel myRoot: aModel
]

{ #category : #visitor }
BPMN20ParserSetinBPMN20DefinitionsImplVisitor >> visitBPMN20ProcessImpl: aModel [
	element addRootElement: aModel.
	"add definitions as a root implements"
	aModel myRoot: element
]

{ #category : #visitor }
BPMN20ParserSetinBPMN20DefinitionsImplVisitor >> visitBPMN20ResourceImpl: aModel [
	"A resoruce is similar in context to add a process in the object definitions"
	element addRootElement: aModel.
	"add definitions as a root implements"
	aModel myRoot: element
]
