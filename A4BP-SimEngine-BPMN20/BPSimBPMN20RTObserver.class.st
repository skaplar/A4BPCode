Class {
	#name : #BPSimBPMN20RTObserver,
	#superclass : #Object,
	#instVars : [
		'view',
		'element',
		'execution',
		'vizp'
	],
	#category : #'A4BP-SimEngine-BPMN20-execution-observers'
}

{ #category : #accessing }
BPSimBPMN20RTObserver >> execution [
	^ execution
]

{ #category : #accessing }
BPSimBPMN20RTObserver >> execution: anObject [
	execution := anObject
]

{ #category : #accessing }
BPSimBPMN20RTObserver >> followElement: e [
	| point |
	point := vizp newp: e.
	A4BPLog d: e.
	A4BPLog d: point.
	element ifNotNil: [ view removeElement: element ].
	element := (RTBox new
		width: 40;
		height: 40;
		color: Color lightGreen;
		elementOn: e) translateTo: point.
	view add:element.
	^ element
]

{ #category : #accessing }
BPSimBPMN20RTObserver >> makeView:  aview [
	| sv |
	view  := aview.
	sv := BPMN20StandarVisualizationSvg new.
	sv bpObj: execution processModel.
	sv executeVisualization: view.
	vizp := BPMN20StandarVizPoint new.
	^ view
]

{ #category : #view }
BPSimBPMN20RTObserver >> notify: e [
	| v |
	v := self view.
	e shape
		ifNotNil: [ 
			| pe el|
			pe := execution outputScenario getParameterAt:e.
			el := v elementFromModel: e.
			el color: (el color alpha: (1 / (pe processing countv + 1))).
			self followElement: e.
		 ].
	self update.
]

{ #category : #view }
BPSimBPMN20RTObserver >> open [
	[self view open ] forkAt: Processor userBackgroundPriority
]

{ #category : #view }
BPSimBPMN20RTObserver >> update [
	view signalUpdate
]

{ #category : #accessing }
BPSimBPMN20RTObserver >> view [
	view ifNil:[ self makeView: RTView new. ].
	^ view
]

{ #category : #accessing }
BPSimBPMN20RTObserver >> view: anView [
	view := anView
]
