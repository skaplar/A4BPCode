"
An A4BPMetricCFC is xxxxxxxxx.

"
Class {
	#name : #A4BPMetricCFC,
	#superclass : #A4BPAbstractVisitor,
	#category : #'A4BP-core-metric'
}

{ #category : #'as yet unclassified' }
A4BPMetricCFC class >> annotation [
<MSEClass: #A4BPMetricCFC  super: #A4BPAbstractVisitor >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
A4BPMetricCFC >> calculeCFC: aModel [
	^ aModel accept: self
]

{ #category : #'as yet unclassified' }
A4BPMetricCFC >> metricCFC: aModel [
	^ aModel accept: self
]
