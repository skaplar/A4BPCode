"
A BPBPELObject is xxxxxxxxx.

Instance Variables
	myProcess:		<Object>

myProcess
	- xxxxx

"
Class {
	#name : #BPBPELObject,
	#superclass : #A4BPObject,
	#instVars : [
		'myProcess'
	],
	#category : #'A4BP-BpelAnalyzer-core-model-bpel'
}

{ #category : #parser }
BPBPELObject class >> annotation [
<MSEClass: #BPBPELObject  super: #A4BPObject >
<package: #'A4BP-BpelAnalyzer-core' >
]

{ #category : #parser }
BPBPELObject class >> fillElementsIn: aBPObject from: document visitor: visitor [
	self fillElementsIn: aBPObject from: document visitor: visitor tagRef:BPBPELParserTagsXMLRef
]

{ #category : #visitor }
BPBPELObject >> accept: aVisitor [
	^ aVisitor visitBPBPELObject: self
]

{ #category : #dsl }
BPBPELObject >> linkOut [
	^ nil
]

{ #category : #dsl }
BPBPELObject >> metaModelBaseClass [
	^ BPBPELObject
]

{ #category : #metric }
BPBPELObject >> metricCFC [
	^ BPMetricCFC calculateCFC: self
	
]

{ #category : #getset }
BPBPELObject >> myProcess [
	^ myProcess  
]

{ #category : #getset }
BPBPELObject >> parent: aParent [
	super parent: aParent.
	myProcess := aParent process
]

{ #category : #getset }
BPBPELObject >> process [
	^ myProcess
]

{ #category : #getset }
BPBPELObject >> process: aProcess [
	myProcess := aProcess
]
