Class {
	#name : #BPSimBPMN20ExamplesTsunamiThanh01,
	#superclass : #Object,
	#instVars : [
		'parser',
		'processModel',
		'bpSimEngine'
	],
	#category : #'A4BP-SimEngine-BPMN20-examples'
}

{ #category : #'as yet unclassified' }
BPSimBPMN20ExamplesTsunamiThanh01 class >> exampleRun [
	^ self new exampleRun

]

{ #category : #'as yet unclassified' }
BPSimBPMN20ExamplesTsunamiThanh01 class >> exampleRunOpen [
	^ self exampleRun plot01 open.

]

{ #category : #'as yet unclassified' }
BPSimBPMN20ExamplesTsunamiThanh01 >> config [
	parser := BPMN20Parser parseString: BPMN20SampleTsunamiResonponse tsunamiv3.
	processModel := parser definitions first.
]

{ #category : #'as yet unclassified' }
BPSimBPMN20ExamplesTsunamiThanh01 >> exampleRun [
	self config.
	bpSimEngine := BPSimBPMN20EngineProcess new.
	bpSimEngine addProcessModel: processModel.
	bpSimEngine runSimulationUsing: self scenario01 for: 1.
	^ self
]

{ #category : #'as yet unclassified' }
BPSimBPMN20ExamplesTsunamiThanh01 >> plot01 [
	| b ds i cv composer standarview ht |
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
BPSimBPMN20ExamplesTsunamiThanh01 >> scenario01 [
	|simb task gateways|
	simb := BPSimBuilder buildScenarioId: 'TsunamiScenario01'.
	task := (processModel activities select: [ :a | a class = BPMN20TaskImpl  ]).
	simb processModel: processModel.

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

	gateways := (processModel activities select: [ :a | a class superclass = BPMN20GatewayImpl ]).
	
	gateways do:[ :g | 	simb control probabilityParameterOnGateway: g ].
	
	^ simb currentScenario.	
]

{ #category : #'as yet unclassified' }
BPSimBPMN20ExamplesTsunamiThanh01 >> scenario02 [
	|simb task gateways ts|
	simb := BPSimBuilder buildScenarioId: 'TsunamiScenario02'.
	task := (processModel activities select: [ :a | a class = BPMN20TaskImpl  ]).
	simb processModel: processModel.
	ts := 10.
	simb timer processingTime: ( simb duration value: ts ) inElementName: 'T8'' : Evacuate people'.
	simb timer processingTime: ( simb duration value: ts ) inElementName: 'T6 : Inform by portable speakers'.
	simb timer processingTime: ( simb duration value: ts ) inElementName: 'T5 : Notify functional units to start'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T4 : Fire the flares'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T3 : Receive tsunami start '.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T16 : Receive tsunami end'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T9'' : Transfer injuries to safe places'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T11 : Protect the property'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T20 : Close tsunami reponse'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T10 : Inform, guide the fisherman'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T7 : Broadcast over the media'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T13 : Call ambulance '.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T18 : Identify damages'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T19 : Search distress fishermen'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T9 : Transfer injuries to safe places'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T17 : Notify functional units to end'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T12 : Perform the first aid'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T18'' : Identify damages'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T8 : Evacuate people'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T19'' : Search distress fishermen'.

	gateways := (processModel activities select: [ :a | a class superclass = BPMN20GatewayImpl ]).
	
	gateways do:[ :g | 	simb control probabilityParameterOnGateway: g ].
	
	^ simb currentScenario.	
]

{ #category : #'as yet unclassified' }
BPSimBPMN20ExamplesTsunamiThanh01 >> scenario03 [
	|simb task gateways ts|
	simb := BPSimBuilder buildScenarioId: 'TsunamiScenario03'.
	task := (processModel activities select: [ :a | a class = BPMN20TaskImpl  ]).
	simb processModel: processModel.
	ts := 12.
	simb timer processingTime: ( simb duration value: ts ) inElementName: 'T8'' : Evacuate people'.
	simb timer processingTime: ( simb duration value: ts ) inElementName: 'T6 : Inform by portable speakers'.
	simb timer processingTime: ( simb duration value: ts ) inElementName: 'T5 : Notify functional units to start'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T4 : Fire the flares'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T3 : Receive tsunami start '.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T16 : Receive tsunami end'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T9'' : Transfer injuries to safe places'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T11 : Protect the property'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T20 : Close tsunami reponse'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T10 : Inform, guide the fisherman'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T7 : Broadcast over the media'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T13 : Call ambulance '.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T18 : Identify damages'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T19 : Search distress fishermen'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T9 : Transfer injuries to safe places'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T17 : Notify functional units to end'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T12 : Perform the first aid'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T18'' : Identify damages'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T8 : Evacuate people'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T19'' : Search distress fishermen'.

	gateways := (processModel activities select: [ :a | a class superclass = BPMN20GatewayImpl ]).
	
	gateways do:[ :g | 	simb control probabilityParameterOnGateway: g ].
	
	^ simb currentScenario.	
]
