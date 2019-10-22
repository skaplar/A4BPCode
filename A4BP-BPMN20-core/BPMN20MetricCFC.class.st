Class {
	#name : #BPMN20MetricCFC,
	#superclass : #A4BPMetricCFC,
	#instVars : [
		'cfcMetric'
	],
	#category : #'A4BP-BPMN20-core-metric'
}

{ #category : #'as yet unclassified' }
BPMN20MetricCFC >> visitBPMN20DefinitionsImpl: aModel [
	|metric|
	metric := 0.
	aModel process do:[ :n | metric := metric + ( n accept: self )  ].
	^ metric
]

{ #category : #'as yet unclassified' }
BPMN20MetricCFC >> visitBPMN20ExclusiveGatewayImpl: aModel [
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
BPMN20MetricCFC >> visitBPMN20InclusiveGatewayImpl: aModel [
	"
	For an AND-split, the complexity is simply 1.
	CFCAND-split(a)= 1
	The designer constructing a process needs only to consider and analyze one state that may arise from the execution of an 	AND-split construct, since it is assumed that all the outgo- ing transitions are selected and followed. This rationale is 	illustrated in Figure 10.
	"
	^ 1
]

{ #category : #'as yet unclassified' }
BPMN20MetricCFC >> visitBPMN20LaneImpl: aModel [
	|metric|
	metric := 0.
	aModel flowNodeRefs do:[ :n | metric := metric + ( n accept: self )  ].
	^ metric
]

{ #category : #'as yet unclassified' }
BPMN20MetricCFC >> visitBPMN20Object: aModel [
	^ 0
]

{ #category : #'as yet unclassified' }
BPMN20MetricCFC >> visitBPMN20ParallelGatewayImpl: aModel [
	"
	(cardoso 2008)
	OR-split control-flow complexity is also determined by the number of mental states that are introduced with the split. For 	OR-splits, the control-flow complexity is 2n-1, where n is the fan-out of the split. This rationale is illustrated in Figure 9.
	CFCOR-split(a)= (2 ^ fan-out(a) ) - 1
	This means that when a designer is con- structing a process, he or she needs to consider and analyze 2n-1 states that may 	arise from the execution of an OR-split construct.
	Mathematically, it would appear more obvious that 2n states can be reached after the execution of an OR-split. But since a 	process that has started its execution has to finish, it can- not be the case where, after the execution of an OR-split, no 	transition 	is activated (i.e., no Web service or workflow task is executed. Therefore, this situation or state cannot happen.
		
	"
	|fanout|
	fanout := aModel outgoing size.
	^ ( 2 ** fanout ) - 1
]

{ #category : #'as yet unclassified' }
BPMN20MetricCFC >> visitBPMN20ProcessImpl: aModel [ 
	|metric|
	metric := 0.
	aModel flowElements do:[ :n | metric := metric + ( n accept: self )  ].
	^ metric
]
