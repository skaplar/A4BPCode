Class {
	#name : #BPSimBPMN20RTExamples,
	#superclass : #Object,
	#classInstVars : [
		'e'
	],
	#category : #'A4BP-SimEngine-BPMN20-examples'
}

{ #category : #'as yet unclassified' }
BPSimBPMN20RTExamples class >> example01 [
	|execution grabber parser inputScenario simb bpmnMetamodel task|
	
	parser := BPMN20Parser parseString: BPMN20SampleTsunamiResonponse tsunamiv3.
	bpmnMetamodel := (parser definitions first process select:
	[:p | p aName = 'Réponse tsunami au VN']) values first.
	
	execution := BPSimBPMN20ExecutionVisitor new.
	grabber := BPSimBPMN20TimeVisitor new.
	
	simb := BPSimBuilder new.
	simb buildScenarioId: 'tsunamiInputScenario'.
	
	task := (bpmnMetamodel activities select: [ :a | a class = BPMN20TaskImpl  ]).
	simb timer processingParameters: task config:[ :t |
			simb duration value: 100 random
		].
		
	inputScenario := simb currentScenario.
	
	execution addGrabber: grabber.
	execution addInputScenario: inputScenario.
	execution addProcessModel: bpmnMetamodel.
	execution addResourceController: BPSimResourceControllerFactory resourceController.
	execution addOutputScenario: (BPSimBuilder new buildScenario timer processingParameters: bpmnMetamodel activities) currentScenario.
	execution addFullOutputScenario: (BPSimBuilder new buildScenario timer processingParameters: bpmnMetamodel activities) currentScenario.
	execution runExecution.
	
	^ grabber

]

{ #category : #'as yet unclassified' }
BPSimBPMN20RTExamples class >> example01Visualization01: grabber [
	"self example01Visualization01Do"
	| v nodes cv edges edgesnodes process|
	v := RTMondrian new.
	v interaction
		popupText: [ :p | p aName];
		item:'inspect' action: [ :p | p inspect].
		
	cv := A4BPUIBVFactory colorVisitor.
	nodes := grabber outputScenario elementParameters copy.
	edgesnodes := RTGroup new.
	
	process := nodes values first elementRef parent.
	process allGateways do: [ :p | 
			|ep|
			ep := BPSimElementParameters new.
			ep elementRef: p.
			ep timeParameters: BPSimTimeParameters new.
			ep timeParameters processingTime: BPSimParameter new.
			ep timeParameters processingTime parameterValue: BPSimDurationParameter new.
			ep timeParameters processingTime parameterValue v: 1.
			nodes add:ep. 
			].
	
	
	v shape circle.
	v nodes: nodes forEach:[ :p |
		|node|
		v shape label text:#aName.
		node := v node: p elementRef.
		edgesnodes add: node.
		].

	edges := RTEdgeBuilder new 
		elements: edgesnodes;
		view: v view.
		
	"edges connectToAll:[ :p | |lst|
		lst := OrderedCollection new.
		p flows do:[:e| lst addAll: e flows].
		lst].	"
	edges connectToAll:[ :p | p outFlows ].
	v layout circle.
	^ v
]

{ #category : #'as yet unclassified' }
BPSimBPMN20RTExamples class >> example01Visualization01Do [
	^ self example01Visualization01: self example01
]

{ #category : #'as yet unclassified' }
BPSimBPMN20RTExamples class >> example01Visualization01Open [
	^ self example01Visualization01Do open
]

{ #category : #'as yet unclassified' }
BPSimBPMN20RTExamples class >> example01Visualization02: grabber [
	"self example01Visualization02Do"
	| v nodes cv edges edgesnodes process|
	v := RTMondrian new.
	v interaction
		popupText: [ :p | p aName];
		item:'inspect' action: [ :p | p inspect].
		
	cv := A4BPUIBVFactory colorVisitor.
	nodes := grabber outputScenario elementParameters copy.
	edgesnodes := RTGroup new.
	
	process := nodes values first elementRef parent.
	process allGateways do: [ :p | 
			|ep|
			ep := BPSimElementParameters new.
			ep elementRef: p.
			ep timeParameters: BPSimTimeParameters new.
			ep timeParameters processingTime: BPSimParameter new.
			ep timeParameters processingTime parameterValue: BPSimDurationParameter new.
			ep timeParameters processingTime parameterValue v: 1.
			nodes add:ep. 
			].
	
	
	v nodes: nodes forEach:[ :p |
		|node|
		v shape circle size: p timeParameters processingTime parameterValue v asInteger;color:[:n|n accept:cv].
		node := v node: p elementRef.
		edgesnodes add: node.
		].

	edges := RTEdgeBuilder new 
		elements: edgesnodes;
		view: v view.
		
	edges connectToAll:[ :p | |lst|
		lst := OrderedCollection new.
		p flows do:[:el | lst addAll: el flows].
		lst].	
	
	v layout grid.
	^ v
]

{ #category : #'as yet unclassified' }
BPSimBPMN20RTExamples class >> example01Visualization02Do [
	^ self example01Visualization02: self example01
]

{ #category : #'as yet unclassified' }
BPSimBPMN20RTExamples class >> example01Visualization02Open [
	^ self example01Visualization02Do open
]

{ #category : #'as yet unclassified' }
BPSimBPMN20RTExamples class >> example01Visualization03: grabber [
	"self example01Visualization02Do"
	| v nodes cv eb  process |
	v := RTView new.
	
	v @ RTDraggableView.
		
	cv := A4BPUIBVFactory colorVisitor.
	nodes := grabber outputScenario elementParameters copy.
	
	process := nodes values first elementRef parent.
	
	process allGateways do: [ :p | 
			|ep|
			ep := BPSimElementParameters new.
			ep elementRef: p.
			ep timeParameters: BPSimTimeParameters new.
			ep timeParameters processingTime: BPSimParameter new.
			ep timeParameters processingTime parameterValue: BPSimDurationParameter new.
			ep timeParameters processingTime parameterValue v: 1.
			nodes add:ep. 
			].
	
	nodes
		do: [ :el |
			|eref|
			eref := el elementRef.
			eref shape 
				ifNotNil: [ 
					| point es size|
					point := eref shape bounds y @ eref shape bounds x.
					size :=  el timeParameters processingTime parameterValue v asInteger.
					es := (RTBox new size:size;color:[:n | n accept:cv];elementOn:eref ) translateTo: point.
					es @ RTDraggable @ RTPopup.
					es when: TRMouseClick do: [ :evt | evt element model inspect ].
					v add: es.
					] ].
	
	eb := RTEdgeBuilder new.
	eb view: v.
	eb shape line color: Color black.
	"eb objects: model flowElements from: #yourself toAll:[ :e | e flows]."
	eb connectToAll: [ :el |  Array with:e ].
	eb objects: (nodes collect:[ :n | n elementRef]) from: #yourself toAll: [ :el |  el flows].
	eb notUseInLayout.
	
	v canvas camera focusOnCenterScaled.
	^ v
]

{ #category : #'as yet unclassified' }
BPSimBPMN20RTExamples class >> example01Visualization03Do [
	^ self example01Visualization03: self example01
]

{ #category : #'as yet unclassified' }
BPSimBPMN20RTExamples class >> example01Visualization03Open [
	^ self example01Visualization03Do open
]

{ #category : #'as yet unclassified' }
BPSimBPMN20RTExamples class >> example01Visualization: grabber [
	"self new example01VisualizationDo"
	| v nodes process  cv edges edgesnodes|
	v := RTMondrian new.
	v interaction
		popupText: [ :p | p aName];
		item:'inspect' action: [ :p | p inspect].
		
	cv := A4BPUIBVFactory colorVisitor.
	nodes := grabber outputScenario elementParameters copy.
	edgesnodes := RTGroup new.
	
	process := grabber outputScenario elementParameters v first elementRef parent.
	process allSequenceFlows do: [ :p | 
			|ep |
			ep := BPSimElementParameters new.
			ep elementRef: p.
			ep timeParameters: BPSimTimeParameters new.
			ep timeParameters processingTime: BPSimParameter new.
			ep timeParameters processingTime parameterValue: BPSimDurationParameter new.
			ep timeParameters processingTime parameterValue v: 1.
			nodes add:ep. 
			].
		
	v shape circle.
	v nodes: nodes forEach:[ :p |
		|node|
		v shape circle size: p timeParameters processingTime v asInteger;color:[:n|n accept:cv].
		node := v node: p elementRef.
		edgesnodes add: node.
		].

	edges := RTEdgeBuilder new 
		elements: edgesnodes;
		view: v view.
		
	edges connectToAll:[ :p | 
		p outFlows].	
		
	v layout tree.
	^ v
]

{ #category : #'as yet unclassified' }
BPSimBPMN20RTExamples class >> example01VisualizationDo [
	^ self example01Visualization: self example01
]

{ #category : #'as yet unclassified' }
BPSimBPMN20RTExamples class >> example01VisualizationOpen [
	^ self example01VisualizationDo open
]

{ #category : #'as yet unclassified' }
BPSimBPMN20RTExamples class >> example02 [
	"Similar to example 01 but with more executions to visualise"

	| parser inputScenario simb bpmnMetamodel task bpSimEngine |
	parser := BPMN20Parser parseString: BPMN20SampleTsunamiResonponse tsunamiv3.
	bpmnMetamodel := (parser definitions first process select: [ :p | p aName = 'Réponse tsunami au VN' ]) values first.
	bpSimEngine := BPSimBPMN20EngineProcess new.
	bpSimEngine addProcessModel: bpmnMetamodel.
	simb := BPSimBuilder new.
	simb buildScenarioId: 'tsunamiInputScenario01'.
	task := bpmnMetamodel activities select: [ :a | a class = BPMN20TaskImpl ].
	simb timer
		processingParameters: task
		config: [ :t | 
			simb triangular
				mode: 50;
				min: 10;
				max: 100 ].
	inputScenario := simb currentScenario.
	bpSimEngine runSimulationUsing: inputScenario for: 10.
	simb := BPSimBuilder new.
	simb buildScenarioId: 'tsunamiInputScenario02'.
	task := bpmnMetamodel activities select: [ :a | a class = BPMN20TaskImpl ].
	simb timer
		processingParameters: task
		config: [ :t |
			simb triangular
				mode: 40;
				min: 2;
				max: 50 ].
	inputScenario := simb currentScenario.
	bpSimEngine runSimulationUsing: inputScenario for: 10.
	(Delay forSeconds: 2) wait.
	^ bpSimEngine
]

{ #category : #'as yet unclassified' }
BPSimBPMN20RTExamples class >> example02Visualization01: bpSimEngine [
	"self example01Visualization02Do"
	| v nodes cv eb  process |
	v := RTView new.
	
	v @ RTDraggableView.
		
	cv := A4BPUIBVFactory colorVisitor.
	nodes := OrderedCollection new .
	
	bpSimEngine simulations do:[ :s | 
		s executions do:[ :ex | 
		nodes addAll: ex outputScenario elementParameters copy ]
	].

	process := nodes first elementRef parent.
	
	
	nodes
		do: [ :el |
			|eref|
			eref := el elementRef.
			eref shape 
				ifNotNil: [ 
					| point es size|
					point := eref shape bounds y @ eref shape bounds x.
					size :=  (el timeParameters processingTime valueAtType: 'MEAN' ) v asInteger.
					es := (RTBox new size:size;color:[:n | n parent  accept:cv];elementOn:eref ) translateTo: point.
					es @ RTDraggable @ RTPopup.
					es when: TRMouseClick do: [ :evt | evt element model inspect ].
					v add: es.
					es := (RTLabel new elementOn:eref ) translateTo: point.
					v add: es.
					] ].
	
	eb := RTEdgeBuilder new.
	eb view: v.
	eb shape line color: Color black.
	"eb objects: model flowElements from: #yourself toAll:[ :e | e flows]."
	eb connectToAll: [ :el |  Array with:el ].
	eb objects: (nodes collect:[ :n | n elementRef]); connectFrom: #yourself toAll: [ :el |  el flows].
	eb notUseInLayout.
	
	v canvas camera focusOnCenterScaled.
	^ v
]

{ #category : #'as yet unclassified' }
BPSimBPMN20RTExamples class >> example02Visualization01Do [
	^ self  example02Visualization01: self example02
]

{ #category : #'as yet unclassified' }
BPSimBPMN20RTExamples class >> example02Visualization01Open [
	^ self example02Visualization01Do open
]

{ #category : #'as yet unclassified' }
BPSimBPMN20RTExamples class >> example02Visualization02: bpSimEngine [
	"self example02Visualization02Do"

	| v s01 s02 cv eb |
	v := RTView new.
	v @ RTDraggableView.
	cv := Color r: 255 random g: 255 random b: 255 random.
	s01 := bpSimEngine simulations values first fullOutputScenario elementParameters.
	s02 := bpSimEngine simulations values second fullOutputScenario elementParameters.
	
	s01
		do: [ :e01 | 
			|eref01 e02 eref02|
			eref01 := e01 elementRef.
			e02 := s02 getElementAt: eref01 id.
			eref02 := e02 elementRef.
			eref01 shape
				ifNotNil: [ 
					| point es size01 size02 |
					point := eref01 shape bounds y @ eref01 shape bounds x.
					size01 := (e01 timeParameters processingTime valueAtType: 'MEAN') v asInteger.
					size02 := (e02 timeParameters processingTime valueAtType: 'MEAN') v asInteger.
					es := (RTBox new
						size: (size01 - size02 );
						color: cv;
						elementOn: eref01) translateTo: point.
					es @ RTDraggable @ RTPopup.
					es when: TRMouseClick do: [ :evt | evt element model inspect ].
					v add: es ] ].
			
	eb := RTEdgeBuilder new.
	eb view: v.
	eb shape line color: Color black.
	eb objects: (s01 collect: [ :n | n elementRef ]) from: #yourself toAll: [ :ne | ne outFlows ].
	eb notUseInLayout.
	v canvas camera focusOnCenterScaled.
	^ v
]

{ #category : #'as yet unclassified' }
BPSimBPMN20RTExamples class >> example02Visualization02Do [
	^ self  example02Visualization02: self example02
]

{ #category : #'as yet unclassified' }
BPSimBPMN20RTExamples class >> example02Visualization02Open [
	^ self  example02Visualization02Do open
]

{ #category : #'as yet unclassified' }
BPSimBPMN20RTExamples class >> example02Visualization03: bpSimEngine [
	"self example02Visualization03Do"

	| v  cv eb shapeBuilder rtGroupEParameters bpElements simResults simResultsElements |
	v := RTView new.
	v @ RTDraggableView.
	cv := Color blue.
	bpElements := bpSimEngine processModel elements.
	shapeBuilder := RTShapeBuilder new.
	shapeBuilder rectangle size: [ :e01 | (e01 timeParameters processingTime valueAtType: 'MEAN') v asInteger ].
	rtGroupEParameters := RTGroup new.
	bpElements
		do: [ :element | 
			element shape
				ifNotNil: [ 
					| point es |
					point := element shape bounds y @ element shape bounds x.
					es := (RTBox new
						color: cv;
						elementOn: element) translateTo: point.
					es @ RTDraggable @ RTPopup.
					es when: TRMouseClick do: [ :evt | evt element model inspect ].
					v add: es.
					simResults := bpSimEngine simulations collect: [ :s | s fullOutputScenario getParameterAt: element ].
					simResultsElements := shapeBuilder elementsOn: simResults.
					v addAll: simResultsElements.
					RTTreeLayout on: simResultsElements.
					simResultsElements @ RTDraggable @ RTPopup.
					RTNest new on: es nest: simResultsElements.
					rtGroupEParameters @ RTDraggable.
					rtGroupEParameters add: es ] ].
	
	eb := RTEdgeBuilder new.
	eb view: v.
	eb shape line color: Color black.
	eb objects: bpElements from: #yourself toAll: [ :ne | ne outFlows ].
	eb notUseInLayout.
	v canvas camera focusOnCenterScaled.
	^ v
]

{ #category : #'as yet unclassified' }
BPSimBPMN20RTExamples class >> example02Visualization03Do [
	^ self example02Visualization03: self example02
]

{ #category : #'as yet unclassified' }
BPSimBPMN20RTExamples class >> example02Visualization03Open [
	^ self example02Visualization03Do open
]

{ #category : #'as yet unclassified' }
BPSimBPMN20RTExamples class >> example03 [
	|parser inputScenario simb bpmnMetamodel task bpSimEngine gateways|
	
	parser := BPMN20Parser parseString: BPMN20SampleTsunamiResonponse tsunamiv3.
	bpmnMetamodel := (parser definitions first process select:
	[:p | p aName = 'Réponse tsunami au VN']) values first.
	
	bpSimEngine := BPSimBPMN20EngineProcess new.
	bpSimEngine addProcessModel: bpmnMetamodel.
	
	(Array with:50 with:60 with:70) do:[ :i |
		
		simb := BPSimBuilder buildScenarioId: 'tsunamiInputScenario0', i asString.
		
		task := (bpmnMetamodel activities select: [ :a | a class = BPMN20TaskImpl  ]).
		
		gateways := (bpmnMetamodel activities select: [ :a | a class superclass = BPMN20GatewayImpl ]).
		
		simb timer processingParameters: task config:[ :t |
				simb triangular mode:i-(i /2) ;min: i- (i - 1) ; max: i
		].
		
		gateways do:[ :g | 	simb control probabilityParameterOnGateway: g ].
		
		inputScenario := simb currentScenario.	
		bpSimEngine runSimulationUsing: inputScenario for:1.
	].	
	
	(Delay  forSeconds: 10) wait.
	^ bpSimEngine

]

{ #category : #'as yet unclassified' }
BPSimBPMN20RTExamples class >> example03Visualization01: bpSimEngine [

	
	| v  cv eb shapeBuilder rtGroupEParameters bpElements simResults simResultsElements |
	v := RTView new.
	v @ RTDraggableView.
	cv := Color blue.
	bpElements := bpSimEngine processModel elements.
	shapeBuilder := RTShapeBuilder new.
	shapeBuilder rectangle height: [ :e01 | (e01 processingTime mean) v asInteger ]; width: 5.
	rtGroupEParameters := RTGroup new.
	bpElements
		do: [ :element | 
			element shape
				ifNotNil: [ 
					| point es |
					point := element shape bounds y @ element shape bounds x.
					es := (RTBox new
						color: cv;
						elementOn: element) translateTo: point.
					es @ RTDraggable @ RTPopup.
					es when: TRMouseClick do: [ :evt | evt element model inspect ].
					v add: es.
					simResults := bpSimEngine simulations collect: [ :s | s fullOutputScenario getParameterAt: element ].
					simResultsElements := shapeBuilder elementsOn: simResults.
					v addAll: simResultsElements.
					RTTreeLayout on: simResultsElements.
					simResultsElements @ RTDraggable @ RTPopup.
					RTNest new on: es nest: simResultsElements.
					rtGroupEParameters @ RTDraggable.
					rtGroupEParameters add: es ] ].
	
	eb := RTEdgeBuilder new.
	eb view: v.
	eb shape line color: Color black.
	eb objects: bpElements from: #yourself toAll: [ :ne | ne outFlows ].
	eb notUseInLayout.
	v canvas camera focusOnCenterScaled:800@600.
	^ v
]

{ #category : #'as yet unclassified' }
BPSimBPMN20RTExamples class >> example03Visualization01Do [
	^ self example03Visualization01: self example03
]

{ #category : #'as yet unclassified' }
BPSimBPMN20RTExamples class >> example03Visualization01Open [
	^ self example03Visualization01Do open
]

{ #category : #'as yet unclassified' }
BPSimBPMN20RTExamples class >> example03Visualization02: bpSimEngine [

	
	| v  cv eb shapeBuilder rtGroupEParameters bpElements simResults simResultsElements |
	v := RTView new.
	v @ RTDraggableView.
	cv := Color blue.
	bpElements := bpSimEngine processModel elements.
	shapeBuilder := RTShapeBuilder new.
	shapeBuilder rectangle height: [ :e01 | (e01 historicalTime v) v asInteger ]; width: [ :e01 | (e01 processingTime mean) v asInteger ].
	rtGroupEParameters := RTGroup new.
	bpElements
		do: [ :element | 
			element shape
				ifNotNil: [ 
					| point es |
					point := element shape bounds y @ element shape bounds x.
					es := (RTBox new
						color: cv;
						elementOn: element) translateTo: point.
					es @ RTDraggable @ RTPopup.
					es when: TRMouseClick do: [ :evt | evt element model inspect ].
					v add: es.
					simResults := bpSimEngine simulations collect: [ :s | 
						s fullOutputScenario getParameterAt: element ].
					simResultsElements := shapeBuilder elementsOn: simResults.
					v addAll: simResultsElements.
					RTTreeLayout on: simResultsElements.
					simResultsElements @ RTDraggable @ RTPopup.
					RTNest new on: es nest: simResultsElements.
					rtGroupEParameters @ RTDraggable.
					rtGroupEParameters add: es ] ].
	
	eb := RTEdgeBuilder new.
	eb view: v.
	eb shape line color: Color black.
	eb objects: bpElements; connectFrom: #yourself toAll: [ :ne | ne outFlows ].
	eb notUseInLayout.
	v canvas camera focusOnCenterScaled:800@600.
	^ v
]

{ #category : #'as yet unclassified' }
BPSimBPMN20RTExamples class >> example03Visualization02Do [
	^ self example03Visualization02: self example03
]

{ #category : #'as yet unclassified' }
BPSimBPMN20RTExamples class >> example03Visualization02Open [
	^ self example03Visualization02Do open
]

{ #category : #'as yet unclassified' }
BPSimBPMN20RTExamples class >> example03Visualization03: bpSimEngine [
	| b ds i cv|
	b := RTGrapher new.
	b extent: 800 @ 600.
	b interaction popup.
	b view @ RTDraggableView.
	i:=0.
	cv := Dictionary new.
	
	bpSimEngine simulations first fullOutputScenario elementParameters do:[:p | 
		cv at: p elementRef id put: (Color r:255 random g: 255 random b: 255 random)].

	" each simulation is a scenario to display"
	bpSimEngine simulations
		do: [ :s | 
			|y |
			i := i + 1.
			y:=i.
			ds := RTDataSet new.
			ds interaction popup text:[ :p | p elementRef aName ,'[', ((p processingTime mean v asInteger)/2) asString , ']' ].
			ds dotShape rectangle
				height: [ :p | (p processingTime mean v asInteger)/2 ];
				width: 3;
				color: [ :p | cv at: p elementRef id].
			ds points: s fullOutputScenario elementParameters.
			ds x: [ :p | |v| v:= p historicalTime v v asInteger. v = 0 ifTrue:[v := 1]. v].
			ds y: [ :p | y ].			
			b add: ds ].
	b axisX title:'Time'.
	b axisY title:'Simulation'.
	b maxX:1000.
	b build.
	^ b 
]

{ #category : #'as yet unclassified' }
BPSimBPMN20RTExamples class >> example03Visualization03Do [
	^ self example03Visualization03: self example03
]

{ #category : #'as yet unclassified' }
BPSimBPMN20RTExamples class >> example03Visualization03Open [
	^ self example03Visualization03Do open
]

{ #category : #'as yet unclassified' }
BPSimBPMN20RTExamples class >> example03Visualization04: bpSimEngine [
	| b ds i cv composer standarview ht|
	composer := RTComposer new.
	composer gap: 100.
	ht := RTHighlightable allSibblings.
	ht highlightedColor: Color lightOrange.
	b := RTGrapher new.
	b view: composer view.
	b extent: 800 @ 600.
	b interaction popup.
	b view @ RTDraggableView.
	i:=0.
	cv := Dictionary new.
	
	bpSimEngine simulations first fullOutputScenario elementParameters do:[:p | 
		cv at: p elementRef id put: (Color r:255 random g: 255 random b: 255 random)].

	" each simulation is a scenario to display"
	bpSimEngine simulations
		do: [ :s | 
			|y |
			i := i + 1.
			y:=i.
			ds := RTDataSet new.
			"ds interaction popup text:[ :p | p elementRef aName ,'[', ((p processingTime mean v asInteger)/2) asString , ']' ]."
			ds dotShape rectangle
				height: [ :p | (p processingTime mean v asInteger)/2 ];
				width: 8;
				color: [ :p | cv at: p elementRef id].
			ds points: s fullOutputScenario elementParameters.
			ds x: [ :p | |v| v:= p historicalTime v v asInteger. v = 0 ifTrue:[v := 1]. v].
			ds y: [ :p | y ].			
			b add: ds ].
	b axisX title:'Time'.
	b axisY title:'Simulation'.
	b maxX:100.
	b build.
	b view elements do:[ :el | el model ifNotNil:[el model: el model elementRef ]].
	composer propagateHighlight.
	composer group:#Time.
	"======="
	standarview := BPMN20StandarVisualization new.
	standarview bpObj: bpSimEngine processModel.
	standarview executeVisualization: composer view.
	composer layout: RTVerticalLineLayout new.
	composer propagateHighlight.
	composer group:#BPMN.
	composer propagateHighlightToAll.
	"======"
	composer move: #Time above: #BPMN.
	composer nameGroup: #BPMN as: 'Business Process Notation'.
	composer nameGroup: #Time as: 'Time information'.

	^ composer view
	
]

{ #category : #'as yet unclassified' }
BPSimBPMN20RTExamples class >> example03Visualization04Do [
	^ self example03Visualization04: self example03
]

{ #category : #'as yet unclassified' }
BPSimBPMN20RTExamples class >> example03Visualization04Open [
	^ self example03Visualization04Do open
]

{ #category : #'as yet unclassified' }
BPSimBPMN20RTExamples class >> example04 [
	|parser inputScenario simb bpmnMetamodel task bpSimEngine gateways|
	
	parser := BPMN20Parser parseString: BPMN20SampleTsunamiResonponse tsunamiv3.
	bpmnMetamodel := (parser definitions first process select:
	[:p | p aName = 'Réponse tsunami au VN']) values first.
	
	bpSimEngine := BPSimBPMN20EngineProcess new.
	bpSimEngine addProcessModel: bpmnMetamodel.
	
	simb := BPSimBuilder buildScenarioId: 'tsunamiInputScenario01'.
	
	task := (bpmnMetamodel activities select: [ :a | a class = BPMN20TaskImpl  ]).
	
	simb processModel: bpmnMetamodel.

	simb timer processingTime: ( simb triangular mode:5;min:1; max: 10) inElementName: 'T8'' : Evacuate people'.
	simb timer processingTime: ( simb triangular mode:5;min:1; max: 10) inElementName: 'T6 : Inform by portable speakers'.
	simb timer processingTime: ( simb triangular mode:5;min:1; max: 10) inElementName: 'T5 : Notify functional units to start'.
	simb timer processingTime: ( simb triangular mode:5;min:1; max: 10) inElementName:	'T4 : Fire the flares'.
	simb timer processingTime: ( simb triangular mode:5;min:1; max: 50) inElementName:	'T3 : Receive tsunami start '.
	simb timer processingTime: ( simb triangular mode:5;min:1; max: 10) inElementName:	'T16 : Receive tsunami end'.
	simb timer processingTime: ( simb triangular mode:5;min:1; max: 10) inElementName:	'T9'' : Transfer injuries to safe places'.
	simb timer processingTime: ( simb triangular mode:5;min:1; max: 60) inElementName:	'T11 : Protect the property'.
	simb timer processingTime: ( simb triangular mode:5;min:1; max: 10) inElementName:	'T20 : Close tsunami reponse'.
	simb timer processingTime: ( simb triangular mode:5;min:1; max: 10) inElementName:	'T10 : Inform, guide the fisherman'.
	simb timer processingTime: ( simb triangular mode:5;min:1; max: 80) inElementName:	'T7 : Broadcast over the media'.
	simb timer processingTime: ( simb triangular mode:5;min:1; max: 10) inElementName:	'T13 : Call ambulance '.
	simb timer processingTime: ( simb triangular mode:5;min:1; max: 10) inElementName:	'T18 : Identify damages'.
	simb timer processingTime: ( simb triangular mode:5;min:1; max: 10) inElementName:	'T19 : Search distress fishermen'.
	simb timer processingTime: ( simb triangular mode:5;min:1; max: 10) inElementName:	'T9 : Transfer injuries to safe places'.
	simb timer processingTime: ( simb triangular mode:5;min:1; max: 10) inElementName:	'T17 : Notify functional units to end'.
	simb timer processingTime: ( simb triangular mode:5;min:1; max: 10) inElementName:	'T12 : Perform the first aid'.
	simb timer processingTime: ( simb triangular mode:5;min:1; max: 10) inElementName:	'T18'' : Identify damages'.
	simb timer processingTime: ( simb triangular mode:5;min:1; max: 10) inElementName:	'T8 : Evacuate people'.
	simb timer processingTime: ( simb triangular mode:5;min:1; max: 10) inElementName:	'T19'' : Search distress fishermen'.

"simb timer processingTime: ( simb triangular mode:5;min:1; max: 10)  inElementId: 'Id_954b6217-a666-4b43-b370-41ed5588367e'."
"
['Id_8aa9388b-443e-4f88-b32d-81e233e8afea'][T6 : Inform by portable speakers]
['Id_d269a243-ae42-460b-abb5-bb4a8893050a'][T5 : Notify functional units to start]
['Id_c711ff44-3fbe-465d-8ca8-eb3e5c302bfd'][T4 : Fire the flares]
['Id_0770490a-7ccb-4e4a-b081-f1401dbbfffd'][T3 : Receive tsunami start ]
['Id_daf6d562-5d06-4e3c-9f18-647e5d2ca380'][T16 : Receive tsunami end]
['Id_acea8a11-b30f-46e3-ab53-32116425467c'][T9' : Transfer injuries to safe places]
['Id_09ab382e-ce09-4f08-83a6-1280c7fb7d8a'][T11 : Protect the property]
['Id_679f1b75-ec0a-4e2f-8431-fd72a259cd96'][T20 : Close tsunami reponse]
['Id_c9f3a49b-238c-43d4-ab9e-b3daede1d2ac'][T10 : Inform, guide the fisherman]
['Id_0c729b5b-b925-45bb-b1b6-1b95b6a68a29'][T7 : Broadcast over the media]
['Id_bee05049-673a-405d-8933-a3cfc5ffb3f3'][T13 : Call ambulance ]
['T18'][T18 : Identify damages]
['Id_8ccffb5e-dd88-4514-bbf1-0b286ac8a4c5'][T19 : Search distress fishermen]
['Id_8d39baad-22ed-4e03-b9ab-b1d781c94c7d'][T9 : Transfer injuries to safe places]
['Id_1ef1059a-cc60-434c-aab0-c64a94a5f6b3'][T17 : Notify functional units to end]
['Id_b66e36c0-8601-4c60-bda3-65396c022b7c'][T12 : Perform the first aid]
['Id_c98b394f-e020-4686-b220-ae6fd239a140'][T18' : Identify damages]
['Id_41bd2b7f-fe49-4ffb-a65d-5c623b59ecd9'][T8 : Evacuate people]
['Id_32c72e45-fe9c-4938-b2fc-765818224dcc'][T19' : Search distress fishermen]"
	
	gateways := (bpmnMetamodel activities select: [ :a | a class superclass = BPMN20GatewayImpl ]).
	
	gateways do:[ :g | 	simb control probabilityParameterOnGateway: g ].
	
	inputScenario := simb currentScenario.	
		
	bpSimEngine runSimulationUsing: inputScenario for:1.
	
	(Delay  forSeconds: 10) wait.
	^ bpSimEngine

]

{ #category : #'as yet unclassified' }
BPSimBPMN20RTExamples class >> example04Visualization01: bpSimEngine [
	| b ds i cv composer standarview ht|
	composer := RTComposer new.
	composer gap: 100.
	ht := RTHighlightable allSibblings.
	ht highlightedColor: Color lightOrange.
	b := RTGrapher new.
	b view: composer view.
	b extent: 800 @ 600.
	b interaction popup.
	b view @ RTDraggableView.
	i:=0.
	cv := Dictionary new.
	
	"======="
	standarview := BPMN20StandarVisualization new.
	standarview bpObj: bpSimEngine processModel.
	standarview executeVisualization: composer view.
	composer layout: RTVerticalLineLayout new.
	composer propagateHighlight.
	composer group:#BPMN.
	composer propagateHighlightToAll.
	"======"
	
	bpSimEngine simulations first fullOutputScenario elementParameters do:[:p | 
		cv at: p elementRef id put: (Color r:255 random g: 255 random b: 255 random)].

	" each simulation is a scenario to display"
	bpSimEngine simulations
		do: [ :s | 
			|y |
			i := i + 1.
			y:=i.
			ds := RTDataSet new.
			ds interaction popup text:[ :el | el aName].
			ds dotShape rectangle
				width: [ :el | | p | 
					p :=  s fullOutputScenario getParameterAt: el.
					(p processingTime mean v asInteger) * 10];
				height: 20;
				color: [ :p | cv at: p id].
			ds points: s processModel allActivities.
			ds x: [ :el | |p v| 
				p :=  s fullOutputScenario getParameterAt: el.
				v:= p historicalTime v v asInteger. 
				v = 0 ifTrue:[v := 1]. 
				v].
			ds y: [ :p |  y ].			
			b add: ds ].
		
	b axisX title:'Time'.
	b axisY title:'Simulation'.
	b build.
	
	composer propagateHighlight.
	composer group:#Time.
	"======"
	composer move: #Time onTheLeftOf: #BPMN.
	composer nameGroup: #BPMN as: 'Business Process Notation'.
	composer nameGroup: #Time as: 'Time information'.
	composer view canvas camera focusOnCenterScaled.
	^ composer view
	
]

{ #category : #'as yet unclassified' }
BPSimBPMN20RTExamples class >> example04Visualization01Do [
	^ self example04Visualization01: self example03
]

{ #category : #'as yet unclassified' }
BPSimBPMN20RTExamples class >> example04Visualization01Open [
	^ self example04Visualization01Do open
]

{ #category : #'as yet unclassified' }
BPSimBPMN20RTExamples class >> example05 [
	|parser inputScenario simb bpmnMetamodel task bpSimEngine gateways|
	
	parser := BPMN20Parser parseString: BPMN20SampleTsunamiResonponse tsunamiv3.
	bpmnMetamodel := (parser definitions first process select:
	[:p | p aName = 'Réponse tsunami au VN']) values first.
	
	bpSimEngine := BPSimBPMN20EngineProcess new.
	bpSimEngine addProcessModel: bpmnMetamodel.
	
	simb := BPSimBuilder buildScenarioId: 'tsunamiInputScenario01'.
	
	task := (bpmnMetamodel activities select: [ :a | a class = BPMN20TaskImpl  ]).
	
	simb processModel: bpmnMetamodel.

	simb timer processingTime: ( simb triangular mode:5;min:1; max: 10) inElementName: 'T8'' : Evacuate people'.
	simb timer processingTime: ( simb triangular mode:5;min:1; max: 10) inElementName: 'T6 : Inform by portable speakers'.
	simb timer processingTime: ( simb triangular mode:5;min:1; max: 10) inElementName: 'T5 : Notify functional units to start'.
	simb timer processingTime: ( simb triangular mode:5;min:1; max: 10) inElementName:	'T4 : Fire the flares'.
	simb timer processingTime: ( simb triangular mode:5;min:1; max: 50) inElementName:	'T3 : Receive tsunami start '.
	simb timer processingTime: ( simb triangular mode:5;min:1; max: 10) inElementName:	'T16 : Receive tsunami end'.
	simb timer processingTime: ( simb triangular mode:5;min:1; max: 10) inElementName:	'T9'' : Transfer injuries to safe places'.
	simb timer processingTime: ( simb triangular mode:5;min:1; max: 60) inElementName:	'T11 : Protect the property'.
	simb timer processingTime: ( simb triangular mode:5;min:1; max: 10) inElementName:	'T20 : Close tsunami reponse'.
	simb timer processingTime: ( simb triangular mode:5;min:1; max: 10) inElementName:	'T10 : Inform, guide the fisherman'.
	simb timer processingTime: ( simb triangular mode:5;min:1; max: 80) inElementName:	'T7 : Broadcast over the media'.
	simb timer processingTime: ( simb triangular mode:5;min:1; max: 10) inElementName:	'T13 : Call ambulance '.
	simb timer processingTime: ( simb triangular mode:5;min:1; max: 10) inElementName:	'T18 : Identify damages'.
	simb timer processingTime: ( simb triangular mode:5;min:1; max: 10) inElementName:	'T19 : Search distress fishermen'.
	simb timer processingTime: ( simb triangular mode:5;min:1; max: 10) inElementName:	'T9 : Transfer injuries to safe places'.
	simb timer processingTime: ( simb triangular mode:5;min:1; max: 10) inElementName:	'T17 : Notify functional units to end'.
	simb timer processingTime: ( simb triangular mode:5;min:1; max: 10) inElementName:	'T12 : Perform the first aid'.
	simb timer processingTime: ( simb triangular mode:5;min:1; max: 10) inElementName:	'T18'' : Identify damages'.
	simb timer processingTime: ( simb triangular mode:5;min:1; max: 10) inElementName:	'T8 : Evacuate people'.
	simb timer processingTime: ( simb triangular mode:5;min:1; max: 10) inElementName:	'T19'' : Search distress fishermen'.

"simb timer processingTime: ( simb triangular mode:5;min:1; max: 10)  inElementId: 'Id_954b6217-a666-4b43-b370-41ed5588367e'."
"
['Id_8aa9388b-443e-4f88-b32d-81e233e8afea'][T6 : Inform by portable speakers]
['Id_d269a243-ae42-460b-abb5-bb4a8893050a'][T5 : Notify functional units to start]
['Id_c711ff44-3fbe-465d-8ca8-eb3e5c302bfd'][T4 : Fire the flares]
['Id_0770490a-7ccb-4e4a-b081-f1401dbbfffd'][T3 : Receive tsunami start ]
['Id_daf6d562-5d06-4e3c-9f18-647e5d2ca380'][T16 : Receive tsunami end]
['Id_acea8a11-b30f-46e3-ab53-32116425467c'][T9' : Transfer injuries to safe places]
['Id_09ab382e-ce09-4f08-83a6-1280c7fb7d8a'][T11 : Protect the property]
['Id_679f1b75-ec0a-4e2f-8431-fd72a259cd96'][T20 : Close tsunami reponse]
['Id_c9f3a49b-238c-43d4-ab9e-b3daede1d2ac'][T10 : Inform, guide the fisherman]
['Id_0c729b5b-b925-45bb-b1b6-1b95b6a68a29'][T7 : Broadcast over the media]
['Id_bee05049-673a-405d-8933-a3cfc5ffb3f3'][T13 : Call ambulance ]
['T18'][T18 : Identify damages]
['Id_8ccffb5e-dd88-4514-bbf1-0b286ac8a4c5'][T19 : Search distress fishermen]
['Id_8d39baad-22ed-4e03-b9ab-b1d781c94c7d'][T9 : Transfer injuries to safe places]
['Id_1ef1059a-cc60-434c-aab0-c64a94a5f6b3'][T17 : Notify functional units to end]
['Id_b66e36c0-8601-4c60-bda3-65396c022b7c'][T12 : Perform the first aid]
['Id_c98b394f-e020-4686-b220-ae6fd239a140'][T18' : Identify damages]
['Id_41bd2b7f-fe49-4ffb-a65d-5c623b59ecd9'][T8 : Evacuate people]
['Id_32c72e45-fe9c-4938-b2fc-765818224dcc'][T19' : Search distress fishermen]"
	
	gateways := (bpmnMetamodel activities select: [ :a | a class superclass = BPMN20GatewayImpl ]).
	
	gateways do:[ :g | 	simb control probabilityParameterOnGateway: g ].
	
	inputScenario := simb currentScenario.	
		
	bpSimEngine runSimulationUsing: inputScenario for:1.
	
	(Delay  forSeconds: 10) wait.
	^ bpSimEngine

]

{ #category : #'as yet unclassified' }
BPSimBPMN20RTExamples class >> exampleToTest [
	"Similar to example 01 but with more executions to visualise"
	|parser inputScenario simb bpmnMetamodel task bpSimEngine|
	
	parser := BPMN20Parser parseString: BPMN20SampleTsunamiResonponse tsunamiv3.
	bpmnMetamodel := (parser definitions first process select:
	[:p | p aName = 'Réponse tsunami au VN']) values first.
	
	bpSimEngine := BPSimBPMN20EngineProcess new.
	bpSimEngine addProcessModel: bpmnMetamodel.
	
	simb := BPSimBuilder new.
	simb buildScenarioId: 'tsunamiInputScenario01'.
	task := (bpmnMetamodel activities select: [ :a | a class = BPMN20TaskImpl  ]).
	simb timer processingParameters: task config:[ :t |
			| p |
			p := BPSimTriangularDistribution new.
			p mode:50;min:10;max:100.
			p 
		].
	inputScenario := simb currentScenario.	
	bpSimEngine runSimulationUsing: inputScenario.

	^ bpSimEngine

]
