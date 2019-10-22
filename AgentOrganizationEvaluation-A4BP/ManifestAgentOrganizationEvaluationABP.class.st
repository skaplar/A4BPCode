"
I store metadata for this package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestAgentOrganizationEvaluationABP,
	#superclass : #PackageManifest,
	#category : #'AgentOrganizationEvaluation-A4BP'
}

{ #category : #'code-critics' }
ManifestAgentOrganizationEvaluationABP class >> ruleRBLongMethodsRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#BPMN20AgentOrgVisualization #executeViz: #false)) #'2016-04-28T23:37:31.392608-03:00') )
]
