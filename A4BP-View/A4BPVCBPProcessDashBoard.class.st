Class {
	#name : #A4BPVCBPProcessDashBoard,
	#superclass : #A4BPVCBPProcess,
	#category : #'A4BP-View-Visualization'
}

{ #category : #visualization }
A4BPVCBPProcessDashBoard >> executeVisualization: view [
	| vPSimple  cv rtc|
	
	cv := A4BPUIBPModelColorBuilderVisitor new.
	rtc := A4BPRTComposer new.
	rtc gap:35.
	rtc view: view.

	vPSimple:= A4BPVCBasicRelations new.
	vPSimple bpObj: bpObj.
	vPSimple executeVisualization: view.
	rtc propagateHighlight.
	rtc group: #plot.
	
	vPSimple:= A4BPVCBPProcessNormalLayout new.
	vPSimple bpObj: bpObj.
	vPSimple executeVisualization: view.
	
	rtc propagateHighlight.
	rtc group: #stat.
	
	rtc move: #plot below: #stat.

]

{ #category : #initialization }
A4BPVCBPProcessDashBoard >> initialize [
	super initialize.
]

{ #category : #'as yet unclassified' }
A4BPVCBPProcessDashBoard >> name [
	^ 'Process dash board'
]
