Class {
	#name : #BPMN20ParserAbstractSetVisitor,
	#superclass : #A4BPAbstractVisitor,
	#instVars : [
		'element'
	],
	#category : #'A4BP-BPMN20-core-parser-builder-visitors'
}

{ #category : #'as yet unclassified' }
BPMN20ParserAbstractSetVisitor class >> annotation [
<MSEClass: #BPMN20ParserAbstractSetVisitor  super: #A4BPAbstractVisitor >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #add }
BPMN20ParserAbstractSetVisitor >> addElement: aModel [
	element addChildren: aModel
]

{ #category : #add }
BPMN20ParserAbstractSetVisitor >> addmyRoot: aModel [
	"add definitions as a root implements"
	| root |
	root := element myRoot.
	root addElementInDictionary: aModel .
	aModel myRoot: root.
]

{ #category : #getset }
BPMN20ParserAbstractSetVisitor >> element: aElement [
	element := aElement
]

{ #category : #visitor }
BPMN20ParserAbstractSetVisitor >> visitA4BPEmptyObj: aModel [
	"do nothing"
]

{ #category : #visitor }
BPMN20ParserAbstractSetVisitor >> visitA4BPObject: aModel [
	"do nothing"
]

{ #category : #visitor }
BPMN20ParserAbstractSetVisitor >> visitA4BPUnParserObj: aModel [
	^ self addElement: aModel.
]

{ #category : #visitor }
BPMN20ParserAbstractSetVisitor >> visitBPMN20ActivityImpl: aModel [
	^ self visitBPMN20FlowNodeImpl: aModel
]

{ #category : #visitor }
BPMN20ParserAbstractSetVisitor >> visitBPMN20AdHocSubProcessImpl: aModel [
	^ self visitBPMN20FlowNodeImpl: aModel
]

{ #category : #visitor }
BPMN20ParserAbstractSetVisitor >> visitBPMN20BoundaryEventImpl: aModel [
	^ self visitBPMN20FlowNodeImpl: aModel
]

{ #category : #visitor }
BPMN20ParserAbstractSetVisitor >> visitBPMN20BusinessRuleTaskImpl: aModel [
	^ self visitBPMN20FlowNodeImpl: aModel
]

{ #category : #visitor }
BPMN20ParserAbstractSetVisitor >> visitBPMN20CallActivityImpl: aModel [
	^ self visitBPMN20FlowNodeImpl: aModel
]

{ #category : #visitor }
BPMN20ParserAbstractSetVisitor >> visitBPMN20CatchEventImpl: aModel [
	^ self visitBPMN20FlowNodeImpl: aModel
]

{ #category : #visitor }
BPMN20ParserAbstractSetVisitor >> visitBPMN20ChoreographyActivityImpl: aModel [
	^ self visitBPMN20FlowNodeImpl: aModel
]

{ #category : #visitor }
BPMN20ParserAbstractSetVisitor >> visitBPMN20ComplexGatewayImpl: aModel [
	^ self visitBPMN20FlowNodeImpl: aModel
]

{ #category : #visitor }
BPMN20ParserAbstractSetVisitor >> visitBPMN20DataObjectImpl: aModel [
]

{ #category : #visitor }
BPMN20ParserAbstractSetVisitor >> visitBPMN20DataStoreImpl: aModel [
	
]

{ #category : #visitor }
BPMN20ParserAbstractSetVisitor >> visitBPMN20DataStoreReferenceImpl: aModel [
	"do nothing"
]

{ #category : #visitor }
BPMN20ParserAbstractSetVisitor >> visitBPMN20DocumentationImpl: aModel [
	"do nothing"
]

{ #category : #visitor }
BPMN20ParserAbstractSetVisitor >> visitBPMN20EndEventImpl: aModel [
	^ self visitBPMN20FlowNodeImpl: aModel
]

{ #category : #visitor }
BPMN20ParserAbstractSetVisitor >> visitBPMN20EventBasedGatewayImpl: aModel [
	^ self visitBPMN20FlowNodeImpl: aModel
]

{ #category : #visitor }
BPMN20ParserAbstractSetVisitor >> visitBPMN20EventImpl: aModel [
	^ self visitBPMN20FlowNodeImpl: aModel
]

{ #category : #visitor }
BPMN20ParserAbstractSetVisitor >> visitBPMN20ExclusiveGatewayImpl: aModel [
	^ self visitBPMN20FlowNodeImpl: aModel
]

{ #category : #visitor }
BPMN20ParserAbstractSetVisitor >> visitBPMN20ExtensionElementsImpl: aModel [
	self addElement: aModel.
	element addExtensionsValues: aModel
]

{ #category : #visitor }
BPMN20ParserAbstractSetVisitor >> visitBPMN20FlowNodeImpl: aModel [
]

{ #category : #visitor }
BPMN20ParserAbstractSetVisitor >> visitBPMN20GatewayImpl: aModel [
	^ self visitBPMN20FlowNodeImpl: aModel
]

{ #category : #visitor }
BPMN20ParserAbstractSetVisitor >> visitBPMN20InclusiveGatewayImpl: aModel [
	^ self visitBPMN20FlowNodeImpl: aModel
]

{ #category : #visitor }
BPMN20ParserAbstractSetVisitor >> visitBPMN20IncomingImpl: aModel [
]

{ #category : #visitor }
BPMN20ParserAbstractSetVisitor >> visitBPMN20IntermediateCatchEventImpl: aModel [
	^ self visitBPMN20FlowNodeImpl: aModel
]

{ #category : #visitor }
BPMN20ParserAbstractSetVisitor >> visitBPMN20IntermediateThrowEventImpl: aModel [
	^ self visitBPMN20FlowNodeImpl: aModel
]

{ #category : #visitor }
BPMN20ParserAbstractSetVisitor >> visitBPMN20LaneSetImpl: aModel [
]

{ #category : #visitor }
BPMN20ParserAbstractSetVisitor >> visitBPMN20ManualTaskImpl: aModel [
	^ self visitBPMN20FlowNodeImpl: aModel
]

{ #category : #visitor }
BPMN20ParserAbstractSetVisitor >> visitBPMN20Object: aModel [
	"do nothing"
]

{ #category : #visitor }
BPMN20ParserAbstractSetVisitor >> visitBPMN20OutgoingImpl: aModel [
]

{ #category : #visitor }
BPMN20ParserAbstractSetVisitor >> visitBPMN20ParallelGatewayImpl: aModel [
	^ self visitBPMN20GatewayImpl: aModel
]

{ #category : #visitor }
BPMN20ParserAbstractSetVisitor >> visitBPMN20ReceiveTaskImpl: aModel [
	^ self visitBPMN20FlowNodeImpl: aModel
]

{ #category : #visitor }
BPMN20ParserAbstractSetVisitor >> visitBPMN20RefToBeBuild: aModel [
]

{ #category : #visitor }
BPMN20ParserAbstractSetVisitor >> visitBPMN20ResourceImpl: aModel [

]

{ #category : #visitor }
BPMN20ParserAbstractSetVisitor >> visitBPMN20ScriptTaskImpl: aModel [
	^ self visitBPMN20FlowNodeImpl: aModel
]

{ #category : #visitor }
BPMN20ParserAbstractSetVisitor >> visitBPMN20SendTaskImpl: aModel [
	^ self visitBPMN20FlowNodeImpl: aModel
]

{ #category : #visitor }
BPMN20ParserAbstractSetVisitor >> visitBPMN20SequenceFlowImpl: aModel [
	^ self visitBPMN20FlowNodeImpl: aModel
]

{ #category : #visitor }
BPMN20ParserAbstractSetVisitor >> visitBPMN20ServiceTaskImpl: aModel [
	^ self visitBPMN20FlowNodeImpl: aModel
]

{ #category : #visitor }
BPMN20ParserAbstractSetVisitor >> visitBPMN20StartEventImpl: aModel [
	^ self visitBPMN20FlowNodeImpl: aModel
]

{ #category : #visitor }
BPMN20ParserAbstractSetVisitor >> visitBPMN20SubChoreographyImpl: aModel [
	^ self visitBPMN20FlowNodeImpl: aModel
]

{ #category : #visitor }
BPMN20ParserAbstractSetVisitor >> visitBPMN20SubProcessImpl: aModel [
	^ self visitBPMN20FlowNodeImpl: aModel
]

{ #category : #visitor }
BPMN20ParserAbstractSetVisitor >> visitBPMN20TaskImpl: aModel [
	^ self visitBPMN20FlowNodeImpl: aModel
]

{ #category : #visitor }
BPMN20ParserAbstractSetVisitor >> visitBPMN20ThrowEventImpl: aModel [
	^ self visitBPMN20FlowNodeImpl: aModel
]

{ #category : #visitor }
BPMN20ParserAbstractSetVisitor >> visitBPMN20TransactionImpl: aModel [
	^ self visitBPMN20FlowNodeImpl: aModel
]

{ #category : #visitor }
BPMN20ParserAbstractSetVisitor >> visitBPMN20UserTaskImpl: aModel [
	^ self visitBPMN20FlowNodeImpl: aModel
]
