Class {
	#name : #A4BPVCSOAContextRelations,
	#superclass : #A4BPVCSOAContext,
	#category : #'A4BP-View-Visualization'
}

{ #category : #visualization }
A4BPVCSOAContextRelations >> executeVisualization: view [
	| b colorv |
	b := RTMondrian new.
	colorv := A4BPUIBVFactory colorVisitor.
	b view: view.
	"start the visualization"
	b shape circle color:[:node | node accept:colorv]; size:[:n | n metricCFCAbs].
	b nodes: bpObj allNodes.
	b edges connectToAll: [ :node | node allRelations ].
	b layout grid.
	b build.

	"add the legend"
	self addLegendBuilderView: view values: bpObj allNodes.
		

]

{ #category : #visualization }
A4BPVCSOAContextRelations >> name [
	^ 'Relations between elements'
]
