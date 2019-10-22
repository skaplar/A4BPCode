Class {
	#name : #BPMN20StandarVizPoint,
	#superclass : #Object,
	#instVars : [
		'ww',
		'hh'
	],
	#category : #'A4BP-BPMN20-view-Visualization'
}

{ #category : #initalize }
BPMN20StandarVizPoint >> addBasicElement: view [
	|box|
	box := RTBox new width: ww ;height: hh ; color: (Color lightGray alpha:0.1); elementOn:''.
	box @ RTDraggable @ RTPopup.
	box translateTo:0@0.
	view add: box.
]

{ #category : #initalize }
BPMN20StandarVizPoint >> initialize [
	super initialize.
	ww:= 0.
	hh:= 0.
	
]

{ #category : #initalize }
BPMN20StandarVizPoint >> newp: el [
	|point w h x y|
	w := el shape bounds width.
	h :=  el shape bounds height.
	x := el shape bounds x.
	y := el shape bounds y.
	point := ( (w/2) - ( ww / 2 ) + x ) @ ( (h) - (hh/2)- (h/2) + y ).
	^ point
]
