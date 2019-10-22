Class {
	#name : #BPMN20ParserSetinBPMN20CollaborationImplVisitor,
	#superclass : #BPMN20ParserSetinBPMN20RootElementImplVisitor,
	#category : #'A4BP-BPMN20-core-parser-builder-visitors'
}

{ #category : #'as yet unclassified' }
BPMN20ParserSetinBPMN20CollaborationImplVisitor class >> annotation [
<MSEClass: #BPMN20ParserSetinBPMN20CollaborationImplVisitor  super: #BPMN20ParserSetinBPMN20RootElementImplVisitor >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20ParserSetinBPMN20CollaborationImplVisitor >> visitBPMN20MessageFlowImpl:anModel [
	element messageFlows at: anModel id put: anModel .
	self addElement: anModel 
]

{ #category : #'as yet unclassified' }
BPMN20ParserSetinBPMN20CollaborationImplVisitor >> visitBPMN20ParticipantImpl: anModel [
	element participants at: anModel id put: anModel .
	self addElement: anModel 
]
