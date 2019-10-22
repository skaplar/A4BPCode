Class {
	#name : #BPVCBPObject,
	#superclass : #A4BPVCBPObject,
	#category : #'A4BP-BpelAnalyzer-view-Visualization'
}

{ #category : #utils }
BPVCBPObject >> addInspect: v [
	v interaction
		popupText: #name;
		action: #inspect
]

{ #category : #getset }
BPVCBPObject >> bpObj: abpObj [
	bpObj := abpObj
]

{ #category : #private }
BPVCBPObject >> executeInRoassal2: glmc [
	|r2|
	r2:=glmc roassal2.
	r2
		painting: [ :view :viewBuilder | self executeVisualization: view ];
		title: A4BPUII18n msg msgVisualization
]

{ #category : #private }
BPVCBPObject >> executeInRoassal3d: glmc [
	glmc roassal3d
		painting: [ :view :viewBuilder | self executeVisualization: view ];
		title: A4BPUII18n msg msgVisualization
]

{ #category : #private }
BPVCBPObject >> executeInRoassal: glmc [
	glmc roassal
		painting: [ :view :viewBuilder | self executeVisualization: view ];
		title: A4BPUII18n msg msgVisualization
]

{ #category : #execute }
BPVCBPObject >> executeVisualization: view [
	| v p |
	v := view.
	p := bpObj.
	v shape label.
	v node: [ p ]
]

{ #category : #execute }
BPVCBPObject >> executeVisualizationOnGLMC: glmc [
	self executeInRoassal2: glmc
]

{ #category : #initialization }
BPVCBPObject >> initialize [
	super initialize.
	visible :=true.
]

{ #category : #getset }
BPVCBPObject >> visible [
	^ visible
]

{ #category : #getset }
BPVCBPObject >> visible: aVisible [
	visible := aVisible 
]
