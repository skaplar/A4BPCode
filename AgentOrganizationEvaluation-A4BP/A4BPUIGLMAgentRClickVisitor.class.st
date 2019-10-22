Class {
	#name : #A4BPUIGLMAgentRClickVisitor,
	#superclass : #A4BPUIGLMActionTreeBuilderVisitor,
	#category : #'AgentOrganizationEvaluation-A4BP-View-UI'
}

{ #category : #'as yet unclassified' }
A4BPUIGLMAgentRClickVisitor >> actionBasicBrowser: aBPObject [
	^ OrderedCollection new
]

{ #category : #'as yet unclassified' }
A4BPUIGLMAgentRClickVisitor >> extendActions: actions In: aModel [
	actions addAll: (aModel accept:self).
]

{ #category : #'as yet unclassified' }
A4BPUIGLMAgentRClickVisitor >> visitA4BPObject: aModel [
	^ OrderedCollection new
]

{ #category : #'as yet unclassified' }
A4BPUIGLMAgentRClickVisitor >> visitBPMN20DefinitionsImpl: aModel [
	| actions act|
	actions:= OrderedCollection new.

	"Inspect Organization"
	act:=GLMGenericAction new 
	action:[ :b | 
		|org|
		org := A4BPBPMN20ToAgents new bpmn20ToAgent: aModel.
		org inspect.
		];
	category: 'Agents';
	title: 'Inspect Organization'.
	actions add:act.


	"Generate Agents View"
	act:=GLMGenericAction new 
	action:[ :b | 
		|org|
		org := A4BPBPMN20ToAgents bpmn20ToAgent: aModel.
		org kiviatRobustness: org.
		org kiviatFlexibility: org.
		org kiviatEfficiency: org.
		];
	category: 'Agents';
	title: 'GenerateAgentViews'.
	actions add:act.
	
	^ actions
]
