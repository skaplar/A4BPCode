Class {
	#name : #A4BPVCSOAContextProcessCFCComplexity,
	#superclass : #A4BPVCSOAContext,
	#category : #'A4BP-View-Visualization'
}

{ #category : #'as yet unclassified' }
A4BPVCSOAContextProcessCFCComplexity >> executeVisualization: view [
	| v soa cv lb |
	v := RTMondrian new.
	v view: view.
	soa := bpObj.
	cv := A4BPUIBVFactory colorVisitor.
	"Do visualization"
	v interaction
		popupText: [ :a | '',a name,'-> [CFC:' , 
				a metricCFC asString , ' , NoRel:' , 
				a numberOfRelations asString , ']' ];
		action: #inspect.
	
	v nodes: soa process forEach:[ :p | 
		( BPMN20MetricCFCExample init: p ) executeMondrianViz: v.
	].
	
	v build.
	
	"Create the legend builder"
	lb := RTLegendBuilder new view: view.
	lb offset:1.
	lb addText:'width:metric CFC Abs'.
	lb addText:'height: metric CFC'.
	lb addText:'color number Of Relations'.
	lb below.
	lb build.	
	
	self addLegendBuilderView: view values: soa allNodes.	
	

]

{ #category : #'as yet unclassified' }
A4BPVCSOAContextProcessCFCComplexity >> name [
	^ 'CFC Complexity'
]
