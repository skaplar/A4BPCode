Class {
	#name : #BPMN20IconsSvg,
	#superclass : #A4BPUIBPAbstractViewBuilderVisitor,
	#category : #'A4BP-BPMN20-view-Visualization'
}

{ #category : #'as yet unclassified' }
BPMN20IconsSvg class >> annotation [
<MSEClass: #BPMN20IconsSvg  super: #A4BPUIBPAbstractViewBuilderVisitor >
<package: #'A4BP-BPMN20-view' >
]

{ #category : #events }
BPMN20IconsSvg >> elementOn: aModel withsvgElement: svg [
	|shape label es|
	shape := RTCompositeShape new.
	label := RTLabel new.
	label text: aModel aName.
	shape add: svg.
	shape add: label.
	"svg scale:1."
	es := shape elementOn: aModel.
	^ svg elementOn:aModel.
]

{ #category : #basic }
BPMN20IconsSvg >> visitA4BPObject: aModel [
	| p|
	p := 'm 134.28572,129.50507 125.71428,0 c 26.90858,0 48.57143,21.66285 48.57143,48.57143 l 0,45.71428 c 0,26.90858 -21.66285,48.57143 -48.57143,48.57143 l -125.71428,0 c -26.90858,0 -48.571433,-21.66285 -48.571433,-48.57143 l 0,-45.71428 c 0,-26.90858 21.662853,-48.57143 48.571433,-48.57143 z'.
	^  self elementOn: aModel withsvgElement: (RTSVGPath new centeredPath: p; scale: 0.3).
]

{ #category : #gateways }
BPMN20IconsSvg >> visitBPMN20ComplexGatewayImpl: aModel [
	^ self visitBPMN20GatewayImpl: aModel
]

{ #category : #events }
BPMN20IconsSvg >> visitBPMN20EndEventImpl: aModel [
	| p scale|
	p := 'm 86.873964,113.25507 21.609226,0 c 36.75139,0 66.33825,29.58687 66.33825,66.33826 l 0,11.60919 c 0,36.7514 -29.58686,66.33826 -66.33825,66.33826 l -21.609226,0 c -36.751394,0 -66.338257,-29.58686 -66.338257,-66.33826 l 0,-11.60919 c 0,-36.75139 29.586863,-66.33826 66.338257,-66.33826 z'.
	scale := aModel shape bounds width / 200.
	^ self elementOn: aModel withsvgElement: (RTSVGPath new centeredPath: p; scale: scale) 
]

{ #category : #events }
BPMN20IconsSvg >> visitBPMN20EventBasedGatewayImpl: aModel [
	^ self visitBPMN20GatewayImpl: aModel
]

{ #category : #gateways }
BPMN20IconsSvg >> visitBPMN20ExclusiveGatewayImpl: aModel [
	^ self visitBPMN20GatewayImpl: aModel
]

{ #category : #gateways }
BPMN20IconsSvg >> visitBPMN20GatewayImpl: aModel [
	| p scale|
	p := 'm -68.318504,177.5455 80,0 c 5.54,0 10,4.46 10,10 l 0,80 c 0,5.54 -4.46,10 -10,10 l -80,0 c -5.54,0 -10,-4.46 -10,-10 l 0,-80 c 0,-5.54 4.46,-10 10,-10 z'.
	"scale := aModel shape bounds width / 100."
	scale := 0.3.
	^ self elementOn: aModel withsvgElement: (RTSVGPath new centeredPath: p; scale: scale).
]

{ #category : #gateways }
BPMN20IconsSvg >> visitBPMN20InclusiveGatewayImpl: aModel [
	^ self visitBPMN20GatewayImpl: aModel
]

{ #category : #events }
BPMN20IconsSvg >> visitBPMN20IntermediateThrowEventImpl: aModel [
	| p scale|
	p := 'm 134.28572,129.50507 125.71428,0 c 26.90858,0 48.57143,21.66285 48.57143,48.57143 l 0,45.71428 c 0,26.90858 -21.66285,48.57143 -48.57143,48.57143 l -125.71428,0 c -26.90858,0 -48.571433,-21.66285 -48.571433,-48.57143 l 0,-45.71428 c 0,-26.90858 21.662853,-48.57143 48.571433,-48.57143 z'.
	scale := aModel shape bounds width / 400.
	^  self elementOn: aModel withsvgElement: (RTSVGPath new centeredPath: p; scale: scale).
]

{ #category : #gateways }
BPMN20IconsSvg >> visitBPMN20ParallelGatewayImpl: aModel [
	^ self visitBPMN20GatewayImpl: aModel
]

{ #category : #events }
BPMN20IconsSvg >> visitBPMN20StartEventImpl: aModel [
	| p scale|
	p := 'm 86.873964,113.25507 21.609226,0 c 36.75139,0 66.33825,29.58687 66.33825,66.33826 l 0,11.60919 c 0,36.7514 -29.58686,66.33826 -66.33825,66.33826 l -21.609226,0 c -36.751394,0 -66.338257,-29.58686 -66.338257,-66.33826 l 0,-11.60919 c 0,-36.75139 29.586863,-66.33826 66.338257,-66.33826 z'.
	scale := aModel shape bounds width / 200.
	^ self elementOn: aModel withsvgElement: (RTSVGPath new centeredPath: p; scale: scale).
]

{ #category : #activities }
BPMN20IconsSvg >> visitBPMN20TaskImpl: aModel [
	| p scale|
	p := 'm 134.28572,129.50507 125.71428,0 c 26.90858,0 48.57143,21.66285 48.57143,48.57143 l 0,45.71428 c 0,26.90858 -21.66285,48.57143 -48.57143,48.57143 l -125.71428,0 c -26.90858,0 -48.571433,-21.66285 -48.571433,-48.57143 l 0,-45.71428 c 0,-26.90858 21.662853,-48.57143 48.571433,-48.57143 z'.
	"scale := aModel shape bounds width / 400."
	scale := 0.3.
	^  self elementOn: aModel withsvgElement: (RTSVGPath new centeredPath: p; scale: scale).
]
