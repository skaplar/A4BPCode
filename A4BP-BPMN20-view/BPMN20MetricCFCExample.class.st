Class {
	#name : #BPMN20MetricCFCExample,
	#superclass : #A4BPVCBPProcess,
	#category : #'A4BP-BPMN20-view-Visualization'
}

{ #category : #visualization }
BPMN20MetricCFCExample >> executeMondrianViz: m [
	| cv eb values|
	
	"Execute the visulization"
	cv := A4BPUIBVFactory color.
	m interaction action:[ :n | n inspect].
	values := bpObj flowElements.
	m nodes: values.
	
	"Blues, PuBuGn, BuPu, GnBu, YlGn, Greens, YlOrBr, YlOrRd, Greys, Reds, YlGnBu, PuRd, RdPu, PuBu, BuGn, Oranges, Purples, OrRd"
	m normalizer
		normalizeColor: #numberOfRelations 
		using: (RTColorPalette sequential colors: 9 scheme: 'YlOrRd') 
		using: #value;
		normalizeSize: #metricCFCAbs  min: 5 max: 30 
		using: [:value | (value + 1) ln ].
		
	eb := m edges.
	eb shape line color:(Color lightGray).
	eb connectFrom:#yourself toAll:[ :n | n outFlows].
	m layout tree.
	m build.
]

{ #category : #visualization }
BPMN20MetricCFCExample >> executeVisualization: rtView [
	|  cv  lb entities |
	cv := A4BPUIBVFactory color.
	
	"Execute the visulization"
	self executeViz: rtView.
	"Create the legend builder"
	lb := RTLegendBuilder new view: rtView.
	lb addText:'width:metric CFC Abs'.
	lb addText:'height: metric CFC'.
	lb addText:'color number Of Relations'.
	entities := Dictionary new.
	bpObj flowElements do:[ :p | entities at: p class put: p class].
	entities do:[ :p |  lb addColor:(p new accept: cv) text: p bpmn20Name ].
	lb right.
	lb build.
	
]

{ #category : #visualization }
BPMN20MetricCFCExample >> executeViz: rtView [
	| cv eb  values  m|
	
	m := RTMondrian new.
	m view: rtView.
	
	rtView @ RTDraggableView .
	
	"Execute the visulization"
	cv := A4BPUIBVFactory color.
	m interaction action:[ :n | n inspect].
	values := bpObj flowElements.
	
	m nodes: values.
	
	"Blues, PuBuGn, BuPu, GnBu, YlGn, Greens, YlOrBr, YlOrRd, Greys, Reds, YlGnBu, PuRd, RdPu, PuBu, BuGn, Oranges, Purples, OrRd"
	m normalizer
		normalizeColor: #numberOfRelations 
		using: (RTColorPalette sequential colors: 9 scheme: 'YlOrRd') 
		using: #value;
		normalizeSize: #metricCFCAbs  min: 5 max: 30 
		using: [:value | (value + 1) ln ].
		
	eb := m edges.
	eb shape line color:(Color lightGray).
	eb connectFrom:#yourself toAll:[ :n | n outFlows].
	m layout tree.
	m build.
]

{ #category : #visualization }
BPMN20MetricCFCExample >> name [
	^ 'BPMN20 CFC example'
]
