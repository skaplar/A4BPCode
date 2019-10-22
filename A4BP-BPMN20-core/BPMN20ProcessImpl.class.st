"
A Process describes a sequence or flow of Activities in an organization with the objective of carrying out work. In BPMN a Process is depicted as a graph of Flow Elements, which are a set of Activities, Events, Gateways, and Sequence Flows that define finite execution semantics. Processes can be defined at any level from enterprise-wide Processes to Processes performed by a single person. Low-level Processes can be grouped together to achieve a common business goal.

A Process is a CallableElement, allowing it to be referenced and reused by other Processes via the Call Activity
construct. In this capacity, a Process MAY reference a set of Interfaces that define its external behavior.

A Process is a reusable element and can be imported and used within other Definitions.
"
Class {
	#name : #BPMN20ProcessImpl,
	#superclass : #BPMN20CallableElementImpl,
	#instVars : [
		'isExecutable',
		'supports',
		'laneSets',
		'resources',
		'monitoring',
		'definitionalCollaborationRef',
		'correlationSubscriptions',
		'properties',
		'isClosed',
		'artifacts',
		'auditing',
		'flowElements',
		'processType',
		'extensionElements',
		'fileName',
		'fullPath',
		'variables',
		'wsdls'
	],
	#classVars : [
		'IS_CLOSED_EDEFAULT',
		'IS_EXECUTABLE_EDEFAULT',
		'PROCESS_TYPE_EDEFAULT'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20ProcessImpl class >> annotation [
<MSEClass: #BPMN20ProcessImpl  super: #BPMN20CallableElementImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #parser }
BPMN20ProcessImpl class >> fillElementsIn: aModel from: document [
	| visitor |
	visitor := BPMN20ParserSetinBPMN20ProcessImplVisitor new.
	visitor element: aModel.
	self fillElementsIn: aModel from: document visitor: visitor.
]

{ #category : #parser }
BPMN20ProcessImpl class >> fromXMLDescription: document in: parent [
	| aBPObj |
	aBPObj := self new.
	self fillBData: document in: aBPObj.
	aBPObj parent: parent.
	aBPObj myRoot: parent myRoot.
	aBPObj myProcess:aBPObj.
	self fillElementsIn: aBPObj from: document.
	^ aBPObj
]

{ #category : #'as yet unclassified' }
BPMN20ProcessImpl >> NAME_EDEFAULT [
	^ NAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20ProcessImpl >> NAME_EDEFAULT: aNAME_EDEFAULT [
	^ NAME_EDEFAULT := aNAME_EDEFAULT
]

{ #category : #visitor }
BPMN20ProcessImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20ProcessImpl: self
]

{ #category : #metrics }
BPMN20ProcessImpl >> activities [
	^ (flowElements select:[ :e | e isActivity] ) 
]

{ #category : #'parser-add' }
BPMN20ProcessImpl >> addElement: aElement [
	self addflowElement: aElement.
	self addChildren: aElement.
]

{ #category : #'parser-add' }
BPMN20ProcessImpl >> addLaneSet: aElement [
	self laneSets add: aElement.
	self childrens add: aElement.	
]

{ #category : #'parser-add' }
BPMN20ProcessImpl >> addflowElement: aElement [
	self flowElements at: aElement key put:aElement.
]

{ #category : #getset }
BPMN20ProcessImpl >> allActivities [
	^ self activities
]

{ #category : #getset }
BPMN20ProcessImpl >> allGateways [
	|isgatewayVisitor|
	isgatewayVisitor:= BPMN20isGatewayVisitor new.
	^ self flowElements values select:[ :e | e accept: isgatewayVisitor]

]

{ #category : #getset }
BPMN20ProcessImpl >> allSequenceFlows [
	^ self flowElements values select:[ :e | e class = BPMN20SequenceFlowImpl]

]

{ #category : #getset }
BPMN20ProcessImpl >> allVariables [
	^ self variables 
]

{ #category : #getset }
BPMN20ProcessImpl >> allWSDLs [
	^ self wsdls
]

{ #category : #'as yet unclassified' }
BPMN20ProcessImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20ProcessImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20ProcessImpl >> artifacts [
^ artifacts
]

{ #category : #'as yet unclassified' }
BPMN20ProcessImpl >> artifacts: aartifacts [
^ artifacts := aartifacts
]

{ #category : #'as yet unclassified' }
BPMN20ProcessImpl >> auditing [
^ auditing
]

{ #category : #'as yet unclassified' }
BPMN20ProcessImpl >> auditing: aauditing [
^ auditing := aauditing
]

{ #category : #builder }
BPMN20ProcessImpl >> buildRelations: lstOfRel [
]

{ #category : #'as yet unclassified' }
BPMN20ProcessImpl >> correlationSubscriptions [
^ correlationSubscriptions
]

{ #category : #'as yet unclassified' }
BPMN20ProcessImpl >> correlationSubscriptions: acorrelationSubscriptions [
^ correlationSubscriptions := acorrelationSubscriptions
]

{ #category : #'as yet unclassified' }
BPMN20ProcessImpl >> definitionalCollaborationRef [
^ definitionalCollaborationRef
]

{ #category : #'as yet unclassified' }
BPMN20ProcessImpl >> definitionalCollaborationRef: adefinitionalCollaborationRef [
^ definitionalCollaborationRef := adefinitionalCollaborationRef
]

{ #category : #'as yet unclassified' }
BPMN20ProcessImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20ProcessImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #getset }
BPMN20ProcessImpl >> elements [
	^  self childrens
]

{ #category : #'as yet unclassified' }
BPMN20ProcessImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20ProcessImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #getset }
BPMN20ProcessImpl >> extensionElements [
^ extensionElements
]

{ #category : #'as yet unclassified' }
BPMN20ProcessImpl >> extensionElements: aextensionElements [
^ extensionElements := aextensionElements
]

{ #category : #'as yet unclassified' }
BPMN20ProcessImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20ProcessImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #getset }
BPMN20ProcessImpl >> fileName [
^ fileName
]

{ #category : #getset }
BPMN20ProcessImpl >> fileName: afileName [
^ fileName := afileName
]

{ #category : #getset }
BPMN20ProcessImpl >> flowElements [
^ flowElements
]

{ #category : #'as yet unclassified' }
BPMN20ProcessImpl >> flowElements: aflowElements [
^ flowElements := aflowElements
]

{ #category : #getset }
BPMN20ProcessImpl >> fullPath [
^ fullPath
]

{ #category : #getset }
BPMN20ProcessImpl >> fullPath: afullPath [
^ fullPath := afullPath
]

{ #category : #metrics }
BPMN20ProcessImpl >> gateways [
	^ (flowElements select:[ :e | e isGateway] ) 
]

{ #category : #initialization }
BPMN20ProcessImpl >> initialize [
	super initialize.
	extensionElements := A4BPCollection new.
	laneSets := A4BPCollection new.
	flowElements := A4BPDictionary new.
	variables := A4BPCollection new.
	wsdls := A4BPCollection new.
	fileName := ''
]

{ #category : #'as yet unclassified' }
BPMN20ProcessImpl >> ioBinding [
	^ ioBinding
]

{ #category : #'as yet unclassified' }
BPMN20ProcessImpl >> ioBinding: aioBinding [
	^ ioBinding := aioBinding
]

{ #category : #'as yet unclassified' }
BPMN20ProcessImpl >> ioSpecification [
	^ ioSpecification
]

{ #category : #'as yet unclassified' }
BPMN20ProcessImpl >> ioSpecification: aioSpecification [
	^ ioSpecification := aioSpecification
]

{ #category : #getset }
BPMN20ProcessImpl >> isAProcess [
	^ true
]

{ #category : #'as yet unclassified' }
BPMN20ProcessImpl >> isClosed [
^ isClosed
]

{ #category : #'as yet unclassified' }
BPMN20ProcessImpl >> isClosed: aisClosed [
^ isClosed := aisClosed
]

{ #category : #getset }
BPMN20ProcessImpl >> isCollection [
	^ false
]

{ #category : #'as yet unclassified' }
BPMN20ProcessImpl >> isExecutable [
^ isExecutable
]

{ #category : #'as yet unclassified' }
BPMN20ProcessImpl >> isExecutable: aisExecutable [
^ isExecutable := aisExecutable
]

{ #category : #getset }
BPMN20ProcessImpl >> laneSets [
^ laneSets
]

{ #category : #'as yet unclassified' }
BPMN20ProcessImpl >> laneSets: alaneSets [
^ laneSets := alaneSets
]

{ #category : #dsl }
BPMN20ProcessImpl >> lanes [
	| lst |
	lst := OrderedCollection new.
	self laneSets do: [ :ls | lst addAll: ls lanes ].
	lst size = 0
		ifTrue: [ lst add: (BPMN20LaneImpl new aName: self aName) ].
	^ lst
]

{ #category : #finder }
BPMN20ProcessImpl >> messageFlows [
	^ self myRoot messageFlows
]

{ #category : #metrics }
BPMN20ProcessImpl >> metricCFCRel [
	"The relative control-flow complexity for 
process  P  is  calculated  as  follows,  where  |P| 
is  the  number  of  activities  of  process  P  (see 
Box 1)."
	|cfcAbs numberOfGateways|
	cfcAbs := A4BPMetricAbsCFC new calculeCFC: self.
	numberOfGateways := self numberOfGateways.
	(numberOfGateways < 1 ) ifTrue:[ numberOfGateways := 1].
 	^  cfcAbs / numberOfGateways
]

{ #category : #metrics }
BPMN20ProcessImpl >> metricNOA [
	^ self numberOfActivities.
]

{ #category : #metrics }
BPMN20ProcessImpl >> metricNOAC [
	^ self numberOfActivities + self numberOfGateways
]

{ #category : #metrics }
BPMN20ProcessImpl >> metricProcessDifficulty [
	"Process Difificulty
	 D = ( n1 / 2 ) * ( N2 / n2) 
	Where:
	n1 is the number of unique activities, splits and joins and control-flow elements of business process
	n2 is the number of unique data variables manipulated by the process and its activities
	N1 is the total number of elements
	N2 is the total number of data occurrences"
	| n1 n2 N1 N2 process |
	n1 := 0.
	n2 := 0.
	N1 := 0.
	N2 := 0.
	process := 0.
	^ 0
]

{ #category : #metrics }
BPMN20ProcessImpl >> metricProcessLength [
	"Process Length
	N = n1 * log2 (n1) + n2 * log2 ( n2
	Where:
	n1 is the number of unique activities, splits and joins and control-flow elements of business process
	n2 is the number of unique data variables manipulated by the process and its activities
	N1 is the total number of elements
	N2 is the total number of data occurrences"
	| n1 n2 N1 N2 process |
	n1 := 0.
	n2 := 0.
	N1 := 0.
	N2 := 0.
	process := 0.
	^0
]

{ #category : #metrics }
BPMN20ProcessImpl >> metricProcessVolume [
	"Process Volume
	V = ( N1 + N2 ) * log2 ( n1 + n2 )
	Where:
	n1 is the number of unique activities, splits and joins and control-flow elements of business process
	n2 is the number of unique data variables manipulated by the process and its activities
	N1 is the total number of elements
	N2 is the total number of data occurrences"
	| n1 n2 N1 N2 process |
	n1 := 0.
	n2 := 0.
	N1 := 0.
	N2 := 0.
	process := 0.
	^0
]

{ #category : #'as yet unclassified' }
BPMN20ProcessImpl >> monitoring [
^ monitoring
]

{ #category : #'as yet unclassified' }
BPMN20ProcessImpl >> monitoring: amonitoring [
^ monitoring := amonitoring
]

{ #category : #'as yet unclassified' }
BPMN20ProcessImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20ProcessImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #metrics }
BPMN20ProcessImpl >> numberOfActivities [
	^ self activities size
]

{ #category : #metrics }
BPMN20ProcessImpl >> numberOfGateways [
	^ self gateways size
]

{ #category : #'as yet unclassified' }
BPMN20ProcessImpl >> processType [
^ processType
]

{ #category : #'as yet unclassified' }
BPMN20ProcessImpl >> processType: aprocessType [
^ processType := aprocessType
]

{ #category : #'as yet unclassified' }
BPMN20ProcessImpl >> properties [
^ properties
]

{ #category : #'as yet unclassified' }
BPMN20ProcessImpl >> properties: aproperties [
^ properties := aproperties
]

{ #category : #'as yet unclassified' }
BPMN20ProcessImpl >> resources [
^ resources
]

{ #category : #'as yet unclassified' }
BPMN20ProcessImpl >> resources: aresources [
^ resources := aresources
]

{ #category : #finder }
BPMN20ProcessImpl >> sequenceFlows [
	^ self flowElements select:[:e | e class = BPMN20SequenceFlowImpl]
]

{ #category : #finder }
BPMN20ProcessImpl >> startEvent [
	|lst|
	lst := self flowElements select: [ :e | e class = BPMN20StartEventImpl ].
	lst size > 0 ifTrue:[^  lst values first].
	^ A4BPEmptyObj instance.
]

{ #category : #'as yet unclassified' }
BPMN20ProcessImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20ProcessImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20ProcessImpl >> supportedInterfaceRefs [
	^ supportedInterfaceRefs
]

{ #category : #'as yet unclassified' }
BPMN20ProcessImpl >> supportedInterfaceRefs: asupportedInterfaceRefs [
	^ supportedInterfaceRefs := asupportedInterfaceRefs
]

{ #category : #'as yet unclassified' }
BPMN20ProcessImpl >> supports [
^ supports
]

{ #category : #'as yet unclassified' }
BPMN20ProcessImpl >> supports: asupports [
^ supports := asupports
]

{ #category : #'as yet unclassified' }
BPMN20ProcessImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20ProcessImpl >> text: atext [
	^ text := atext
]

{ #category : #getset }
BPMN20ProcessImpl >> variables [
^ variables
]

{ #category : #'as yet unclassified' }
BPMN20ProcessImpl >> variables: avariables [
^ variables := avariables
]

{ #category : #getset }
BPMN20ProcessImpl >> wsdls [
^ wsdls
]

{ #category : #'as yet unclassified' }
BPMN20ProcessImpl >> wsdls: awsdls [
^ wsdls := awsdls
]
