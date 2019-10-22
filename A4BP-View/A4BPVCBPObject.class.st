Class {
	#name : #A4BPVCBPObject,
	#superclass : #Object,
	#instVars : [
		'bpObj',
		'visible',
		'rtview'
	],
	#category : #'A4BP-View-Visualization'
}

{ #category : #'as yet unclassified' }
A4BPVCBPObject class >> init: model [
	|instance|
	instance := self new.
	instance bpObj:model.
	^ instance.
]

{ #category : #utils }
A4BPVCBPObject >> addInspect: v [
	v interaction
		popupText: #name;
		action: #inspect
]

{ #category : #getset }
A4BPVCBPObject >> addLegendBuilderView: view values: values [
	|legendBuilder entities cv |
	cv := A4BPUIBVFactory colorVisitor.
	legendBuilder := RTLegendBuilder new view: view.
	entities := Dictionary new.
	values do:[ :p | entities at: p class put: p class].
	entities do:[ :p |  legendBuilder addColor:(p new accept: cv) text: p name ].
	legendBuilder right.
	legendBuilder build.
	
]

{ #category : #getset }
A4BPVCBPObject >> addlegendBuilderView: view values: values [
	self addLegendBuilderView: view values: values
]

{ #category : #getset }
A4BPVCBPObject >> bpObj: abpObj [
	bpObj := abpObj
]

{ #category : #private }
A4BPVCBPObject >> executeInRoassal2: glmc [
	| r2 |
	r2 := glmc roassal2.
	r2
		painting: [ :rview :viewBuilder | 
			"For all visualization can be draggable"
			rview @ RTDraggableView.
			self executeVisualization: rview.
			rview canvas focusOnCenterScaled.
			viewBuilder view:rview. ];
		title: A4BPUII18n msg msgVisualization
]

{ #category : #private }
A4BPVCBPObject >> executeInRoassal3d: glmc [
	glmc roassal3d
		painting: [ :view :viewBuilder | self executeVisualization: view ];
		title: A4BPUII18n msg msgVisualization
]

{ #category : #private }
A4BPVCBPObject >> executeInRoassal: glmc [
	glmc roassal
		painting: [ :view :viewBuilder | self executeVisualization: view ];
		title: A4BPUII18n msg msgVisualization
]

{ #category : #execute }
A4BPVCBPObject >> executeVisualization: view [
	| v p |
	v := view.
	p := bpObj.
	v shape label.
	v node: [ p ]
]

{ #category : #execute }
A4BPVCBPObject >> executeVisualizationOnGLMC: glmc [
	self executeInRoassal2: glmc
]

{ #category : #initialization }
A4BPVCBPObject >> initialize [
	super initialize.
	visible :=true.
]

{ #category : #getset }
A4BPVCBPObject >> name [
	^ 'Basic'
]

{ #category : #accessing }
A4BPVCBPObject >> view [
	^ rtview
]

{ #category : #accessing }
A4BPVCBPObject >> view: anObject [
	rtview := anObject
]

{ #category : #getset }
A4BPVCBPObject >> visible [
	^ visible
]

{ #category : #getset }
A4BPVCBPObject >> visible: aVisible [
	visible := aVisible 
]
