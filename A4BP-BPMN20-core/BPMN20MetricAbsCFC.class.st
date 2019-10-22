Class {
	#name : #BPMN20MetricAbsCFC,
	#superclass : #A4BPMetricAbsCFC,
	#category : #'A4BP-BPMN20-core-metric'
}

{ #category : #initialization }
BPMN20MetricAbsCFC >> initialize [
	super initialize.
	cfcMetric := BPMN20MetricCFC new.
]

{ #category : #'as yet unclassified' }
BPMN20MetricAbsCFC >> visitBPMN20DefinitionsImpl:aModel [ 
	| cfcAbs |
	cfcAbs := 0.
	aModel process do: [ :el | cfcAbs := cfcAbs + (el accept: self) ].
	^ cfcAbs
]

{ #category : #'as yet unclassified' }
BPMN20MetricAbsCFC >> visitBPMN20ExclusiveGatewayImpl: aModel [
	"
	(Cardoso 2008)
	XOR-split control-flow complexity is determined by the number of mental states that are introduced with this type of split. 
	The function CFCXOR-split(a), where a is an activity, computes the control-flow complexity of the XOR-split a. 
	For XOR-splits, the control-flow complexity is simply the fan-out of the split.
	===================
	CFCXOR-split(a)= fan-out(a)
	===================	
	In this particular case, the complexity is directly proportional to the number of activities that follow an XOR-split and that a 	process de- signer needs to consider, analyze, and assimilate. The idea is to associate the complexity of an XOR-split with the 	number of states (e.g., activi- ties, tasks, Web services) that follow the split. This rationale is illustrated in Figure 8. Please 	note that in this first case, the computation and result bear a strong similarity to the MCC.
	"
	^ aModel outgoing size
]

{ #category : #'as yet unclassified' }
BPMN20MetricAbsCFC >> visitBPMN20InclusiveGatewayImpl: aModel [
	"
	For an AND-split, the complexity is simply 1.
	CFCAND-split(a)= 1
	The designer constructing a process needs only to consider and analyze one state that may arise from the execution of an 	AND-split construct, since it is assumed that all the outgo- ing transitions are selected and followed. This rationale is 	illustrated in Figure 10.
	"
	^ 1
]

{ #category : #'as yet unclassified' }
BPMN20MetricAbsCFC >> visitBPMN20Object: aModel [
	^ 0
]

{ #category : #'as yet unclassified' }
BPMN20MetricAbsCFC >> visitBPMN20ParallelGatewayImpl: aModel [
	^ self calculeInGateways: aModel
]

{ #category : #'as yet unclassified' }
BPMN20MetricAbsCFC >> visitBPMN20ProcessImpl: aModel [
	"
	CFC (P) = abs
	( ∑ CFCXOR−split i) + i∈(XOR-splits of P)
	( ∑ CFCOR−split j)+ j∈(OR-splits of P)
	( ∑ CFCAND−split k)+ k∈(AND-splits of P)
	"

	| cfcAbs |
	cfcAbs := 0.
	aModel flowElements do: [ :el | cfcAbs := cfcAbs + (el accept: self) ].
	^ cfcAbs
]

{ #category : #'as yet unclassified' }
BPMN20MetricAbsCFC >> visitBPMN20SequenceFlowImpl:aModel [ 
	^ self calculeInGateways: aModel
]
