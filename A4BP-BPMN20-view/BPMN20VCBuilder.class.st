Class {
	#name : #BPMN20VCBuilder,
	#superclass : #A4BPVCBuilder,
	#category : #'A4BP-BPMN20-view-Visualization'
}

{ #category : #'as yet unclassified' }
BPMN20VCBuilder class >> annotation [
<MSEClass: #BPMN20VCBuilder  super: #A4BPVCBuilder >
<package: #'A4BP-BpelAnalyze-View' >
]

{ #category : #'as yet unclassified' }
BPMN20VCBuilder >> addViz: aClass inList: visualizations withModel: aModel [
	visualizations add: (aClass new bpObj: aModel).
	^ visualizations
]

{ #category : #visiting }
BPMN20VCBuilder >> visitBPMN20DefinitionsImpl: aModel [
	| vizList |
	vizList := OrderedCollection new.
	"Stantard visualization"
	self setVisualizationForAllModel: vizList inModel: aModel.
	self addViz: BPMN20StandarVisualizationSvg inList: vizList withModel: aModel.
	"Metric example CFC"
	self addViz: BPMN20MetricCFCExample inList: vizList withModel: aModel.
	self addViz: BPMN20RoleMetricCFCExample inList: vizList withModel: aModel.
	self addViz: BPMN20VCGlyphsExample inList: vizList withModel: aModel.
	^ vizList
]

{ #category : #'as yet unclassified' }
BPMN20VCBuilder >> visitBPMN20Object: aModel [
	| visualizations |
	visualizations := OrderedCollection new.
	^ visualizations
]

{ #category : #'as yet unclassified' }
BPMN20VCBuilder >> visitBPMN20ProcessImpl: aModel [
	| visualizations|
	visualizations := OrderedCollection new.
	self addViz: BPMN20SimpleCluster inList: visualizations withModel: aModel.
	self addViz: BPMN20StandarVisualizationSvg inList: visualizations withModel: aModel.
	^ visualizations
]
