Class {
	#name : #BPMN20ParserSetinBPMN20ProcessImplVisitor,
	#superclass : #BPMN20ParserSetinBPMN20CallableElementImplVisitor,
	#category : #'A4BP-BPMN20-core-parser-builder-visitors'
}

{ #category : #'as yet unclassified' }
BPMN20ParserSetinBPMN20ProcessImplVisitor class >> annotation [
<MSEClass: #BPMN20ParserSetinBPMN20ProcessImplVisitor  super: #BPMN20ParserSetinBPMN20CallableElementImplVisitor >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #visitor }
BPMN20ParserSetinBPMN20ProcessImplVisitor >> visitBPMN20DataObjectImpl: aModel [
	self addmyRoot: aModel.	
]

{ #category : #visitor }
BPMN20ParserSetinBPMN20ProcessImplVisitor >> visitBPMN20DataStoreReferenceImpl: aModel [
	self addmyRoot: aModel.	
	element addElement: aModel .
]

{ #category : #visitor }
BPMN20ParserSetinBPMN20ProcessImplVisitor >> visitBPMN20DocumentationImpl: aModel [
	self addmyRoot: aModel.	
	element addElement: aModel .
]

{ #category : #visitor }
BPMN20ParserSetinBPMN20ProcessImplVisitor >> visitBPMN20FlowNodeImpl: aModel [
	self addmyRoot: aModel.	
	element addElement: aModel .
	

]

{ #category : #visitor }
BPMN20ParserSetinBPMN20ProcessImplVisitor >> visitBPMN20LaneSetImpl: aModel [
	self addmyRoot: aModel.	
	element addLaneSet: aModel.
]

{ #category : #visitor }
BPMN20ParserSetinBPMN20ProcessImplVisitor >> visitBPMN20ProcessImpl: aModel [
	self addmyRoot: aModel.	
]

{ #category : #visitor }
BPMN20ParserSetinBPMN20ProcessImplVisitor >> visitBPMN20TaskImpl: aModel [
	self addmyRoot: aModel.	
	element addElement: aModel .
	

]
