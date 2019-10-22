Class {
	#name : #BPMN20V,
	#superclass : #A4BPVCBPProcess,
	#category : #'A4BP-BPMN20-view-Visualization'
}

{ #category : #'as yet unclassified' }
BPMN20V class >> standarSvg: aModel view:v [
	|svgBuilder|
	svgBuilder := BPMN20StandarVisualizationSvg new.
	svgBuilder bpObj: aModel.
	svgBuilder executeVisualization: v.
]
