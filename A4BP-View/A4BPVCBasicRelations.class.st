Class {
	#name : #A4BPVCBasicRelations,
	#superclass : #A4BPVCBForAllModel,
	#category : #'A4BP-View-Visualization'
}

{ #category : #visualization }
A4BPVCBasicRelations >> executeMondrianViz: mondrian [
	| cv p|
	p:= bpObj.
	cv := A4BPUIBVFactory colorVisitor.
	self addInspect: mondrian.
	mondrian shape circle color:[ :n | n accept: cv ];size:[ :n | n size * 10].
	mondrian nodes: p flowElements.
	mondrian shape line.
	mondrian edges connectToAll: [:n|n flows].
	mondrian layout force charge: -150.
	mondrian build.
	
]

{ #category : #visualization }
A4BPVCBasicRelations >> executeVisualization: view [
	| b cv p legendBuilder entities|
	"Starting with initialize variables"
	b := RTMondrian new.
	view @ RTDraggableView.
	cv := A4BPUIBVFactory colorVisitor.
	p:= bpObj.
	b view: view.
	self addInspect: b.
	"Do visualization"	
	self executeMondrianViz: b.
	"add the legend"
	legendBuilder := RTLegendBuilder new view: view.
	entities := Dictionary new.
	p allChildrenNodes do:[ :n | entities at: n class put: n class].
	entities do:[ :n |  legendBuilder addColor:(n new accept: cv) text: n name ].
	legendBuilder right.
	legendBuilder build.
	
	
]

{ #category : #visualization }
A4BPVCBasicRelations >> name [
	^ 'Basic Relations'
]
