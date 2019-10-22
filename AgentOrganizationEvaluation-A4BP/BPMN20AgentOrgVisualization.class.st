Class {
	#name : #BPMN20AgentOrgVisualization,
	#superclass : #A4BPVCBPProcess,
	#category : #'AgentOrganizationEvaluation-A4BP-View-Visualization'
}

{ #category : #visualization }
BPMN20AgentOrgVisualization >> executeVisualization: rtView [
	|org builder c|
	org := A4BPBPMN20ToAgents bpmn20ToAgent: bpObj.
	
	"Make the visualization"
	c := A4BPRTComposer new.
	c view:rtView.
	c gap: 35.
	"-----"
	builder := org kiviatRobustness: org.
	builder view: c view.
	builder build.
	"c propagateHighlight."
	c group: #kiviatRobustness.
	"-----"
	builder := org kiviatFlexibility: org.
	builder view: c view.
	builder build.
	"c propagateHighlight."
	c group: #kiviatFlexibility.
	"-----"
	builder := org kiviatEfficiency: org.
	builder view: c view.
	builder build.
	"c propagateHighlight."
	c group: #kiviatEfficiency.
	"-----"
	c move: #kiviatRobustness onTheLeftOf: #kiviatFlexibility.
	c move: #kiviatEfficiency below: #kiviatFlexibility.

	c nameGroup: #kiviatRobustness as: 'kiviatRobustness'.
	c nameGroup: #kiviatFlexibility as: 'kiviatFlexibility'.
	c nameGroup: #kiviatEfficiency as: 'kiviatEfficiency'.

	c propagateHighlightToAll.
	
]

{ #category : #visualization }
BPMN20AgentOrgVisualization >> name [
	^ 'Agent Visualization'
]
