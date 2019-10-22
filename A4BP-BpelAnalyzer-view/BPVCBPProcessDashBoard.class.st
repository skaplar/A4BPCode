Class {
	#name : #BPVCBPProcessDashBoard,
	#superclass : #BPVCBPProcess,
	#instVars : [
		'cv',
		'rtc'
	],
	#category : #'A4BP-BpelAnalyzer-view-Visualization'
}

{ #category : #initialization }
BPVCBPProcessDashBoard >> build [
	cv := BPUIBPModelColorBuilderVisitor new.
	rtc := BPRTComposer new.
	rtc gap:35.
]

{ #category : #visualization }
BPVCBPProcessDashBoard >> executeVisualization: view [
	"this visualization is execute using roassal1"
	| vPSimple |
	
	cv := A4BPUIBPModelColorBuilderVisitor new.
	rtc := BPRTComposer new.
	rtc gap:35.
	
	rtc view: view.

	vPSimple:= BPVCBasicRelations new.
	vPSimple bpObj: bpObj.
	vPSimple executeVisualization: view.
	rtc propagateHighlight.
	rtc group: #plot.
	
	vPSimple:= BPVCBPProcessNormalLayout new.
	vPSimple bpObj: bpObj.
	vPSimple executeVisualization: view.
	rtc propagateHighlight.
	rtc group: #stat.
	
	rtc move: #plot below: #stat.

]

{ #category : #visualization }
BPVCBPProcessDashBoard >> executeVisualizationOnGLMC: glmc [
	self executeInRoassal2: glmc
]

{ #category : #initialization }
BPVCBPProcessDashBoard >> initialize [
	super initialize.
	self build.
]

{ #category : #visualization }
BPVCBPProcessDashBoard >> name [
	^ 'Process Dash Board'
]
