Class {
	#name : #BPSimBPMN20ExamplesTsunami02,
	#superclass : #Object,
	#instVars : [
		'parser',
		'processModel',
		'bpSimEngine'
	],
	#category : #'A4BP-SimEngine-BPMN20-examples'
}

{ #category : #'as yet unclassified' }
BPSimBPMN20ExamplesTsunami02 class >> exampleRun [
	^ self new exampleRun

]

{ #category : #'as yet unclassified' }
BPSimBPMN20ExamplesTsunami02 class >> exampleRunOpen [
	^ self exampleRun plot01 open.
]

{ #category : #'as yet unclassified' }
BPSimBPMN20ExamplesTsunami02 >> config [
	parser := BPMN20Parser parseString: BPMN20SampleTsunamiResonponse tsunamiv3.
	processModel := parser definitions first.
]

{ #category : #'as yet unclassified' }
BPSimBPMN20ExamplesTsunami02 >> exampleRun [
	self config.
	bpSimEngine := BPSimBPMN20EngineProcess new.
	bpSimEngine addProcessModel: processModel.
	bpSimEngine runSimulationUsing: self scenario01 for: 1."
	bpSimEngine runSimulationUsing: self scenario02 for: 1.
	bpSimEngine runSimulationUsing: self scenario03 for: 1."
	^ self
]

{ #category : #'as yet unclassified' }
BPSimBPMN20ExamplesTsunami02 >> plot01 [
	| composer|
	composer := RTComposer new.
	composer gap: 100.
	
	self plot01Basic: composer group:#BPMN.
	self plot01Historical: composer group: #Time.
	self plot01Mondrian: composer  group: #Mondrian01.
	
	composer move: #Time onTheLeftOf: #BPMN.
	composer move: #BPMN below: #Mondrian01.
	composer nameGroup: #BPMN as: 'Business Process Notation'.
	composer nameGroup: #Time as: 'Time information'.
	composer nameGroup: #Mondrian01 as: 'Mondrian01'.
	composer view canvas camera focusOnCenterScaled.
	^ composer view
	
]

{ #category : #'as yet unclassified' }
BPSimBPMN20ExamplesTsunami02 >> plot01Basic: composer group: group [
	|standarview|
	
	standarview := BPMN20StandarVisualization new.
	standarview bpObj: bpSimEngine processModel.
	
	standarview modifyElementBlock:[:el |  
		|size|
		size := 1 + ( bpSimEngine simulations first out getParameterAt: el model) processing vv.
		el width: (size + 10) ; height:(size+10).
		"el when: TRMouseClick do: [ :evt | 
			bpSimEngine simulations do: [ :s | 
				(s fullOutputScenario getParameterAt: el model) inspect ] ] "
		].
	standarview executeVisualization: composer view.
	
	composer layout: RTVerticalLineLayout new.
	composer propagateHighlight.
	composer group: group.
	composer propagateHighlightToAll.	
]

{ #category : #'as yet unclassified' }
BPSimBPMN20ExamplesTsunami02 >> plot01Historical: composer  group: group [
	|ds cv i b |
	" each simulation is a scenario to display"
	b := RTGrapher new.
	b view: composer view.
	b interaction popup.
	b view @ RTDraggableView.
	
	cv := Dictionary new.
	i := 0.
	bpSimEngine simulations first fullOutputScenario elementParameters do:[:p | 
	cv at: p elementRef id put: (Color r:255 random g: 255 random b: 255 random)].
	
	bpSimEngine simulations
		do: [ :s | 
			|y |
			i := i + 1.
			y:=i.
			ds := RTDataSet new.
			ds interaction popup text:[ :el | el aName].
			ds dotShape rectangle
				"width: [ :el | | p |  p :=  s fullOutputScenario getParameterAt: el. (p processingTime mean v asInteger) * 10];"
				width: 10;
				height: 20;
				color: [ :p | cv at: p id].
			ds points: s processModel allActivities.
			ds x: [ :el | |p v| 
				p :=  s fullOutputScenario getParameterAt: el.
				v:= p historicalTime v v asInteger * 10. 
				v = 0 ifTrue:[v := 1]. 
				v].
			ds y: [ :p |  y ].			
			b add: ds ].
		
	b axisX title:'Time'.
	b axisY title:'Simulation'.
	b build.
	
	composer propagateHighlight.
	composer group:group.
	
]

{ #category : #'as yet unclassified' }
BPSimBPMN20ExamplesTsunami02 >> plot01Mondrian: composer  group: group [
	| cv i b |
	" each simulation is a scenario to display"
	b := RTMondrian new.
	b view: composer view.
	b interaction popup.
	b view @ RTDraggableView.
	
	cv := Dictionary new.
	i := 0.
	bpSimEngine simulations first out elementParameters do:[:p | 
	cv at: p elementRef id put: (Color r:255 random g: 255 random b: 255 random)].
	

	b shape rectangle color: (Color lightGray alpha:0.2).
	b nodes: bpSimEngine simulations forEach:[ :s |  
		b shape rectangle height:[ :el ||p v| 
				p :=  s out getParameterAt: el.
				v:= p historical vv asInteger +1.
				v
			]; width:[ :el ||p v| 
				p :=  s out getParameterAt: el.
				v:= p processing vv asInteger +10.
				v
			].
		b nodes: s processModel allActivities.].
	"b normalizer
		normalizeColor: (5) using: (ColorPalette diverging colors: 11 scheme: 'PRGn') using: #ln."
	b layout circle.
	b build.
	composer propagateHighlight.
	composer group:group.
	
]

{ #category : #'as yet unclassified' }
BPSimBPMN20ExamplesTsunami02 >> scenario01 [
|simb task gateways ts|
simb := BPSimBuilder buildScenarioId: 'TsunamiScenario01'.
task := (processModel activities select: [ :a | a class = BPMN20TaskImpl  ]).
simb processModel: processModel.
ts := 5.

simb timer processingTime: ( simb duration value: 10 ) inElementName: 'T1 : Detect tsunami risk'.
simb timer processingTime: ( simb duration value: 15 ) inElementName: 'T2 : Inform tsunami start'.
simb timer processingTime: ( simb duration value: 10 ) inElementName:'T3 : Receive tsunami start '.
simb timer processingTime: ( simb duration value: 30 ) inElementName:'T4 : Fire the flares'.
simb timer processingTime: ( simb duration value: 30 ) inElementName: 'T5 : Notify functional units to start'.
simb timer processingTime: ( simb duration value: 60 ) inElementName: 'T6 : Inform by portable speakers'.
simb timer processingTime: ( simb duration value: 30 ) inElementName:'T7 : Broadcast over the media'.
simb timer processingTime: ( simb duration value: 180 ) inElementName:'T8 : Evacuate people'.
simb timer processingTime: ( simb duration value: 180 ) inElementName: 'T8'' : Evacuate people'.
simb timer processingTime: ( simb duration value: 180 ) inElementName:'T9 : Transfer injuries to safe places'.
simb timer processingTime: ( simb duration value: 180 ) inElementName:'T9'' : Transfer injuries to safe places'.
simb timer processingTime: ( simb duration value: 180 ) inElementName:'T10 : Inform, guide the fisherman'.
simb timer processingTime: ( simb duration value: 180 ) inElementName:'T11 : Protect the property'.
simb timer processingTime: ( simb duration value: 180 ) inElementName:'T12 : Perform the first aid'.
simb timer processingTime: ( simb duration value: 30 ) inElementName:'T13 : Call ambulance '.
simb timer processingTime: ( simb duration value: 10 ) inElementName:'T14 : Detect tsunami end'.
simb timer processingTime: ( simb duration value: 15 ) inElementName:'T15 : Inform tsunami end'.
simb timer processingTime: ( simb duration value: 10 ) inElementName:'T16 : Receive tsunami end'.
simb timer processingTime: ( simb duration value: 30 ) inElementName:'T17 : Notify functional units to end'.
simb timer processingTime: ( simb duration value: 60 ) inElementName:'T18 : Identify damages'.
simb timer processingTime: ( simb duration value: 60 ) inElementName:'T18'' : Identify damages'.
simb timer processingTime: ( simb duration value: 60 ) inElementName:'T19 : Search distress fishermen'.
simb timer processingTime: ( simb duration value: 60 ) inElementName:'T19'' : Search distress fishermen'.
simb timer processingTime: ( simb duration value: 30 ) inElementName:'T20 : Close tsunami reponse'.



gateways := (processModel activities select: [ :a | a class superclass = BPMN20GatewayImpl ]).

gateways do:[ :g | simb control probabilityParameterOnGateway: g ].

^ simb currentScenario.
]

{ #category : #'as yet unclassified' }
BPSimBPMN20ExamplesTsunami02 >> scenario02 [
	|simb task gateways ts|
	simb := BPSimBuilder buildScenarioId: 'TsunamiScenario02'.
	task := (processModel activities select: [ :a | a class = BPMN20TaskImpl  ]).
	simb processModel: processModel.
	ts := 10.
	simb timer processingTime: ( simb duration value: ts ) inElementName: 'T1 : Detect tsunami risk'.
	simb timer processingTime: ( simb duration value: ts ) inElementName: 'T2 : Inform tsunami start'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T3 : Receive tsunami start '.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T4 : Fire the flares'.
	simb timer processingTime: ( simb duration value: ts ) inElementName: 'T5 : Notify functional units to start'.
	simb timer processingTime: ( simb duration value: ts ) inElementName: 'T6 : Inform by portable speakers'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T7 : Broadcast over the media'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T8 : Evacuate people'.
	simb timer processingTime: ( simb duration value: ts ) inElementName: 'T8'' : Evacuate people'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T9 : Transfer injuries to safe places'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T9'' : Transfer injuries to safe places'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T10 : Inform, guide the fisherman'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T11 : Protect the property'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T12 : Perform the first aid'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T13 : Call ambulance '.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T14 : Detect tsunami end'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T15 : Inform tsunami end'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T16 : Receive tsunami end'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T17 : Notify functional units to end'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T18 : Identify damages'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T18'' : Identify damages'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T19 : Search distress fishermen'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T19'' : Search distress fishermen'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T20 : Close tsunami reponse'.


	gateways := (processModel activities select: [ :a | a class superclass = BPMN20GatewayImpl ]).
	
	gateways do:[ :g | 	simb control probabilityParameterOnGateway: g ].
	
	^ simb currentScenario.	
]

{ #category : #'as yet unclassified' }
BPSimBPMN20ExamplesTsunami02 >> scenario03 [
	|simb task gateways ts|
	simb := BPSimBuilder buildScenarioId: 'TsunamiScenario03'.
	task := (processModel activities select: [ :a | a class = BPMN20TaskImpl  ]).
	simb processModel: processModel.
	ts := 12.
		simb timer processingTime: ( simb duration value: ts ) inElementName: 'T1 : Detect tsunami risk'.
	simb timer processingTime: ( simb duration value: ts ) inElementName: 'T2 : Inform tsunami start'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T3 : Receive tsunami start '.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T4 : Fire the flares'.
	simb timer processingTime: ( simb duration value: ts ) inElementName: 'T5 : Notify functional units to start'.
	simb timer processingTime: ( simb duration value: ts ) inElementName: 'T6 : Inform by portable speakers'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T7 : Broadcast over the media'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T8 : Evacuate people'.
	simb timer processingTime: ( simb duration value: ts ) inElementName: 'T8'' : Evacuate people'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T9 : Transfer injuries to safe places'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T9'' : Transfer injuries to safe places'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T10 : Inform, guide the fisherman'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T11 : Protect the property'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T12 : Perform the first aid'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T13 : Call ambulance '.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T14 : Detect tsunami end'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T15 : Inform tsunami end'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T16 : Receive tsunami end'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T17 : Notify functional units to end'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T18 : Identify damages'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T18'' : Identify damages'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T19 : Search distress fishermen'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T19'' : Search distress fishermen'.
	simb timer processingTime: ( simb duration value: ts ) inElementName:	'T20 : Close tsunami reponse'.



	gateways := (processModel activities select: [ :a | a class superclass = BPMN20GatewayImpl ]).
	
	gateways do:[ :g | 	simb control probabilityParameterOnGateway: g ].
	
	^ simb currentScenario.	
]
