Class {
	#name : #A4BPUIMetricVisualizationActionlstNodesBaseOfClass,
	#superclass : #A4BPUIBPAbstractViewActionVisitor,
	#instVars : [
		'rootObj',
		'nodes'
	],
	#category : #'A4BP-View-Action'
}

{ #category : #'as yet unclassified' }
A4BPUIMetricVisualizationActionlstNodesBaseOfClass class >> annotation [
<MSEClass: #A4BPUIMetricVisualizationActionlstNodesBaseOfClass  super: #A4BPUIBPAbstractViewActionVisitor >
<package: #'A4BP-View' >
]

{ #category : #'as yet unclassified' }
A4BPUIMetricVisualizationActionlstNodesBaseOfClass >> initialize [
	super initialize.
	nodes := OrderedCollection new
]

{ #category : #'as yet unclassified' }
A4BPUIMetricVisualizationActionlstNodesBaseOfClass >> nodes [
	^ nodes
]

{ #category : #'as yet unclassified' }
A4BPUIMetricVisualizationActionlstNodesBaseOfClass >> rootObj: arootObj [
	rootObj := arootObj
]

{ #category : #'as yet unclassified' }
A4BPUIMetricVisualizationActionlstNodesBaseOfClass >> visitBPProcess: aBPProcess [
	nodes := rootObj lstBPProcess.
	^ nodes
]

{ #category : #'as yet unclassified' }
A4BPUIMetricVisualizationActionlstNodesBaseOfClass >> visitBPSequence: aBPSequence [
	nodes := rootObj lstActivities.
	^ nodes
]
